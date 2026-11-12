.class Lorg/bouncycastle/jsse/provider/ExportSSLSession_8;
.super Lorg/bouncycastle/jsse/provider/ExportSSLSession_7;


# direct methods
.method constructor <init>(Lorg/bouncycastle/jsse/BCExtendedSSLSession;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/jsse/provider/ExportSSLSession_7;-><init>(Lorg/bouncycastle/jsse/BCExtendedSSLSession;)V

    return-void
.end method


# virtual methods
.method public getRequestedServerNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljavax/net/ssl/SNIServerName;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ExportSSLSession_8;->sslSession:Lorg/bouncycastle/jsse/BCExtendedSSLSession;

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/BCExtendedSSLSession;->getRequestedServerNames()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/JsseUtils_8;->exportSNIServerNames(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
