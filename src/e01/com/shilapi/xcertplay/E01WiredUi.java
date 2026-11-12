package com.shilapi.xcertplay;
import android.app.Activity;import android.app.AlertDialog;import android.content.Context;import android.content.SharedPreferences;import android.graphics.Typeface;import android.view.*;import android.widget.*;import java.lang.reflect.*;
/** Explicit USB entry and actual iAP2 available-current setting. */
public final class E01WiredUi {
 private static final String PREF="06link-usb",KEY="charging_ma";private static final String TAG="06link-wired-button";
 public static boolean wireless(Context c){return c.getSharedPreferences("xcertplay_airplay",0).getBoolean("wireless_enabled",true);}
 public static Boolean iphone(Context c){try{android.hardware.usb.UsbManager u=(android.hardware.usb.UsbManager)c.getSystemService(Context.USB_SERVICE);if(u==null)return null;for(android.hardware.usb.UsbDevice d:u.getDeviceList().values())if(d.getVendorId()==0x05ac)return Boolean.TRUE;return Boolean.FALSE;}catch(RuntimeException e){return null;}}
 public static void compact(Activity a,LinearLayout parent){try{TextView b=(TextView)call(a,"pill",new Class[]{String.class,boolean.class},"无线",false);b.setOnClickListener(v->{try{call(a,"connect",new Class[]{boolean.class,boolean.class},true,false);}catch(Exception e){Toast.makeText(a,"无线连接未启动，请重试",Toast.LENGTH_SHORT).show();}});Field f=a.getClass().getDeclaredField("connectButton");f.setAccessible(true);f.set(a,b);parent.addView(b,0,new LinearLayout.LayoutParams(-1,dp(a,54)));}catch(Exception e){android.util.Log.w("06Link-usb","Compact actions failed",e);}}
 public static int current(Context c){int n=c.getSharedPreferences(PREF,0).getInt(KEY,500);return n==500||n==1500||n==2400?n:500;}
 public static boolean save(Context c,int n){return (n==500||n==1500||n==2400)&&c.getSharedPreferences(PREF,0).edit().putInt(KEY,n).commit();}
 private static Object get(Object o,String n)throws Exception{Field f=o.getClass().getDeclaredField(n);f.setAccessible(true);return f.get(o);}
 private static Object call(Object o,String n,Class<?>[] types,Object... args)throws Exception{Method m=o.getClass().getDeclaredMethod(n,types);m.setAccessible(true);return m.invoke(o,args);}
 public static void beforeConnect(Context c,boolean wireless){if(wireless)E01StartupHotspot.connect(c);else {E01HotspotControl.connectWired();E01WiredPort.start(c);}}
 public static boolean beforeAutomaticConnect(Context c,boolean wireless){
  if(!E01HotspotControl.automaticConnection(wireless))return false;
  if(wireless){E01WiredPort.stop();E01OemBluetooth.arm(c);}
  else{E01StartupHotspot.cancel();E01WiredPort.start(c);}
  return true;
 }
 public static void connect(Activity a){try{call(a,"connect",new Class[]{boolean.class,boolean.class},false,false);}catch(Exception e){Toast.makeText(a,"有线连接未启动，请返回首页重试",Toast.LENGTH_LONG).show();}}
 private static int dp(Context c,int n){return Math.round(c.getResources().getDisplayMetrics().density*n);}
 public static void decorate(Activity a){try{
  if(!"home".equals(get(a,"page")))return;
  E01WiredPort.recover(a);
  TextView wireless=(TextView)get(a,"connectButton");if(wireless==null||!(wireless.getParent() instanceof LinearLayout))return;
  if("连接".contentEquals(wireless.getText())||"连接 CarPlay".contentEquals(wireless.getText()))wireless.setText("无线");
  LinearLayout parent=(LinearLayout)wireless.getParent();if(TAG.equals(parent.getTag()))return;
  TextView wired=(TextView)call(a,"pill",new Class[]{String.class,boolean.class},"有线",false);
  wired.setTextSize(android.util.TypedValue.COMPLEX_UNIT_PX,wireless.getTextSize());wired.setTypeface(wireless.getTypeface());wired.setGravity(Gravity.CENTER);wired.setMaxLines(1);
  wired.setOnClickListener(v->connect(a));wired.setOnLongClickListener(v->{choose(a,null);return true;});
  int index=parent.indexOfChild(wireless);ViewGroup.LayoutParams old=wireless.getLayoutParams();parent.removeView(wireless);
  LinearLayout row=new LinearLayout(a);row.setTag(TAG);row.setOrientation(LinearLayout.HORIZONTAL);row.setGravity(Gravity.CENTER_VERTICAL);
  int height=Math.max(dp(a,54),old.height>0?old.height:0);LinearLayout.LayoutParams left=new LinearLayout.LayoutParams(0,height,1);left.rightMargin=dp(a,8);
  row.addView(wireless,left);row.addView(wired,new LinearLayout.LayoutParams(0,height,1));parent.addView(row,index,old);
 }catch(Exception e){android.util.Log.w("06Link-usb","Wired entry layout failed",e);}}
 public static void settings(Context c,LinearLayout parent){
  TextView title=new TextView(c);title.setText("有线连接");title.setTextSize(18);title.setPadding(0,dp(c,20),0,dp(c,8));parent.addView(title);
  TextView hint=new TextView(c);hint.setText("降低手机充电需求，缓解供电不足；下次有线连接生效。");hint.setTextSize(14);parent.addView(hint);
  Button b=new Button(c);label(c,b);E01Dialogs.button(b,false);LinearLayout.LayoutParams lp=new LinearLayout.LayoutParams(-1,-2);lp.topMargin=dp(c,8);parent.addView(b,lp);b.setOnClickListener(v->choose(c,b));
 }
 private static void label(Context c,Button b){b.setText("USB 充电电流："+(current(c)==500?"0.5A（低）":current(c)==1500?"1.5A（中）":"2.4A（标准）"));}
 private static void choose(Context c,Button button){int[] values={500,1500,2400};String[] names={"0.5A · 低电流（默认）","1.5A · 中电流","2.4A · 标准电流"};int selected=current(c)==500?0:current(c)==1500?1:2;
  AlertDialog d=new AlertDialog.Builder(c).setTitle("USB 充电电流").setSingleChoiceItems(names,selected,(dialog,n)->{if(save(c,values[n])){if(button!=null)label(c,button);dialog.dismiss();Toast.makeText(c,"已保存，下次有线连接生效",Toast.LENGTH_SHORT).show();}else Toast.makeText(c,"保存失败，请重试",Toast.LENGTH_SHORT).show();}).setNegativeButton("取消",null).create();E01Dialogs.showDialog(d);
 }
 private E01WiredUi(){}
}
