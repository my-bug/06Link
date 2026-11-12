# Compile-only APIs. These are excluded from the shipped DEX.
STUBS = {
'android/app/Presentation.java': 'package android.app; public class Presentation { public android.view.Display getDisplay(){return null;} public android.content.Context getContext(){return null;} }',
'android/view/Display.java':'package android.view; public class Display { public int getDisplayId(){return 0;} }',
'android/content/Context.java':'package android.content; public class Context { public Context getApplicationContext(){return this;} public void sendBroadcast(Intent i){} public java.io.File getExternalFilesDir(String s){return null;} public java.io.File getFilesDir(){return null;} }',
'android/content/Intent.java':'package android.content; public class Intent { public Intent(String s){} public Intent setPackage(String s){return this;} public Intent putExtra(String s,boolean b){return this;} }',
'android/os/Build.java':'package android.os; public class Build { public static String MODEL; public static String DEVICE; public static class VERSION { public static int SDK_INT; } }',
'android/util/Log.java':'package android.util; public class Log { public static int i(String t,String s){return 0;} public static int e(String t,String s,Throwable e){return 0;} }',
'com/shilapi/xcertplay/iap2/wire/Iap2Frame.java':'package com.shilapi.xcertplay.iap2.wire; public class Iap2Frame { public int getMessageId(){return 0;} public byte[] getPayload(){return null;} }',
'com/shilapi/xcertplay/hud/BydHudRouteChange.java':'package com.shilapi.xcertplay.hud; public enum BydHudRouteChange { NONE, GUIDANCE, CLEAR }',
'com/shilapi/xcertplay/hud/BydHudRouteState.java':'package com.shilapi.xcertplay.hud; public class BydHudRouteState { public BydHudRouteState(){} public BydHudRouteChange accept(int i, byte[] p){return null;} public BydAppleManeuver currentApple(){return null;} public boolean clear(){return false;} }',
'com/shilapi/xcertplay/hud/BydManeuverCodes.java':'package com.shilapi.xcertplay.hud; public class BydManeuverCodes { public static final BydManeuverCodes INSTANCE=new BydManeuverCodes(); public int gaode(int t,int s){return 0;} }',
'com/shilapi/xcertplay/hud/BydAppleManeuver.java':'package com.shilapi.xcertplay.hud; public class BydAppleManeuver { public int getDistanceMeters(){return 0;} public int getType(){return 0;} public int getDrivingSide(){return 0;} public String getRoad(){return null;} public Long getRemainingSeconds(){return null;} public Long getRemainingMeters(){return null;} }',
}
STUBS.update({
'com/shilapi/xcertplay/airplay/AirPlayInsets.java': '''package com.shilapi.xcertplay.airplay;
public class AirPlayInsets { public final int top,bottom,left,right; public AirPlayInsets(int t,int b,int l,int r){top=t;bottom=b;left=l;right=r;} public int getTop(){return top;} public int getBottom(){return bottom;} public int getLeft(){return left;} public int getRight(){return right;} }''',
'com/shilapi/xcertplay/airplay/AirPlayDisplayConfig.java': '''package com.shilapi.xcertplay.airplay;
public class AirPlayDisplayConfig {
 private final int w,h,fps,input;private final Integer pw,ph,features;private final AirPlayInsets view,safe;private final Boolean outside;private final String url;
 public AirPlayDisplayConfig(int w,int h,Integer pw,Integer ph,int fps,int input,AirPlayInsets view,AirPlayInsets safe,Boolean outside,String url,Integer features){this.w=w;this.h=h;this.pw=pw;this.ph=ph;this.fps=fps;this.input=input;this.view=view;this.safe=safe;this.outside=outside;this.url=url;this.features=features;}
 public int getWidthPixels(){return w;}public int getHeightPixels(){return h;}public Integer getWidthPhysicalMm(){return pw;}public Integer getHeightPhysicalMm(){return ph;}
 public int getFps(){return fps;}public int getPrimaryInputDevice(){return input;}public AirPlayInsets getViewArea(){return view;}public AirPlayInsets getSafeArea(){return safe;}public Boolean getSafeAreaDrawOutside(){return outside;}public String getInitialUrl(){return url;}public Integer getFeatures(){return features;}
}''',
})

STUBS["kotlin/Pair.java"] = "package kotlin; public class Pair<A,B> {private A a;private B b;public Pair(A a,B b){this.a=a;this.b=b;}public A component1(){return a;}public B component2(){return b;} }"

