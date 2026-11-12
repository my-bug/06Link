package com.shilapi.xcertplay;
import android.content.Context;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.shilapi.xcertplay.airplay.AirPlaySession;
import com.shilapi.xcertplay.airplay.AirPlayInfoPlist;
import java.lang.ref.WeakReference;
import java.util.LinkedHashMap;
import java.util.Map;

/** Finite, manual cluster-map zoom experiments. Does not change display geometry or saved density. */
public final class E01MapZoom implements View.OnClickListener {
    private static final Object LOCK=new Object();
    private static WeakReference<AirPlaySession> active=new WeakReference<AirPlaySession>(null);
    private static long epoch;
    private static boolean busy;
    private static int offset;
    private static final String[] NAMES={"近景","标准","远景","广域"};
    private static final int[] OFFSETS={-2,0,2,4};
    private final int preset;
    private final TextView status;
    private E01MapZoom(int preset,TextView status){this.preset=preset;this.status=status;}
    public static void bind(AirPlaySession session){synchronized(LOCK){if(active.get()!=session){active=new WeakReference<AirPlaySession>(session);epoch++;offset=0;}}}
    public static void unbind(AirPlaySession session){synchronized(LOCK){if(active.get()==session){active.clear();epoch++;offset=0;}}}
    static Map<String,Object> command(int direction){
        if(direction!=0&&direction!=1)throw new IllegalArgumentException("zoom direction");
        Map<String,Object> params=new LinkedHashMap<String,Object>();
        params.put("uuid",AirPlayInfoPlist.ALT_UUID);params.put("zoomDirection",Integer.valueOf(direction));
        Map<String,Object> command=new LinkedHashMap<String,Object>();
        command.put("type","changeMapZoomLevel");command.put("params",params);return command;
    }
    public static void add(Context c,LinearLayout parent){
        TextView title=new TextView(c);title.setText("地图视野测试");title.setTextSize(19);title.setTextColor(Glass.INSTANCE.getTEXT());parent.addView(title);
        TextView status=new TextView(c);status.setText("临时视野测试：高德可能恢复自动缩放，当前不能锁定。");status.setTextSize(16);status.setTextColor(Glass.INSTANCE.getMUTED());
        float density=c.getResources().getDisplayMetrics().density;
        LinearLayout row=new LinearLayout(c);row.setOrientation(0);
        for(int preset=0;preset<NAMES.length;preset++) {
            Button button=new Button(c);button.setText(NAMES[preset]);E01HotspotSettings.styleActionButton(button);
            button.setTextSize(15);button.setMinHeight(Math.round(42*density));button.setMinimumHeight(Math.round(42*density));
            button.setMinimumWidth(0);button.setPadding(Math.round(8*density),Math.round(6*density),Math.round(8*density),Math.round(6*density));
            button.setOnClickListener(new E01MapZoom(preset,status));
            LinearLayout.LayoutParams params=new LinearLayout.LayoutParams(0,-2,1f);
            params.leftMargin=Math.round(4*density);params.rightMargin=Math.round(4*density);row.addView(button,params);
        }
        parent.addView(row);
        parent.addView(status);
    }
    public void onClick(View view){
        AirPlaySession session;long token;
        synchronized(LOCK){
            session=active.get();token=epoch;
            if(session==null){status.setText("未连接CarPlay，请先连接并打开仪表地图。");return;}
            if(busy){status.setText("正在切换视野，请稍候再试。");return;}
            busy=true;
        }
        status.setText("正在切换到"+NAMES[preset]+"…");
        try{Thread worker=new Thread(new Job(this,session,token),"06Link-map-zoom");worker.setDaemon(true);worker.start();}
        catch(RuntimeException error){synchronized(LOCK){busy=false;}status.setText("无法启动测试，请稍后重试。");}
    }
    private static final class Job implements Runnable {
        final E01MapZoom owner;final AirPlaySession session;final long token;
        Job(E01MapZoom owner,AirPlaySession session,long token){this.owner=owner;this.session=session;this.token=token;}
        public void run(){
            String result;boolean failed=false;
            try{
                for(int i=0;i<6;i++){
                    int direction;
                    synchronized(LOCK){
                        if(epoch!=token||active.get()!=session||offset==OFFSETS[owner.preset])break;
                        direction=OFFSETS[owner.preset]>offset?1:0;
                    }
                    if(!session.sendCommand(command(direction))){failed=true;break;}
                    synchronized(LOCK){
                        if(epoch!=token||active.get()!=session)break;
                        offset+=direction==1?1:-1;
                        if(offset==OFFSETS[owner.preset])break;
                    }
                    Thread.sleep(600);
                }
                synchronized(LOCK){
                    if(epoch!=token||active.get()!=session)result="连接已变化，视野切换已取消。";
                    else if(failed)result="切换未完成：控制通道尚未就绪或发送失败，请稍后重试。";
                    else result="已请求"+NAMES[owner.preset]+"视野，请观察仪表效果；高德可能自动调整地图。";
                }
            }catch(Exception error){result="视野切换失败，请稍后重试。";}
            finally{synchronized(LOCK){busy=false;}}
            owner.status.post(new Result(owner.status,result));
        }
    }
    private static final class Result implements Runnable {
        final TextView view;final String text;
        Result(TextView view,String text){this.view=view;this.text=text;}
        public void run(){view.setText(text);}
    }
}
