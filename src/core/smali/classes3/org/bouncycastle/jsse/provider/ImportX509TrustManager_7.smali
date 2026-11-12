.class Lorg/bouncycastle/jsse/provider/ImportX509TrustManager_7;
.super Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;

# interfaces
.implements Lorg/bouncycastle/jsse/provider/ImportX509TrustManager;


# instance fields
.field final x509TrustManager:Ljavax/net/ssl/X509ExtendedTrustManager;


# direct methods
.method constructor <init>(Ljavax/net/ssl/X509ExtendedTrustManager;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ImportX509TrustManager_7;->x509TrustManager:Ljavax/net/ssl/X509ExtendedTrustManager;

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ImportX509TrustManager_7;->x509TrustManager:Ljavax/net/ssl/X509ExtendedTrustManager;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    return-void
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ImportX509TrustManager_7;->x509TrustManager:Ljavax/net/ssl/X509ExtendedTrustManager;

    invoke-static {v0, p1, p2, p3}, Lorg/bouncycastle/jsse/provider/JsseUtils_7$$ExternalSyntheticApiModelOutline0;->m(Ljavax/net/ssl/X509ExtendedTrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V

    return-void
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ImportX509TrustManager_7;->x509TrustManager:Ljavax/net/ssl/X509ExtendedTrustManager;

    invoke-static {v0, p1, p2, p3}, Lorg/bouncycastle/jsse/provider/JsseUtils_7$$ExternalSyntheticApiModelOutline0;->m(Ljavax/net/ssl/X509ExtendedTrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ImportX509TrustManager_7;->x509TrustManager:Ljavax/net/ssl/X509ExtendedTrustManager;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ImportX509TrustManager_7;->x509TrustManager:Ljavax/net/ssl/X509ExtendedTrustManager;

    invoke-static {v0, p1, p2, p3}, Lorg/bouncycastle/jsse/provider/JsseUtils_7$$ExternalSyntheticApiModelOutline0;->m$1(Ljavax/net/ssl/X509ExtendedTrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ImportX509TrustManager_7;->x509TrustManager:Ljavax/net/ssl/X509ExtendedTrustManager;

    invoke-static {v0, p1, p2, p3}, Lorg/bouncycastle/jsse/provider/JsseUtils_7$$ExternalSyntheticApiModelOutline0;->m$1(Ljavax/net/ssl/X509ExtendedTrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V

    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ImportX509TrustManager_7;->x509TrustManager:Ljavax/net/ssl/X509ExtendedTrustManager;

    invoke-virtual {v0}, Ljavax/net/ssl/X509ExtendedTrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public unwrap()Ljavax/net/ssl/X509TrustManager;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ImportX509TrustManager_7;->x509TrustManager:Ljavax/net/ssl/X509ExtendedTrustManager;

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method
