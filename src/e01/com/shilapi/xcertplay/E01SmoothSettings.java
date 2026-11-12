package com.shilapi.xcertplay;
import android.app.Activity;import android.content.Context;import android.content.res.ColorStateList;import android.view.*;import android.widget.*;
public final class E01SmoothSettings {
 public static void add(final Activity a,LinearLayout parent){
  row(a,parent,"流畅视频","使用主屏直出，重连生效","smooth",false);
  row(a,parent,"MTK低延迟","仅适配MTK解码器，重连后生效","mtk",true);
 }
 static void row(final Context c,LinearLayout parent,String name,String explanation,final String key,boolean fallback){
  final android.content.SharedPreferences p=c.getSharedPreferences(E01SmoothVideo.PREF,0);
  float d=c.getResources().getDisplayMetrics().density;
  LinearLayout box=new LinearLayout(c);box.setOrientation(1);box.setPadding((int)(16*d),(int)(12*d),(int)(16*d),(int)(12*d));
  LegacyViewsKt.setBackgroundCompat(box,Glass.INSTANCE.panel(c,Glass.Kind.CONTROL,12f,Glass.INSTANCE.getCurrent()));
  LinearLayout line=new LinearLayout(c);line.setGravity(Gravity.CENTER_VERTICAL);
  TextView title=new TextView(c);title.setText(name);title.setTextSize(17);title.setTextColor(Glass.INSTANCE.getTEXT());line.addView(title,new LinearLayout.LayoutParams(0,-2,1));
  final Switch toggle=new Switch(c);toggle.setShowText(false);toggle.setTextOn("");toggle.setTextOff("");toggle.setContentDescription(name);toggle.setMinHeight((int)(56*d));LegacyViewsKt.setButtonTintCompat(toggle,ColorStateList.valueOf(Glass.INSTANCE.getACCENT()));toggle.setChecked(p.getBoolean(key,fallback));
  toggle.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(){boolean resetting;public void onCheckedChanged(CompoundButton b,boolean on){if(resetting)return;if(!p.edit().putBoolean(key,on).commit()){resetting=true;b.setChecked(!on);resetting=false;Toast.makeText(c,"保存失败",0).show();}else Toast.makeText(c,"停止CarPlay后重新连接生效",0).show();}});
  line.addView(toggle,new LinearLayout.LayoutParams(-2,-2));box.addView(line);
  TextView detail=new TextView(c);detail.setText(explanation);detail.setTextSize(13);detail.setTextColor(Glass.INSTANCE.getTEXT());box.addView(detail);
  LinearLayout.LayoutParams lp=new LinearLayout.LayoutParams(-1,-2);lp.topMargin=(int)(10*d);parent.addView(box,lp);
 }
}