# Android APIs used only by the E01 OEM publisher, excluded from shipped helper DEX.
STUBS['android/content/Context.java'] = STUBS['android/content/Context.java'][:-1] + ' public boolean bindService(Intent i,ServiceConnection c,int f){return false;} public void unbindService(ServiceConnection c){} public ClassLoader getClassLoader(){return getClass().getClassLoader();} }'
STUBS['android/content/Intent.java'] = STUBS['android/content/Intent.java'][:-1] + ' public Intent setClassName(String p,String n){return this;} }'
STUBS.update({
 'android/content/ComponentName.java':'package android.content; public class ComponentName {}',
 'android/content/ServiceConnection.java':'package android.content; public interface ServiceConnection {void onServiceConnected(ComponentName c,android.os.IBinder b);void onServiceDisconnected(ComponentName c);}',
 'android/os/IBinder.java':'package android.os; public interface IBinder {String getInterfaceDescriptor() throws Exception;boolean isBinderAlive();boolean transact(int code,Parcel data,Parcel reply,int flags) throws Exception;}',
 'android/os/Parcel.java':'package android.os; public class Parcel {public static Parcel obtain(){return new Parcel();}public void writeInterfaceToken(String s){}public void writeInt(int i){}public int readInt(){return 0;}public void readException(){}public void recycle(){} }',
 'dalvik/system/PathClassLoader.java':'package dalvik.system; public class PathClassLoader extends ClassLoader {public PathClassLoader(String path,ClassLoader parent){super(parent);} }',
})

def extend_android_fixtures(files):
 # Older regression fixtures override Context/Intent. Preserve their behavior and add the new APIs.
 for path, extra, marker in [
  ('android/content/Context.java','public boolean bindService(Intent i,ServiceConnection c,int f){return false;} public void unbindService(ServiceConnection c){} public ClassLoader getClassLoader(){return getClass().getClassLoader();}', 'boolean bindService('),
  ('android/content/Intent.java','public Intent setClassName(String p,String n){return this;}','Intent setClassName(')]:
  if marker not in files[path]:
   text=files[path]; end=text.rfind('}');files[path]=text[:end]+extra+text[end:]

STUBS.update({
 'android/os/Binder.java': 'package android.os; public class Binder implements IBinder { public String getInterfaceDescriptor(){return null;} public boolean isBinderAlive(){return true;} public boolean transact(int c,Parcel d,Parcel r,int f)throws Exception{return false;} public void linkToDeath(IBinder.DeathRecipient d,int f)throws Exception{} public boolean unlinkToDeath(IBinder.DeathRecipient d,int f){return true;} public static int getCallingUid(){return 0;} }',
 'android/os/IBinder.java': 'package android.os; public interface IBinder {interface DeathRecipient{void binderDied();} String getInterfaceDescriptor() throws Exception; boolean isBinderAlive(); boolean transact(int code,Parcel data,Parcel reply,int flags) throws Exception;void linkToDeath(DeathRecipient d,int f)throws Exception;boolean unlinkToDeath(DeathRecipient d,int f);}',
 'android/os/Parcel.java': 'package android.os; public class Parcel {public static Parcel obtain(){return new Parcel();}public void writeInterfaceToken(String s){}public void enforceInterface(String s){}public void writeInt(int i){}public int readInt(){return 0;}public void writeStrongBinder(IBinder b){}public IBinder readStrongBinder(){return null;} public void writeNoException(){}public void readException(){}public void recycle(){} }',
 'android/os/SystemClock.java':'package android.os;public class SystemClock{public static long elapsedRealtime(){return 0;}}',
 'android/content/pm/PackageManager.java':'package android.content.pm;public class PackageManager{public static final int GET_SIGNATURES=64;public String[] getPackagesForUid(int uid){return null;}public PackageInfo getPackageInfo(String name,int flags)throws Exception{return null;}}',
 'android/content/pm/PackageInfo.java':'package android.content.pm;public class PackageInfo{public Signature[] signatures;}',
 'android/content/pm/Signature.java':'package android.content.pm;public class Signature{public byte[] toByteArray(){return null;}}',
})
STUBS['android/content/Context.java']=STUBS['android/content/Context.java'][:-1]+' public android.content.pm.PackageManager getPackageManager(){return null;} }'

