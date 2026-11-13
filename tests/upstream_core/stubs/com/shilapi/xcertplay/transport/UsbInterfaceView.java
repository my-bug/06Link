package com.shilapi.xcertplay.transport;
public class UsbInterfaceView { int cls,sub,protocol; public UsbInterfaceView(int c,int s,int p){cls=c;sub=s;protocol=p;} public int getInterfaceClass(){return cls;} public int getInterfaceSubclass(){return sub;} public int getInterfaceProtocol(){return protocol;} }
