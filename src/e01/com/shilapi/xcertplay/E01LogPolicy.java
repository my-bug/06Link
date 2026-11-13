package com.shilapi.xcertplay;

import android.content.Context;
import java.io.*;
import java.util.*;

/** Release logging: bounded files, no protocol stream dumps, deduplicated failures. */
public final class E01LogPolicy {
    public static final int TOTAL_BYTES = 1000000;
    private static final Set<File> directories = new LinkedHashSet<File>();
    public static final int FILE_BYTES = 16 * 1024;
    public static final int SESSION_BYTES = 128 * 1024;
    private static final int LINE_CHARS = 512;
    private static final int CRASH_BYTES = 16 * 1024;
    private static final int CRASH_FILES = 2;
    private static final long REPEAT_NS = 300000000000L;
    private static final LinkedHashMap<String, Long> recent = new LinkedHashMap<String, Long>();
    private static final Map<String, String> lastState = new HashMap<String, String>();

    private static boolean crashName(String name) {
        return name.matches("crash-[0-9]+(?:-[0-9]+)?\\.log");
    }
    private static boolean known(String name) {
        return name.equals("06link.log") || name.equals("previous.log")
            || name.equals("e01-cluster-diagnostic.txt") || name.equals("e01-cluster-diagnostic.previous.txt")
            || name.equals("main-stall.log") || name.equals("last-exit-info.log") || crashName(name)
            || name.equals("logcat.log") || name.equals("logcat-previous.log")
            || name.matches("previous-[2-7]\\.log");
    }
    private static void register(File directory) throws IOException {
        if(directory!=null)directories.add(directory.getCanonicalFile());
    }
    /** Shared under this class monitor by every enabled file writer. */
    private static boolean reserve(File target, long growth) throws IOException {
        List<File> files=new ArrayList<File>();long total=0;
        for(File directory:directories){
            File[] entries=directory.listFiles();if(entries==null)continue;
            for(File f:entries)if(f.isFile()&&safe(f)&&known(f.getName())){files.add(f);total+=f.length();}
        }
        if(total+growth<=TOTAL_BYTES)return true;
        Collections.sort(files,new Comparator<File>(){
            public int compare(File a,File b){return Long.compare(a.lastModified(),b.lastModified());}
        });
        File protectedFile=target==null?null:target.getCanonicalFile();
        for(File f:files){
            if(protectedFile!=null&&f.getCanonicalFile().equals(protectedFile))continue;
            long bytes=f.length();if(f.delete())total-=bytes;
            if(total+growth<=TOTAL_BYTES)return true;
        }
        // If old files cannot be removed, do not add more bytes.
        return total+growth<=TOTAL_BYTES;
    }
    private static byte[] boundedUtf8(String text,int limit)throws IOException {
        byte[] bytes=text.substring(0,Math.min(text.length(),limit)).getBytes("UTF-8");
        if(bytes.length<=limit)return bytes;
        int end=limit;while(end>0&&(bytes[end]&0xc0)==0x80)end--;
        return Arrays.copyOf(bytes,end);
    }
    /** Kotlin default-write adapters; used only at audited app log call sites. */
    public static void writeText(File file,String text,java.nio.charset.Charset unused,int mask,Object marker){
        writeBounded(file,text,false);
    }
    public static void appendText(File file,String text,java.nio.charset.Charset unused,int mask,Object marker){
        writeBounded(file,text,true);
    }
    private static synchronized void writeBounded(File file,String text,boolean append) {
        try{
            if(file==null||text==null||!known(file.getName())||!safe(file))return;
            File dir=file.getParentFile();if(!dir.isDirectory()&&!dir.mkdirs())return;
            register(dir);maintain(dir);
            int limit=limit(file);
            byte[] bytes=boundedUtf8(text,limit);
            if(append)cap(file,limit-bytes.length,true);
            long growth=append?bytes.length:Math.max(0,bytes.length-file.length());
            if(!reserve(file,growth))return;
            try(FileOutputStream out=new FileOutputStream(file,append)){out.write(bytes);}
            maintain(dir);
        }catch(IOException|SecurityException ignored){}
    }

