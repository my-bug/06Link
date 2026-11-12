.class public Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/KEMParameters;


# static fields
.field public static final ml_kem_1024:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

.field public static final ml_kem_512:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

.field public static final ml_kem_768:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;


# instance fields
.field private final k:I

.field private final name:Ljava/lang/String;

.field private final sessionKeySize:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

    const-string v1, "ML-KEM-512"

    const/4 v2, 0x2

    const/16 v3, 0x100

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;->ml_kem_512:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

    const-string v1, "ML-KEM-768"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;->ml_kem_768:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

    const-string v1, "ML-KEM-1024"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;->ml_kem_1024:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;->name:Ljava/lang/String;

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;->k:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;->sessionKeySize:I

    return-void
.end method


# virtual methods
.method public getEngine()Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;
    .locals 2

    new-instance v0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;->k:I

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;-><init>(I)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionKeySize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;->sessionKeySize:I

    return v0
.end method
