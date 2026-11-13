package com.shilapi.xcertplay.media;
public final class AudioInputPumpCheck {
    static final class Fake implements AudioInputPump.Input, AudioInputPump.Clock {
        long now; int calls, drains, readyAfter=1; boolean running=true, stopOnDrain, delayedDrain;
        public long nanoTime(){return now;}
        public boolean audioInputRunning(){return running;}
        public int dequeueAudioInput(long timeoutUs){calls++; if(calls>=readyAfter)return 3; now+=timeoutUs*1000; return -1;}
        public void drainAudioOutput(){drains++;if(stopOnDrain)running=false;if(delayedDrain)now+=200_000_000L;}
    }
    static void check(boolean b){if(!b)throw new AssertionError();}
    public static void main(String[] args){
        Fake f=new Fake();check(AudioInputPump.acquire(f,f)==3 && f.drains==0 && f.calls==1);
        f=new Fake();f.readyAfter=2;check(AudioInputPump.acquire(f,f)==3 && f.drains==1);
        f=new Fake();f.readyAfter=6;check(AudioInputPump.acquire(f,f)==3 && f.drains>1 && f.now<100_000_000L);
        f=new Fake();f.readyAfter=1000;check(AudioInputPump.acquire(f,f)==-1 && f.now==100_000_000L && f.calls<20);
        f=new Fake();f.readyAfter=2;f.delayedDrain=true;check(AudioInputPump.acquire(f,f)==3 && f.calls==2);
        f=new Fake();f.readyAfter=1000;f.delayedDrain=true;check(AudioInputPump.acquire(f,f)==-1 && f.calls==2);
        f=new Fake();f.running=false;check(AudioInputPump.acquire(f,f)==-1 && f.calls==0);
        f=new Fake();f.stopOnDrain=true;f.readyAfter=1000;check(AudioInputPump.acquire(f,f)==-1 && f.calls==1);
        System.out.println("PASS audio drain/retry/deadline/cancellation scenarios");
    }
}
