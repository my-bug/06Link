.class public Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/KEMParameters;


# static fields
.field public static final bike128:Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

.field public static final bike192:Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

.field public static final bike256:Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;


# instance fields
.field private bikeEngine:Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;

.field private final defaultKeySize:I

.field private l:I

.field private name:Ljava/lang/String;

.field private nbIter:I

.field private r:I

.field private t:I

.field private tau:I

.field private w:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    const/4 v7, 0x3

    const/16 v8, 0x80

    const-string v1, "bike128"

    const/16 v2, 0x3023

    const/16 v3, 0x8e

    const/16 v4, 0x86

    const/16 v5, 0x100

    const/4 v6, 0x5

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->bike128:Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    const/4 v8, 0x3

    const/16 v9, 0xc0

    const-string v2, "bike192"

    const/16 v3, 0x6053

    const/16 v4, 0xce

    const/16 v5, 0xc7

    const/16 v6, 0x100

    const/4 v7, 0x5

    invoke-direct/range {v1 .. v9}, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v1, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->bike192:Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    const/4 v9, 0x3

    const/16 v10, 0x100

    const-string v3, "bike256"

    const v4, 0xa00d

    const/16 v5, 0x112

    const/16 v6, 0x108

    const/16 v7, 0x100

    const/4 v8, 0x5

    invoke-direct/range {v2 .. v10}, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v2, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->bike256:Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->name:Ljava/lang/String;

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->r:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->w:I

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->t:I

    iput p5, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->l:I

    iput p6, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->nbIter:I

    iput p7, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->tau:I

    iput p8, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->defaultKeySize:I

    new-instance p1, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;

    invoke-direct/range {p1 .. p7}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;-><init>(IIIIII)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->bikeEngine:Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;

    return-void
.end method


# virtual methods
.method getEngine()Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->bikeEngine:Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;

    return-object v0
.end method

.method public getL()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->l:I

    return v0
.end method

.method public getLByte()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->l:I

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNbIter()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->nbIter:I

    return v0
.end method

.method public getR()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->r:I

    return v0
.end method

.method public getRByte()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->r:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getSessionKeySize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->defaultKeySize:I

    return v0
.end method

.method public getT()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->t:I

    return v0
.end method

.method public getTau()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->tau:I

    return v0
.end method

.method public getW()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->w:I

    return v0
.end method
