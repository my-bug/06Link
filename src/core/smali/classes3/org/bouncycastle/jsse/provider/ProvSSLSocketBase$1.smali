.class Lorg/bouncycastle/jsse/provider/ProvSSLSocketBase$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jsse/provider/ProvSSLSocketBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/jsse/provider/ProvSSLSocketBase;


# direct methods
.method constructor <init>(Lorg/bouncycastle/jsse/provider/ProvSSLSocketBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketBase$1;->this$0:Lorg/bouncycastle/jsse/provider/ProvSSLSocketBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketBase$1;->this$0:Lorg/bouncycastle/jsse/provider/ProvSSLSocketBase;

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketBase;->closeSocket()V

    return-void
.end method
