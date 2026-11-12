.class public Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPublicKey;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/jcajce/interfaces/MLKEMPublicKey;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient algorithm:Ljava/lang/String;

.field private transient params:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPublicKey;->init(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPublicKey;->init(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;)V

    return-void
.end method

.method private init(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->createKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPublicKey;->params:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;->fromName(Ljava/lang/String;)Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPublicKey;->algorithm:Ljava/lang/String;

    return-void
.end method

.method private init(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPublicKey;->params:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;->fromName(Ljava/lang/String;)Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPublicKey;->algorithm:Ljava/lang/String;

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

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPublicKey;->init(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

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

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPublicKey;->getEncoded()[B

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
    instance-of v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPublicKey;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPublicKey;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPublicKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPublicKey;->getEncoded()[B

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

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPublicKey;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPublicKey;->params:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/util/SubjectPublicKeyInfoFactory;->createSubjectPublicKeyInfo(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getEncoded()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "X.509"

    return-object v0
.end method

.method getKeyParams()Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPublicKey;->params:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;

    return-object v0
.end method

.method public getParameterSpec()Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPublicKey;->params:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;->fromName(Ljava/lang/String;)Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method public getPublicData()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPublicKey;->params:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPublicKey;->getEncoded()[B

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

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPublicKey;->params:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;->getEncoded()[B

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Public Key ["

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
