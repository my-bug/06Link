package com.shilapi.xcertplay;
import android.content.Context;
import android.graphics.Typeface;
import android.view.Gravity;
import android.widget.LinearLayout;
import android.widget.TextView;
/** E01 fixed OEM routing: display the same mapping used by AudioRenderer, no ineffective selectors. */
public final class E01AudioSettings {
 public static boolean add(Context c,LinearLayout parent) {
  if(!E01AudioRoute.supported()) return false;
  TextView note=text(c,"已匹配原车声道，播报时音量键调节对应声音。",14,Glass.INSTANCE.getCurrent().getMuted());
  note.setPadding(0,dp(c,8),0,dp(c,12));parent.addView(note,new LinearLayout.LayoutParams(-1,-2));
  row(c,parent,"音乐",channel("MEDIA"));
  row(c,parent,"导航播报",channel("NAVIGATION"));
  row(c,parent,"Siri / 语音助手",channel("ASSISTANT"));
  row(c,parent,"通话",channel("PHONE"));
  row(c,parent,"系统提示音","原车管理");
  row(c,parent,"来电铃声","原车管理");
  return true;
 }
 private static String channel(String key){return "原厂声道 "+E01AudioRoute.stream(key);}
 private static int dp(Context c,int n){return Math.round(n*c.getResources().getDisplayMetrics().density);}
 private static TextView text(Context c,String s,int size,int color){TextView t=new TextView(c);t.setText(s);t.setTextSize(size);t.setTextColor(color);return t;}
 private static void row(Context c,LinearLayout parent,String label,String value){
  LinearLayout box=new LinearLayout(c);box.setOrientation(LinearLayout.HORIZONTAL);box.setGravity(Gravity.CENTER_VERTICAL);
  box.setMinimumHeight(dp(c,60));box.setPadding(dp(c,16),dp(c,12),dp(c,16),dp(c,12));
  LegacyViewsKt.setBackgroundCompat(box,Glass.INSTANCE.panel(c,Glass.Kind.CONTROL,12f,Glass.INSTANCE.getCurrent()));
  TextView title=text(c,label,17,Glass.INSTANCE.getTEXT());title.setTypeface(Typeface.create("sans-serif-medium",0));
  box.addView(title,new LinearLayout.LayoutParams(0,-2,1f));
  TextView detail=text(c,value,15,Glass.INSTANCE.getCurrent().getMuted());detail.setGravity(Gravity.RIGHT);
  detail.setPadding(dp(c,12),0,0,0);box.addView(detail,new LinearLayout.LayoutParams(-2,-2));
  LinearLayout.LayoutParams lp=new LinearLayout.LayoutParams(-1,-2);lp.bottomMargin=dp(c,8);parent.addView(box,lp);
 }
 private E01AudioSettings(){}
}
