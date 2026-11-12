package android.os;
import java.util.*;
public final class Process {
 public static final class Call {public final long tid;public final int priority;Call(long t,int p){tid=t;priority=p;}}
 private static final List<Call> calls=new ArrayList<Call>();
 private static final Map<Long,Integer> priorities=new HashMap<Long,Integer>();
 public static volatile boolean failPriority;
 public static int myTid(){return (int)Thread.currentThread().getId();}
 public static synchronized void setThreadPriority(int priority){
  long tid=Thread.currentThread().getId();calls.add(new Call(tid,priority));
  if(failPriority)throw new SecurityException("test priority denied");
  priorities.put(tid,priority);
 }
 public static synchronized void reset(){calls.clear();priorities.clear();failPriority=false;}
 public static synchronized void seed(long tid,int value){priorities.put(tid,value);}
 public static synchronized int priority(long tid){Integer p=priorities.get(tid);return p==null?0:p;}
 public static synchronized int callCount(long tid){int n=0;for(Call c:calls)if(c.tid==tid)n++;return n;}
 public static synchronized int totalCalls(){return calls.size();}
 public static synchronized int requested(long tid){for(Call c:calls)if(c.tid==tid)return c.priority;return Integer.MAX_VALUE;}
}