STUBS['android/os/Process.java']='package android.os;public class Process {public static int myPid(){return 123;}public static void setThreadPriority(int priority){}}'
STUBS['android/content/pm/PackageInfo.java']='package android.content.pm;public class PackageInfo{public Signature[] signatures;public int versionCode;public String versionName;}'
STUBS['com/shilapi/xcertplay/adb/LocalAdb.java']='package com.shilapi.xcertplay.adb;public class LocalAdb {public enum Access{READY,NOT_APPROVED,UNREACHABLE,UNSUPPORTED} public LocalAdb(java.security.KeyPair k,String h,int p){} public Access connect(boolean mayAsk){return Access.UNREACHABLE;} public String shell(String s,int t){return null;} public void close(){}}'
STUBS['com/shilapi/xcertplay/adb/AdbKeys.java']='package com.shilapi.xcertplay.adb;public class AdbKeys{public static final AdbKeys INSTANCE=new AdbKeys();public java.security.KeyPair load(android.content.Context c){return null;}}'
STUBS.update({
 'android/view/View.java':'package android.view;public class View {public interface OnClickListener{void onClick(View v);}public boolean post(Runnable r){r.run();return true;}public void setEnabled(boolean b){}public void setOnClickListener(OnClickListener l){} }',
 'android/widget/TextView.java':'package android.widget;public class TextView extends android.view.View{public TextView(android.content.Context c){}public void setText(CharSequence s){}public void setTextSize(float s){}public void setTextColor(int c){} }',
 'android/widget/Button.java':'package android.widget;public class Button extends TextView{public Button(android.content.Context c){super(c);} }',
 'android/widget/LinearLayout.java':'package android.widget;public class LinearLayout extends android.view.View{public void addView(android.view.View v){} }',
})

STUBS['android/os/Looper.java']='package android.os;public class Looper{public static Looper getMainLooper(){return null;}}'
STUBS['android/os/Handler.java']='package android.os;public class Handler{public Handler(Looper l){}public boolean post(Runnable r){return true;}}'
STUBS['com/shilapi/xcertplay/E01ClusterMode.java']='package com.shilapi.xcertplay;final class E01ClusterMode{static String amapAccessMessage(android.content.Context c,boolean ask){return "";}static void displayConfigured(String s){}}'

# Compile-only APIs for the inline hotspot editor; never shipped in the APK.
STUBS['android/content/Context.java']=STUBS['android/content/Context.java'][:-1]+' public SharedPreferences getSharedPreferences(String n,int m){return null;} public void startActivity(Intent i){} }'
STUBS.update({
 'android/content/SharedPreferences.java':'package android.content;public interface SharedPreferences {String getString(String k,String d);Editor edit();interface Editor {Editor putString(String k,String v);Editor putBoolean(String k,boolean v);boolean commit();}}',
 'android/text/Editable.java':'package android.text;public interface Editable extends CharSequence {}',
 'android/widget/EditText.java':'package android.widget;public class EditText extends TextView {public EditText(android.content.Context c){super(c);}public void setHint(CharSequence s){}public void setSingleLine(){}public void setInputType(int i){}public android.text.Editable getText(){return null;}public void setSelection(int i){}public void clearFocus(){}}',
 'android/widget/CompoundButton.java':'package android.widget;public class CompoundButton extends Button {public CompoundButton(android.content.Context c){super(c);}public interface OnCheckedChangeListener{void onCheckedChanged(CompoundButton b,boolean c);}public void setOnCheckedChangeListener(OnCheckedChangeListener l){}}',
 'android/widget/CheckBox.java':'package android.widget;public class CheckBox extends CompoundButton {public CheckBox(android.content.Context c){super(c);}}',
 'com/shilapi/xcertplay/AirPlayPersistence.java':'package com.shilapi.xcertplay;public class AirPlayPersistence {public static final AirPlayPersistence INSTANCE=new AirPlayPersistence();public boolean syncManualHotspotFromSystem(android.content.Context c){return false;}public String loadManualHotspotSsid(android.content.Context c){return "";}public String loadManualHotspotPassphrase(android.content.Context c){return "";}public void saveManualHotspotSsid(android.content.Context c,String s){}public void saveManualHotspotPassphrase(android.content.Context c,String s){}public void saveManualHotspotSecurity(android.content.Context c,com.shilapi.xcertplay.orchestration.ManualHotspotSecurity s){}}',
 'com/shilapi/xcertplay/network/FreeAutoHotspotName.java':'package com.shilapi.xcertplay.network;public class FreeAutoHotspotName {public static final FreeAutoHotspotName INSTANCE=new FreeAutoHotspotName();public String name(android.content.Context c,String s){return "";}public String persistedPassword(android.content.Context c){return null;}}',
 'com/shilapi/xcertplay/orchestration/ManualHotspotSecurity.java':'package com.shilapi.xcertplay.orchestration;public enum ManualHotspotSecurity{OPEN,WPA2}',
})

STUBS['com/shilapi/xcertplay/DiagnosticRedactor.java']='package com.shilapi.xcertplay;public class DiagnosticRedactor {public static final DiagnosticRedactor INSTANCE=new DiagnosticRedactor();public String redact(String s){return s;}}'

