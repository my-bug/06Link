.class public Lorg/bouncycastle/tls/CertificateEntry;
.super Ljava/lang/Object;


# instance fields
.field protected final certificate:Lorg/bouncycastle/tls/crypto/TlsCertificate;

.field protected final extensions:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/tls/crypto/TlsCertificate;Ljava/util/Hashtable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/tls/CertificateEntry;->certificate:Lorg/bouncycastle/tls/crypto/TlsCertificate;

    iput-object p2, p0, Lorg/bouncycastle/tls/CertificateEntry;->extensions:Ljava/util/Hashtable;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "\'certificate\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getCertificate()Lorg/bouncycastle/tls/crypto/TlsCertificate;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/CertificateEntry;->certificate:Lorg/bouncycastle/tls/crypto/TlsCertificate;

    return-object v0
.end method

.method public getExtensions()Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/CertificateEntry;->extensions:Ljava/util/Hashtable;

    return-object v0
.end method
