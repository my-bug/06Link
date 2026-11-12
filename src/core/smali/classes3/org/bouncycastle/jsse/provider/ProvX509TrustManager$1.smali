.class Lorg/bouncycastle/jsse/provider/ProvX509TrustManager$1;
.super Ljava/security/cert/X509CertSelector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->createTargetCertConstraints(Ljava/security/cert/X509Certificate;Ljava/security/cert/CertSelector;)Ljava/security/cert/X509CertSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$eeCert:Ljava/security/cert/X509Certificate;

.field final synthetic val$userConstraints:Ljava/security/cert/CertSelector;


# direct methods
.method constructor <init>(Ljava/security/cert/X509Certificate;Ljava/security/cert/CertSelector;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager$1;->val$eeCert:Ljava/security/cert/X509Certificate;

    iput-object p2, p0, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager$1;->val$userConstraints:Ljava/security/cert/CertSelector;

    invoke-direct {p0}, Ljava/security/cert/X509CertSelector;-><init>()V

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager$1;->setCertificate(Ljava/security/cert/X509Certificate;)V

    return-void
.end method


# virtual methods
.method public match(Ljava/security/cert/Certificate;)Z
    .locals 1

    invoke-super {p0, p1}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager$1;->val$userConstraints:Ljava/security/cert/CertSelector;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/security/cert/CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
