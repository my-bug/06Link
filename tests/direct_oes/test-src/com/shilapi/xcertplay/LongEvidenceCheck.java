package com.shilapi.xcertplay;
import java.lang.reflect.*;
public final class LongEvidenceCheck {
 static int checks;
 static final class Host extends android.app.Activity{private boolean wirelessEnabled;Host(boolean b){wirelessEnabled=b;}}
 static void ok(boolean b,String s){checks++;if(!b)throw new AssertionError(s);}
 public static void main(String[] args)throws Exception{
  Host host=new Host(true);E01VideoEvidence.begin(host,60);String wireless=E01VideoEvidence.identity();
  ok(wireless.contains("configured=wireless"),"configuration metadata explicitly labelled, not actual link assertion");
  E01SmoothVideo.Output out=new E01SmoothVideo.Output(host,60,true);
  E01SmoothVideo.State s=new E01SmoothVideo.State(out);s.reportAt=1000000000L;
  E01VideoEvidence.begin(new Host(false),60);
  ok(!E01VideoEvidence.identity().equals(wireless)&&s.evidenceIdentity.equals(wireless),"replacement connection cannot relabel an old output owner");
  E01VideoEvidence.audioPriority(null);ok(E01LogPolicy.messages.get(E01LogPolicy.messages.size()-1).contains("priority=unknown"),"unavailable priority metadata never aborts receiver");
  for(int n=1;n<=3;n++){s.submitted+=600;s.decoded+=600;s.outputCount+=600;E01SmoothVideo.report(s,1000000000L+n*10000000000L);}
  ok(s.reports==3,"first three startup summaries remain");
  long stamp=s.reportAt;s.submitted+=3000;s.decoded+=3000;s.outputCount+=3000;
  E01SmoothVideo.report(s,stamp+59999999999L);ok(s.reports==3,"no extra short-period logging");
  E01SmoothVideo.report(s,stamp+60000000000L);ok(s.reports==4&&s.reportSubmitted==4800&&s.reportOutput==4800,"long session report and baselines advance");
  for(int n=0;n<120;n++){stamp=s.reportAt;s.submitted+=3600;s.decoded+=3600;s.outputCount+=3600;E01SmoothVideo.report(s,stamp+60000000000L);}
  ok(s.reports==124,"two more hours remain observable");
  ok(s.inFlight.pending()==0&&!s.retired&&s.skipped==0,"reporting does not change decoder policy");
  System.out.println("PASS "+checks+" prolonged output evidence checks");
 }
}
