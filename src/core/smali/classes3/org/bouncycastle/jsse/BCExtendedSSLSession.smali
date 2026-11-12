.class public abstract Lorg/bouncycastle/jsse/BCExtendedSSLSession;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/SSLSession;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getLocalSupportedSignatureAlgorithms()[Ljava/lang/String;
.end method

.method public getLocalSupportedSignatureAlgorithmsBC()[Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/BCExtendedSSLSession;->getLocalSupportedSignatureAlgorithms()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getPeerSupportedSignatureAlgorithms()[Ljava/lang/String;
.end method

.method public getPeerSupportedSignatureAlgorithmsBC()[Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/BCExtendedSSLSession;->getPeerSupportedSignatureAlgorithms()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

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

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getStatusResponses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public abstract isFipsMode()Z
.end method