    private static boolean failure(String s) {
        return s.contains("error") || s.contains("exception") || s.contains("fail")
            || s.contains("timeout") || s.contains("timed out") || s.contains("unavailable")
            || s.contains("denied") || s.contains("accepted=false") || s.contains("guard not held")
            || s.contains("could not") || s.contains("cannot") || s.contains("refused")
            || s.contains("unreachable") || s.contains("unsupported") || s.contains("not approved")
            || s.contains("invalid") || s.contains("missing") || s.contains("no picture")
            || s.contains("broken pipe") || s.contains("reset by peer");
    }

    private static synchronized boolean accept(String source, String text, boolean bad) {
        if (text == null) return false;
        String value = clip(text);
        if (!bad) {
            if (value.equals(lastState.get(source))) return false;
            lastState.put(source, value);
            return true;
        }
        // Numbers in retry counters and timestamps should not defeat suppression.
        String key = source + ":" + value.replaceAll("(?i)(attempt|retry|count|bytes|value|pid|gapMs|waitedMs)([= :]+)[0-9]+", "$1$2#");
        long now = System.nanoTime();
        Long previous = recent.get(key);
        if (previous != null && now - previous.longValue() < REPEAT_NS) return false;
        if (recent.size() >= 128) recent.remove(recent.keySet().iterator().next());
        recent.put(key, Long.valueOf(now));
        return true;
    }

    private static synchronized void clearFailures(String source) {
        Iterator<String> it = recent.keySet().iterator();
        while (it.hasNext()) if (it.next().startsWith(source + ":")) it.remove();
    }

    public static boolean keepCluster(String text) {
        if (text == null) return false;
        String s = text.toLowerCase(Locale.US);
        boolean bad = failure(s);
        // These producers aggregate/rate-limit before reaching this queue. No raw protocol dumps.
        if (text.startsWith("[仪表卡片]") || text.startsWith("[原厂引导]") || text.startsWith("[车道诊断]") || text.startsWith("[仪表电源]")) {
            String source = text.substring(0, text.indexOf(']') + 1);
            return accept(source, text, bad);
        }
        if (s.equals("carplay session active")) clearFailures("cluster");
        // Navigation field changes and periodic counters are not lifecycle events.
        if (!bad && !(s.equals("carplay session active") || s.startsWith("carplay session ended")
            || s.startsWith("cluster mode=") || s.startsWith("map paused:")
            || s.startsWith("navigation/map closed"))) return false;
        return accept("cluster", text, bad);
    }

    /** Explicit component lifecycle events must not be lost to the general session filter. */
    public static synchronized void component(Context context, String text) {
        if(context==null||text==null)return;
        try {
            install(context);
            String clean=DiagnosticRedactor.INSTANCE.redact(text.replace('\n',' ').replace('\r',' '));
            if(clean==null)return;
            String time=new java.text.SimpleDateFormat("HH:mm:ss",Locale.US).format(new Date());
            append(new File(context.getFilesDir(),"06link.log"),time+" [开机兼容] "+clean);
        }catch(RuntimeException ignored){}
    }

    public static void session(File file, String text) {
        if (text == null) return;
        String s = text.toLowerCase(Locale.US);
        boolean bad = failure(s) || s.startsWith("video recovery=") || s.startsWith("video decision=");
        if (s.startsWith("06link log started")) clearFailures("session");
        if (!bad && !(text.startsWith("[音频场景]") || text.startsWith("[导航音量]") || text.startsWith("[音源交接]") || text.startsWith("[导航语音]")
            || s.startsWith("audio: ready audiotype=") || s.contains("connected") || s.contains("disconnect")
            || s.contains("session active") || s.contains("session ended")
            || s.contains("session started") || s.contains("session closed")
            || s.contains("hotspot ready") || s.contains("watchdog")
            || s.contains("restored") || s.contains("recovery")
            || s.contains("permission") || s.contains("authentication")
            || s.contains("crash") || s.contains("stall") || s.startsWith("video config ")
            || s.startsWith("06link log started"))) return;
        try {
            String clean = DiagnosticRedactor.INSTANCE.redact(text);
            if (clean != null && accept("session", clean, bad)) append(file, clean);
        } catch (RuntimeException ignored) { }
    }

