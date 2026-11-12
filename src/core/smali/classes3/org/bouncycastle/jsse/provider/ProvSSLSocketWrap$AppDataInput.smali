.class Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap$AppDataInput;
.super Ljava/io/InputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppDataInput"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;


# direct methods
.method constructor <init>(Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap$AppDataInput;->this$0:Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap$AppDataInput;->this$0:Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap$AppDataInput;->this$0:Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;

    iget-object v1, v1, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->protocol:Lorg/bouncycastle/tls/TlsProtocol;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap$AppDataInput;->this$0:Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;

    iget-object v1, v1, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->protocol:Lorg/bouncycastle/tls/TlsProtocol;

    invoke-virtual {v1}, Lorg/bouncycastle/tls/TlsProtocol;->applicationDataAvailable()I

    move-result v1

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap$AppDataInput;->this$0:Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->close()V

    return-void
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap$AppDataInput;->this$0:Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->handshakeIfNecessary(Z)V

    new-array v0, v1, [B

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap$AppDataInput;->this$0:Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;

    iget-object v2, v2, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->protocol:Lorg/bouncycastle/tls/TlsProtocol;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Lorg/bouncycastle/tls/TlsProtocol;->readApplicationData([BII)I

    move-result v2

    if-ge v2, v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ge p3, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap$AppDataInput;->this$0:Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->handshakeIfNecessary(Z)V

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap$AppDataInput;->this$0:Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;

    iget-object v0, v0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->protocol:Lorg/bouncycastle/tls/TlsProtocol;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/tls/TlsProtocol;->readApplicationData([BII)I

    move-result p1

    return p1
.end method
