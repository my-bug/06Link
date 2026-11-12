.class Lorg/bouncycastle/jsse/provider/ImportSSLSession_8;
.super Lorg/bouncycastle/jsse/provider/ImportSSLSession_7;


# direct methods
.method constructor <init>(Ljavax/net/ssl/ExtendedSSLSession;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/jsse/provider/ImportSSLSession_7;-><init>(Ljavax/net/ssl/ExtendedSSLSession;)V

    return-void
.end method


# virtual methods
.method public getRequestedServerNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bouncycastle/jsse/BCSNIServerName;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ImportSSLSession_8;->sslSession:Ljavax/net/ssl/ExtendedSSLSession;

    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/JsseUtils_7$$ExternalSyntheticApiModelOutline0;->m(Ljavax/net/ssl/ExtendedSSLSession;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/JsseUtils_8;->importSNIServerNames(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