# Compile-only native action button APIs; all are available on Android 5.1.
STUBS.update({
 'android/R.java': 'package android;public final class R {public static final class attr {public static final int state_enabled=16842910;}}',
 'android/content/res/ColorStateList.java': 'package android.content.res;public class ColorStateList {public ColorStateList(int[][] s,int[] c){}public static ColorStateList valueOf(int c){return null;}}',
 'android/content/res/Resources.java': 'package android.content.res;public class Resources {public android.util.DisplayMetrics getDisplayMetrics(){return null;}}',
 'android/util/DisplayMetrics.java': 'package android.util;public class DisplayMetrics {public float density;public int widthPixels;}',
 'android/graphics/Typeface.java': 'package android.graphics;public class Typeface {public static Typeface create(String n,int s){return null;}}',
 'android/graphics/drawable/Drawable.java': 'package android.graphics.drawable;public class Drawable {public void setAlpha(int a){}}',
 'android/graphics/drawable/StateListDrawable.java': 'package android.graphics.drawable;public class StateListDrawable extends Drawable {public StateListDrawable(){}public void addState(int[] s,Drawable d){}}',
 'com/shilapi/xcertplay/Glass.java': 'package com.shilapi.xcertplay;public class Glass {public static final Glass INSTANCE=new Glass();public enum Kind {CONTROL}public static class Palette {}public Palette getCurrent(){return null;}public int getRIPPLE(){return 0;}public int getMUTED(){return 0;}public int getTEXT(){return 0;}public android.graphics.drawable.Drawable panel(android.content.Context c,Kind k,float r,Palette p){return null;}}',
 'com/shilapi/xcertplay/LegacyViewsKt.java': 'package com.shilapi.xcertplay;public class LegacyViewsKt {public static android.graphics.drawable.Drawable rippleCompat(android.content.res.ColorStateList c,android.graphics.drawable.Drawable d,android.graphics.drawable.Drawable m){return null;}public static void setBackgroundCompat(android.view.View v,android.graphics.drawable.Drawable d){}public static void clearStateListAnimatorCompat(android.view.View v){}}',
})
STUBS['android/content/Context.java'] = STUBS['android/content/Context.java'][:-1] + ' public android.content.res.Resources getResources(){return null;} }'
STUBS['android/view/View.java'] = STUBS['android/view/View.java'][:-1] + ' public android.content.Context getContext(){return null;} public void setBackgroundTintList(android.content.res.ColorStateList c){}public void setElevation(float v){}public void setPadding(int l,int t,int r,int b){}public void setMinimumHeight(int v){} }'
STUBS['android/widget/TextView.java'] = STUBS['android/widget/TextView.java'][:-1] + ' public void setAllCaps(boolean b){}public void setMinHeight(int v){}public void setTypeface(android.graphics.Typeface t){}public void setTextColor(android.content.res.ColorStateList c){} }'

# Compile-only view hierarchy APIs for one-time layout arrangement.
STUBS.update({
 'android/view/ViewParent.java': 'package android.view;public interface ViewParent {}',
 'android/view/ViewGroup.java': 'package android.view;public class ViewGroup extends View implements ViewParent {public int getChildCount(){return 0;}public View getChildAt(int n){return null;}public void addView(View v){}public void addView(View v,LayoutParams p){}public void addView(View v,int i,LayoutParams p){}public void addView(View v,int i){}public int indexOfChild(View v){return 0;}public void removeView(View v){}public void removeAllViews(){}public static class LayoutParams {public static final int MATCH_PARENT=-1,WRAP_CONTENT=-2;public int width,height;public LayoutParams(int w,int h){width=w;height=h;}}public static class MarginLayoutParams extends LayoutParams {public int leftMargin,rightMargin,topMargin,bottomMargin;public MarginLayoutParams(int w,int h){super(w,h);}}}',
 'android/view/Gravity.java': 'package android.view;public class Gravity {public static final int CENTER=17,CENTER_VERTICAL=16;}',
 'android/widget/LinearLayout.java': 'package android.widget;public class LinearLayout extends android.view.ViewGroup {public static final int HORIZONTAL=0,VERTICAL=1;public LinearLayout(){}public LinearLayout(android.content.Context c){}public void setOrientation(int o){}public int getOrientation(){return 0;}public void setGravity(int g){}public static class LayoutParams extends android.view.ViewGroup.MarginLayoutParams {public float weight;public LayoutParams(int w,int h,float f){super(w,h);weight=f;}}}',
 'android/widget/ScrollView.java': 'package android.widget;public class ScrollView extends android.view.ViewGroup {}',
 'android/widget/ImageView.java': 'package android.widget;public class ImageView extends android.view.View {}',
 'android/text/TextUtils.java': 'package android.text;public class TextUtils {public enum TruncateAt {END}}',
 'android/content/DialogInterface.java': 'package android.content;public interface DialogInterface {public interface OnClickListener {void onClick(DialogInterface d,int w);}}',
 'android/app/AlertDialog.java': 'package android.app;public class AlertDialog {public static class Builder {public Builder(android.content.Context c){}public Builder setTitle(CharSequence t){return this;}public Builder setMessage(CharSequence t){return this;}public Builder setPositiveButton(int i,android.content.DialogInterface.OnClickListener c){return this;}public AlertDialog show(){return null;}}}',
 'com/shilapi/xcertplay/FitText.java': 'package com.shilapi.xcertplay;public class FitText extends android.widget.TextView {public FitText(android.content.Context c){super(c);}public void setOneLineMinSp(float s){}}',
})
STUBS['android/R.java'] = 'package android;public final class R {public static final class attr {public static final int state_enabled=16842910;}public static final class string {public static final int ok=17039370;}}'
STUBS['android/view/View.java'] = STUBS['android/view/View.java'][:-1] + ' public ViewParent getParent(){return null;}public ViewGroup.LayoutParams getLayoutParams(){return null;}public void setLayoutParams(ViewGroup.LayoutParams p){}public void setContentDescription(CharSequence s){}public void setFocusable(boolean b){} }'
STUBS['android/widget/TextView.java'] = STUBS['android/widget/TextView.java'][:-1] + ' public CharSequence getText(){return null;}public void setMaxLines(int n){}public void setEllipsize(android.text.TextUtils.TruncateAt t){}public void setGravity(int g){} }'