    private static String clip(String text) {
        if (text.length() <= LINE_CHARS) return text;
        int end = LINE_CHARS - 1;
        if (Character.isHighSurrogate(text.charAt(end - 1))) end--;
        return text.substring(0, end) + "…";
    }

    private static boolean safe(File file) throws IOException {
        return file.getParentFile() != null && file.getCanonicalFile()
            .equals(new File(file.getParentFile().getCanonicalFile(), file.getName()));
    }

    private static File previous(File file) {
        if ("06link.log".equals(file.getName())) return new File(file.getParentFile(), "previous.log");
        if ("e01-cluster-diagnostic.txt".equals(file.getName()))
            return new File(file.getParentFile(), "e01-cluster-diagnostic.previous.txt");
        return null;
    }

    private static int limit(File file) {
        String name=file.getName();
        return name.equals("06link.log") || name.equals("previous.log") ? SESSION_BYTES : FILE_BYTES;
    }

    /** Starting an Activity/session is not a user request to erase the previous drive. */
    public static synchronized void startSession(File file, String header) {
        session(file, header);
        // A completed start marker also commits preceding session evidence to storage.
        try {
            if (file != null && safe(file) && previous(file) != null && file.isFile())
                try (RandomAccessFile output = new RandomAccessFile(file, "rw")) { output.getFD().sync(); }
        } catch (IOException | SecurityException ignored) { }
    }

    /** Keep complete recent UTF-8 lines; an oversized single line is discarded. */
    private static void cap(File file, int limit, boolean tail) throws IOException {
        if (!safe(file) || !file.isFile() || file.length() <= limit) return;
        byte[] bytes = new byte[limit];
        int n;
        try (RandomAccessFile input = new RandomAccessFile(file, "r")) {
            if (tail) input.seek(input.length() - limit);
            input.readFully(bytes); n = bytes.length;
        }
        int start = 0;
        if (tail) { while (start < n && bytes[start] != '\n') start++; if (start < n) start++; }
        else { while (n > 0 && bytes[n - 1] != '\n') n--; }
        try (FileOutputStream output = new FileOutputStream(file, false)) {
            if (n > start) output.write(bytes, start, n - start);
        }
    }

    public static synchronized void rotate(File file) {
        try {
            File old = previous(file);
            if (old == null || !safe(file) || !safe(old) || !file.isFile() || file.length() == 0) return;
            cap(file, limit(file), true);
            if (old.exists() && !old.delete()) return;
            file.renameTo(old);
        } catch (IOException | SecurityException ignored) { }
    }

    /** Callers may pass a batch; every line and the byte limit are checked before writing. */
    public static synchronized void append(File file, String text) {
        try {
            if (previous(file) == null || !safe(file)) return;
            File dir = file.getParentFile();
            if (!dir.isDirectory() && !dir.mkdirs()) return;
            register(dir);
            cap(file, limit(file), true);
            for (String line : text.split("\n")) {
                if (line.length() == 0) continue;
                String normalized=line.toLowerCase(Locale.US);
                if ((normalized.startsWith("video ") && normalized.contains(" window="))
                    || normalized.startsWith("smooth video negotiatedmax=")) continue;
                String dated = line.matches("^[0-9]{4}-[0-9]{2}-[0-9]{2}[ T].*") ? line
                    : new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss",Locale.US).format(new Date()) + " " + line;
                byte[] bytes = (clip(dated) + "\n").getBytes("UTF-8");
                if (file.length() + bytes.length > limit(file)) {
                    rotate(file);
                    if (file.length() + bytes.length > limit(file)) return;
                }
                if(!reserve(file,bytes.length))return;
                try (FileOutputStream output = new FileOutputStream(file, true)) { output.write(bytes); }
            }
        } catch (IOException | SecurityException ignored) { }
    }

