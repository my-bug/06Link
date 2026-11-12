import com.shilapi.xcertplay.E01VideoCrypto;
import java.util.*;
import java.lang.reflect.*;
import javax.crypto.*;
import javax.crypto.spec.*;

public class CryptoProbe {
 static byte[] hex(String s){byte[] b=new byte[s.length()/2];for(int i=0;i<b.length;i++)b[i]=(byte)Integer.parseInt(s.substring(2*i,2*i+2),16);return b;}
 static void check(boolean b,String s){if(!b)throw new AssertionError(s);}
 static void bundled()throws Exception{
  Field f=E01VideoCrypto.class.getDeclaredField("STATE");f.setAccessible(true);Object state=((ThreadLocal<?>)f.get(null)).get();Method m=state.getClass().getDeclaredMethod("bundled");m.setAccessible(true);m.invoke(state);
  check(E01VideoCrypto.implementation().equals("Conscrypt"),"bundled provider not loaded: "+E01VideoCrypto.implementation());
 }
 static void rejected(byte[] k,byte[] n,byte[] c,byte[] a)throws Exception{
  try{E01VideoCrypto.open(k,n,c,a);throw new AssertionError("bad authentication accepted/fell back");}catch(BadPaddingException expected){}
 }
 static void vector()throws Exception{
  byte[] key=hex("808182838485868788898a8b8c8d8e8f909192939495969798999a9b9c9d9e9f"),nonce=hex("070000004041424344454647"),aad=hex("50515253c0c1c2c3c4c5c6c7");
  byte[] plain="Ladies and Gentlemen of the class of '99: If I could offer you only one tip for the future, sunscreen would be it.".getBytes("UTF-8");
  byte[] sealed=hex("d31a8d34648e60db7b86afbc53ef7ec2a4aded51296e08fea9e2b5a736ee62d63dbea45e8ca9671282fafb69da92728b1a71de0a9e060b2905d6a5b67ecd3b3692ddbd7f2d778b8c9803aee328091b58fab324e4fad675945585808b4831d7bc3ff4def08e4b7a9de576d26586cec64b61161ae10b594f09e26a7e902ecbd0600691");
  check(Arrays.equals(plain,E01VideoCrypto.open(key,nonce,sealed,aad)),"RFC8439 vector");
  for(int i:new int[]{0,63,sealed.length-1}){byte[] bad=sealed.clone();bad[i]^=1;rejected(key,nonce,bad,aad);}
  byte[] badAad=aad.clone();badAad[0]^=1;rejected(key,nonce,sealed,badAad);
  byte[] badNonce=nonce.clone();badNonce[0]^=1;rejected(key,badNonce,sealed,aad);
  byte[] badKey=key.clone();badKey[0]^=1;rejected(badKey,nonce,sealed,aad);
  check(Arrays.equals(plain,E01VideoCrypto.open(key,nonce,sealed,aad)),"reinit after bad tag");
 }
 static Cipher cipher()throws Exception {try{return Cipher.getInstance("ChaCha20/Poly1305/NoPadding");}catch(Exception e){return Cipher.getInstance("ChaCha20-Poly1305");}}
 static void differential()throws Exception{
  Random random=new Random(3501);
  for(int size:new int[]{0,1,15,16,17,63,64,65,8192,24576,65536,1048577}){
   byte[] k=new byte[32],n=new byte[12],a=new byte[size%129],plain=new byte[size];random.nextBytes(k);random.nextBytes(n);random.nextBytes(a);random.nextBytes(plain);
   Cipher c=cipher();c.init(Cipher.ENCRYPT_MODE,new SecretKeySpec(k,"ChaCha20"),new IvParameterSpec(n));c.updateAAD(a);byte[] sealed=c.doFinal(plain);
   check(Arrays.equals(plain,E01VideoCrypto.open(k,n,sealed,a)),"differential length="+size);
   sealed[sealed.length-1]^=1;rejected(k,n,sealed,a);
  }
 }
 static void benchmark()throws Exception{
  Class<?> type=Class.forName("com.shilapi.xcertplay.airplay.AirPlayCrypto");Object instance=type.getField("INSTANCE").get(null);Method open=type.getMethod("chachaOpen",byte[].class,byte[].class,byte[].class,byte[].class);
  Field f=E01VideoCrypto.class.getDeclaredField("STATE");f.setAccessible(true);Object state=((ThreadLocal<?>)f.get(null)).get();Field cf=state.getClass().getDeclaredField("cipher");cf.setAccessible(true);Object nativeCipher=cf.get(state);
  for(int size:new int[]{8192,24576,65536}){
   byte[] k=new byte[32],n=new byte[12],a=new byte[128],p=new byte[size];new Random(35).nextBytes(p);Cipher c=cipher();c.init(Cipher.ENCRYPT_MODE,new SecretKeySpec(k,"ChaCha20"),new IvParameterSpec(n));c.updateAAD(a);byte[] sealed=c.doFinal(p);
   for(boolean fast:new boolean[]{false,true}){
    cf.set(state,fast?nativeCipher:null);
    for(int i=0;i<20;i++)check(Arrays.equals(p,(byte[])open.invoke(instance,k,n,sealed,a)),"packaged decrypt mismatch");
    long start=System.nanoTime();for(int i=0;i<100;i++)open.invoke(instance,k,n,sealed,a);
    System.out.println("BENCH bytes="+size+" mode="+(fast?"bundled-native":"BC-fallback")+" meanUs="+(System.nanoTime()-start)/100/1000);
   }
  }
 }
 public static void main(String[] args)throws Exception{
  boolean useBundled=args.length>0&&args[0].equals("bundled");if(useBundled)bundled();else JdkChaChaFixture.installIfNeeded();
  vector();differential();
  final Throwable[] error={null};Thread other=new Thread(()->{try{if(useBundled)bundled();vector();}catch(Throwable e){error[0]=e;}});other.start();other.join();if(error[0]!=null)throw new AssertionError(error[0]);
  System.out.println("PASS RFC8439, altered tags/AAD/nonce/key, 12 sizes including empty and >1MiB, recovery and concurrent cipher state; provider="+E01VideoCrypto.implementation());
  if(useBundled)benchmark();
 }
}
