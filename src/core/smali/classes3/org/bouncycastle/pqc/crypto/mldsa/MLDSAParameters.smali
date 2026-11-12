.class public Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;
.super Ljava/lang/Object;


# static fields
.field public static final TYPE_PURE:I = 0x0

.field public static final TYPE_SHA2_512:I = 0x1

.field public static final ml_dsa_44:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

.field public static final ml_dsa_44_with_sha512:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

.field public static final ml_dsa_65:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

.field public static final ml_dsa_65_with_sha512:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

.field public static final ml_dsa_87:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

.field public static final ml_dsa_87_with_sha512:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;


# instance fields
.field private final k:I

.field private final name:Ljava/lang/String;

.field private final preHashDigest:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    const-string v1, "ml-dsa-44"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;->ml_dsa_44:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    const-string v1, "ml-dsa-65"

    const/4 v4, 0x3

    invoke-direct {v0, v1, v4, v3}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;->ml_dsa_65:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    const-string v1, "ml-dsa-87"

    const/4 v5, 0x5

    invoke-direct {v0, v1, v5, v3}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;->ml_dsa_87:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    const-string v1, "ml-dsa-44-with-sha512"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;->ml_dsa_44_with_sha512:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    const-string v1, "ml-dsa-65-with-sha512"

    invoke-direct {v0, v1, v4, v3}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;->ml_dsa_65_with_sha512:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    const-string v1, "ml-dsa-87-with-sha512"

    invoke-direct {v0, v1, v5, v3}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;->ml_dsa_87_with_sha512:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;->name:Ljava/lang/String;

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;->k:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;->preHashDigest:I

    return-void
.end method


# virtual methods
.method getEngine(Ljava/security/SecureRandom;)Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;
    .locals 2

    new-instance v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;->k:I

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;-><init>(ILjava/security/SecureRandom;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;->preHashDigest:I

    return v0
.end method

.method public isPreHash()Z
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;->preHashDigest:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
