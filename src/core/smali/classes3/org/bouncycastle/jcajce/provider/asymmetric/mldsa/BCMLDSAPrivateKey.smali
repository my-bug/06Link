.class public Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/jcajce/interfaces/MLDSAPrivateKey;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient algorithm:Ljava/lang/String;

.field private transient attributes:Lorg/bouncycastle/asn1/ASN1Set;

.field private transient encoding:[B

.field private transient params:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->init(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->params:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;->fromName(Ljava/lang/String;)Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->algorithm:Ljava/lang/String;

    return-void
.end method

.method private init(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/util/PrivateKeyFactory;->createKey(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->init(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;Lorg/bouncycastle/asn1/ASN1Set;)V

    return-void
.end method

.method private init(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;Lorg/bouncycastle/asn1/ASN1Set;)V
    .locals 0

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->attributes:Lorg/bouncycastle/asn1/ASN1Set;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->params:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;->fromName(Ljava/lang/String;)Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->algorithm:Ljava/lang/String;

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

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->init(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

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

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->params:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->getEncoded()[B

    move-result-object v0

    iget-object p1, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->params:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->getEncoded()[B

    move-result-object p1

    invoke-static {v0, p1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->encoding:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->params:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->attributes:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/jcajce/provider/util/KeyUtil;->getEncodedPrivateKeyInfo(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/asn1/ASN1Set;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->encoding:[B

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->encoding:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "PKCS#8"

    return-object v0
.end method

.method getKeyParams()Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->params:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    return-object v0
.end method

.method public getParameterSpec()Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->params:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;->fromName(Ljava/lang/String;)Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Lorg/bouncycastle/jcajce/interfaces/MLDSAPublicKey;
    .locals 2

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPublicKey;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->params:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->getPublicKeyParameters()Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPublicKey;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->params:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->params:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->getPublicKey()[B

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Private Key ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lorg/bouncycastle/util/Fingerprint;

    invoke-direct {v3, v2}, Lorg/bouncycastle/util/Fingerprint;-><init>([B)V

    invoke-virtual {v3}, Lorg/bouncycastle/util/Fingerprint;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    public data: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
