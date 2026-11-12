.class Lorg/bouncycastle/jsse/provider/ProvTlsClientProtocol;
.super Lorg/bouncycastle/tls/TlsClientProtocol;


# static fields
.field private static final provAcceptRenegotiation:Z


# instance fields
.field private final closeable:Ljava/io/Closeable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "org.bouncycastle.jsse.client.acceptRenegotiation"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/PropertyUtils;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/bouncycastle/jsse/provider/ProvTlsClientProtocol;->provAcceptRenegotiation:Z

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/Closeable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/tls/TlsClientProtocol;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iput-object p3, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClientProtocol;->closeable:Ljava/io/Closeable;

    return-void
.end method


# virtual methods
.method protected closeConnection()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClientProtocol;->closeable:Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method protected getRenegotiationPolicy()I
    .locals 1

    sget-boolean v0, Lorg/bouncycastle/jsse/provider/ProvTlsClientProtocol;->provAcceptRenegotiation:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
