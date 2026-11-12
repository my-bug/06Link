package com.shilapi.xcertplay;
import android.content.Context;import android.os.Build;import android.os.Handler;import android.os.Looper;import android.widget.*;import java.util.concurrent.atomic.AtomicBoolean;
/** Settings entry for the OEM command service. */
public final class E01ServiceAccessUi {
 private static final AtomicBoolean busy=new AtomicBoolean();
 public static void add(Context c,LinearLayout card){
  if(!E01PrivilegedShell.supported())return;
  TextView title=new TextView(c);title.setText("原厂卡片兼容");title.setTextSize(18);title.setPadding(0,E01Dialogs.dp(c,16),0,E01Dialogs.dp(c,8));title.setTextColor(Glass.INSTANCE.getCurrent().getText());card.addView(title);
  TextView note=new TextView(c);note.setText("连接时暂停原厂导航信息，断开时恢复。");note.setTextSize(15);note.setTextColor(Glass.INSTANCE.getCurrent().getMuted());card.addView(note);
  Button button=new Button(c);button.setText("检查原厂服务");E01Dialogs.button(button,false);card.addView(button,new LinearLayout.LayoutParams(-1,-2));
  TextView status=new TextView(c);status.setText("通过原厂服务直接控制。");status.setTextSize(15);status.setTextColor(Glass.INSTANCE.getCurrent().getMuted());card.addView(status);
  button.setOnClickListener(v->{if(!busy.compareAndSet(false,true))return;button.setEnabled(false);status.setText("正在检查原厂服务…");Handler main=new Handler(Looper.getMainLooper());new Thread(()->{String result;try{result=E01ClusterMode.amapAccessMessage(c.getApplicationContext(),false);}catch(Exception e){result="检查未完成，请稍后重试。";}final String message=result;main.post(()->{status.setText(message);button.setEnabled(true);busy.set(false);});},"06link-service-check").start();});
 }
 private E01ServiceAccessUi(){}
}