# Compile-only API 22 geometry and static instrument bezel APIs.
STUBS['android/view/View.java'] = STUBS['android/view/View.java'][:-1] + ' public View(){}public View(android.content.Context c){}protected void onSizeChanged(int w,int h,int ow,int oh){}protected void onDraw(android.graphics.Canvas c){} }'
STUBS.update({
 'android/widget/FrameLayout.java':'package android.widget;public class FrameLayout extends android.view.ViewGroup {public FrameLayout(android.content.Context c){}public static class LayoutParams extends android.view.ViewGroup.MarginLayoutParams{public int gravity;public LayoutParams(int w,int h){super(w,h);}public LayoutParams(int w,int h,int g){super(w,h);gravity=g;}}}',
 'android/view/SurfaceView.java':'package android.view;public class SurfaceView extends View {public SurfaceView(android.content.Context c){super(c);}public void setZOrderOnTop(boolean b){}public void setZOrderMediaOverlay(boolean b){}}',
 'android/graphics/Point.java':'package android.graphics;public class Point {public int x,y;public Point(){}public Point(int x,int y){this.x=x;this.y=y;}}',
 'android/graphics/Canvas.java':'package android.graphics;public class Canvas {public void drawPath(Path p,Paint b){}}',
 'android/graphics/Shader.java':'package android.graphics;public class Shader {public enum TileMode{CLAMP,REPEAT,MIRROR}}',
 'android/graphics/LinearGradient.java':'package android.graphics;public class LinearGradient extends Shader {public LinearGradient(float x0,float y0,float x1,float y1,int[] colors,float[] stops,TileMode m){}}',
 'android/graphics/Paint.java':'package android.graphics;public class Paint {public enum Style{FILL,STROKE,FILL_AND_STROKE}public Paint(int f){}public void setStyle(Style s){}public void setColor(int c){}public void setStrokeWidth(float w){}public Shader setShader(Shader s){return null;}}',
 'android/graphics/Path.java':'package android.graphics;public class Path {public enum FillType{WINDING,EVEN_ODD,INVERSE_WINDING,INVERSE_EVEN_ODD}public enum Direction{CW,CCW}public Path(){}public void reset(){}public void setFillType(FillType t){}public void addRect(float l,float t,float r,float b,Direction d){}public void addPath(Path p){}public void moveTo(float x,float y){}public void lineTo(float x,float y){}public void cubicTo(float x1,float y1,float x2,float y2,float x3,float y3){}public void close(){}}',
})

# API21+ Canvas/Path overloads, available on target Android5.1/API22.
STUBS['android/graphics/Path.java']=STUBS['android/graphics/Path.java'][:-1]+' public void addRoundRect(float l,float t,float r,float b,float rx,float ry,Direction d){} }'
STUBS['android/graphics/Canvas.java']='package android.graphics;public class Canvas {public int save(){return 0;}public void restore(){}public boolean clipPath(Path p){return true;}public void drawRect(float l,float t,float r,float b,Paint p){}public void drawPath(Path p,Paint b){}}'

