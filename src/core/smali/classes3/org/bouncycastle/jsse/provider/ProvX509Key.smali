.class Lorg/bouncycastle/jsse/provider/ProvX509Key;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/jsse/BCX509Key;


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final certificateChain:[Ljava/security/cert/X509Certificate;

.field private final keyType:Ljava/lang/String;

.field private final privateKey:Ljava/security/PrivateKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/bouncycastle/jsse/provider/ProvX509Key;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jsse/provider/ProvX509Key;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvX509Key;->keyType:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jsse/provider/ProvX509Key;->privateKey:Ljava/security/PrivateKey;

    iput-object p3, p0, Lorg/bouncycastle/jsse/provider/ProvX509Key;->certificateChain:[Ljava/security/cert/X509Certificate;

    return-void
.end method

.method static from(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/jsse/provider/ProvX509Key;
    .locals 2

    if-eqz p0, :cond_4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p2}, Lorg/bouncycastle/jsse/provider/ProvX509Key;->getCertificateChain(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-static {p0, p2}, Lorg/bouncycastle/jsse/provider/ProvX509Key;->getPrivateKey(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    new-instance p2, Lorg/bouncycastle/jsse/provider/ProvX509Key;

    invoke-direct {p2, p1, p0, v1}, Lorg/bouncycastle/jsse/provider/ProvX509Key;-><init>(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V

    return-object p2

    :cond_3
    :goto_0
    return-object v0

    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'x509KeyManager\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getCertificateChain(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 3

    invoke-interface {p0, p1}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Rejecting alias \'"

    if-eqz v0, :cond_0

    sget-object p0, Lorg/bouncycastle/jsse/provider/ProvX509Key;->LOG:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\': no certificate chain"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-virtual {p0}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/security/cert/X509Certificate;

    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/JsseUtils;->containsNull([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lorg/bouncycastle/jsse/provider/ProvX509Key;->LOG:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\': invalid certificate chain"

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private static getPrivateKey(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 2

    invoke-interface {p0, p1}, Ljavax/net/ssl/X509KeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lorg/bouncycastle/jsse/provider/ProvX509Key;->LOG:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Rejecting alias \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\': no private key"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method static validate(Ljavax/net/ssl/X509KeyManager;ZLjava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jsse/provider/TransportData;)Lorg/bouncycastle/jsse/provider/ProvX509Key;
    .locals 3

    if-eqz p0, :cond_6

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p3}, Lorg/bouncycastle/jsse/provider/ProvX509Key;->getCertificateChain(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {p1, p2, v2, p4}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->isSuitableKeyType(ZLjava/lang/String;Ljava/security/cert/X509Certificate;Lorg/bouncycastle/jsse/provider/TransportData;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p0, Lorg/bouncycastle/jsse/provider/ProvX509Key;->LOG:Ljava/util/logging/Logger;

    sget-object p1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "Rejecting alias \'"

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\': not suitable for key type \'"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    :cond_2
    return-object v0

    :cond_3
    invoke-static {p0, p3}, Lorg/bouncycastle/jsse/provider/ProvX509Key;->getPrivateKey(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object p0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    new-instance p1, Lorg/bouncycastle/jsse/provider/ProvX509Key;

    invoke-direct {p1, p2, p0, v1}, Lorg/bouncycastle/jsse/provider/ProvX509Key;-><init>(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V

    return-object p1

    :cond_5
    :goto_0
    return-object v0

    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'x509KeyManager\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getCertificateChain()[Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvX509Key;->certificateChain:[Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getKeyType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvX509Key;->keyType:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvX509Key;->privateKey:Ljava/security/PrivateKey;

    return-object v0
.end method
