.class Lorg/bouncycastle/jsse/provider/ProvSSLSocketBase$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/jsse/provider/ProvSSLSocketBase;->notifyHandshakeCompletedListeners(Ljavax/net/ssl/SSLSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/jsse/provider/ProvSSLSocketBase;

.field final synthetic val$entries:Ljava/util/Collection;

.field final synthetic val$event:Ljavax/net/ssl/HandshakeCompletedEvent;


# direct methods
.method constructor <init>(Lorg/bouncycastle/jsse/provider/ProvSSLSocketBase;Ljava/util/Collection;Ljavax/net/ssl/HandshakeCompletedEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketBase$2;->this$0:Lorg/bouncycastle/jsse/provider/ProvSSLSocketBase;

    iput-object p2, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketBase$2;->val$entries:Ljava/util/Collection;

    iput-object p3, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketBase$2;->val$event:Ljavax/net/ssl/HandshakeCompletedEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketBase$2;->val$entries:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/HandshakeCompletedListener;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/AccessControlContext;

    new-instance v3, Lorg/bouncycastle/jsse/provider/ProvSSLSocketBase$2$1;

    invoke-direct {v3, p0, v2}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketBase$2$1;-><init>(Lorg/bouncycastle/jsse/provider/ProvSSLSocketBase$2;Ljavax/net/ssl/HandshakeCompletedListener;)V

    invoke-static {v3, v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
