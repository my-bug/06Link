.class public Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/xwing/XWingKeyParameters;


# instance fields
.field private final kybPriv:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;

.field private final xdhPriv:Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;


# direct methods
.method constructor <init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/xwing/XWingKeyParameters;-><init>(Z)V

    check-cast p1, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;->kybPriv:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;

    check-cast p2, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;->xdhPriv:Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/xwing/XWingKeyParameters;-><init>(Z)V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;->ml_kem_768:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

    array-length v3, p1

    add-int/lit8 v3, v3, -0x20

    invoke-static {p1, v0, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;[B)V

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;->kybPriv:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;

    new-instance v0, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;

    array-length v1, p1

    add-int/lit8 v1, v1, -0x20

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;-><init>([BI)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;->xdhPriv:Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;

    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;->kybPriv:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;->getEncoded()[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;->xdhPriv:Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;->getEncoded()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method getKyberPrivateKey()Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;->kybPriv:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;

    return-object v0
.end method

.method getXDHPrivateKey()Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;->xdhPriv:Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;

    return-object v0
.end method
