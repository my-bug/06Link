.class public final synthetic Lcom/shilapi/xcertplay/mfi/MfiAuthenticator$-CC;
.super Ljava/lang/Object;
.source "MfiAuthenticationClient.kt"


# direct methods
.method public static $default$baaCertificates(Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;)Lcom/shilapi/xcertplay/mfi/BaaCertificatePair;
    .locals 4
    .param p0, "_this"    # Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;

    .line 35
    new-instance v0, Lcom/shilapi/xcertplay/mfi/MfiInvalidDataException;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "Authenticator does not provide BAA certificates"

    invoke-direct {v0, v3, v1, v2, v1}, Lcom/shilapi/xcertplay/mfi/MfiInvalidDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method public static $default$getCertificateType(Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;)Lcom/shilapi/xcertplay/mfi/MfiCertificateType;
    .locals 1
    .param p0, "_this"    # Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;

    .line 24
    sget-object v0, Lcom/shilapi/xcertplay/mfi/MfiCertificateType;->MFI:Lcom/shilapi/xcertplay/mfi/MfiCertificateType;

    return-object v0
.end method

.method public static synthetic access$baaCertificates$jd(Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;)Lcom/shilapi/xcertplay/mfi/BaaCertificatePair;
    .locals 0

    .line 22
    invoke-static {p0}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticator$-CC;->$default$baaCertificates(Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;)Lcom/shilapi/xcertplay/mfi/BaaCertificatePair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$getCertificateType$jd(Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;)Lcom/shilapi/xcertplay/mfi/MfiCertificateType;
    .locals 0

    .line 22
    invoke-static {p0}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticator$-CC;->$default$getCertificateType(Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;)Lcom/shilapi/xcertplay/mfi/MfiCertificateType;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic readCertificate$default(Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;IILjava/lang/Object;)[B
    .locals 0

    .line 0
    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const p1, 0xfff5

    .line 28
    :cond_0
    invoke-interface {p0, p1}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;->readCertificate(I)[B

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: readCertificate"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
