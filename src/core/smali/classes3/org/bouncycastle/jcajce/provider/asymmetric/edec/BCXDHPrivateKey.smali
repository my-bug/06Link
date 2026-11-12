.class public Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/jcajce/interfaces/XDHPrivateKey;


# static fields
.field static final serialVersionUID:J = 0x1L


# instance fields
.field private final attributes:[B

.field private final hasPublicKey:Z

.field transient hashCode:I

.field transient xdhPrivateKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

.field transient xdhPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->hasPublicKey()Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->hasPublicKey:Z

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Set;->getEncoded()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->attributes:[B

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->populateFromPrivateKeyInfo(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->hasPublicKey:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->attributes:[B

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->xdhPrivateKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    instance-of v0, p1, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;->generatePublicKey()Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;

    move-result-object p1

    goto :goto_0

    :cond_0
    check-cast p1, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;->generatePublicKey()Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->xdhPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->calculateHashCode()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->hashCode:I

    return-void
.end method

.method private calculateHashCode()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->xdhPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    instance-of v1, v0, Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;->getEncoded()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;->getEncoded()[B

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method private getPrivateKeyInfo()Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->attributes:[B

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->xdhPrivateKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/util/PrivateKeyInfoFactory;->createPrivateKeyInfo(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/asn1/ASN1Set;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v1

    iget-boolean v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->hasPublicKey:Z

    if-eqz v2, :cond_0

    const-string v2, "org.bouncycastle.pkcs8.v1_info_only"

    invoke-static {v2}, Lorg/bouncycastle/util/Properties;->isOverrideSet(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-direct {v2, v3, v1, v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/asn1/ASN1Set;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private populateFromPrivateKeyInfo(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyLength()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x38

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKey()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/internal/asn1/edec/EdECObjectIdentifiers;->id_X448:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;-><init>([B)V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->xdhPrivateKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;->generatePublicKey()Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;

    move-result-object p1

    goto :goto_2

    :cond_2
    new-instance p1, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;-><init>([B)V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->xdhPrivateKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;->generatePublicKey()Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->xdhPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->calculateHashCode()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->hashCode:I

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->populateFromPrivateKeyInfo(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method engineGetKeyParameters()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->xdhPrivateKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Ljava/security/PrivateKey;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Ljava/security/PrivateKey;

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->getPrivateKeyInfo()Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    instance-of v2, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;

    if-eqz v2, :cond_2

    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;

    invoke-direct {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->getPrivateKeyInfo()Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object p1

    :goto_0
    if-eqz v0, :cond_4

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    :try_start_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getEncoded()[B

    move-result-object v2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getEncoded()[B

    move-result-object v3

    invoke-static {v2, v3}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKey()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKey()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getEncoded()[B

    move-result-object p1

    invoke-static {v0, p1}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr p1, v2

    return p1

    :catch_0
    :cond_4
    :goto_1
    return v1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "org.bouncycastle.emulate.oracle"

    invoke-static {v0}, Lorg/bouncycastle/util/Properties;->isOverrideSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "XDH"

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->xdhPrivateKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    instance-of v0, v0, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;

    if-eqz v0, :cond_1

    const-string v0, "X448"

    return-object v0

    :cond_1
    const-string v0, "X25519"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->getPrivateKeyInfo()Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public getPublicKey()Lorg/bouncycastle/jcajce/interfaces/XDHPublicKey;
    .locals 2

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->xdhPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->xdhPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    const-string v2, "Private Key"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/Utils;->keyToString(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
