.class public Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/KEMParameters;


# static fields
.field public static final ntrulpr1013:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

.field public static final ntrulpr1277:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

.field public static final ntrulpr653:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

.field public static final ntrulpr761:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

.field public static final ntrulpr857:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

.field public static final ntrulpr953:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;


# instance fields
.field private final delta:I

.field private final name:Ljava/lang/String;

.field private final p:I

.field private final privateKeyBytes:I

.field private final publicKeyBytes:I

.field private final q:I

.field private final roundedPolynomialBytes:I

.field private final sharedKeyBytes:I

.field private final tau0:I

.field private final tau1:I

.field private final tau2:I

.field private final tau3:I

.field private final w:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    const/16 v12, 0x465

    const/16 v13, 0x20

    const-string v1, "ntrulpr653"

    const/16 v2, 0x28d

    const/16 v3, 0x120d

    const/16 v4, 0xfc

    const/16 v5, 0x121

    const/16 v6, 0x87f

    const/16 v7, 0x71

    const/16 v8, 0x7ef

    const/16 v9, 0x122

    const/16 v10, 0x361

    const/16 v11, 0x381

    invoke-direct/range {v0 .. v13}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;-><init>(Ljava/lang/String;IIIIIIIIIIII)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->ntrulpr653:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    const/16 v13, 0x50e

    const/16 v14, 0x20

    const-string v2, "ntrulpr761"

    const/16 v3, 0x2f9

    const/16 v4, 0x11ef

    const/16 v5, 0xfa

    const/16 v6, 0x124

    const/16 v7, 0x86c

    const/16 v8, 0x72

    const/16 v9, 0x7d7

    const/16 v10, 0x11f

    const/16 v11, 0x3ef

    const/16 v12, 0x40f

    invoke-direct/range {v1 .. v14}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;-><init>(Ljava/lang/String;IIIIIIIIIIII)V

    sput-object v1, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->ntrulpr761:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    const/16 v14, 0x5b7

    const/16 v15, 0x20

    const-string v3, "ntrulpr857"

    const/16 v4, 0x359

    const/16 v5, 0x142f

    const/16 v6, 0x119

    const/16 v7, 0x149

    const/16 v8, 0x981

    const/16 v9, 0x65

    const/16 v10, 0x8d9

    const/16 v11, 0x144

    const/16 v12, 0x480

    const/16 v13, 0x4a0

    invoke-direct/range {v2 .. v15}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;-><init>(Ljava/lang/String;IIIIIIIIIIII)V

    sput-object v2, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->ntrulpr857:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    new-instance v3, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    const/16 v15, 0x674

    const/16 v16, 0x20

    const-string v4, "ntrulpr953"

    const/16 v5, 0x3b9

    const/16 v6, 0x18c7

    const/16 v7, 0x159

    const/16 v8, 0x194

    const/16 v9, 0xbb5

    const/16 v10, 0x52

    const/16 v11, 0xaee

    const/16 v12, 0x190

    const/16 v13, 0x525

    const/16 v14, 0x545

    invoke-direct/range {v3 .. v16}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;-><init>(Ljava/lang/String;IIIIIIIIIIII)V

    sput-object v3, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->ntrulpr953:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    new-instance v4, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    const/16 v16, 0x6ed

    const/16 v17, 0x20

    const-string v5, "ntrulpr1013"

    const/16 v6, 0x3f5

    const/16 v7, 0x1c09

    const/16 v8, 0x188

    const/16 v9, 0x1c2

    const/16 v10, 0xd27

    const/16 v11, 0x49

    const/16 v12, 0xc47

    const/16 v13, 0x1c1

    const/16 v14, 0x58f

    const/16 v15, 0x5af

    invoke-direct/range {v4 .. v17}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;-><init>(Ljava/lang/String;IIIIIIIIIIII)V

    sput-object v4, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->ntrulpr1013:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    new-instance v5, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    const/16 v17, 0x8b7

    const/16 v18, 0x20

    const-string v6, "ntrulpr1277"

    const/16 v7, 0x4fd

    const/16 v8, 0x1ec7

    const/16 v9, 0x1ad

    const/16 v10, 0x1f6

    const/16 v11, 0xe8c

    const/16 v12, 0x42

    const/16 v13, 0xd8d

    const/16 v14, 0x1f0

    const/16 v15, 0x717

    const/16 v16, 0x737

    invoke-direct/range {v5 .. v18}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;-><init>(Ljava/lang/String;IIIIIIIIIIII)V

    sput-object v5, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->ntrulpr1277:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIIIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->name:Ljava/lang/String;

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->p:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->q:I

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->w:I

    iput p5, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->delta:I

    iput p6, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->tau0:I

    iput p7, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->tau1:I

    iput p8, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->tau2:I

    iput p9, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->tau3:I

    iput p10, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->roundedPolynomialBytes:I

    iput p11, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->publicKeyBytes:I

    iput p12, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->privateKeyBytes:I

    iput p13, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->sharedKeyBytes:I

    return-void
.end method


# virtual methods
.method public getDelta()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->delta:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getP()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->p:I

    return v0
.end method

.method public getPrivateKeyBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->privateKeyBytes:I

    return v0
.end method

.method public getPublicKeyBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->publicKeyBytes:I

    return v0
.end method

.method public getQ()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->q:I

    return v0
.end method

.method public getRoundedPolynomialBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->roundedPolynomialBytes:I

    return v0
.end method

.method public getSessionKeySize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->sharedKeyBytes:I

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getTau0()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->tau0:I

    return v0
.end method

.method public getTau1()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->tau1:I

    return v0
.end method

.method public getTau2()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->tau2:I

    return v0
.end method

.method public getTau3()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->tau3:I

    return v0
.end method

.method public getW()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->w:I

    return v0
.end method
