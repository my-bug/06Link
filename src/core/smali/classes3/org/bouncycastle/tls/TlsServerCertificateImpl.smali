.class Lorg/bouncycastle/tls/TlsServerCertificateImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/TlsServerCertificate;


# instance fields
.field protected certificate:Lorg/bouncycastle/tls/Certificate;

.field protected certificateStatus:Lorg/bouncycastle/tls/CertificateStatus;


# direct methods
.method constructor <init>(Lorg/bouncycastle/tls/Certificate;Lorg/bouncycastle/tls/CertificateStatus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsServerCertificateImpl;->certificate:Lorg/bouncycastle/tls/Certificate;

    iput-object p2, p0, Lorg/bouncycastle/tls/TlsServerCertificateImpl;->certificateStatus:Lorg/bouncycastle/tls/CertificateStatus;

    return-void
.end method


# virtual methods
.method public getCertificate()Lorg/bouncycastle/tls/Certificate;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsServerCertificateImpl;->certificate:Lorg/bouncycastle/tls/Certificate;

    return-object v0
.end method

.method public getCertificateStatus()Lorg/bouncycastle/tls/CertificateStatus;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsServerCertificateImpl;->certificateStatus:Lorg/bouncycastle/tls/CertificateStatus;

    return-object v0
.end method
