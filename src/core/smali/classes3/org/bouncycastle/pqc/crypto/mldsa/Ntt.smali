.class Lorg/bouncycastle/pqc/crypto/mldsa/Ntt;
.super Ljava/lang/Object;


# static fields
.field static final nttZetas:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x100

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/mldsa/Ntt;->nttZetas:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x64f7
        -0x27cefe
        -0x7eafd
        0x39e44
        -0xbdee8
        -0xd5ed8
        0x71e24
        0x1bde2b
        0x23e92b
        -0x57b53
        -0x1feb81
        0x2f9a75
        -0x2c04f7
        0x2f7a49
        0x28e527
        0x299658
        0xfa070
        -0x107a5c
        0x36b788
        -0x86270
        -0x111560
        0x27f968
        -0x202c85
        -0x20522a
        -0x3ae519
        -0x155b09
        -0x320368
        0x1ad035
        -0x4bde
        0x3d3201
        0x445c5
        0x294a67
        0x17620
        0x2ef4cd
        0x35dec5
        -0x195afd
        -0x36cfd4
        -0x26b82c
        0x3bbeaf
        -0x3aea7b
        -0x2e7184
        0x368a96
        -0x2bc1bf
        0x360400
        -0x495b3
        0x23d69c
        -0x83aa3
        -0x19edc3
        -0x19152a
        0x357e1e
        -0x3a50a7
        0x35843f
        -0x20a9e9
        -0x186ba4
        0x38738c
        0xc63a8
        0x81b9a
        0xe8f76
        0x3b3853
        0x3b8534
        -0x2703d0
        0x1f9d54
        -0x2ab0d3
        -0x3bf91b
        -0x17537f
        -0x381e31
        -0x2e67e7
        -0x1629a3
        0x3509ee
        0x2135c7
        -0x183045
        -0x13308b
        0x1d9772
        -0x3e4f8e
        -0xf430a
        -0x30ad80
        -0x302d52
        -0x376f20
        0x1efca
        0x3410f2
        -0xf017b
        0x20c638
        0x296e9f
        -0x2d485d
        -0x385bb5
        -0x64593
        -0x25cbf7
        -0xa3d7e
        -0x12beed
        -0x59c5
        -0x13f609
        -0x5d423
        0x1495d4
        0x1c4563
        -0x15d39e
        -0x330417
        0x40af0
        0x7c417
        0x2f4588
        0xad00
        -0x10c942
        0xdcd44
        0x3c675a
        -0x38d436
        -0x2182
        0x193948
        -0x319640
        0x24756c
        -0x33821
        0xb98a1
        -0x1417f8
        0x2e46c
        -0x3637f8
        0x3036c2
        -0x1c400a
        -0x24c36d
        -0x2b520
        0x141305
        0x147792
        0x139e25
        -0x182f20
        -0xc66bc
        -0x15f7fe
        -0x2e115e
        -0x3b3864
        -0x375fa9
        0x3a97d9
        0x1fea93
        0x33ff5a
        0x2358d4
        0x3a41f8
        -0x33008e
        0x223dfb
        -0x255461
        -0x365bde
        0x412f5
        0x252587
        -0x12db10
        0x359b5d
        -0x35b760
        -0x395d04
        -0x1244aa
        -0x30ba22
        0xdbe5e
        0x1c5e1a
        0xde0e6
        0xc7f5a
        0x78f83
        -0x189d76
        -0xa8fc
        -0x7f904
        -0x9ffdf
        -0x2fa50a
        0x1f0084
        0x30ef86
        -0x364683
        -0x8032a
        -0xbba6e
        -0x36de3e
        0x53919
        0x4610c
        -0x2532bf
        0x3eb01b
        0x3472e7
        -0x32ffc5
        0x1a7cc7
        0x31924
        0x2b5ee5
        0x291199
        -0x2785c6
        0x134d71
        0x3de11c
        0x130984
        0x25f051
        0x185a46
        -0x397ae8
        0x1314be
        0x283891
        -0x362470
        -0x2daf77
        0x1c853f
        0x1d0b4b
        -0x10095a
        -0x145742
        0x12e11b
        -0x32a1c2
        -0x15d2d1
        -0x6e21c
        0x1406c7
        0x327283
        -0x1df292
        -0x1386ad
        0x1d4099
        -0x26da88
        -0x14fa53
        0x16e405
        0xbdbe7
        0x221de8
        0x33f8cf
        -0x846cc
        -0x2b35f4
        -0x198008
        -0x1c2ea9
        -0x276ee5
        -0x38d3ee
        0x910d8
        -0x39a1e1
        -0x1eb9a8
        0x251d8b
        0x2573b7
        -0x28371
        0x1ddd98
        0x336898
        0x2d4bb
        -0x126c59
        -0x309342
        0x27c1c
        0x18aa08
        0x2dfd71
        0xc5ca5
        0x19379a
        -0x385e99
        -0x1b73c3
        -0x2e5ec4
        0x35c539
        0x3b0115
        0x41dc0
        0x21c4f7
        -0xee40c
        0x1a35e7
        0x7340e
        -0x682bb
        0x1a4cd0
        -0x1b8352
        0x1d2668
        -0x197168
        -0x10d9cd
        -0x3fa26
        -0x3a8025
        -0x2cd89c
        -0x221e51
        -0x66c23
        -0x22e2f7
        0x2cc93
        -0xee7fb
        0x189c2a
        -0x361a57
        -0x875b0
        0x3bcf2c
        -0xbcb2
        -0x14c921
        0x3c15ca
        0x155e68
        -0xce94a
        0x1e29ce
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static invNttToMont([I)[I
    .locals 13

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([III)[I

    move-result-object p0

    const/16 v0, 0x100

    const/4 v2, 0x1

    const/16 v3, 0x100

    :goto_0
    if-ge v2, v0, :cond_2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_1

    sget-object v5, Lorg/bouncycastle/pqc/crypto/mldsa/Ntt;->nttZetas:[I

    add-int/lit8 v3, v3, -0x1

    aget v5, v5, v3

    mul-int/lit8 v5, v5, -0x1

    move v6, v4

    :goto_2
    add-int v7, v4, v2

    if-ge v6, v7, :cond_0

    aget v7, p0, v6

    add-int v8, v6, v2

    aget v9, p0, v8

    add-int/2addr v9, v7

    aput v9, p0, v6

    aget v9, p0, v8

    sub-int/2addr v7, v9

    aput v7, p0, v8

    int-to-long v9, v5

    int-to-long v11, v7

    mul-long v9, v9, v11

    invoke-static {v9, v10}, Lorg/bouncycastle/pqc/crypto/mldsa/Reduce;->montgomeryReduce(J)I

    move-result v7

    aput v7, p0, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_0
    add-int v4, v6, v2

    goto :goto_1

    :cond_1
    shl-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_3
    if-ge v1, v0, :cond_3

    aget v2, p0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xa3fa

    mul-long v2, v2, v4

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/mldsa/Reduce;->montgomeryReduce(J)I

    move-result v2

    aput v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    return-object p0
.end method

.method static ntt([I)[I
    .locals 11

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([III)[I

    move-result-object p0

    const/16 v0, 0x80

    const/4 v2, 0x0

    :goto_0
    if-lez v0, :cond_2

    const/4 v3, 0x0

    :goto_1
    const/16 v4, 0x100

    if-ge v3, v4, :cond_1

    sget-object v4, Lorg/bouncycastle/pqc/crypto/mldsa/Ntt;->nttZetas:[I

    add-int/lit8 v2, v2, 0x1

    aget v4, v4, v2

    move v5, v3

    :goto_2
    add-int v6, v3, v0

    if-ge v5, v6, :cond_0

    int-to-long v6, v4

    add-int v8, v5, v0

    aget v9, p0, v8

    int-to-long v9, v9

    mul-long v6, v6, v9

    invoke-static {v6, v7}, Lorg/bouncycastle/pqc/crypto/mldsa/Reduce;->montgomeryReduce(J)I

    move-result v6

    aget v7, p0, v5

    sub-int/2addr v7, v6

    aput v7, p0, v8

    aget v7, p0, v5

    add-int/2addr v7, v6

    aput v7, p0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_0
    add-int v3, v5, v0

    goto :goto_1

    :cond_1
    ushr-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method
