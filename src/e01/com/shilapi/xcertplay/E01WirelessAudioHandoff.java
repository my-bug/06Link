package com.shilapi.xcertplay;

import android.content.Context;
import android.os.Build;
import java.io.File;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;

/** E01 wireless-session audio ownership. Runs only on the existing OEM state worker.
 * Pauses local A2DP rendering; never disconnects Bluetooth, changes HFP, volume or PCM.
 */
public final class E01WirelessAudioHandoff {
    interface Port {
        boolean pending() throws Exception;
        void pending(boolean value) throws Exception;
        String renderState() throws Exception;
        boolean samePhone(String phone) throws Exception;
        void enable(boolean enabled) throws Exception;
        void log(String text);
    }
    private static final Coordinator coordinator=new Coordinator();
    private static boolean supported(){return Build.VERSION.SDK_INT==22&&"E01".equals(Build.MODEL)&&"BX11QJ".equals(Build.DEVICE);}
    public static void start(Object owner,int generation,String phone){
        if(supported()&&owner!=null&&phone!=null)coordinator.start(owner,generation,phone);
    }
    public static void stop(Object owner){if(supported())coordinator.stop(owner);}
    public static void maintain(Context context,Object lookup){
        if(supported()&&context!=null&&lookup!=null)coordinator.maintain(new OemPort(context,lookup));
    }
    static final class Request {
        final WeakReference<Object> owner;final int generation;final String phone;
        Request(Object o,int g,String p){owner=new WeakReference<Object>(o);generation=g;phone=p;}
    }
    /** Only start/stop take this small state lock. Binder/file work never holds it. */
    static final class Coordinator {
        private Request desired,handled,held;
        private boolean holding;
        private String lastLog="";
        synchronized void start(Object owner,int generation,String phone){
            if(desired!=null&&desired.owner.get()==owner&&desired.generation==generation&&desired.phone.equals(phone))return;
            desired=new Request(owner,generation,phone);
        }
        synchronized void stop(Object owner){if(desired!=null&&desired.owner.get()==owner)desired=null;}
        private synchronized Request current(){return desired!=null&&desired.owner.get()!=null?desired:null;}
        // Serialized by the single existing OEM poller, never the main/video/audio callback.
        void maintain(Port port){
            try{
                Request request=current();
                if(!holding&&port.pending()){
                    restore(port);note(port,"已恢复上次会话遗留的蓝牙渲染状态");return;
                }
                if(holding){
                    if(request!=held||!port.samePhone(held.phone)){
                        restore(port);note(port,"会话结束或设备变化，已归还蓝牙音乐渲染控制");return;
                    }
                    if("1".equals(port.renderState())){
                        // Native/user selection reopened A2DP: respect it, never fight it on each poll.
                        port.pending(false);holding=false;held=null;handled=request;
                        note(port,"原厂已重新启用蓝牙音乐，本会话不重复接管");
                    }
                    return;
                }
                if(request==null||request==handled)return;
                if(!port.samePhone(request.phone))return; // No A2DP/another phone: never apply a global switch.
                if("0".equals(port.renderState())){
                    handled=request;note(port,"蓝牙音乐原已暂停，未取得恢复权限");return;
                }
                port.pending(true); // Persist the restoration obligation before mutating OEM state.
                holding=true;held=request;handled=request;
                try{
                    port.enable(false);
                    if(!"0".equals(port.renderState()))throw new IllegalStateException("pause not acknowledged");
                }catch(Exception failure){restore(port);handled=null;throw failure;}
                if(current()!=request){restore(port);note(port,"切换期间会话已取消，已归还蓝牙音乐渲染控制");return;}
                note(port,"无线会话已就绪，已请求暂停原厂蓝牙音乐渲染；状态="+port.renderState()+"，实际音频待验证");
            }catch(Exception failure){note(port,"音源交接待重试 error="+failure.getClass().getSimpleName());}
        }
        private void restore(Port port)throws Exception{
            if(!"1".equals(port.renderState()))port.enable(true);
            // A void Binder return is not proof of playback, but property 1 confirms the OEM action ran.
            if(!"1".equals(port.renderState()))throw new IllegalStateException("restore not acknowledged");
            port.pending(false);holding=false;held=null;
        }
        private void note(Port port,String message){if(!message.equals(lastLog)){lastLog=message;port.log(message);}}
    }
    private static final class OemPort implements Port {
        final Context context;final Object lookup;Object api;
        OemPort(Context c,Object l){Context a=c.getApplicationContext();context=a!=null?a:c;lookup=l;}
        public boolean pending(){return context.getSharedPreferences("06link-audio-handoff",0).getBoolean("restore_a2dp",false);}
        public void pending(boolean value)throws Exception{
            android.content.SharedPreferences.Editor edit=context.getSharedPreferences("06link-audio-handoff",0).edit();
            if(!(value?edit.putBoolean("restore_a2dp",true):edit.remove("restore_a2dp")).commit())throw new java.io.IOException("audio ownership save failed");
        }
        public String renderState()throws Exception{
            Class<?> type=Class.forName("android.os.SystemProperties");
            return (String)type.getMethod("get",String.class,String.class).invoke(null,"bluetooth.audiotrack.enable","");
        }
        Object api()throws Exception{
            if(api!=null)return api;
            Field connection=lookup.getClass().getDeclaredField("a2dpConnection");connection.setAccessible(true);
            Object value=connection.get(lookup);Field field=value.getClass().getDeclaredField("api");field.setAccessible(true);
            api=field.get(value);if(api==null)throw new IllegalStateException("A2DP service unavailable");return api;
        }
        Object call(String name)throws Exception{Object value=api();Method m=value.getClass().getMethod(name);m.setAccessible(true);return m.invoke(value);}
        public boolean samePhone(String phone)throws Exception{
            Object value=call("getConnectedDevices");if(!(value instanceof List))return false;
            List<?> devices=(List<?>)value;if(devices.size()!=1||devices.get(0)==null)return false;
            Object device=devices.get(0);Method get=device.getClass().getMethod("getAddress");get.setAccessible(true);
            return phone.equalsIgnoreCase(String.valueOf(get.invoke(device)));
        }
        public void enable(boolean value)throws Exception{call(value?"audioEnable":"audioDisable");}
        public void log(String text){
            try{File dir=context.getExternalFilesDir(null);if(dir==null)dir=context.getFilesDir();E01LogPolicy.session(new File(dir,"06link.log"),"[音源交接] "+text);}catch(RuntimeException ignored){}
        }
    }
    private E01WirelessAudioHandoff(){}
}