# API22 display-only music card. Compile-time contracts only, excluded from shipped DEX.
STUBS['android/view/View.java']=STUBS['android/view/View.java'][:-1]+' protected void onAttachedToWindow(){}protected void onDetachedFromWindow(){}public void postInvalidate(){} }'
STUBS['android/graphics/Paint.java']=STUBS['android/graphics/Paint.java'][:-1]+' public enum Align{LEFT,CENTER,RIGHT}public void setTextAlign(Align a){}public void setTextSize(float s){}public android.graphics.Typeface setTypeface(android.graphics.Typeface t){return null;}public float measureText(String s){return 0;}public int breakText(String s,boolean f,float w,float[] measured){return 0;} }'
STUBS['android/graphics/Canvas.java']=STUBS['android/graphics/Canvas.java'][:-1]+' public void drawText(String s,float x,float y,Paint p){}public void drawLine(float x,float y,float x1,float y1,Paint p){}public void drawCircle(float x,float y,float r,Paint p){} }'

# Android API 22 artwork rendering (compile-only; never packaged).
STUBS['android/graphics/Bitmap.java']='package android.graphics;public class Bitmap{public int getWidth(){return 0;}public int getHeight(){return 0;}}'
STUBS['android/graphics/BitmapFactory.java']='package android.graphics;public class BitmapFactory{public static class Options{public boolean inJustDecodeBounds,inScaled;public int outWidth,outHeight,inSampleSize;}public static Bitmap decodeByteArray(byte[] b,int o,int n,Options p){return null;}}'
STUBS['android/graphics/Rect.java']='package android.graphics;public class Rect{public Rect(){}public void set(int l,int t,int r,int b){}}'
STUBS['android/graphics/RectF.java']='package android.graphics;public class RectF{public RectF(){}public void set(float l,float t,float r,float b){}}'
STUBS['android/graphics/Canvas.java']=STUBS['android/graphics/Canvas.java'][:-1]+' public void drawBitmap(Bitmap bitmap,Rect source,RectF destination,Paint paint){} }'

# Public existing session API used by manual live zoom buttons; compile-only.
STUBS['com/shilapi/xcertplay/airplay/AirPlaySession.java']='package com.shilapi.xcertplay.airplay;public class AirPlaySession{public boolean sendCommand(java.util.Map<String,Object> command){return false;}public void sendMedia(int action){}}'
STUBS['com/shilapi/xcertplay/airplay/AirPlayInfoPlist.java']='package com.shilapi.xcertplay.airplay;public class AirPlayInfoPlist{public static final String ALT_UUID="b7e6c5a0-2222-4000-8000-000000000002";}'

STUBS['android/view/View.java']=STUBS['android/view/View.java'][:-1]+' public void setMinimumWidth(int i){} }'
STUBS['android/hardware/usb/UsbDevice.java']='package android.hardware.usb;public class UsbDevice{}'
STUBS['com/shilapi/xcertplay/usbbt/UsbBtControllerInfo.java']='package com.shilapi.xcertplay.usbbt;public class UsbBtControllerInfo{}'
STUBS['com/shilapi/xcertplay/usbbt/UsbBtHost.java']='package com.shilapi.xcertplay.usbbt;public class UsbBtHost{public enum Phase{IDLE,STARTING,DISCOVERABLE,FAILED,STOPPED}public static class Status{public Phase getPhase(){return null;}public UsbBtControllerInfo getController(){return null;}public String getError(){return null;}}}'
STUBS['com/shilapi/xcertplay/usbbt/UsbBtSession.java']='package com.shilapi.xcertplay.usbbt;public class UsbBtSession{public static final UsbBtSession INSTANCE=new UsbBtSession();public UsbBtHost.Status getLastStatus(){return null;}public android.hardware.usb.UsbDevice dongle(android.content.Context c){return null;}public boolean hasPermission(android.content.Context c,android.hardware.usb.UsbDevice d){return false;}}'

# Exact shipped Kotlin legacy hotspot bridge; compile-only, never packaged.
STUBS['kotlin/jvm/functions/Function1.java']='package kotlin.jvm.functions;public interface Function1<A,B>{B invoke(A a);}'
STUBS['com/shilapi/xcertplay/network/LegacySoftApManager.java']='package com.shilapi.xcertplay.network;public class LegacySoftApManager{public static final Companion Companion=new Companion();public static class Companion{public enum SwitchOn{SWITCHED_ON,ALREADY_ON,NEEDS_PERMISSION,REFUSED,TIMED_OUT,UNSUPPORTED}public static SwitchOn switchOnSystemHotspot$default(Companion self,android.content.Context c,long timeout,kotlin.jvm.functions.Function1 callback,int mask,Object marker){return SwitchOn.UNSUPPORTED;}}}'

