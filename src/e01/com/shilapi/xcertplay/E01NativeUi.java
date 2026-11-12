package com.shilapi.xcertplay;

import android.app.*;
import android.os.*;
import android.content.*;
import android.content.res.ColorStateList;
import android.graphics.*;
import android.graphics.drawable.*;
import android.view.*;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.inputmethod.InputMethodManager;
import android.widget.*;
import android.text.*;
import android.text.method.PasswordTransformationMethod;
import java.util.*;

/** Approved native UI, hosted by the original Activity and connection lifecycle. */
public final class E01NativeUi extends android.view.ContextThemeWrapper {
    private final Activity host;
    private final E01NativeSettings settings;
    private android.content.SharedPreferences prefs;
    private String stage="",phone="",snapshot="",stateMessage="";
    private static final int UI_TAG=0x7f7a0615;
    private static E01NativeUi instance(Activity a){View decor=a.getWindow().getDecorView();Object old=decor.getTag(UI_TAG);if(old instanceof E01NativeUi)return (E01NativeUi)old;E01NativeUi ui=new E01NativeUi(a);decor.setTag(UI_TAG,ui);return ui;}
    public static void show(Activity a){E01NativeUi ui=instance(a);String h=String.valueOf(E01NativeSettings.field(a,"page"));if(h.equals("home"))ui.page="home";else if(ui.page.equals("home"))ui.page="connection";ui.logPageActive=false;if(ui.logLoader!=null)ui.logLoader.cancel();ui.readState();ui.render();}
    public static void update(Activity a){Object old=a.getWindow().getDecorView().getTag(UI_TAG);if(old instanceof E01NativeUi){E01NativeUi ui=(E01NativeUi)old;String previous=ui.snapshot;ui.readState();if(ui.page.equals("home")&&!previous.equals(ui.snapshot))ui.render();}}
    public static void goBack(Activity a){instance(a).back();}
    public static void confirm(Activity a,String title,String message,String positive,Runnable action){E01NativeUi ui=instance(a);ui.colors();LinearLayout body=ui.column();body.addView(ui.text(message,14,ui.ink,false));ui.showDialog(title,body,"取消",null,positive,action);}
    public interface Selection {void selected(int index);}
    public static void select(Activity a,String title,String[] names,Selection action){E01NativeUi ui=instance(a);ui.colors();LinearLayout body=ui.column();for(int i=0;i<names.length;i++){final int index=i;body.addView(ui.button(names[i],false,()->{ui.closeDialog();action.selected(index);ui.refresh();}),ui.lp(-1,48));ui.gap(body,8);}ui.showDialog(title,body,"取消",null,null,null);}
    public static void firstRun(Activity a){instance(a).welcome();}
    private E01NativeUi(Activity a){super(a,0);host=a;settings=new E01NativeSettings(a);prefs=settings.ui;colors();try{logo=BitmapFactory.decodeResource(getResources(),a.getApplicationInfo().icon);}catch(Exception ignored){} }
    private void readState(){
        try{Object input=E01NativeSettings.call(host,"connectionInput");Object progress=E01NativeSettings.call(input,"getProgress");Object ui=E01NativeSettings.call(E01NativeSettings.singleton("ConnectionUi"),"build",host,input);E01NativeSettings.field(host,"lastUi",ui);
            String phase=E01NativeSettings.call(ui,"getPhase").toString();connection=phase.equals("CONNECTED")?"connected":phase.equals("IDLE")?"idle":phase.equals("STUCK")?"failed":"waiting";
            if(!connection.equals("idle"))transport=(Boolean)E01NativeSettings.call(progress,"getWireless")?"无线":"有线";
            Object n=E01NativeSettings.call(input,"getIphoneName");phone=n==null||n.toString().isEmpty()?"iPhone":n.toString();
            boolean wireless=transport.equals("无线");int step=(Integer)E01NativeSettings.call(progress,"getStep");int count=(Integer)E01NativeSettings.call(E01NativeSettings.singleton("ConnectionSteps"),"count",wireless);
            java.util.List<?> steps=(java.util.List<?>)E01NativeSettings.call(E01NativeSettings.singleton("ConnectionSteps"),"of",wireless);
            String title=step>0&&step<=steps.size()?getString((Integer)E01NativeSettings.call(steps.get(step-1),"getName")):"准备连接";
            stage=step>0?"第 "+step+" / "+count+" 步 · "+title:title;
            Object row=E01NativeSettings.call(ui,"getRow");Object sub=E01NativeSettings.call(row,"getSub");stateMessage=String.valueOf(E01NativeSettings.call(row,"getTitle"));if(sub!=null&&!sub.toString().isEmpty())stateMessage+=" · "+sub;
            String startup=E01NativeSettings.startupStatus(host);
            if(connection.equals("idle")&&!startup.isEmpty()){connection="waiting";transport=E01NativeSettings.startupWireless(host)?"无线":"有线";stage=startup;stateMessage=startup;}
            snapshot=connection+transport+phone+stage+stateMessage;
        }catch(RuntimeException e){connection="failed";stage="状态读取失败";stateMessage=e.getMessage();snapshot=stage;android.util.Log.e("06Link-UI","Connection state binding",e);}
    }
    private void safe(Runnable action){try{action.run();}catch(RuntimeException e){message("操作未完成",e.getMessage()==null?"请稍后重试":e.getMessage());}}
    private void setContentView(View v){host.setContentView(v);}
    private Window getWindow(){return host.getWindow();}
    private void syncPage(){E01NativeSettings.field(host,"page",page.equals("home")?"home":"settings");E01NativeSettings.call(host,"noteWaitingOnHome");}
    private boolean getBool(String k,boolean d){return settings.bool(k,d);}
    private String getValue(String k,String d){return settings.string(k,d);}
    private void store(String k,Object v){settings.set(k,v);}

    
    private final ArrayDeque<String> history = new ArrayDeque<String>();
    private LinearLayout root, content;
    private ScrollView contentScroll,sidebarScroll;
    private int sidebarOffset;
    private String page="home", connection="idle", transport="无线", notice="";
    private boolean dark, narrow;
    private int bg,side,surface,ink,muted,line,accent,tint,control,success,danger;
    private E01LogPolicy.UiSnapshot logSnapshot;
    private LogLoader logLoader;
    private int logPage;
    private boolean logErrors,logPageActive,logLoading,logClearing;
    private String logLoadError;
    private String stageText(){return stage;}
    private Dialog openDialog;
    private Bitmap logo;
    private static final String[] NAV={"连接","仪表盘","显示","声音与按键","车辆与兼容","日志","关于"};
    private static final String[] KEYS={"connection","cluster","display","audio","vehicle","logs","about"};
    private static final String[] ICONS={"wifi","cluster","display","audio","car","logs","info"};
    int dp(float n){return Math.round(n*getResources().getDisplayMetrics().density);}
    private void colors(){
        dark=(Boolean)E01NativeSettings.call(E01NativeSettings.singleton("Appearance"),"isDark",host,java.util.Calendar.getInstance());
        bg=Color.parseColor(dark?"#101820":"#F4F6F9");side=Color.parseColor(dark?"#16212C":"#E9EEF4");
        surface=Color.parseColor(dark?"#1D2A37":"#FFFFFF");ink=Color.parseColor(dark?"#ECF2FA":"#202D40");
        muted=Color.parseColor(dark?"#A7B6C8":"#64748A");line=Color.parseColor(dark?"#344355":"#DCE3EB");
        accent=Color.parseColor(dark?"#80B4FF":"#1767D9");tint=Color.parseColor(dark?"#243F5F":"#DFEBFC");
        control=Color.parseColor(dark?"#293747":"#EDF1F6");success=Color.parseColor(dark?"#77D5B0":"#198361");
        danger=Color.parseColor(dark?"#FFACA4":"#BA3933");
    }
    private GradientDrawable shape(int color,int radius,boolean border){GradientDrawable d=new GradientDrawable();d.setColor(color);d.setCornerRadius(dp(radius));if(border)d.setStroke(dp(1),line);return d;}
    private void touch(View v,int fill,int radius){v.setBackground(new RippleDrawable(ColorStateList.valueOf(dark?0x20FFFFFF:0x101767D9),shape(fill,radius,false),shape(Color.WHITE,radius,false)));v.setClickable(true);v.setFocusable(true);}
    private LinearLayout column(){LinearLayout l=new LinearLayout(this);l.setOrientation(1);return l;}
    private LinearLayout row(){LinearLayout l=new LinearLayout(this);l.setOrientation(0);l.setGravity(Gravity.CENTER_VERTICAL);return l;}
    private LinearLayout.LayoutParams lp(int w,int h){return new LinearLayout.LayoutParams(w<0?w:dp(w),h<0?h:dp(h));}
    private LinearLayout.LayoutParams flex(){return new LinearLayout.LayoutParams(0,-2,1);}
    private TextView text(String s,float size,int color,boolean bold){TextView t=new TextView(this);t.setText(s);t.setTextSize(size);t.setTextColor(color);t.setTypeface(Typeface.create(bold?"sans-serif-medium":"sans-serif",0));t.setIncludeFontPadding(false);t.setLineSpacing(dp(3),1);return t;}
    private TextView label(String s,float size,int color){TextView t=text(s,size,color,false);t.setSingleLine(true);t.setEllipsize(TextUtils.TruncateAt.END);return t;}
    private void gap(LinearLayout p,int h){p.addView(new View(this),lp(1,h));}
    private void horizontalGap(LinearLayout p,int w){p.addView(new View(this),lp(w,1));}
    private ImageView logo(int size){ImageView i=new ImageView(this);i.setImageBitmap(logo);i.setScaleType(ImageView.ScaleType.FIT_CENTER);i.setContentDescription("06Link");i.setLayoutParams(lp(size,size));return i;}
    private TextView button(String title,boolean primary,Runnable action){
        TextView b=text(title,15,primary?(dark?Color.rgb(17,34,54):Color.WHITE):ink,true);b.setGravity(Gravity.CENTER);b.setSingleLine(true);b.setEllipsize(TextUtils.TruncateAt.END);b.setPadding(dp(18),0,dp(18),0);
        touch(b,primary?accent:control,9);b.setMinHeight(dp(48));b.setOnClickListener(v->safe(action));return b;
    }
    private LinearLayout iconButton(String icon,String title,Runnable action){
        LinearLayout b=row();b.setGravity(Gravity.CENTER);b.setPadding(dp(12),0,dp(12),0);b.addView(new Symbol(icon,ink),lp(18,18));
        if(title.length()>0){horizontalGap(b,7);b.addView(label(title,14,ink));}touch(b,control,9);b.setOnClickListener(v->safe(action));b.setContentDescription(title.length()>0?title:icon);b.setMinimumHeight(dp(48));return b;
    }
    private void navigate(String destination){history.push(page);page=destination;notice="";syncPage();render();}
    private void selectPage(String destination){history.clear();page=destination;notice="";syncPage();render();}
    private void refresh(){int y=contentScroll==null?0:contentScroll.getScrollY();render();if(contentScroll!=null)contentScroll.post(()->contentScroll.scrollTo(0,y));}
    private void render(){
        if(!"logs".equals(page)){
            if(logPageActive&&logLoader!=null)logLoader.cancel();
            logPageActive=false;logSnapshot=null;logLoading=false;logClearing=false;logLoadError=null;
        }else if(!logPageActive){logPageActive=true;logPage=0;loadLogs(false);}
        if(sidebarScroll!=null)sidebarOffset=sidebarScroll.getScrollY();sidebarScroll=null;
        colors();narrow=getResources().getDisplayMetrics().widthPixels/getResources().getDisplayMetrics().density<720;
        root=column();root.setBackgroundColor(bg);setContentView(root);contentScroll=null;
        if("home".equals(page)){home();return;}
        if("logs".equals(page)){logsPage();return;}
        LinearLayout shell=row();shell.setGravity(Gravity.TOP);root.addView(shell,new LinearLayout.LayoutParams(-1,-1));
        sidebar(shell);
        LinearLayout main=column();main.setPadding(dp(narrow?20:30),0,dp(narrow?20:30),0);shell.addView(main,new LinearLayout.LayoutParams(0,-1,1));
        LinearLayout top=row();main.addView(top,lp(-1,64));
        if(isDetail()){LinearLayout back=iconButton("back","",()->back());back.setContentDescription("返回");top.addView(back,lp(44,48));horizontalGap(top,10);}
        TextView title=text(title(),22,ink,true);title.setSingleLine(true);top.addView(title,new LinearLayout.LayoutParams(0,-2,1));
        LinearLayout theme=iconButton(dark?"sun":"moon","",()->{store("appearance",dark?"白天":"夜间");refresh();});theme.setContentDescription(dark?"切换白天模式":"切换夜间模式");top.addView(theme,lp(44,48));
        contentScroll=new ScrollView(this);contentScroll.setFillViewport(false);contentScroll.setClipToPadding(false);contentScroll.setVerticalScrollBarEnabled(false);
        main.addView(contentScroll,new LinearLayout.LayoutParams(-1,0,1));content=column();content.setPadding(0,dp(2),0,dp(22));contentScroll.addView(content,new ScrollView.LayoutParams(-1,-2));
        if(!notice.isEmpty()){TextView note=text(notice,13,success,false);note.setPadding(0,0,0,dp(10));content.addView(note);}
        switch(page){
            case "connection": connectionSettings();break; case "cluster":clusterSettings();break;
            case "display":displaySettings();break; case "audio":audioSettings();break;
            case "vehicle":vehicleSettings();break; case "about":about();break;
            case "components":components();break;case "display-more":displayMore();break;
            case "audio-routes":audioRoutes();break;
            case "licenses":licenses();break;default:selectPage("home");
        }
    }
    private boolean isDetail(){return Arrays.asList("components","display-more","audio-routes","licenses").contains(page);}
    private String title(){switch(page){case"connection":return"连接";case"cluster":return"仪表盘";case"display":return"显示";case"audio":return"声音与按键";case"vehicle":return"车辆与兼容";case"about":return"关于 06Link";case"components":return"原车蓝牙组件";case"display-more":return"更多显示设置";case"audio-routes":return"原车声道";case"licenses":return"开源说明";}return"设置";}
    private void sidebar(LinearLayout shell){
        LinearLayout rail=column();rail.setBackgroundColor(side);rail.setPadding(dp(10),dp(6),dp(10),dp(6));shell.addView(rail,lp(narrow?158:190,-1));
        LinearLayout brand=row();brand.addView(logo(30));horizontalGap(brand,8);brand.addView(text("06Link",18,ink,true));brand.setContentDescription("06Link 标识");rail.addView(brand,lp(-1,48));gap(rail,6);
        ScrollView nav=new ScrollView(this);sidebarScroll=nav;nav.setVerticalScrollBarEnabled(true);rail.addView(nav,new LinearLayout.LayoutParams(-1,0,1));LinearLayout list=column();nav.addView(list);
        for(int n=0;n<NAV.length;n++){final String target=KEYS[n];boolean active=page.equals(target)||("components".equals(page)&&target.equals("vehicle"))||("display-more".equals(page)&&target.equals("display"))||("audio-routes".equals(page)&&target.equals("audio"))||(page.equals("licenses")&&target.equals("about"));LinearLayout r=row();r.setPadding(dp(10),0,dp(6),0);r.addView(new Symbol(ICONS[n],active?accent:muted),lp(20,20));horizontalGap(r,10);TextView t=label(NAV[n],14,active?accent:ink);r.addView(t,new LinearLayout.LayoutParams(0,-2,1));touch(r,active?tint:side,9);r.setOnClickListener(v->selectPage(target));r.setSelected(active);r.setContentDescription(NAV[n]);list.addView(r,lp(-1,48));}
        nav.post(()->nav.scrollTo(0,sidebarOffset));
        gap(rail,8);View separator=new View(this);separator.setBackgroundColor(line);rail.addView(separator,lp(-1,1));gap(rail,8);
        LinearLayout sys=iconButton("gear","系统设置",()->systemSettings());rail.addView(sys,lp(-1,48));gap(rail,8);
        LinearLayout back=iconButton("back","返回首页",()->selectPage("home"));rail.addView(back,lp(-1,48));
    }
    private void home(){
        root.setPadding(dp(narrow?26:40),dp(12),dp(narrow?26:40),dp(12));
        LinearLayout top=row();top.addView(logo(34));horizontalGap(top,10);top.addView(text("06Link",21,ink,true));horizontalGap(top,12);TextView badge=label(version(),11,muted);badge.setPadding(dp(8),dp(4),dp(8),dp(4));badge.setBackground(shape(control,5,false));top.addView(badge);top.addView(new View(this),new LinearLayout.LayoutParams(0,1,1));top.addView(iconButton("logs","日志",()->navigate("logs")),lp(-2,48));horizontalGap(top,10);top.addView(iconButton("gear","设置",()->selectPage("connection")),lp(-2,48));root.addView(top,lp(-1,48));
        LinearLayout body=row();body.setGravity(Gravity.CENTER_VERTICAL);root.addView(body,new LinearLayout.LayoutParams(-1,0,1));
        LinearLayout visual=column();visual.setGravity(Gravity.CENTER);visual.addView(new Hero(),lp(narrow?144:200,narrow?138:180));gap(visual,10);visual.addView(label("LYNK & CO  /  CARPLAY",10,muted));body.addView(visual,new LinearLayout.LayoutParams(0,-2,.37f));horizontalGap(body,narrow?24:42);
        LinearLayout right=column();body.addView(right,new LinearLayout.LayoutParams(0,-2,.63f));
        String head="连接，从这里开始",sub="选择一种方式，让导航与音乐随行。";
        if(connection.equals("waiting")){head="正在连接 iPhone";String pending=E01NativeSettings.startupStatus(host);sub=!pending.isEmpty()?pending:transport.equals("有线")?"正在等待手机响应。":"正在准备无线连接。";}
        if(connection.equals("failed")){head="连接未完成";sub=stateMessage.isEmpty()?"连接未完成，可重试或取消。":stateMessage;}
        if(connection.equals("connected")){head="已连接 iPhone";sub=transport+" CarPlay 已就绪。";}
        TextView h=text(head,narrow?26:32,ink,true);h.setMaxLines(2);right.addView(h);gap(right,10);right.addView(text(sub,14,muted,false));gap(right,20);
        LinearLayout status=row();status.setPadding(dp(12),dp(10),dp(12),dp(10));status.setBackground(shape(surface,10,true));status.addView(new Symbol(connection.equals("failed")?"warning":connection.equals("connected")?"check":"phone",connection.equals("failed")?danger:accent),lp(22,22));horizontalGap(status,10);LinearLayout desc=column();desc.addView(label(phone,14,ink));gap(desc,4);desc.addView(label(connection.equals("waiting")||connection.equals("failed")?(stageText().startsWith("第 ")?"停留在 "+stageText():stageText()):connection.equals("idle")?"默认连接 · "+getValue("default_connection","无线"):"投屏与音乐已连接",12,connection.equals("failed")?danger:muted));status.addView(desc,new LinearLayout.LayoutParams(0,-2,1));right.addView(status,lp(-1,60));gap(right,14);
        LinearLayout actions=row();right.addView(actions,lp(-1,52));
        if(connection.equals("waiting")){actions.addView(button("停止连接",false,()->stop()),new LinearLayout.LayoutParams(-1,dp(48)));}
        else if(connection.equals("failed")){actions.addView(button("重新连接",true,()->start(transport)),new LinearLayout.LayoutParams(0,dp(48),1));horizontalGap(actions,10);actions.addView(button("取消",false,()->stop()),new LinearLayout.LayoutParams(0,dp(48),1));}
        else if(connection.equals("connected")){actions.addView(button("打开 CarPlay",true,()->E01NativeSettings.call(host,"openProjection",false)),new LinearLayout.LayoutParams(0,dp(48),1));horizontalGap(actions,10);actions.addView(button("断开",false,()->stop()),lp(80,48));}
        else {actions.addView(button("无线连接",getValue("default_connection","无线").equals("无线"),()->start("无线")),new LinearLayout.LayoutParams(0,dp(48),1));horizontalGap(actions,10);actions.addView(button("有线连接",getValue("default_connection","无线").equals("有线"),()->start("有线")),new LinearLayout.LayoutParams(0,dp(48),1));}
        LinearLayout foot=row();TextView preview=label("06Link · 深度定制",11,muted);foot.addView(preview,new LinearLayout.LayoutParams(0,-2,1));TextView mode=label(dark?"夜间模式":"白天模式",11,muted);foot.addView(mode);root.addView(foot,lp(-1,24));
    }
    private void start(String type){transport=type;E01NativeSettings.call(host,"connect",type.equals("无线"),false);readState();render();}
    private void stop(){E01NativeSettings.cancelStartup(host);E01NativeSettings.call(host,"onRowAction",E01NativeSettings.value("ConnectionUi$RowAction",connection.equals("connected")?"DISCONNECT":"CANCEL"));readState();render();}
    private void back(){if(!history.isEmpty()){page=history.pop();notice="";syncPage();render();}else if(!page.equals("home")){selectPage("home");}else host.moveTaskToBack(true);}
    private void section(String title,String note){if(content.getChildCount()>0)gap(content,18);TextView h=text(title,12,muted,true);h.setPadding(dp(4),0,0,dp(8));content.addView(h);if(note!=null&&!note.isEmpty()){TextView n=text(note,12,muted,false);n.setPadding(dp(4),0,dp(4),dp(8));content.addView(n);}}
    private LinearLayout group(){LinearLayout g=column();g.setBackground(shape(surface,12,true));content.addView(g,lp(-1,-2));return g;}
    private void divider(LinearLayout group){if(group.getChildCount()==0)return;View v=new View(this);v.setBackgroundColor(line);LinearLayout.LayoutParams p=new LinearLayout.LayoutParams(-1,dp(0.5f));p.leftMargin=dp(14);p.rightMargin=dp(14);group.addView(v,p);}
    private LinearLayout setting(LinearLayout group,String name,String note){divider(group);LinearLayout r=row();r.setPadding(dp(14),dp(8),dp(12),dp(8));r.setMinimumHeight(dp(note==null?54:66));LinearLayout labels=column();TextView title=text(name,15,ink,false);labels.addView(title);if(note!=null){gap(labels,5);TextView help=text(note,12,muted,false);labels.addView(help);}r.addView(labels,new LinearLayout.LayoutParams(0,-2,1));horizontalGap(r,12);group.addView(r,lp(-1,-2));return r;}
    private void valueRow(LinearLayout group,String name,String note,String value,Runnable action){LinearLayout r=setting(group,name,note);TextView v=label(value,13,action==null?muted:accent);v.setMaxWidth(dp(narrow?135:200));v.setGravity(Gravity.RIGHT);r.addView(v);if(action!=null){horizontalGap(r,8);r.addView(new Symbol("next",muted),lp(12,18));r.setOnClickListener(w->safe(action));r.setClickable(true);r.setFocusable(true);}r.setContentDescription(name+"，"+value);}
    private void choice(LinearLayout group,String name,String key,String fallback,String[] options,String note){valueRow(group,name,note,getValue(key,fallback),()->choose(name,key,fallback,options,null));}
    private void toggle(LinearLayout group,String name,String key,boolean fallback,String note){LinearLayout r=setting(group,name,note);Toggle t=new Toggle(name,getBool(key,fallback),v->store(key,v));r.addView(t,lp(48,48));r.setOnClickListener(v->t.performClick());}
    private void choose(String title,String key,String fallback,String[] choices,String help){
        LinearLayout list=column();String current=getValue(key,fallback);
        if(help!=null){TextView h=text(help,13,muted,false);h.setPadding(0,0,0,dp(12));list.addView(h);}
        for(String s:choices){LinearLayout r=row();r.setPadding(dp(12),0,dp(12),0);r.addView(text(s,15,ink,false),new LinearLayout.LayoutParams(0,-2,1));if(s.equals(current))r.addView(new Symbol("check",accent),lp(20,20));touch(r,s.equals(current)?tint:surface,8);r.setOnClickListener(v->safe(()->{store(key,s);closeDialog();notice=selectionNotice(key,s);refresh();}));list.addView(r,lp(-1,48));}
        showDialog(title,list,"取消",null,null,null);
    }
    private String selectionNotice(String key,String value){
        if(key.equals("appearance"))return "外观已切换";
        if(key.equals("rotation"))return "屏幕方向已保存";
        if(key.equals("default_connection"))return value.equals("每次选择")?"启动时手动选择连接方式":getBool("auto_connect",false)?"默认方式已保存，下次启动生效":"默认方式已保存，开启启动自动连接后自动连接";
        if(key.equals("current"))return "电流档位已保存，下次有线连接生效";
        return "已选择"+value+"，重新连接后生效";
    }
    private void connectionSettings(){
        section("连接偏好",null);LinearLayout g=group();choice(g,"默认连接","default_connection","无线",new String[]{"无线","有线","每次选择"},null);valueRow(g,"连接的手机",null,getValue("phone",""),()->E01OemBluetooth.choosePhone(host));
        toggle(g,"启动自动连接","auto_connect",false,"按默认方式连接；每次选择时由你启动");
        section("车机热点","无线连接时自动开启，点击停止后不再重试。");LinearLayout hotspot=group();
        inputHotspot(hotspot);
        section("有线连接",null);g=group();choice(g,"USB 电流","current","默认",new String[]{"0.5 A","1.5 A","2.4 A"},"选择连接时使用的电流档位");
    }
    private void inputHotspot(LinearLayout g){
        EditText ssid=editor(getValue("ssid","06Link"),"热点名称",false),pass=editor(getValue("password","06Link2026"),"热点密码",true);
        field(g,"名称",ssid);LinearLayout passwordRow=field(g,"密码",pass);LinearLayout eye=iconButton("eye","",()->{boolean showing=pass.getTransformationMethod()==null;pass.setTransformationMethod(showing?PasswordTransformationMethod.getInstance():null);pass.setSelection(pass.getText().length());});eye.setContentDescription("显示或隐藏密码");passwordRow.addView(eye,lp(44,48));
        LinearLayout area=column();area.setPadding(dp(14),0,dp(14),dp(12));g.addView(area);TextView error=text("",12,danger,false);error.setVisibility(View.GONE);area.addView(error);gap(area,4);
        LinearLayout buttons=row();area.addView(buttons);TextView save=button("保存热点",true,()->{String a=ssid.getText().toString().trim(),b=pass.getText().toString();String issue="";try{if(a.isEmpty()||a.getBytes("UTF-8").length>32)issue="名称需为 1–32 字节";}catch(Exception ignored){}if(b.length()<8||b.length()>63||!b.matches("[ -~]+"))issue="密码需为 8–63 位字母、数字或符号";if(!issue.isEmpty()){error.setText(issue);error.setVisibility(View.VISIBLE);return;}if(!E01HotspotSettings.save(host,a,b)){error.setText("保存失败，请重试");error.setVisibility(View.VISIBLE);return;}((InputMethodManager)getSystemService(INPUT_METHOD_SERVICE)).hideSoftInputFromWindow(pass.getWindowToken(),0);notice="热点信息已保存，下次连接生效";refresh();});buttons.addView(save,new LinearLayout.LayoutParams(0,dp(48),1));horizontalGap(buttons,10);buttons.addView(button("系统热点设置",false,()->E01NativeSettings.call(host,"openCarWifiSettings")),new LinearLayout.LayoutParams(0,dp(48),1));
    }
    private EditText editor(String value,String hint,boolean password){EditText e=new EditText(this);e.setText(value);e.setHint(hint);e.setTextSize(15);e.setTextColor(ink);e.setHintTextColor(muted);e.setSingleLine(true);e.setPadding(dp(10),0,dp(10),0);e.setBackground(shape(control,7,false));e.setSelectAllOnFocus(true);e.setImeOptions(0x10000000|6);e.setContentDescription(hint);if(password){e.setInputType(129);e.setTypeface(Typeface.create("sans-serif",0));e.setTransformationMethod(PasswordTransformationMethod.getInstance());}else e.setInputType(1);return e;}
    private LinearLayout field(LinearLayout g,String title,EditText input){LinearLayout r=row();r.setPadding(dp(14),dp(10),dp(14),0);r.addView(label(title,14,ink),lp(52,48));r.addView(input,new LinearLayout.LayoutParams(0,dp(44),1));g.addView(r);return r;}
    private void clusterSettings(){
        section("投屏",null);LinearLayout g=group();toggle(g,"仪表投屏","cluster",true,"关闭立即生效，开启后重新连接");valueRow(g,"投屏屏幕",null,"选择",()->clusterDisplay());
        valueRow(g,"投屏样式",null,getValue("layout","信息卡片"),()->instrumentPreview());
        LinearLayout preview=column();preview.setPadding(dp(12),0,dp(12),dp(12));g.addView(preview);
        E01InstrumentPreview canvas=new E01InstrumentPreview(this,dark);canvas.setOnClickListener(v->safe(()->instrumentPreview()));canvas.setFocusable(true);preview.addView(canvas,lp(-1,-2));
        gap(preview,8);TextView previewHint=text("点击放大预览 · 地图与读数仅为示意",12,muted,false);previewHint.setGravity(Gravity.CENTER);preview.addView(previewHint);
        section("地图",null);g=group();choice(g,"内容大小","map_size","标准",new String[]{"标准","较大","最大"},"调整文字与道路的显示大小");
        valueRow(g,"地图视野","临时调节；高德可能恢复自动缩放","选择",()->zoom());
        section("卡片与过场",null);g=group();valueRow(g,"原厂路口提示","原厂样式，预览仅保留位置","随导航更新",null);toggle(g,"音乐卡片","music",true,null);toggle(g,"仪表过场动画","intro",false,"关闭立即生效，下次连接播放");
    }
    private void instrumentPreview(){
        LinearLayout body=column();final String[] names={"信息卡片","全屏地图","雾蓝仪表"},styles={"card","full","mist"};
        final String[] selected={E01InstrumentStyle.selected(host)};
        final E01InstrumentPreview preview=new E01InstrumentPreview(this,dark);
        LinearLayout choices=row();final TextView[] options=new TextView[names.length];
        final Runnable update=()->{for(int i=0;i<options.length;i++){boolean active=styles[i].equals(selected[0]);options[i].setSelected(active);options[i].setTextColor(active?accent:ink);touch(options[i],active?tint:control,9);}preview.setStyle(selected[0]);};
        for(int i=0;i<names.length;i++){final int index=i;if(i>0)horizontalGap(choices,8);options[i]=button(names[i],false,()->{selected[0]=styles[index];update.run();});options[i].setPadding(dp(8),0,dp(8),0);choices.addView(options[i],new LinearLayout.LayoutParams(0,dp(48),1));}
        body.addView(choices,lp(-1,48));gap(body,12);
        // Fit the complete instrument above the fold on short landscape displays.
        int previewWidth=Math.min(dp(920),getResources().getDisplayMetrics().widthPixels-dp(40))-dp(44);
        int previewHeight=Math.min(Math.round(previewWidth*3f/8f),Math.max(dp(90),getResources().getDisplayMetrics().heightPixels-dp(218)));
        body.addView(preview,new LinearLayout.LayoutParams(-1,previewHeight));gap(body,12);
        LinearLayout modes=row();modes.addView(text("文字预览",13,muted,false),new LinearLayout.LayoutParams(0,-2,1));
        final TextView[] theme=new TextView[2];final boolean[] night={dark};
        Runnable updateTheme=()->{for(int i=0;i<theme.length;i++){boolean active=night[0]==(i==1);theme[i].setSelected(active);theme[i].setTextColor(active?accent:ink);touch(theme[i],active?tint:control,9);}preview.setNight(night[0]);};
        theme[0]=button("白天",false,()->{night[0]=false;updateTheme.run();});theme[1]=button("夜间",false,()->{night[0]=true;updateTheme.run();});
        modes.addView(theme[0],lp(-2,48));horizontalGap(modes,8);modes.addView(theme[1],lp(-2,48));body.addView(modes,lp(-1,48));gap(body,12);
        body.addView(text("地图、车辆读数和音乐仅作位置示意。原厂导航卡片保留原样，不能在此定制。",12,muted,false));gap(body,6);
        body.addView(text("仅模拟文字颜色，原厂信息由车机控制。",12,muted,false));update.run();updateTheme.run();
        showDialog("仪表样式预览",body,"取消",null,"应用样式",()->{for(int i=0;i<styles.length;i++)if(styles[i].equals(selected[0])){store("layout",names[i]);notice=selectionNotice("layout",names[i]);refresh();break;}},true);
    }
    private void displaySettings(){section("CarPlay 画面","更改画面参数后，需要重新连接。");LinearLayout g=group();valueRow(g,"帧率",getValue("fps", "自动 · 30 帧").equals("强制 60 帧")?"不自动降帧；实际帧率取决于设备性能":null,getValue("fps","自动 · 30 帧"),()->frameRate());choice(g,"画质","quality","原始分辨率",new String[]{"原始分辨率","均衡","低负载"},null);choice(g,"界面大小","size","标准",new String[]{"较小","标准","较大"},null);section("视频优化",null);g=group();toggle(g,"流畅视频","smooth",true,"调整后重连生效");toggle(g,"MTK 低延迟","mtk",true,"自动检查视频参数，重连后生效");if(E01PrivilegedShell.supported())toggle(g,"中控 60Hz 输出","display60",true,"配合流畅视频及60帧，退出画面后恢复");section("外观",null);g=group();valueRow(g,"日夜模式",null,getValue("appearance","跟随系统"),()->appearance());section("更多",null);g=group();valueRow(g,"更多显示设置",null,"",()->navigate("display-more"));}
    private void frameRate(){choose("帧率","fps","自动 · 30 帧",new String[]{"自动 · 30 帧","30 帧","60 帧","强制 60 帧"},null);}
    private void appearance(){choose("日夜模式","appearance","跟随系统",new String[]{"跟随系统","白天","夜间"},null);}
    private void displayMore(){section("布局",null);LinearLayout g=group();choice(g,"驾驶位","driver","左侧",new String[]{"左侧","右侧"},null);valueRow(g,"屏幕方向",null,getValue("rotation","自动"),()->choose("屏幕方向","rotation","自动",new String[]{"自动","0°","90°","180°","270°"},null));toggle(g,"隐藏系统栏","immersive",true,null);section("视频",null);g=group();toggle(g,"高效视频 HEVC","hevc",false,"需要设备支持，重新连接后生效");}
    private void audioSettings(){section("声音","音乐、导航、语音和通话使用各自的原车声道。");LinearLayout g=group();valueRow(g,"原车声道",null,"查看",()->navigate("audio-routes"));if(!E01AudioRoute.supported())toggle(g,"音频焦点","audio_focus",true,"重新连接后生效");choice(g,"音乐缓冲","buffer","标准",new String[]{"最低","标准","较大"},null);section("方向盘按键",null);g=group();toggle(g,"上下首切换","tracks",true,null);toggle(g,"播放 / 暂停","play",true,null);toggle(g,"语音键唤起 Siri","siri",false,null);}
    private void audioRoutes(){section("音频路由",E01AudioRoute.supported()?"音量由原车控制，06Link 不联动调整手机音量。":"当前设备使用 Android 音频通道；原车声道需在 E01 车机生效。");LinearLayout g=group();String[] labels={"音乐","导航播报","Siri / 语音助手","通话"},keys={"MEDIA","NAVIGATION","ASSISTANT","PHONE"};for(int i=0;i<labels.length;i++)valueRow(g,labels[i],null,E01AudioRoute.supported()?"原厂声道 "+E01AudioRoute.stream(keys[i]):"系统管理",null);valueRow(g,"来电铃声",null,"原车管理",null);valueRow(g,"系统提示音",null,"原车管理",null);}
    private void vehicleSettings(){section("原车蓝牙",null);LinearLayout g=group();valueRow(g,"原车蓝牙组件","安装开机兼容或恢复备份组件","查看",()->navigate("components"));section("仪表兼容",null);g=group();valueRow(g,"原厂路口卡片","连接时暂停原厂导航信息，断开后恢复","自动管理",null);section("定位",null);g=group();toggle(g,"使用车机定位","location",false,"重连后记录3分钟，结果见日志");}
    private void components(){section("组件状态",null);LinearLayout g=group();E01OemBluetooth.settings(host,g);styleExisting(g);}
    private String version(){try{return getPackageManager().getPackageInfo(getPackageName(),0).versionName;}catch(Exception e){return "06Link";}}
    private void about(){
        LinearLayout brand=row();brand.setGravity(Gravity.TOP);brand.setPadding(dp(4),dp(8),0,dp(16));
        brand.addView(logo(54));horizontalGap(brand,14);
        LinearLayout words=column();words.addView(text("06Link",23,ink,true));gap(words,6);
        words.addView(text("为领克 06 E01 车机深度定制。",13,muted,false));gap(words,10);
        words.addView(text("本软件免费提供。如果你为此付费购买，那你被骗了。",13,ink,false));
        brand.addView(words,new LinearLayout.LayoutParams(0,-2,1));content.addView(brand);
        LinearLayout g=group();valueRow(g,"版本",null,version(),null);valueRow(g,"开源说明",null,"",()->navigate("licenses"));
    }
    private void clusterDisplay(){java.util.List<?> candidates=(java.util.List<?>)E01NativeSettings.call(E01NativeSettings.singleton("GenericClusterDisplay"),"candidates",host);if(candidates.isEmpty()){message("投屏屏幕","当前没有可用的副屏，请在车机连接仪表后选择。");return;}LinearLayout body=column();for(Object d:candidates){String label=String.valueOf(E01NativeSettings.call(E01NativeSettings.singleton("GenericClusterDisplay"),"label",d));body.addView(button(label,false,()->{E01NativeSettings.call(E01NativeSettings.singleton("GenericClusterDisplay"),"saveChoice",host,d);settings.save("ClusterMapEnabled",true);E01NativeSettings.call(E01NativeSettings.singleton("GenericClusterPlaceholder"),"ensure",host);closeDialog();notice="屏幕已保存，重连生效";refresh();}),lp(-1,48));gap(body,8);}showDialog("投屏屏幕",body,"取消",null,null,null);}
    private void zoom(){LinearLayout body=column();E01MapZoom.add(host,body);styleExisting(body);showDialog("地图视野",body,"关闭",null,null,null);}
    private void styleExisting(View view){if(view instanceof TextView){TextView t=(TextView)view;t.setTextColor(view.isEnabled()?ink:muted);t.setTextSize(view instanceof Button?14:13);}if(view instanceof Button){view.setAlpha(view.isEnabled()?1f:.5f);view.setBackground(shape(control,9,false));view.setMinimumHeight(dp(48));view.setPadding(dp(12),dp(8),dp(12),dp(8));}if(view instanceof ViewGroup)for(int i=0;i<((ViewGroup)view).getChildCount();i++)styleExisting(((ViewGroup)view).getChildAt(i));}
    private void logsPage(){
        root.setPadding(dp(20),dp(10),dp(20),dp(12));
        LinearLayout header=row();LinearLayout back=iconButton("back","",()->back());back.setContentDescription("返回");header.addView(back,lp(44,48));horizontalGap(header,12);
        header.addView(text("日志",21,ink,true),new LinearLayout.LayoutParams(0,-2,1));
        header.addView(button(logErrors?"只看异常":"全部日志",false,()->{logErrors=!logErrors;logPage=0;render();}),lp(-2,48));horizontalGap(header,10);
        TextView clear=button("清空日志",false,()->confirmClearLogs());clear.setTextColor(danger);clear.setEnabled(!logClearing);clear.setAlpha(logClearing?.4f:1);header.addView(clear,lp(-2,48));
        root.addView(header,lp(-1,48));gap(root,8);
        root.addView(text("06Link "+version()+" · 应用日志 · 总量上限 1 MB",12,muted,false));gap(root,10);
        List<String[]> visible=logSnapshot==null?Collections.<String[]>emptyList():(logErrors?logSnapshot.errors:logSnapshot.all);
        final int perPage=4;int pages=Math.max(1,(visible.size()+perPage-1)/perPage);logPage=Math.max(0,Math.min(logPage,pages-1));
        ScrollView scroll=new ScrollView(this);scroll.setFillViewport(true);scroll.setVerticalScrollBarEnabled(true);root.addView(scroll,new LinearLayout.LayoutParams(-1,0,1));
        LinearLayout entries=column();entries.setBackground(shape(surface,12,true));entries.setPadding(dp(14),dp(2),dp(14),dp(2));scroll.addView(entries,new ScrollView.LayoutParams(-1,-2));
        if(visible.isEmpty()){TextView empty=text(logLoading?(logClearing?"正在清空日志…":"正在读取日志…"):logLoadError!=null?logLoadError:logErrors?"暂无异常记录":"暂无日志",16,muted,false);empty.setPadding(0,dp(20),0,dp(20));entries.addView(empty);}
        for(int i=logPage*perPage;i<Math.min(visible.size(),(logPage+1)*perPage);i++){
            String[] e=visible.get(i);if(i>logPage*perPage)divider(entries);LinearLayout r=row();r.setGravity(Gravity.TOP);r.setPadding(0,dp(10),0,dp(10));
            TextView time=label(e[0],12,muted);time.setTypeface(Typeface.MONOSPACE);r.addView(time,lp(72,-2));
            TextView level=label(e[1],12,e[1].equals("异常")?danger:success);r.addView(level,lp(38,-2));
            TextView message=text(e[2],14,ink,false);message.setTextIsSelectable(true);r.addView(message,new LinearLayout.LayoutParams(0,-2,1));entries.addView(r,lp(-1,-2));
        }
        gap(root,10);LinearLayout bottom=row();TextView previous=button("上一页",false,()->{logPage--;render();});previous.setEnabled(logPage>0);previous.setAlpha(logPage>0?1:.4f);bottom.addView(previous,lp(92,48));
        TextView position=label((logPage+1)+" / "+pages+" 页 · "+visible.size()+" 条",12,muted);position.setGravity(Gravity.CENTER);bottom.addView(position,new LinearLayout.LayoutParams(0,-2,1));
        TextView next=button("下一页",false,()->{logPage++;render();});next.setEnabled(logPage+1<pages);next.setAlpha(logPage+1<pages?1:.4f);bottom.addView(next,lp(92,48));root.addView(bottom,lp(-1,48));
    }
    private void confirmClearLogs(){
        LinearLayout body=column();body.addView(text("清空后，当前记录将无法恢复。",14,ink,false));
        showDialog("清空日志？",body,"取消",null,"清空",()->{loadLogs(true);render();});
    }
    private void loadLogs(boolean clear){
        if(logLoader==null){
            final Context context=host.getApplicationContext();
            final java.lang.ref.WeakReference<E01NativeUi> owner=new java.lang.ref.WeakReference<E01NativeUi>(this);
            final Handler main=new Handler(Looper.getMainLooper());
            logLoader=new LogLoader(new LogLoader.Source(){
                public E01LogPolicy.UiSnapshot read(){return E01LogPolicy.readUiSnapshot(context);}
                public void clear()throws java.io.IOException{E01LogPolicy.clear(context);}
            },task->{Thread worker=new Thread(()->LogLoader.runWorker(task),"06Link-log-view");worker.start();},task->main.post(task),(token,value,error)->{
                E01NativeUi ui=owner.get();
                if(ui==null||ui.host.isFinishing()||ui.host.isDestroyed()||!ui.logPageActive||!"logs".equals(ui.page)||!ui.logLoader.current(token))return;
                ui.logLoading=false;ui.logClearing=false;ui.logSnapshot=value;ui.logLoadError=error;
                // Projection or another screen may have replaced this Activity's content.
                if(ui.root!=null&&ui.root.getParent()!=null)ui.render();
            });
        }
        logSnapshot=null;logLoadError=null;logLoading=true;logClearing=clear;logPage=0;
        logLoader.request(clear);
    }
    /** One worker per view, latest request only; clear remains ordered even after leaving. */
    static final class LogLoader {
        interface Source {E01LogPolicy.UiSnapshot read()throws Exception;void clear()throws Exception;}
        interface Listener {void ready(int token,E01LogPolicy.UiSnapshot value,String error);}
        private final Source source;
        private final java.util.concurrent.Executor worker,main;
        private final Listener listener;
        private int generation;
        private boolean running,pending,clearPending,interested;
        LogLoader(Source s,java.util.concurrent.Executor w,java.util.concurrent.Executor m,Listener l){source=s;worker=w;main=m;listener=l;}
        synchronized void request(boolean clear){
            generation++;interested=true;pending=true;clearPending|=clear;
            if(!running){
                running=true;
                try{worker.execute(()->run());}
                catch(RuntimeException e){
                    running=false;pending=false;clearPending=false;
                    final int token=generation;
                    final String error=(clear?"清空日志失败：":"读取日志失败：")+e.getClass().getSimpleName();
                    main.execute(()->{if(current(token))listener.ready(token,null,error);});
                }
            }
        }
        static void runWorker(Runnable task){
            try{android.os.Process.setThreadPriority(android.os.Process.THREAD_PRIORITY_BACKGROUND);}
            catch(RuntimeException ignored){} // A vendor priority restriction must not strand the UI.
            task.run();
        }
        synchronized void cancel(){generation++;interested=false;pending=false;}
        synchronized boolean current(int token){return interested&&generation==token;}
        private void run(){
            for(;;){
                final int token;final boolean clear;
                synchronized(this){
                    if(!pending&&!clearPending){running=false;return;}
                    token=generation;clear=clearPending;pending=false;clearPending=false;
                }
                E01LogPolicy.UiSnapshot value=null;String error=null;
                try{if(clear)source.clear();if(current(token))value=source.read();}
                catch(Exception e){error=(clear?"清空日志失败：":"读取日志失败：")+e.getClass().getSimpleName();}
                final E01LogPolicy.UiSnapshot result=value;final String failure=error;
                main.execute(()->{if(current(token))listener.ready(token,result,failure);});
            }
        }
    }
    private void licenses(){section("开源与许可",null);LinearLayout g=group();for(String[] item:new String[][]{{"项目许可","06link/LICENSE"},{"第三方声明","conscrypt-NOTICE.txt"}})valueRow(g,item[0],null,"查看",()->{try{java.io.InputStream in=getAssets().open(item[1]);java.io.ByteArrayOutputStream out=new java.io.ByteArrayOutputStream();byte[] b=new byte[4096];int n;while((n=in.read(b))>0&&out.size()<200000)out.write(b,0,n);in.close();message(item[0],out.toString("UTF-8"));}catch(Exception e){message("读取失败",e.getMessage());}});}
    private void welcome(){if(host.isFinishing())return;if(openDialog!=null&&openDialog.isShowing())return;LinearLayout body=column();body.addView(text("导航与音乐，现在都在你身边。",15,ink,false));gap(body,16);body.addView(text("使用无线热点或 USB 数据线连接 iPhone。首次使用时，根据系统提示授予所需权限。",14,ink,false));gap(body,12);body.addView(text("请在停车时设置与操作。",12,muted,false));Runnable acknowledged=()->{E01NativeSettings.call(E01NativeSettings.singleton("FirstRunNotice"),"acknowledge",host);E01NativeSettings.call(host.getClass(),"showFirstRunNotice$lambda$27",host);};showDialog("欢迎使用 06Link",body,"先看看",acknowledged,"开始设置",()->{acknowledged.run();selectPage("connection");});openDialog.setCancelable(false);E01NativeSettings.field(host,"firstRunNoticeDialog",openDialog);}
    private void systemSettings(){host.startActivity(new Intent(android.provider.Settings.ACTION_SETTINGS));}
    private void message(String title,String message){LinearLayout body=column();body.addView(text(message,14,ink,false));showDialog(title,body,null,null,"知道了",null);}
    private void closeDialog(){if(openDialog!=null){openDialog.dismiss();openDialog=null;}}
    private void showDialog(String title,LinearLayout body,String negative,Runnable cancel,String positive,Runnable confirm){
        showDialog(title,body,negative,cancel,positive,confirm,false);
    }
    private void showDialog(String title,LinearLayout body,String negative,Runnable cancel,String positive,Runnable confirm,boolean expanded){
        closeDialog();Dialog dialog=new Dialog(host);dialog.requestWindowFeature(Window.FEATURE_NO_TITLE);openDialog=dialog;
        LinearLayout panel=column();panel.setPadding(dp(22),dp(20),dp(22),dp(16));panel.setBackground(shape(surface,16,true));TextView heading=text(title,21,ink,true);panel.addView(heading);gap(panel,16);
        LimitedScroll scroll=new LimitedScroll(expanded);scroll.setVerticalScrollBarEnabled(false);scroll.addView(body,new ScrollView.LayoutParams(-1,-2));panel.addView(scroll,lp(-1,-2));gap(panel,16);
        LinearLayout actions=row();actions.setGravity(Gravity.RIGHT);panel.addView(actions,lp(-1,48));
        if(negative!=null){TextView b=button(negative,false,()->{closeDialog();if(cancel!=null)cancel.run();});b.setId(7001);actions.addView(b,lp(-2,48));}
        if(positive!=null){horizontalGap(actions,10);TextView b=button(positive,true,()->{closeDialog();if(confirm!=null)confirm.run();});b.setId(7002);actions.addView(b,lp(-2,48));}
        dialog.setContentView(panel);Window w=dialog.getWindow();w.setBackgroundDrawableResource(android.R.color.transparent);w.setDimAmount(.28f);w.addFlags(WindowManager.LayoutParams.FLAG_DIM_BEHIND);w.setWindowAnimations(0);w.setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_ADJUST_RESIZE);dialog.setOnDismissListener(d->{if(openDialog==dialog)openDialog=null;});dialog.show();w.setLayout(Math.min(dp(expanded?920:468),getResources().getDisplayMetrics().widthPixels-dp(40)),-2);w.getDecorView().setSystemUiVisibility(host.getWindow().getDecorView().getSystemUiVisibility());
    }
    private final class LimitedScroll extends ScrollView {final boolean expanded;LimitedScroll(boolean expanded){super(E01NativeUi.this);this.expanded=expanded;}protected void onMeasure(int w,int h){int available=(getResources().getDisplayMetrics().heightPixels-dp(158));super.onMeasure(w,View.MeasureSpec.makeMeasureSpec(Math.max(dp(70),expanded?available:Math.min(dp(310),available)),View.MeasureSpec.AT_MOST));}}
    private interface Change{void set(boolean value);}
    private final class Toggle extends View {
        boolean checked;final String title;final Change change;final Paint p=new Paint(3);
        Toggle(String title,boolean value,Change change){super(E01NativeUi.this);this.title=title;this.checked=value;this.change=change;setClickable(true);setFocusable(true);updateDescription();setOnClickListener(v->{safe(()->{change.set(!checked);checked=!checked;updateDescription();invalidate();});});}
        private void updateDescription(){setContentDescription(title+(checked?"，已开启":"，已关闭"));}
        protected void onDraw(Canvas c){float cx=getWidth()/2f,cy=getHeight()/2f;p.setColor(checked?accent:(dark?0xff526174:0xffB8C4D3));c.drawRoundRect(cx-dp(21),cy-dp(12),cx+dp(21),cy+dp(12),dp(12),dp(12),p);p.setColor(Color.WHITE);c.drawCircle(cx+dp(checked?9:-9),cy,dp(9),p);}
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo i){super.onInitializeAccessibilityNodeInfo(i);i.setClassName("android.widget.Switch");i.setCheckable(true);i.setChecked(checked);}
    }
    private final class Symbol extends View {
        final String kind;final int color;final Paint p=new Paint(3);Symbol(String k,int c){super(E01NativeUi.this);kind=k;color=c;setImportantForAccessibility(IMPORTANT_FOR_ACCESSIBILITY_NO);}
        protected void onDraw(Canvas original){Canvas c=original;c.save();float factor=Math.min(getWidth(),getHeight())/24f;c.translate((getWidth()-24*factor)/2,(getHeight()-24*factor)/2);c.scale(factor,factor);p.setColor(color);p.setStyle(Paint.Style.STROKE);p.setStrokeWidth(1.7f);p.setStrokeCap(Paint.Cap.ROUND);p.setStrokeJoin(Paint.Join.ROUND);
            switch(kind){
            case"info":c.drawCircle(12,12,9,p);c.drawPoint(12,7,p);c.drawLine(12,11,12,17,p);break;
            case"logs":c.drawRoundRect(4,2,20,22,2,2,p);c.drawLine(8,7,16,7,p);c.drawLine(8,12,16,12,p);c.drawLine(8,17,13,17,p);break;
            case"wifi":c.drawArc(new RectF(2,5,22,24),220,100,false,p);c.drawArc(new RectF(6,10,18,22),220,100,false,p);p.setStyle(Paint.Style.FILL);c.drawCircle(12,19,1.4f,p);break;
            case"usb":c.drawLine(12,3,12,20,p);c.drawLine(12,4,9,7,p);c.drawLine(12,4,15,7,p);c.drawLine(12,15,6,11,p);c.drawCircle(6,9,1.8f,p);c.drawLine(12,12,18,10,p);c.drawRect(16,6,20,10,p);c.drawCircle(12,20,1.6f,p);break;
            case"cluster":c.drawRoundRect(2,5,22,19,4,4,p);c.drawArc(new RectF(6,7,18,19),180,180,false,p);c.drawLine(12,15,15,11,p);break;
            case"display":c.drawRoundRect(2,3,22,17,2,2,p);c.drawLine(12,17,12,21,p);c.drawLine(8,21,16,21,p);break;
            case"audio":c.drawPath(path(3,10,7,10,12,6,12,18,7,14,3,14,3,10),p);c.drawArc(new RectF(10,6,22,18),-60,120,false,p);c.drawArc(new RectF(12,9,18,15),-60,120,false,p);break;
            case"car":c.drawRoundRect(3,10,21,18,2,2,p);c.drawPath(path(5,10,7,5,17,5,19,10),p);c.drawLine(6,18,6,20,p);c.drawLine(18,18,18,20,p);c.drawLine(6,13,8,13,p);c.drawLine(16,13,18,13,p);break;
            case"phone":c.drawRoundRect(6,2,18,22,3,3,p);c.drawLine(10,5,14,5,p);c.drawLine(10,19,14,19,p);break;
            case"gear":c.drawCircle(12,12,6,p);c.drawCircle(12,12,2,p);for(int n=0;n<8;n++){c.save();c.rotate(n*45,12,12);c.drawLine(12,3,12,6,p);c.restore();}break;
            case"check":c.drawPath(path(5,12,10,17,20,6),p);break;
            case"next":c.drawPath(path(9,5,16,12,9,19),p);break;
            case"back":c.drawPath(path(15,5,8,12,15,19),p);break;
            case"sun":c.drawCircle(12,12,4,p);for(int n=0;n<8;n++){c.save();c.rotate(n*45,12,12);c.drawLine(12,2,12,4,p);c.restore();}break;
            case"moon":Path moon=new Path();moon.moveTo(17,3);moon.cubicTo(2,-1,0,20,13,21);moon.cubicTo(18,21,21,17,21,14);moon.cubicTo(10,19,8,6,17,3);c.drawPath(moon,p);break;
            case"eye":Path eye=new Path();eye.moveTo(2,12);eye.cubicTo(7,3,17,3,22,12);eye.cubicTo(17,21,7,21,2,12);c.drawPath(eye,p);c.drawCircle(12,12,3,p);break;
            case"warning":c.drawPath(path(12,3,22,21,2,21,12,3),p);c.drawLine(12,9,12,14,p);c.drawPoint(12,18,p);break;
            default:c.drawCircle(12,12,8,p);
            }c.restore();
        }
    }
    private Path path(float...xy){Path p=new Path();p.moveTo(xy[0],xy[1]);for(int i=2;i<xy.length;i+=2)p.lineTo(xy[i],xy[i+1]);return p;}
    private final class Hero extends View {
        final Paint p=new Paint(3);Hero(){super(E01NativeUi.this);setContentDescription("手机与车机连接示意");}
        protected void onDraw(Canvas c){c.save();float s=Math.min(getWidth()/168f,getHeight()/152f);c.translate((getWidth()-168*s)/2,(getHeight()-152*s)/2);c.scale(s,s);p.setStyle(Paint.Style.FILL);p.setColor(tint);c.drawCircle(84,77,65,p);p.setColor(dark?0xff344A60:0xffBDCCDD);c.drawRoundRect(51,12,120,139,13,13,p);p.setColor(surface);c.drawRoundRect(54,15,117,136,11,11,p);p.setColor(dark?0xff162536:0xffE9F1FA);c.drawRoundRect(59,23,112,128,8,8,p);p.setColor(ink);c.drawRoundRect(75,19,96,23,2,2,p);p.setColor(accent);c.drawRoundRect(69,49,102,82,9,9,p);p.setColor(dark?0xff172D48:Color.WHITE);p.setStyle(Paint.Style.STROKE);p.setStrokeWidth(2.7f);p.setStrokeCap(Paint.Cap.ROUND);c.drawPath(path(77,66,84,73,95,58),p);p.setStyle(Paint.Style.FILL);p.setColor(dark?0xff52718F:0xffB4C9E3);c.drawRoundRect(72,96,99,100,2,2,p);c.drawRoundRect(77,107,94,110,1.5f,1.5f,p);p.setColor(surface);c.drawRoundRect(15,91,64,130,10,10,p);p.setColor(success);c.drawCircle(39,110,11,p);p.setColor(Color.WHITE);p.setStyle(Paint.Style.STROKE);p.setStrokeWidth(2);c.drawPath(path(33,110,37,114,45,106),p);c.restore();}
    }
}
