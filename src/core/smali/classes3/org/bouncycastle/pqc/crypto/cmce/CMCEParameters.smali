.class public Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/KEMParameters;


# static fields
.field public static final mceliece348864fr3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

.field public static final mceliece348864r3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

.field public static final mceliece460896fr3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

.field public static final mceliece460896r3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

.field public static final mceliece6688128fr3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

.field public static final mceliece6688128r3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

.field public static final mceliece6960119fr3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

.field public static final mceliece6960119r3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

.field public static final mceliece8192128fr3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

.field public static final mceliece8192128r3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

.field private static poly3488:[I

.field private static poly4608:[I

.field private static poly6688:[I

.field private static poly6960:[I

.field private static poly8192:[I


# instance fields
.field private final defaultKeySize:I

.field private final engine:Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;

.field private final m:I

.field private final n:I

.field private final name:Ljava/lang/String;

.field private final t:I

.field private final usePivots:Z


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    filled-new-array {v0, v1, v2}, [I

    move-result-object v8

    sput-object v8, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->poly3488:[I

    const/16 v0, 0x9

    const/4 v3, 0x6

    const/16 v4, 0xa

    filled-new-array {v4, v0, v3, v2}, [I

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->poly4608:[I

    const/4 v0, 0x7

    const/4 v3, 0x2

    filled-new-array {v0, v3, v1, v2}, [I

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->poly6688:[I

    const/16 v4, 0x8

    filled-new-array {v4, v2}, [I

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->poly6960:[I

    filled-new-array {v0, v3, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->poly8192:[I

    new-instance v3, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    const/4 v9, 0x0

    const/16 v10, 0x80

    const-string v4, "mceliece348864"

    const/16 v5, 0xc

    const/16 v6, 0xda0

    const/16 v7, 0x40

    invoke-direct/range {v3 .. v10}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;-><init>(Ljava/lang/String;III[IZI)V

    sput-object v3, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->mceliece348864r3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    new-instance v4, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    sget-object v9, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->poly3488:[I

    const/4 v10, 0x1

    const/16 v11, 0x80

    const-string v5, "mceliece348864f"

    const/16 v6, 0xc

    const/16 v7, 0xda0

    const/16 v8, 0x40

    invoke-direct/range {v4 .. v11}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;-><init>(Ljava/lang/String;III[IZI)V

    sput-object v4, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->mceliece348864fr3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    new-instance v5, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    sget-object v10, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->poly4608:[I

    const/4 v11, 0x0

    const/16 v12, 0xc0

    const-string v6, "mceliece460896"

    const/16 v7, 0xd

    const/16 v8, 0x1200

    const/16 v9, 0x60

    invoke-direct/range {v5 .. v12}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;-><init>(Ljava/lang/String;III[IZI)V

    sput-object v5, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->mceliece460896r3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    new-instance v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    sget-object v11, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->poly4608:[I

    const/4 v12, 0x1

    const/16 v13, 0xc0

    const-string v7, "mceliece460896f"

    const/16 v8, 0xd

    const/16 v9, 0x1200

    const/16 v10, 0x60

    invoke-direct/range {v6 .. v13}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;-><init>(Ljava/lang/String;III[IZI)V

    sput-object v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->mceliece460896fr3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    new-instance v7, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    sget-object v12, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->poly6688:[I

    const/4 v13, 0x0

    const/16 v14, 0x100

    const-string v8, "mceliece6688128"

    const/16 v9, 0xd

    const/16 v10, 0x1a20

    const/16 v11, 0x80

    invoke-direct/range {v7 .. v14}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;-><init>(Ljava/lang/String;III[IZI)V

    sput-object v7, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->mceliece6688128r3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    new-instance v8, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    sget-object v13, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->poly6688:[I

    const/4 v14, 0x1

    const/16 v15, 0x100

    const-string v9, "mceliece6688128f"

    const/16 v10, 0xd

    const/16 v11, 0x1a20

    const/16 v12, 0x80

    invoke-direct/range {v8 .. v15}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;-><init>(Ljava/lang/String;III[IZI)V

    sput-object v8, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->mceliece6688128fr3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    sget-object v5, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->poly6960:[I

    const/4 v6, 0x0

    const/16 v7, 0x100

    const-string v1, "mceliece6960119"

    const/16 v2, 0xd

    const/16 v3, 0x1b30

    const/16 v4, 0x77

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;-><init>(Ljava/lang/String;III[IZI)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->mceliece6960119r3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    sget-object v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->poly6960:[I

    const/4 v7, 0x1

    const/16 v8, 0x100

    const-string v2, "mceliece6960119f"

    const/16 v3, 0xd

    const/16 v4, 0x1b30

    const/16 v5, 0x77

    invoke-direct/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;-><init>(Ljava/lang/String;III[IZI)V

    sput-object v1, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->mceliece6960119fr3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    sget-object v7, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->poly8192:[I

    const/4 v8, 0x0

    const/16 v9, 0x100

    const-string v3, "mceliece8192128"

    const/16 v4, 0xd

    const/16 v5, 0x2000

    const/16 v6, 0x80

    invoke-direct/range {v2 .. v9}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;-><init>(Ljava/lang/String;III[IZI)V

    sput-object v2, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->mceliece8192128r3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    new-instance v3, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    sget-object v8, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->poly8192:[I

    const/4 v9, 0x1

    const/16 v10, 0x100

    const-string v4, "mceliece8192128f"

    const/16 v5, 0xd

    const/16 v6, 0x2000

    const/16 v7, 0x80

    invoke-direct/range {v3 .. v10}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;-><init>(Ljava/lang/String;III[IZI)V

    sput-object v3, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->mceliece8192128fr3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III[IZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->name:Ljava/lang/String;

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->m:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->n:I

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->t:I

    iput-boolean p6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->usePivots:Z

    iput p7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->defaultKeySize:I

    new-instance p1, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;

    invoke-direct/range {p1 .. p7}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;-><init>(III[IZI)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->engine:Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;

    return-void
.end method


# virtual methods
.method getEngine()Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->engine:Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;

    return-object v0
.end method

.method public getM()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->m:I

    return v0
.end method

.method public getMu()I
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->usePivots:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getN()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->n:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNu()I
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->usePivots:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x40

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSessionKeySize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->defaultKeySize:I

    return v0
.end method

.method public getT()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->t:I

    return v0
.end method