    /** Only known app log names, no recursive traversal or exported/user files. */
    public static synchronized void maintain(File directory) {
        if (directory == null || !directory.isDirectory()) return;
        try {
            register(directory);
            List<File> crashes = new ArrayList<File>();
            File[] entries = directory.listFiles();
            if (entries == null) return;
            for (File f : entries) {
                if (!safe(f) || !f.isFile()) continue;
                String name = f.getName();
                if (name.equals("logcat.log") || name.equals("logcat-previous.log")
                    || name.matches("previous-[2-7]\\.log")) { f.delete(); continue; }
                if (name.equals("06link.log") || name.equals("previous.log")
                    || name.equals("e01-cluster-diagnostic.txt") || name.equals("e01-cluster-diagnostic.previous.txt"))
                    cap(f, limit(f), true);
                else if (crashName(name)) crashes.add(f);
                else if (name.equals("main-stall.log") || name.equals("last-exit-info.log")) cap(f, CRASH_BYTES, true);
            }
            Collections.sort(crashes, new Comparator<File>() {
                public int compare(File a, File b) { return Long.compare(b.lastModified(), a.lastModified()); }
            });
            for (int i = 0; i < crashes.size(); i++) {
                File f = crashes.get(i);
                if (i >= CRASH_FILES) f.delete(); else cap(f, CRASH_BYTES, false);
            }
            reserve(null,0);
        } catch (IOException | SecurityException ignored) { }
    }