# Native wheel track switch and one-time legacy key preference cleanup (API 22).
STUBS['android/content/SharedPreferences.java']=STUBS['android/content/SharedPreferences.java'].replace('String getString(', 'java.util.Map<String,?> getAll();String getString(').replace('Editor putString(', 'void apply();Editor remove(String k);Editor putString(')
STUBS['android/widget/CompoundButton.java']=STUBS['android/widget/CompoundButton.java'][:-1]+' public void setChecked(boolean c){} }'
STUBS['android/widget/Switch.java']='package android.widget;public class Switch extends CompoundButton{public Switch(android.content.Context c){super(c);}public void setTextOn(CharSequence s){}public void setTextOff(CharSequence s){}public void setShowText(boolean b){}}'
STUBS['android/app/Activity.java']='package android.app;public class Activity extends android.content.Context{public void setContentView(android.view.View v){}}'
STUBS['android/widget/Toast.java']='package android.widget;public class Toast{public static final int LENGTH_SHORT=0;public static Toast makeText(android.content.Context c,CharSequence t,int d){return null;}public void show(){}}'

# Existing native toggle tint APIs, also used by the wheel settings row.
STUBS['com/shilapi/xcertplay/Glass.java']=STUBS['com/shilapi/xcertplay/Glass.java'][:-1]+' public int getACCENT(){return 0;} }'
STUBS['com/shilapi/xcertplay/LegacyViewsKt.java']=STUBS['com/shilapi/xcertplay/LegacyViewsKt.java'][:-1]+' public static void setButtonTintCompat(android.widget.CompoundButton b,android.content.res.ColorStateList c){} }'

# API22 STA/AP switching, called only on the existing hotspot worker.
STUBS['android/net/wifi/WifiManager.java']='package android.net.wifi;public class WifiManager {public int getWifiState(){return 1;}public boolean setWifiEnabled(boolean on){return false;}}'
STUBS['android/content/Context.java']=STUBS['android/content/Context.java'][:-1]+' public Object getSystemService(String n){return null;} public int checkCallingOrSelfPermission(String p){return 0;} }'

STUBS['android/net/wifi/WifiConfiguration.java']='package android.net.wifi;public class WifiConfiguration{}'

