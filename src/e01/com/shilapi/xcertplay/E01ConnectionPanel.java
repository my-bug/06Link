package com.shilapi.xcertplay;

import android.app.Activity;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.view.*;
import android.widget.*;
import java.util.*;

/** Production waiting screen. Reads current progress, never expands a step list. */
public final class E01ConnectionPanel extends FrameLayout {
    private final Activity host;
    private final TextView mode,step,position;
    private final boolean dark;
    private final int ink,muted,accent;
    private String previous="";
    private int dp(int n){return Math.round(n*getResources().getDisplayMetrics().density);}
    private TextView text(String value,int size,int color,boolean bold){TextView v=new TextView(host);v.setText(value);v.setTextSize(size);v.setTextColor(color);v.setIncludeFontPadding(false);v.setTypeface(Typeface.create(bold?"sans-serif-medium":"sans-serif",0));v.setLineSpacing(dp(3),1);return v;}
    private GradientDrawable background(int color,int radius,boolean border){GradientDrawable d=new GradientDrawable();d.setColor(color);d.setCornerRadius(dp(radius));if(border)d.setStroke(dp(1),dark?0xff344355:0xffDCE3EB);return d;}
    private LinearLayout column(){LinearLayout l=new LinearLayout(host);l.setOrientation(LinearLayout.VERTICAL);return l;}
    private void gap(LinearLayout l,int n){l.addView(new View(host),new LinearLayout.LayoutParams(1,dp(n)));}
    private static void field(Activity a,String key,Object value){E01NativeSettings.field(a,key,value);}
    private Button action(String value,Runnable callback){Button b=new Button(host);b.setText(value);E01Dialogs.button(b,false);b.setTextSize(15);b.setMinHeight(dp(48));b.setMinimumHeight(dp(48));b.setOnClickListener(v->callback.run());return b;}
    private E01ConnectionPanel(Activity a){super(a);host=a;
        dark=(Boolean)E01NativeSettings.call(E01NativeSettings.singleton("Appearance"),"isDark",a,Calendar.getInstance());
        ink=dark?0xffECF2FA:0xff202D40;muted=dark?0xffA7B6C8:0xff64748A;accent=dark?0xff80B4FF:0xff1767D9;
        E01NativeSettings.call(E01NativeSettings.singleton("Glass"),"use",dark);
        field(a,"panelDark",dark);setBackgroundColor(dark?0xff101820:0xffF4F6F9);setClickable(true);
        ScrollView scroll=new ScrollView(a);scroll.setFillViewport(true);scroll.setVerticalScrollBarEnabled(false);addView(scroll,new FrameLayout.LayoutParams(-1,-1));
        LinearLayout center=column();center.setGravity(Gravity.CENTER);center.setPadding(dp(24),dp(18),dp(24),dp(18));scroll.addView(center,new ScrollView.LayoutParams(-1,-1));
        LinearLayout card=column();card.setPadding(dp(22),dp(20),dp(22),dp(18));card.setBackground(background(dark?0xff1D2A37:Color.WHITE,12,true));
        int available=getResources().getDisplayMetrics().widthPixels-dp(48);center.addView(card,new LinearLayout.LayoutParams(Math.min(dp(560),available),-2));
        LinearLayout brand=new LinearLayout(a);brand.setGravity(Gravity.CENTER_VERTICAL);ImageView logo=new ImageView(a);logo.setImageResource(a.getApplicationInfo().icon);logo.setScaleType(ImageView.ScaleType.FIT_CENTER);brand.addView(logo,new LinearLayout.LayoutParams(dp(32),dp(32)));
        TextView name=text("06Link",19,ink,true);name.setPadding(dp(10),0,0,0);brand.addView(name,new LinearLayout.LayoutParams(0,-2,1));mode=text("",13,muted,false);brand.addView(mode);card.addView(brand);gap(card,18);
        step=text("准备连接",24,ink,true);step.setMaxLines(3);card.addView(step);gap(card,10);
        position=text("正在读取连接状态",13,accent,false);card.addView(position);gap(card,10);
        TextView next=text("",13,muted,false);next.setMaxLines(3);next.setVisibility(GONE);card.addView(next);field(a,"setupNextView",next);
        LinearLayout actions=new LinearLayout(a);actions.setGravity(Gravity.CENTER_VERTICAL);LinearLayout.LayoutParams actionSpace=new LinearLayout.LayoutParams(-1,-2);actionSpace.topMargin=dp(18);card.addView(actions,actionSpace);
        Button required=action("继续",()->E01NativeSettings.call(host,"onSetupAction"));required.setVisibility(GONE);LinearLayout.LayoutParams requiredLp=new LinearLayout.LayoutParams(0,-2,1);requiredLp.rightMargin=dp(10);actions.addView(required,requiredLp);field(a,"setupActionButton",required);
        Button stop=action("停止连接",()->E01NativeSettings.call(host,"onPanelRowAction",E01NativeSettings.value("ConnectionUi$RowAction","CANCEL")));actions.addView(stop,new LinearLayout.LayoutParams(0,-2,1));
        // Old widgets are no longer created. Keep nullable host fields safe for lifecycle updates.
        for(String key:new String[]{"connectionBody","panelRow","panelExtras","panelExtrasScroll","stageStatusView","spinnerView","waitingHintView","setupNoteView","wifiRecoveryButton","bluetoothRepairButton","backToFreeAutoButton","setupDetailsToggle","setupDetailsView","threeFingerHintView"})field(a,key,null);
        field(a,"setupDetailsOpen",false);
        field(a,"connectionPanel",this);
    }
    public static View create(Activity a){E01ConnectionPanel panel=new E01ConnectionPanel(a);E01NativeSettings.call(a,"renderSetupProblem");panel.refresh();return panel;}
    public static void update(Activity a){Object panel=E01NativeSettings.field(a,"connectionPanel");if(panel instanceof E01ConnectionPanel)((E01ConnectionPanel)panel).refresh();}
    private void refresh(){
        Object state=E01NativeSettings.call(E01NativeSettings.singleton("ConnectionProgress"),"getState");
        String phase=E01NativeSettings.call(state,"getPhase").toString();boolean wireless=phase.equals("IDLE")?(Boolean)E01NativeSettings.field(host,"wirelessEnabled"):(Boolean)E01NativeSettings.call(state,"getWireless");
        int number=(Integer)E01NativeSettings.call(state,"getStep");List<?> steps=(List<?>)E01NativeSettings.call(E01NativeSettings.singleton("ConnectionSteps"),"of",wireless);
        String title="准备连接";
        if(number>0&&number<=steps.size())title=getResources().getString((Integer)E01NativeSettings.call(steps.get(number-1),"getName"));
        else {Object latest=E01NativeSettings.field(host,"latestStage");if(latest!=null&&!latest.toString().trim().isEmpty())title=latest.toString();}
        String current=number>0?"当前停留：第 "+number+" / "+steps.size()+" 步":"正在准备连接";
        String transport=wireless?"无线连接":"有线连接";
        String snapshot=transport+'\n'+title+'\n'+current;
        if(!snapshot.equals(previous)){previous=snapshot;mode.setText(transport);step.setText(title);position.setText(current);}
    }
}
