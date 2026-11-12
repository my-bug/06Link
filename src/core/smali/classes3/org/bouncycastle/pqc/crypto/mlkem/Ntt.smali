.class Lorg/bouncycastle/pqc/crypto/mlkem/Ntt;
.super Ljava/lang/Object;


# static fields
.field public static final nttZetas:[S

.field public static final nttZetasInv:[S


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x80

    new-array v1, v0, [S

    fill-array-data v1, :array_0

    sput-object v1, Lorg/bouncycastle/pqc/crypto/mlkem/Ntt;->nttZetas:[S

    new-array v0, v0, [S

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/pqc/crypto/mlkem/Ntt;->nttZetasInv:[S

    return-void

    nop

    :array_0
    .array-data 2
        0x8eds
        0xa0bs
        0xb9as
        0x714s
        0x5d5s
        0x58es
        0x11fs
        0xcas
        0xc56s
        0x26es
        0x629s
        0xb6s
        0x3c2s
        0x84fs
        0x73fs
        0x5bcs
        0x23ds
        0x7d4s
        0x108s
        0x17fs
        0x9c4s
        0x5b2s
        0x6bfs
        0xc7fs
        0xa58s
        0x3f9s
        0x2dcs
        0x260s
        0x6fbs
        0x19bs
        0xc34s
        0x6des
        0x4c7s
        0x28cs
        0xad9s
        0x3f7s
        0x7f4s
        0x5d3s
        0xbe7s
        0x6f9s
        0x204s
        0xcf9s
        0xbc1s
        0xa67s
        0x6afs
        0x877s
        0x7es
        0x5bds
        0x9acs
        0xca7s
        0xbf2s
        0x33es
        0x6bs
        0x774s
        0xc0as
        0x94as
        0xb73s
        0x3c1s
        0x71ds
        0xa2cs
        0x1c0s
        0x8d8s
        0x2a5s
        0x806s
        0x8b2s
        0x1aes
        0x22bs
        0x34bs
        0x81es
        0x367s
        0x60es
        0x69s
        0x1a6s
        0x24bs
        0xb1s
        0xc16s
        0xbdes
        0xb35s
        0x626s
        0x675s
        0xc0bs
        0x30as
        0x487s
        0xc6es
        0x9f8s
        0x5cbs
        0xaa7s
        0x45fs
        0x6cbs
        0x284s
        0x999s
        0x15ds
        0x1a2s
        0x149s
        0xc65s
        0xcb6s
        0x331s
        0x449s
        0x25bs
        0x262s
        0x52as
        0x7fcs
        0x748s
        0x180s
        0x842s
        0xc79s
        0x4c2s
        0x7cas
        0x997s
        0xdcs
        0x85es
        0x686s
        0x860s
        0x707s
        0x803s
        0x31as
        0x71bs
        0x9abs
        0x99bs
        0x1des
        0xc95s
        0xbcds
        0x3e4s
        0x3dfs
        0x3bes
        0x74ds
        0x5f2s
        0x65cs
    .end array-data

    :array_1
    .array-data 2
        0x6a5s
        0x70fs
        0x5b4s
        0x943s
        0x922s
        0x91ds
        0x134s
        0x6cs
        0xb23s
        0x366s
        0x356s
        0x5e6s
        0x9e7s
        0x4fes
        0x5fas
        0x4a1s
        0x67bs
        0x4a3s
        0xc25s
        0x36as
        0x537s
        0x83fs
        0x88s
        0x4bfs
        0xb81s
        0x5b9s
        0x505s
        0x7d7s
        0xa9fs
        0xaa6s
        0x8b8s
        0x9d0s
        0x4bs
        0x9cs
        0xbb8s
        0xb5fs
        0xba4s
        0x368s
        0xa7ds
        0x636s
        0x8a2s
        0x25as
        0x736s
        0x309s
        0x93s
        0x87as
        0x9f7s
        0xf6s
        0x68cs
        0x6dbs
        0x1ccs
        0x123s
        0xebs
        0xc50s
        0xab6s
        0xb5bs
        0xc98s
        0x6f3s
        0x99as
        0x4e3s
        0x9b6s
        0xad6s
        0xb53s
        0x44fs
        0x4fbs
        0xa5cs
        0x429s
        0xb41s
        0x2d5s
        0x5e4s
        0x940s
        0x18es
        0x3b7s
        0xf7s
        0x58ds
        0xc96s
        0x9c3s
        0x10fs
        0x5as
        0x355s
        0x744s
        0xc83s
        0x48as
        0x652s
        0x29as
        0x140s
        0x8s
        0xafds
        0x608s
        0x11as
        0x72es
        0x50ds
        0x90as
        0x228s
        0xa75s
        0x83as
        0x623s
        0xcds
        0xb66s
        0x606s
        0xaa1s
        0xa25s
        0x908s
        0x2a9s
        0x82s
        0x642s
        0x74fs
        0x33ds
        0xb82s
        0xbf9s
        0x52ds
        0xac4s
        0x745s
        0x5c2s
        0x4b2s
        0x93fs
        0xc4bs
        0x6d8s
        0xa93s
        0xabs
        0xc37s
        0xbe2s
        0x773s
        0x72cs
        0x5eds
        0x167s
        0x2f6s
        0x5a1s
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static baseMult(Lorg/bouncycastle/pqc/crypto/mlkem/Poly;ISSSSS)V
    .locals 1

    invoke-static {p3, p5}, Lorg/bouncycastle/pqc/crypto/mlkem/Ntt;->factorQMulMont(SS)S

    move-result v0

    invoke-static {v0, p6}, Lorg/bouncycastle/pqc/crypto/mlkem/Ntt;->factorQMulMont(SS)S

    move-result p6

    invoke-static {p2, p4}, Lorg/bouncycastle/pqc/crypto/mlkem/Ntt;->factorQMulMont(SS)S

    move-result v0

    add-int/2addr p6, v0

    int-to-short p6, p6

    invoke-virtual {p0, p1, p6}, Lorg/bouncycastle/pqc/crypto/mlkem/Poly;->setCoeffIndex(IS)V

    invoke-static {p2, p5}, Lorg/bouncycastle/pqc/crypto/mlkem/Ntt;->factorQMulMont(SS)S

    move-result p2

    invoke-static {p3, p4}, Lorg/bouncycastle/pqc/crypto/mlkem/Ntt;->factorQMulMont(SS)S

    move-result p3

    add-int/2addr p2, p3

    int-to-short p2, p2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/mlkem/Poly;->setCoeffIndex(IS)V

    return-void
.end method

.method public static factorQMulMont(SS)S
    .locals 0

    mul-int p0, p0, p1

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/mlkem/Reduce;->montgomeryReduce(I)S

    move-result p0

    return p0
.end method

.method public static invNtt([S)[S
    .locals 10

    const/16 v0, 0x100

    new-array v1, v0, [S

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p0, 0x2

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x80

    if-gt p0, v4, :cond_2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_1

    sget-object v5, Lorg/bouncycastle/pqc/crypto/mlkem/Ntt;->nttZetasInv:[S

    add-int/lit8 v6, v3, 0x1

    aget-short v3, v5, v3

    move v5, v4

    :goto_2
    add-int v7, v4, p0

    if-ge v5, v7, :cond_0

    aget-short v7, v1, v5

    add-int v8, v5, p0

    aget-short v9, v1, v8

    add-int/2addr v9, v7

    int-to-short v9, v9

    invoke-static {v9}, Lorg/bouncycastle/pqc/crypto/mlkem/Reduce;->barretReduce(S)S

    move-result v9

    aput-short v9, v1, v5

    aget-short v9, v1, v8

    sub-int/2addr v7, v9

    int-to-short v7, v7

    aput-short v7, v1, v8

    invoke-static {v3, v7}, Lorg/bouncycastle/pqc/crypto/mlkem/Ntt;->factorQMulMont(SS)S

    move-result v7

    aput-short v7, v1, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_0
    add-int v4, v5, p0

    move v3, v6

    goto :goto_1

    :cond_1
    shl-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    :goto_3
    if-ge v2, v0, :cond_3

    aget-short p0, v1, v2

    sget-object v3, Lorg/bouncycastle/pqc/crypto/mlkem/Ntt;->nttZetasInv:[S

    const/16 v4, 0x7f

    aget-short v3, v3, v4

    invoke-static {p0, v3}, Lorg/bouncycastle/pqc/crypto/mlkem/Ntt;->factorQMulMont(SS)S

    move-result p0

    aput-short p0, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    return-object v1
.end method

.method public static ntt([S)[S
    .locals 10

    const/16 v0, 0x100

    new-array v1, v0, [S

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p0, 0x1

    const/16 v3, 0x80

    :goto_0
    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_1

    sget-object v5, Lorg/bouncycastle/pqc/crypto/mlkem/Ntt;->nttZetas:[S

    add-int/lit8 v6, p0, 0x1

    aget-short p0, v5, p0

    move v5, v4

    :goto_2
    add-int v7, v4, v3

    if-ge v5, v7, :cond_0

    add-int v7, v5, v3

    aget-short v8, v1, v7

    invoke-static {p0, v8}, Lorg/bouncycastle/pqc/crypto/mlkem/Ntt;->factorQMulMont(SS)S

    move-result v8

    aget-short v9, v1, v5

    sub-int/2addr v9, v8

    int-to-short v9, v9

    aput-short v9, v1, v7

    aget-short v7, v1, v5

    add-int/2addr v7, v8

    int-to-short v7, v7

    aput-short v7, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_0
    add-int v4, v5, v3

    move p0, v6

    goto :goto_1

    :cond_1
    shr-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method