# Compile-only API22 overlay animation and surface resume contracts.
STUBS.update({'android/app/Presentation.java': 'package android.app; public class Presentation { public android.view.Display getDisplay(){return null;} public android.content.Context getContext(){return null;}  public boolean isShowing(){return false;} }', 'android/view/View.java': 'package android.view;public class View {public interface OnClickListener{void onClick(View v);}public boolean post(Runnable r){r.run();return true;}public void setEnabled(boolean b){}public void setOnClickListener(OnClickListener l){}  public android.content.Context getContext(){return null;} public void setBackgroundTintList(android.content.res.ColorStateList c){}public void setElevation(float v){}public void setPadding(int l,int t,int r,int b){}public void setMinimumHeight(int v){}  public ViewParent getParent(){return null;}public ViewGroup.LayoutParams getLayoutParams(){return null;}public void setLayoutParams(ViewGroup.LayoutParams p){}public void setContentDescription(CharSequence s){}public void setFocusable(boolean b){}  public View(){}public View(android.content.Context c){}protected void onSizeChanged(int w,int h,int ow,int oh){}protected void onDraw(android.graphics.Canvas c){}  protected void onAttachedToWindow(){}protected void onDetachedFromWindow(){}public void postInvalidate(){}  public void setMinimumWidth(int i){}  public static final int VISIBLE=0,GONE=8;public void setVisibility(int v){}public void invalidate(){}public int getWidth(){return 0;}public int getHeight(){return 0;}public void setClickable(boolean c){}public void setImportantForAccessibility(int v){} }', 'android/widget/LinearLayout.java': 'package android.widget;public class LinearLayout extends android.view.ViewGroup {public static final int HORIZONTAL=0,VERTICAL=1;public LinearLayout(){}public LinearLayout(android.content.Context c){}public void setOrientation(int o){}public int getOrientation(){return 0;}public void setGravity(int g){}public static class LayoutParams extends android.view.ViewGroup.MarginLayoutParams {public float weight;public LayoutParams(int w,int h){super(w,h);}public LayoutParams(int w,int h,float f){super(w,h);weight=f;}}}', 'android/os/Handler.java': 'package android.os;public class Handler{public Handler(Looper l){}public boolean post(Runnable r){return true;} public boolean postDelayed(Runnable r,long ms){return true;}public void removeCallbacks(Runnable r){} }', 'android/widget/CompoundButton.java': 'package android.widget;public class CompoundButton extends Button {public CompoundButton(android.content.Context c){super(c);}public interface OnCheckedChangeListener{void onCheckedChanged(CompoundButton b,boolean c);}public void setOnCheckedChangeListener(OnCheckedChangeListener l){} public void setChecked(boolean c){}  public boolean isChecked(){return false;} }', 'android/graphics/Canvas.java': 'package android.graphics;public class Canvas {public int save(){return 0;}public void restore(){}public boolean clipPath(Path p){return true;}public void drawRect(float l,float t,float r,float b,Paint p){}public void drawPath(Path p,Paint b){} public void drawText(String s,float x,float y,Paint p){}public void drawLine(float x,float y,float x1,float y1,Paint p){}public void drawCircle(float x,float y,float r,Paint p){}  public void drawBitmap(Bitmap bitmap,Rect source,RectF destination,Paint paint){}  public void restoreToCount(int n){}public void scale(float x,float y){}public void translate(float x,float y){}public void drawRect(RectF r,Paint p){}public int saveLayerAlpha(float l,float t,float r,float b,int alpha,int flags){return 0;} }', 'android/graphics/Paint.java': 'package android.graphics;public class Paint {public enum Style{FILL,STROKE,FILL_AND_STROKE}public Paint(int f){}public void setStyle(Style s){}public void setColor(int c){}public void setStrokeWidth(float w){}public Shader setShader(Shader s){return null;} public enum Align{LEFT,CENTER,RIGHT}public void setTextAlign(Align a){}public void setTextSize(float s){}public android.graphics.Typeface setTypeface(android.graphics.Typeface t){return null;}public float measureText(String s){return 0;}public int breakText(String s,boolean f,float w,float[] measured){return 0;}  public enum Cap{BUTT,ROUND,SQUARE}public void setStrokeCap(Cap cap){}public void setAlpha(int alpha){}public void setTextScaleX(float x){} }', 'android/graphics/Path.java': 'package android.graphics;public class Path {public enum FillType{WINDING,EVEN_ODD,INVERSE_WINDING,INVERSE_EVEN_ODD}public enum Direction{CW,CCW}public Path(){}public void reset(){}public void setFillType(FillType t){}public void addRect(float l,float t,float r,float b,Direction d){}public void addPath(Path p){}public void moveTo(float x,float y){}public void lineTo(float x,float y){}public void cubicTo(float x1,float y1,float x2,float y2,float x3,float y3){}public void close(){} public void addRoundRect(float l,float t,float r,float b,float rx,float ry,Direction d){}  public void addRoundRect(RectF r,float x,float y,Direction dir){} }', 'android/graphics/RectF.java': 'package android.graphics;public class RectF{public RectF(){}public void set(float l,float t,float r,float b){} public float left,top,right,bottom; }', 'android/app/Activity.java': 'package android.app;public class Activity extends android.content.Context{public void setContentView(android.view.View v){} public boolean isFinishing(){return false;}public android.view.Window getWindow(){return null;} }', 'android/view/Window.java': 'package android.view;public class Window{public View getDecorView(){return null;}}', 'android/view/Surface.java': 'package android.view;public class Surface{public boolean isValid(){return true;}}', 'android/animation/Animator.java': 'package android.animation;public abstract class Animator{public interface AnimatorListener{void onAnimationStart(Animator a);void onAnimationEnd(Animator a);void onAnimationCancel(Animator a);void onAnimationRepeat(Animator a);}public void start(){}public void cancel(){}public void addListener(AnimatorListener l){}}', 'android/animation/AnimatorListenerAdapter.java': 'package android.animation;public class AnimatorListenerAdapter implements Animator.AnimatorListener{public void onAnimationStart(Animator a){}public void onAnimationEnd(Animator a){}public void onAnimationCancel(Animator a){}public void onAnimationRepeat(Animator a){}}', 'android/animation/TimeInterpolator.java': 'package android.animation;public interface TimeInterpolator{float getInterpolation(float input);}', 'android/view/animation/Interpolator.java': 'package android.view.animation;public interface Interpolator extends android.animation.TimeInterpolator{}', 'android/view/animation/LinearInterpolator.java': 'package android.view.animation;public class LinearInterpolator implements Interpolator{public float getInterpolation(float t){return t;}}', 'android/animation/ValueAnimator.java': 'package android.animation;public class ValueAnimator extends Animator{public interface AnimatorUpdateListener{void onAnimationUpdate(ValueAnimator a);}public static ValueAnimator ofFloat(float...v){return null;}public ValueAnimator setDuration(long ms){return this;}public void setInterpolator(TimeInterpolator t){}public void addUpdateListener(AnimatorUpdateListener l){}public Object getAnimatedValue(){return null;}}'})

# API contracts for precise missing-package handling and themed input hints.
STUBS['android/content/pm/PackageManager.java']=STUBS['android/content/pm/PackageManager.java'][:-1]+' public static class NameNotFoundException extends Exception {} }'
STUBS['android/widget/TextView.java']=STUBS['android/widget/TextView.java'][:-1]+' public void setHintTextColor(int c){} }'
