package com.shilapi.xcertplay;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.CheckedTextView;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;

/** Shared native modal and secondary-page controls. Keeps all existing callbacks. */
public final class E01Dialogs {
    static final int ROLE_TAG=0x7f7a0603;
    private static final int STYLE_TAG=0x7f7a0601, OBSERVER_TAG=0x7f7a0602;
    private E01Dialogs() {}
    static int dp(Context c,int n){return Math.round(n*c.getResources().getDisplayMetrics().density);}
    private static Glass.Palette palette(){return Glass.INSTANCE.getCurrent();}
    private static int ink(Glass.Palette p){return p.getDark()?0xffECF2FA:0xff202D40;}
    private static int muted(Glass.Palette p){return p.getDark()?0xffA7B6C8:0xff64748A;}
    private static int accent(Glass.Palette p){return p.getDark()?0xff80B4FF:0xff1767D9;}
    private static int blend(int a,int b,float x){return Color.rgb(Math.round(Color.red(a)*(1-x)+Color.red(b)*x),Math.round(Color.green(a)*(1-x)+Color.green(b)*x),Math.round(Color.blue(a)*(1-x)+Color.blue(b)*x));}
    private static int surface(Glass.Palette p){return p.getDark()?0xff1D2A37:0xffFFFFFF;}
    private static int control(Glass.Palette p){return p.getDark()?0xff293747:0xffEDF1F6;}
    private static GradientDrawable shape(Context c,int color,int stroke,int radius){
        GradientDrawable d=new GradientDrawable();d.setColor(color);d.setCornerRadius(dp(c,radius));
        d.setStroke(Math.max(1,dp(c,1)),stroke);return d;
    }
    private static ColorStateList checkColors(Glass.Palette p){
        return new ColorStateList(new int[][]{new int[]{-android.R.attr.state_enabled},new int[]{android.R.attr.state_checked},new int[]{}},new int[]{blend(muted(p),surface(p),.45f),accent(p),muted(p)});
    }
    private static double linear(int c){double v=c/255.0;return v<=.04045?v/12.92:Math.pow((v+.055)/1.055,2.4);}
    private static double luminance(int c){return .2126*linear(Color.red(c))+.7152*linear(Color.green(c))+.0722*linear(Color.blue(c));}
    private static double contrast(int a,int b){double x=luminance(a)+.05,y=luminance(b)+.05;return Math.max(x,y)/Math.min(x,y);}
    private static int primaryInk(Glass.Palette p){int dark=Color.rgb(16,32,51);return contrast(dark,accent(p))>contrast(p.getOnPrimary(),accent(p))?dark:p.getOnPrimary();}
    public static void button(Button b,boolean primary){
        b.setTag(ROLE_TAG,Boolean.valueOf(primary));
        Context c=b.getContext();Glass.Palette p=palette();
        int stroke=blend(surface(p),ink(p),.13f);
        GradientDrawable background=shape(c,primary?accent(p):control(p),primary?accent(p):stroke,10);
        if(Build.VERSION.SDK_INT>=21)b.setBackground(new RippleDrawable(ColorStateList.valueOf(p.getDark()?0x30ffffff:0x18000000),background,null));
        else b.setBackgroundDrawable(background);
        b.setTextColor(new ColorStateList(new int[][]{new int[]{-android.R.attr.state_enabled},new int[]{}},new int[]{muted(p),primary?primaryInk(p):ink(p)}));b.setTextSize(15);b.setAllCaps(false);
        b.setTypeface(Typeface.create("sans-serif-medium",0));b.setGravity(Gravity.CENTER);
        b.setMinHeight(dp(c,48));b.setMinimumHeight(dp(c,48));b.setMinWidth(0);b.setMinimumWidth(0);b.setMaxLines(2);b.setIncludeFontPadding(false);
        b.setPadding(dp(c,14),dp(c,10),dp(c,14),dp(c,10));
        if(Build.VERSION.SDK_INT>=21){b.setBackgroundTintList(null);b.setElevation(0);b.setStateListAnimator(null);}
    }
    public static void page(LinearLayout parent){
        Glass.Palette p=palette();styleTree(parent,p,false);
        parent.setPadding(dp(parent.getContext(),16),dp(parent.getContext(),12),dp(parent.getContext(),16),dp(parent.getContext(),16));
    }
    public static AlertDialog show(AlertDialog.Builder builder){
        AlertDialog dialog=builder.show();apply(dialog);return dialog;
    }
    public static void showDialog(Dialog dialog){dialog.show();apply(dialog);}
    public static void showDialog(AlertDialog dialog){dialog.show();apply(dialog);}
    public static void apply(Dialog dialog){
        final Window window=dialog.getWindow();if(window==null)return;
        final View decor=window.getDecorView();final Context c=dialog.getContext();final Glass.Palette p=palette();
        window.setBackgroundDrawable(shape(c,surface(p),blend(surface(p),ink(p),.15f),16));
        WindowManager.LayoutParams params=window.getAttributes();params.dimAmount=.42f;params.gravity=Gravity.CENTER;window.setAttributes(params);
        window.addFlags(WindowManager.LayoutParams.FLAG_DIM_BEHIND);
        int width=Math.min(dp(c,640),c.getResources().getDisplayMetrics().widthPixels-2*dp(c,24));
        window.setLayout(Math.max(dp(c,200),width),ViewGroup.LayoutParams.WRAP_CONTENT);
        decor.setPadding(0,0,0,0);
        styleTree(decor,p,true);
        if(dialog instanceof AlertDialog){
            AlertDialog alert=(AlertDialog)dialog;
            for(int which:new int[]{Dialog.BUTTON_POSITIVE,Dialog.BUTTON_NEGATIVE,Dialog.BUTTON_NEUTRAL}){
                Button b=alert.getButton(which);if(b==null||b.getVisibility()!=View.VISIBLE)continue;
                button(b,which==Dialog.BUTTON_POSITIVE);
                if(b.getLayoutParams() instanceof ViewGroup.MarginLayoutParams){
                    ViewGroup.MarginLayoutParams lp=(ViewGroup.MarginLayoutParams)b.getLayoutParams();lp.height=ViewGroup.LayoutParams.WRAP_CONTENT;lp.leftMargin=dp(c,6);lp.rightMargin=dp(c,6);b.setLayoutParams(lp);
                }
            }
        }
        if(dialog instanceof AlertDialog)arrangeActions((AlertDialog)dialog);
        if(decor.getTag(OBSERVER_TAG)==null){
            final ViewTreeObserver.OnGlobalLayoutListener observer=new ViewTreeObserver.OnGlobalLayoutListener(){
                public void onGlobalLayout(){
                    // Newly attached/recycled list rows receive colors once. No idle timer/redraw.
                    styleTree(decor,palette(),true);
                }
            };
            decor.setTag(OBSERVER_TAG,observer);decor.getViewTreeObserver().addOnGlobalLayoutListener(observer);
            decor.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener(){
                public void onViewAttachedToWindow(View v){}
                public void onViewDetachedFromWindow(View v){
                    if(v.getViewTreeObserver().isAlive())v.getViewTreeObserver().removeOnGlobalLayoutListener(observer);
                    v.setTag(OBSERVER_TAG,null);v.removeOnAttachStateChangeListener(this);
                }
            });
        }
        decor.post(() -> {
            if(!dialog.isShowing())return;
            styleTree(decor,palette(),true);
            int max=c.getResources().getDisplayMetrics().heightPixels-dp(c,48);
            if(decor.getHeight()>max)window.setLayout(width,max);
        });
    }
    private static void arrangeActions(AlertDialog dialog){
        java.util.ArrayList<Button> buttons=new java.util.ArrayList<Button>();
        ViewGroup owner=null;
        for(int which:new int[]{Dialog.BUTTON_NEUTRAL,Dialog.BUTTON_NEGATIVE,Dialog.BUTTON_POSITIVE}){
            Button b=dialog.getButton(which);if(b==null||b.getVisibility()!=View.VISIBLE)continue;
            if(!(b.getParent() instanceof ViewGroup))return;
            ViewGroup p=(ViewGroup)b.getParent();if(owner!=null&&owner!=p)return;owner=p;buttons.add(b);
        }
        if(buttons.isEmpty()||!(owner instanceof LinearLayout)||!"buttonPanel".equals(resourceName(owner)))return;
        LinearLayout panel=(LinearLayout)owner;panel.removeAllViews();panel.setOrientation(LinearLayout.VERTICAL);
        panel.setPadding(dp(panel.getContext(),20),dp(panel.getContext(),8),dp(panel.getContext(),20),dp(panel.getContext(),16));
        LinearLayout row=new LinearLayout(panel.getContext());row.setOrientation(LinearLayout.HORIZONTAL);for(Button b:buttons){LinearLayout.LayoutParams lp=new LinearLayout.LayoutParams(0,-2,1);lp.leftMargin=dp(panel.getContext(),4);lp.rightMargin=dp(panel.getContext(),4);row.addView(b,lp);}
        panel.addView(row,new LinearLayout.LayoutParams(-1,-2));
    }
    private static String resourceName(View v){
        if(v.getId()==View.NO_ID)return "";
        try{return v.getResources().getResourceEntryName(v.getId());}catch(Exception e){return "";}
    }
    private static boolean effectiveEnabled(View view){
        View current=view;while(current!=null){if(!current.isEnabled())return false;current=current.getParent() instanceof View?(View)current.getParent():null;}return true;
    }
    private static void styleTree(View view,Glass.Palette p,boolean modal){
        Object old=view.getTag(STYLE_TAG);int signature=p.getBase()^(modal?1:0);
        if(!(old instanceof Integer)||((Integer)old).intValue()!=signature){
            view.setTag(STYLE_TAG,Integer.valueOf(signature));Context c=view.getContext();String id=resourceName(view);
            if(modal && (id.equals("parentPanel")||id.equals("topPanel")||id.equals("contentPanel")||id.equals("customPanel")||id.equals("buttonPanel")))view.setBackgroundColor(Color.TRANSPARENT);
            if(view instanceof TextView){
                TextView text=(TextView)view;
                boolean title=id.equals("alertTitle")||id.equals("title");
                text.setTextColor(effectiveEnabled(view)?ink(p):muted(p));text.setLinkTextColor(accent(p));
                if(title){text.setTextSize(21);text.setTypeface(Typeface.create("sans-serif-medium",0));}
                else if(view instanceof EditText){
                    EditText edit=(EditText)view;edit.setTextSize(15);edit.setHintTextColor(muted(p));edit.setMinHeight(dp(c,48));
                    edit.setPadding(dp(c,12),dp(c,8),dp(c,12),dp(c,8));edit.setBackground(shape(c,control(p),blend(surface(p),ink(p),.22f),8));
                    if(modal && edit.getParent() instanceof View && resourceName((View)edit.getParent()).equals("custom") && edit.getLayoutParams() instanceof ViewGroup.MarginLayoutParams){
                        ViewGroup.MarginLayoutParams lp=(ViewGroup.MarginLayoutParams)edit.getLayoutParams();lp.leftMargin=dp(c,24);lp.rightMargin=dp(c,24);lp.topMargin=dp(c,8);lp.bottomMargin=dp(c,4);edit.setLayoutParams(lp);
                    }
                    if(Build.VERSION.SDK_INT>=21)edit.setBackgroundTintList(null);
                }
                else if(view instanceof Button && !(view instanceof CompoundButton))button((Button)view,Boolean.TRUE.equals(view.getTag(ROLE_TAG)));
                else if(view instanceof CompoundButton){
                    text.setTextSize(15);if(Build.VERSION.SDK_INT>=21)((CompoundButton)view).setButtonTintList(checkColors(p));
                }
                else if(view instanceof CheckedTextView){
                    text.setTextSize(15);text.setMinHeight(dp(c,48));text.setPadding(dp(c,20),dp(c,10),dp(c,20),dp(c,10));
                    if(Build.VERSION.SDK_INT>=21)((CheckedTextView)view).setCheckMarkTintList(checkColors(p));
                }
                else if(modal){
                    if(text.getTextSize()/c.getResources().getDisplayMetrics().scaledDensity<15){text.setTextSize(15);text.setTextColor(muted(p));}
                    else text.setTextSize(15);
                    text.setLineSpacing(dp(c,3),1f);
                }
            }
            if(view instanceof ListView){ListView list=(ListView)view;list.setDivider(null);list.setDividerHeight(0);list.setCacheColorHint(Color.TRANSPARENT);}
        }
        if(view instanceof ViewGroup){ViewGroup group=(ViewGroup)view;for(int i=0;i<group.getChildCount();i++)styleTree(group.getChildAt(i),p,modal);}
    }
}