    public static synchronized void install(Context context) {
        if (context == null) return;
        try {
            File internal = context.getFilesDir();
            register(internal); register(new File(internal,"logs"));
            File external = context.getExternalFilesDir(null);
            if(external!=null){register(external);register(new File(external,"logs"));}
            for(File directory:new ArrayList<File>(directories))maintain(directory);
            reserve(null,0);
        } catch (IOException | RuntimeException ignored) { }
    }
    private static final java.util.regex.Pattern UI_TIME = java.util.regex.Pattern.compile(
        "(?:^|[ T\\[])([0-2][0-9]:[0-5][0-9]:[0-5][0-9])");
    private static final class UiFile {
        final byte[] bytes; final long modified; final boolean crash;
        UiFile(byte[] b,long m,boolean c){bytes=b;modified=m;crash=c;}
    }
    private static final class UiBytes {
        final List<UiFile> files=new ArrayList<UiFile>(); String error;
    }
    /** Only byte capture shares the writer monitor; parsing never delays a writer. */
    private static synchronized UiBytes captureUi(Context context) {
        install(context);UiBytes snapshot=new UiBytes();List<File> files=new ArrayList<File>();
        try {
            for(File directory:directories){File[] list=directory.listFiles();if(list==null)continue;
                for(File f:list)if(f.isFile()&&known(f.getName())&&safe(f))files.add(f);}
            Collections.sort(files,new Comparator<File>(){public int compare(File a,File b){return Long.compare(a.lastModified(),b.lastModified());}});
            int remaining=TOTAL_BYTES;
            for(File f:files){
                int size=(int)Math.min(f.length(),Math.min(limit(f),remaining));
                if(size==0)continue;
                byte[] bytes=new byte[size];
                try(RandomAccessFile in=new RandomAccessFile(f,"r")){in.readFully(bytes);}
                snapshot.files.add(new UiFile(bytes,f.lastModified(),crashName(f.getName())));
                remaining-=size;if(remaining==0)break;
            }
        }catch(IOException|SecurityException e){snapshot.error=e.getClass().getSimpleName();}
        return snapshot;
    }
    /** Compact retained history: primitive indexes instead of one object per tiny line. */
    private static final class UiRows extends AbstractList<String[]> {
        private String text;
        private StringBuilder builder=new StringBuilder();
        private int[] ends=new int[256],times=new int[256];
        private final BitSet failures=new BitSet();
        private int count;
        void addRow(String message,int seconds,boolean failure){
            if(count==ends.length){ends=Arrays.copyOf(ends,count*2);times=Arrays.copyOf(times,count*2);}
            builder.append(message);ends[count]=builder.length();times[count]=seconds;
            if(failure)failures.set(count);count++;
        }
        void finish(){text=builder.toString();builder=null;}
        public int size(){return count;}
        public String[] get(int index){
            if(index<0||index>=count)throw new IndexOutOfBoundsException();
            int seconds=times[index];String time="—";
            if(seconds>=0){int h=seconds/3600,m=seconds/60%60,s=seconds%60;
                time=new String(new char[]{(char)('0'+h/10),(char)('0'+h%10),':',(char)('0'+m/10),(char)('0'+m%10),':',(char)('0'+s/10),(char)('0'+s%10)});}
            return new String[]{time,failures.get(index)?"异常":"记录",text.substring(index==0?0:ends[index-1],ends[index])};
        }
        List<String[]> newest(final boolean errorsOnly){
            final int[] selected=errorsOnly?new int[failures.cardinality()]:null;
            if(errorsOnly){int n=0;for(int i=failures.previousSetBit(count-1);i>=0;i=failures.previousSetBit(i-1))selected[n++]=i;}
            return new AbstractList<String[]>(){
                public int size(){return errorsOnly?selected.length:count;}
                public String[] get(int index){if(index<0||index>=size())throw new IndexOutOfBoundsException();return UiRows.this.get(errorsOnly?selected[index]:count-index-1);}
            };
        }
    }
    public static final class UiSnapshot {
        public final List<String[]> all,errors;
        private UiSnapshot(UiRows rows){all=rows.newest(false);errors=rows.newest(true);}
    }
    private static UiRows parseUi(UiBytes snapshot) {
        UiRows result=new UiRows();
        java.text.SimpleDateFormat clock=new java.text.SimpleDateFormat("HH:mm:ss",Locale.US);
        for(UiFile f:snapshot.files){String stamp=clock.format(new Date(f.modified));
            try(BufferedReader in=new BufferedReader(new InputStreamReader(new ByteArrayInputStream(f.bytes),"UTF-8"))){
                String line;while((line=in.readLine())!=null){if(line.trim().isEmpty())continue;
                    String clean=DiagnosticRedactor.INSTANCE.redact(clip(line));if(clean==null)continue;clean=clip(clean);
                    java.util.regex.Matcher m=UI_TIME.matcher(clean);String t=m.find()?m.group(1):stamp;
                    int seconds=((t.charAt(0)-'0')*10+t.charAt(1)-'0')*3600+((t.charAt(3)-'0')*10+t.charAt(4)-'0')*60+(t.charAt(6)-'0')*10+t.charAt(7)-'0';
                    result.addRow(clean,seconds,f.crash||failure(clean.toLowerCase(Locale.US)));
                }
            }catch(IOException e){snapshot.error=e.getClass().getSimpleName();}
        }
        if(snapshot.error!=null)result.addRow("读取日志失败："+snapshot.error,-1,true);
        result.finish();return result;
    }
    /** Compatibility order: oldest file first, each file in stored line order. */
    public static List<String[]> readUi(Context context) {return parseUi(captureUi(context));}
    /** Newest-first all/error indexes are built once on the requesting background worker. */
    public static UiSnapshot readUiSnapshot(Context context) {return new UiSnapshot(parseUi(captureUi(context)));}
    /** Same monitor as all enabled writers; preserve app data and non-log files. */
    public static synchronized void clear(Context context) throws IOException {
        install(context);
        for(File directory:directories){File[] list=directory.listFiles();if(list==null)continue;for(File f:list)if(f.isFile()&&known(f.getName())&&safe(f)){
            try(FileOutputStream out=new FileOutputStream(f,false)){out.getFD().sync();}
        }}
        recent.clear();lastState.clear();
    }
    private E01LogPolicy() { }
}
