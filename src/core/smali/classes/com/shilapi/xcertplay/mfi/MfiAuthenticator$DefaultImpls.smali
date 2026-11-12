.class public final Lcom/shilapi/xcertplay/mfi/MfiAuthenticator$DefaultImpls;
.super Ljava/lang/Object;
.source "MfiAuthenticationClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static baaCertificates(Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;)Lcom/shilapi/xcertplay/mfi/BaaCertificatePair;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 34
    # invokes: Lcom/shilapi/xcertplay/mfi/MfiAuthenticator$-CC;->$default$baaCertificates(Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;)Lcom/shilapi/xcertplay/mfi/BaaCertificatePair;
    invoke-static {p0}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticator$-CC;->access$baaCertificates$jd(Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;)Lcom/shilapi/xcertplay/mfi/BaaCertificatePair;

    move-result-object p0

    return-object p0
.end method

.method public static getCertificateType(Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;)Lcom/shilapi/xcertplay/mfi/MfiCertificateType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 24
    # invokes: Lcom/shilapi/xcertplay/mfi/MfiAuthenticator$-CC;->$default$getCertificateType(Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;)Lcom/shilapi/xcertplay/mfi/MfiCertificateType;
    invoke-static {p0}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticator$-CC;->access$getCertificateType$jd(Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;)Lcom/shilapi/xcertplay/mfi/MfiCertificateType;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic readCertificate$default(Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;IILjava/lang/Object;)[B
    .locals 0

    .line 28
    invoke-static {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticator$-CC;->readCertificate$default(Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;IILjava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method
