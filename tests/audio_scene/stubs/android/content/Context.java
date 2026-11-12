package android.content;
public class Context {
    public Context app=this;
    public final ContentResolver resolver=new ContentResolver();
    public boolean failApplication,failResolver;
    public int applicationReads,resolverReads;
    public Context getApplicationContext(){applicationReads++;if(failApplication)throw new IllegalStateException("application unavailable");return app;}
    public ContentResolver getContentResolver(){resolverReads++;if(failResolver)throw new IllegalStateException("resolver unavailable");return resolver;}
}
