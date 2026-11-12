.class public Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/KEMParameters;


# static fields
.field private static final cdf_table1344:[S

.field private static final cdf_table640:[S

.field private static final cdf_table976:[S

.field public static final frodokem1344aes:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

.field public static final frodokem1344shake:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

.field public static final frodokem640aes:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

.field public static final frodokem640shake:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

.field public static final frodokem976aes:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

.field public static final frodokem976shake:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;


# instance fields
.field private final B:I

.field private final D:I

.field private final defaultKeySize:I

.field private final engine:Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;

.field private final n:I

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    const/16 v0, 0xd

    new-array v6, v0, [S

    fill-array-data v6, :array_0

    sput-object v6, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->cdf_table640:[S

    const/16 v0, 0xb

    new-array v12, v0, [S

    fill-array-data v12, :array_1

    sput-object v12, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->cdf_table976:[S

    const/4 v0, 0x7

    new-array v0, v0, [S

    fill-array-data v0, :array_2

    sput-object v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->cdf_table1344:[S

    new-instance v1, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    new-instance v7, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v9, 0x80

    invoke-direct {v7, v9}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    new-instance v8, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Aes128MatrixGenerator;

    const/16 v10, 0x280

    const v11, 0x8000

    invoke-direct {v8, v10, v11}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Aes128MatrixGenerator;-><init>(II)V

    const-string v2, "frodokem640aes"

    const/16 v3, 0x280

    const/16 v4, 0xf

    const/4 v5, 0x2

    invoke-direct/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;-><init>(Ljava/lang/String;III[SLorg/bouncycastle/crypto/Xof;Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;)V

    sput-object v1, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->frodokem640aes:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    new-instance v7, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-direct {v7, v9}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    new-instance v8, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Shake128MatrixGenerator;

    invoke-direct {v8, v10, v11}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Shake128MatrixGenerator;-><init>(II)V

    const-string v2, "frodokem640shake"

    invoke-direct/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;-><init>(Ljava/lang/String;III[SLorg/bouncycastle/crypto/Xof;Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;)V

    sput-object v1, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->frodokem640shake:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    new-instance v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    new-instance v13, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v1, 0x100

    invoke-direct {v13, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    new-instance v14, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Aes128MatrixGenerator;

    const/16 v2, 0x3d0

    const/high16 v3, 0x10000

    invoke-direct {v14, v2, v3}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Aes128MatrixGenerator;-><init>(II)V

    const-string v8, "frodokem976aes"

    const/16 v9, 0x3d0

    const/16 v10, 0x10

    const/4 v11, 0x3

    invoke-direct/range {v7 .. v14}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;-><init>(Ljava/lang/String;III[SLorg/bouncycastle/crypto/Xof;Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;)V

    sput-object v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->frodokem976aes:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    new-instance v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    new-instance v13, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-direct {v13, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    new-instance v14, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Shake128MatrixGenerator;

    invoke-direct {v14, v2, v3}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Shake128MatrixGenerator;-><init>(II)V

    const-string v8, "frodokem976shake"

    invoke-direct/range {v7 .. v14}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;-><init>(Ljava/lang/String;III[SLorg/bouncycastle/crypto/Xof;Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;)V

    sput-object v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->frodokem976shake:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    new-instance v13, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    new-instance v2, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-direct {v2, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    new-instance v4, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Aes128MatrixGenerator;

    const/16 v5, 0x540

    invoke-direct {v4, v5, v3}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Aes128MatrixGenerator;-><init>(II)V

    const-string v14, "frodokem1344aes"

    const/16 v15, 0x540

    const/16 v16, 0x10

    const/16 v17, 0x4

    move-object/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v20, v4

    invoke-direct/range {v13 .. v20}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;-><init>(Ljava/lang/String;III[SLorg/bouncycastle/crypto/Xof;Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;)V

    sput-object v13, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->frodokem1344aes:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    new-instance v13, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Shake128MatrixGenerator;

    invoke-direct {v1, v5, v3}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Shake128MatrixGenerator;-><init>(II)V

    const-string v14, "frodokem1344shake"

    move-object/from16 v19, v0

    move-object/from16 v20, v1

    invoke-direct/range {v13 .. v20}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;-><init>(Ljava/lang/String;III[SLorg/bouncycastle/crypto/Xof;Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;)V

    sput-object v13, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->frodokem1344shake:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    return-void

    :array_0
    .array-data 2
        0x1223s
        0x3433s
        0x5063s
        0x64f3s
        0x722bs
        0x79a9s
        0x7d67s
        0x7f0ds
        0x7fb1s
        0x7fe9s
        0x7ffas
        0x7ffes
        0x7fffs
    .end array-data

    nop

    :array_1
    .array-data 2
        0x1606s
        0x3e2bs
        0x5c89s
        0x6f9bs
        0x798cs
        0x7dd9s
        0x7f65s
        0x7fdbs
        0x7ff8s
        0x7ffes
        0x7fffs
    .end array-data

    nop

    :array_2
    .array-data 2
        0x23b6s
        0x5ba6s
        0x7682s
        0x7e69s
        0x7fd5s
        0x7ffds
        0x7fffs
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;III[SLorg/bouncycastle/crypto/Xof;Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->name:Ljava/lang/String;

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->n:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->D:I

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->B:I

    mul-int/lit8 p1, p4, 0x40

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->defaultKeySize:I

    new-instance v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;

    move v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;-><init>(III[SLorg/bouncycastle/crypto/Xof;Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->engine:Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;

    return-void
.end method


# virtual methods
.method getB()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->B:I

    return v0
.end method

.method getD()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->D:I

    return v0
.end method

.method getEngine()Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->engine:Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;

    return-object v0
.end method

.method getN()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->n:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionKeySize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->defaultKeySize:I

    return v0
.end method
