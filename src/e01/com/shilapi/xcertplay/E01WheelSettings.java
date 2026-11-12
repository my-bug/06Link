package com.shilapi.xcertplay;
import android.app.Activity;
import android.content.Context;
import android.widget.*;
/** One native persisted switch; no key capture, assignment, or learning flow. */
public final class E01WheelSettings implements CompoundButton.OnCheckedChangeListener {
 private final Context context;
 private final int option;
 private E01WheelSettings(Context c,LinearLayout parent,int kind){
  context=c;option=kind;String label=kind==2?"语音键唤起 Siri":kind==1?"播放 / 暂停":"上下首切换";E01WheelKeys.init(c);
  float density=c.getResources().getDisplayMetrics().density;
  LinearLayout row=new LinearLayout(c);row.setOrientation(LinearLayout.HORIZONTAL);
  row.setGravity(android.view.Gravity.CENTER_VERTICAL);
  int inset=Math.round(16*density),vertical=Math.round(8*density);
  row.setPadding(inset,vertical,inset,vertical);row.setMinimumHeight(Math.round(72*density));
  LegacyViewsKt.setBackgroundCompat(row,Glass.INSTANCE.panel(c,Glass.Kind.CONTROL,12f,Glass.INSTANCE.getCurrent()));
  TextView title=new TextView(c);title.setText(label);title.setTextSize(17);
  title.setTextColor(Glass.INSTANCE.getTEXT());
  title.setTypeface(android.graphics.Typeface.create("sans-serif-medium",0));
  row.addView(title,new LinearLayout.LayoutParams(0,-2,1f));
  Switch toggle=new Switch(c);
  // Keep the native switch graphic separate from the label. On/off text must
  // never occupy its thumb; use the checked accessibility state instead.
  toggle.setShowText(false);toggle.setTextOn("");toggle.setTextOff("");
  toggle.setContentDescription(label);toggle.setMinHeight(Math.round(56*density));
  LegacyViewsKt.setButtonTintCompat(toggle,android.content.res.ColorStateList.valueOf(Glass.INSTANCE.getACCENT()));
  toggle.setChecked(current());
  toggle.setOnCheckedChangeListener(this);
  row.addView(toggle,new LinearLayout.LayoutParams(-2,-2,0f));
  parent.addView(row,new LinearLayout.LayoutParams(-1,-2,0f));
 }
 public static void add(Context c,LinearLayout parent){
  new E01WheelSettings(c,parent,0);
  android.view.View gap=new android.view.View(c);
  parent.addView(gap,new LinearLayout.LayoutParams(-1,Math.round(12*c.getResources().getDisplayMetrics().density),0f));
  new E01WheelSettings(c,parent,1);
  android.view.View voiceGap=new android.view.View(c);
  parent.addView(voiceGap,new LinearLayout.LayoutParams(-1,Math.round(12*c.getResources().getDisplayMetrics().density),0f));
  new E01WheelSettings(c,parent,2);
 }
 public static void show(Activity a){
  LinearLayout root=new LinearLayout(a);root.setOrientation(LinearLayout.VERTICAL);
  int p=Math.round(24*a.getResources().getDisplayMetrics().density);root.setPadding(p,p,p,p);
  add(a,root);a.setContentView(root);
 }
 private boolean current(){return option==2?E01SiriKey.isEnabled():option==1?E01WheelKeys.isPlayPauseEnabled():E01WheelKeys.isEnabled();}
 public void onCheckedChanged(CompoundButton button,boolean on){
  if(option==2?E01SiriKey.setEnabled(context,on):option==1?E01WheelKeys.setPlayPauseEnabled(context,on):E01WheelKeys.setEnabled(context,on))return;
  button.setOnCheckedChangeListener(null);button.setChecked(current());button.setOnCheckedChangeListener(this);
  Toast.makeText(context,"保存失败，请重试",Toast.LENGTH_SHORT).show();
 }
}
