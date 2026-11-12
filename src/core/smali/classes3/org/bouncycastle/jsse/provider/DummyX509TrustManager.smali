.class final Lorg/bouncycastle/jsse/provider/DummyX509TrustManager;
.super Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;


# static fields
.field static final INSTANCE:Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/jsse/provider/DummyX509TrustManager;

    invoke-direct {v0}, Lorg/bouncycastle/jsse/provider/DummyX509TrustManager;-><init>()V

    sput-object v0, Lorg/bouncycastle/jsse/provider/DummyX509TrustManager;->INSTANCE:Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "No X509TrustManager implementation available"

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "No X509TrustManager implementation available"

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "No X509TrustManager implementation available"

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "No X509TrustManager implementation available"

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "No X509TrustManager implementation available"

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "No X509TrustManager implementation available"

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    sget-object v0, Lorg/bouncycastle/jsse/provider/JsseUtils;->EMPTY_X509CERTIFICATES:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method
