.class Lorg/bouncycastle/jsse/provider/ExportX509TrustManager_5;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;
.implements Lorg/bouncycastle/jsse/provider/ExportX509TrustManager;


# instance fields
.field final x509TrustManager:Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;


# direct methods
.method constructor <init>(Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ExportX509TrustManager_5;->x509TrustManager:Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;

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

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ExportX509TrustManager_5;->x509TrustManager:Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ExportX509TrustManager_5;->x509TrustManager:Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ExportX509TrustManager_5;->x509TrustManager:Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public unwrap()Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ExportX509TrustManager_5;->x509TrustManager:Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;

    return-object v0
.end method
