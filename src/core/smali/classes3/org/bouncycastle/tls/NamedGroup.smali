.class public Lorg/bouncycastle/tls/NamedGroup;
.super Ljava/lang/Object;


# static fields
.field private static final CURVE_NAMES:[Ljava/lang/String;

.field public static final DRAFT_mlkem1024:I = 0x1024

.field public static final DRAFT_mlkem768:I = 0x768

.field private static final FINITE_FIELD_NAMES:[Ljava/lang/String;

.field public static final GC256A:I = 0x22

.field public static final GC256B:I = 0x23

.field public static final GC256C:I = 0x24

.field public static final GC256D:I = 0x25

.field public static final GC512A:I = 0x26

.field public static final GC512B:I = 0x27

.field public static final GC512C:I = 0x28

.field public static final OQS_mlkem1024:I = 0x249

.field public static final OQS_mlkem512:I = 0x247

.field public static final OQS_mlkem768:I = 0x248

.field public static final arbitrary_explicit_char2_curves:I = 0xff02

.field public static final arbitrary_explicit_prime_curves:I = 0xff01

.field public static final brainpoolP256r1:I = 0x1a

.field public static final brainpoolP256r1tls13:I = 0x1f

.field public static final brainpoolP384r1:I = 0x1b

.field public static final brainpoolP384r1tls13:I = 0x20

.field public static final brainpoolP512r1:I = 0x1c

.field public static final brainpoolP512r1tls13:I = 0x21

.field public static final curveSM2:I = 0x29

.field public static final ffdhe2048:I = 0x100

.field public static final ffdhe3072:I = 0x101

.field public static final ffdhe4096:I = 0x102

.field public static final ffdhe6144:I = 0x103

.field public static final ffdhe8192:I = 0x104

.field public static final secp160k1:I = 0xf

.field public static final secp160r1:I = 0x10

.field public static final secp160r2:I = 0x11

.field public static final secp192k1:I = 0x12

.field public static final secp192r1:I = 0x13

.field public static final secp224k1:I = 0x14

.field public static final secp224r1:I = 0x15

.field public static final secp256k1:I = 0x16

.field public static final secp256r1:I = 0x17

.field public static final secp384r1:I = 0x18

.field public static final secp521r1:I = 0x19

.field public static final sect163k1:I = 0x1

.field public static final sect163r1:I = 0x2

.field public static final sect163r2:I = 0x3

.field public static final sect193r1:I = 0x4

.field public static final sect193r2:I = 0x5

.field public static final sect233k1:I = 0x6

.field public static final sect233r1:I = 0x7

.field public static final sect239k1:I = 0x8

.field public static final sect283k1:I = 0x9

.field public static final sect283r1:I = 0xa

.field public static final sect409k1:I = 0xb

.field public static final sect409r1:I = 0xc

.field public static final sect571k1:I = 0xd

.field public static final sect571r1:I = 0xe

.field public static final x25519:I = 0x1d

.field public static final x448:I = 0x1e


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x29

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "sect163k1"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-string v3, "sect163r1"

    aput-object v3, v0, v2

    const/4 v3, 0x2

    const-string v4, "sect163r2"

    aput-object v4, v0, v3

    const/4 v4, 0x3

    const-string v5, "sect193r1"

    aput-object v5, v0, v4

    const/4 v5, 0x4

    const-string v6, "sect193r2"

    aput-object v6, v0, v5

    const/4 v6, 0x5

    const-string v7, "sect233k1"

    aput-object v7, v0, v6

    const-string v7, "sect233r1"

    const/4 v8, 0x6

    aput-object v7, v0, v8

    const-string v7, "sect239k1"

    const/4 v8, 0x7

    aput-object v7, v0, v8

    const-string v7, "sect283k1"

    const/16 v8, 0x8

    aput-object v7, v0, v8

    const-string v7, "sect283r1"

    const/16 v8, 0x9

    aput-object v7, v0, v8

    const-string v7, "sect409k1"

    const/16 v8, 0xa

    aput-object v7, v0, v8

    const-string v7, "sect409r1"

    const/16 v8, 0xb

    aput-object v7, v0, v8

    const-string v7, "sect571k1"

    const/16 v8, 0xc

    aput-object v7, v0, v8

    const-string v7, "sect571r1"

    const/16 v8, 0xd

    aput-object v7, v0, v8

    const-string v7, "secp160k1"

    const/16 v8, 0xe

    aput-object v7, v0, v8

    const-string v7, "secp160r1"

    const/16 v8, 0xf

    aput-object v7, v0, v8

    const-string v7, "secp160r2"

    const/16 v8, 0x10

    aput-object v7, v0, v8

    const-string v7, "secp192k1"

    const/16 v8, 0x11

    aput-object v7, v0, v8

    const-string v7, "secp192r1"

    const/16 v8, 0x12

    aput-object v7, v0, v8

    const-string v7, "secp224k1"

    const/16 v8, 0x13

    aput-object v7, v0, v8

    const-string v7, "secp224r1"

    const/16 v8, 0x14

    aput-object v7, v0, v8

    const-string v7, "secp256k1"

    const/16 v8, 0x15

    aput-object v7, v0, v8

    const-string v7, "secp256r1"

    const/16 v8, 0x16

    aput-object v7, v0, v8

    const-string v7, "secp384r1"

    const/16 v8, 0x17

    aput-object v7, v0, v8

    const-string v7, "secp521r1"

    const/16 v8, 0x18

    aput-object v7, v0, v8

    const/16 v7, 0x19

    const-string v8, "brainpoolP256r1"

    aput-object v8, v0, v7

    const/16 v7, 0x1a

    const-string v9, "brainpoolP384r1"

    aput-object v9, v0, v7

    const/16 v7, 0x1b

    const-string v10, "brainpoolP512r1"

    aput-object v10, v0, v7

    const-string v7, "X25519"

    const/16 v11, 0x1c

    aput-object v7, v0, v11

    const-string v7, "X448"

    const/16 v11, 0x1d

    aput-object v7, v0, v11

    const/16 v7, 0x1e

    aput-object v8, v0, v7

    const/16 v7, 0x1f

    aput-object v9, v0, v7

    const/16 v7, 0x20

    aput-object v10, v0, v7

    const-string v7, "Tc26-Gost-3410-12-256-paramSetA"

    const/16 v8, 0x21

    aput-object v7, v0, v8

    const-string v7, "GostR3410-2001-CryptoPro-A"

    const/16 v8, 0x22

    aput-object v7, v0, v8

    const-string v7, "GostR3410-2001-CryptoPro-B"

    const/16 v8, 0x23

    aput-object v7, v0, v8

    const-string v7, "GostR3410-2001-CryptoPro-C"

    const/16 v8, 0x24

    aput-object v7, v0, v8

    const-string v7, "Tc26-Gost-3410-12-512-paramSetA"

    const/16 v8, 0x25

    aput-object v7, v0, v8

    const-string v7, "Tc26-Gost-3410-12-512-paramSetB"

    const/16 v8, 0x26

    aput-object v7, v0, v8

    const-string v7, "Tc26-Gost-3410-12-512-paramSetC"

    const/16 v8, 0x27

    aput-object v7, v0, v8

    const-string v7, "sm2p256v1"

    const/16 v8, 0x28

    aput-object v7, v0, v8

    sput-object v0, Lorg/bouncycastle/tls/NamedGroup;->CURVE_NAMES:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v6, "ffdhe2048"

    aput-object v6, v0, v1

    const-string v1, "ffdhe3072"

    aput-object v1, v0, v2

    const-string v1, "ffdhe4096"

    aput-object v1, v0, v3

    const-string v1, "ffdhe6144"

    aput-object v1, v0, v4

    const-string v1, "ffdhe8192"

    aput-object v1, v0, v5

    sput-object v0, Lorg/bouncycastle/tls/NamedGroup;->FINITE_FIELD_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canBeNegotiated(ILorg/bouncycastle/tls/ProtocolVersion;)Z
    .locals 2

    const/16 v0, 0x1d

    const/4 v1, 0x1

    if-eq p0, v0, :cond_5

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_5

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Lorg/bouncycastle/tls/NamedGroup;->refersToASpecificFiniteField(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv13(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result p1

    invoke-static {p0}, Lorg/bouncycastle/tls/NamedGroup;->refersToASpecificCurve(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x29

    if-eq p0, v0, :cond_2

    packed-switch p0, :pswitch_data_1

    xor-int/lit8 p0, p1, 0x1

    return p0

    :cond_1
    invoke-static {p0}, Lorg/bouncycastle/tls/NamedGroup;->refersToASpecificKem(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    :pswitch_0
    return p1

    :cond_3
    const v0, 0xff01

    if-lt p0, v0, :cond_4

    const v0, 0xff02

    if-gt p0, v0, :cond_4

    xor-int/lit8 p0, p1, 0x1

    return p0

    :cond_4
    invoke-static {p0}, Lorg/bouncycastle/tls/NamedGroup;->isPrivate(I)Z

    move-result p0

    return p0

    :cond_5
    :pswitch_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1f
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getCurveBits(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0x1be

    return p0

    :pswitch_1
    const/16 p0, 0xfc

    return p0

    :pswitch_2
    const/16 p0, 0x200

    return p0

    :pswitch_3
    const/16 p0, 0x209

    return p0

    :pswitch_4
    const/16 p0, 0x180

    return p0

    :pswitch_5
    const/16 p0, 0x100

    return p0

    :pswitch_6
    const/16 p0, 0xe0

    return p0

    :pswitch_7
    const/16 p0, 0xc0

    return p0

    :pswitch_8
    const/16 p0, 0xa0

    return p0

    :pswitch_9
    const/16 p0, 0x23b

    return p0

    :pswitch_a
    const/16 p0, 0x199

    return p0

    :pswitch_b
    const/16 p0, 0x11b

    return p0

    :pswitch_c
    const/16 p0, 0xef

    return p0

    :pswitch_d
    const/16 p0, 0xe9

    return p0

    :pswitch_e
    const/16 p0, 0xc1

    return p0

    :pswitch_f
    const/16 p0, 0xa3

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method public static getCurveName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/bouncycastle/tls/NamedGroup;->refersToASpecificCurve(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/bouncycastle/tls/NamedGroup;->CURVE_NAMES:[Ljava/lang/String;

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFiniteFieldBits(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0x2000

    return p0

    :pswitch_1
    const/16 p0, 0x1800

    return p0

    :pswitch_2
    const/16 p0, 0x1000

    return p0

    :pswitch_3
    const/16 p0, 0xc00

    return p0

    :pswitch_4
    const/16 p0, 0x800

    return p0

    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getFiniteFieldName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/bouncycastle/tls/NamedGroup;->refersToASpecificFiniteField(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/bouncycastle/tls/NamedGroup;->FINITE_FIELD_NAMES:[Ljava/lang/String;

    add-int/lit16 p0, p0, -0x100

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getKemName(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x768

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1024

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "ML-KEM-512"

    return-object p0

    :cond_0
    :pswitch_1
    const-string p0, "ML-KEM-1024"

    return-object p0

    :cond_1
    :pswitch_2
    const-string p0, "ML-KEM-768"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x247
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getMaximumChar2CurveBits()I
    .locals 1

    const/16 v0, 0x23b

    return v0
.end method

.method public static getMaximumCurveBits()I
    .locals 1

    const/16 v0, 0x23b

    return v0
.end method

.method public static getMaximumFiniteFieldBits()I
    .locals 1

    const/16 v0, 0x2000

    return v0
.end method

.method public static getMaximumPrimeCurveBits()I
    .locals 1

    const/16 v0, 0x209

    return v0
.end method

.method public static getName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/bouncycastle/tls/NamedGroup;->isPrivate(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "PRIVATE"

    return-object p0

    :cond_0
    const/16 v0, 0x768

    if-eq p0, v0, :cond_3

    const/16 v0, 0x1024

    if-eq p0, v0, :cond_2

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    invoke-static {p0}, Lorg/bouncycastle/tls/NamedGroup;->getStandardName(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_0
    const-string p0, "arbitrary_explicit_char2_curves"

    return-object p0

    :pswitch_1
    const-string p0, "arbitrary_explicit_prime_curves"

    return-object p0

    :pswitch_2
    const-string p0, "OQS_mlkem1024"

    return-object p0

    :pswitch_3
    const-string p0, "OQS_mlkem768"

    return-object p0

    :pswitch_4
    const-string p0, "OQS_mlkem512"

    return-object p0

    :pswitch_5
    const-string p0, "curveSM2"

    return-object p0

    :pswitch_6
    const-string p0, "GC512C"

    return-object p0

    :pswitch_7
    const-string p0, "GC512B"

    return-object p0

    :pswitch_8
    const-string p0, "GC512A"

    return-object p0

    :pswitch_9
    const-string p0, "GC256D"

    return-object p0

    :pswitch_a
    const-string p0, "GC256C"

    return-object p0

    :pswitch_b
    const-string p0, "GC256B"

    return-object p0

    :pswitch_c
    const-string p0, "GC256A"

    return-object p0

    :pswitch_d
    const-string p0, "brainpoolP512r1tls13"

    return-object p0

    :pswitch_e
    const-string p0, "brainpoolP384r1tls13"

    return-object p0

    :pswitch_f
    const-string p0, "brainpoolP256r1tls13"

    return-object p0

    :pswitch_10
    const-string p0, "x448"

    return-object p0

    :pswitch_11
    const-string p0, "x25519"

    return-object p0

    :cond_2
    const-string p0, "DRAFT_mlkem1024"

    return-object p0

    :cond_3
    const-string p0, "DRAFT_mlkem768"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x247
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xff01
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getStandardName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/bouncycastle/tls/NamedGroup;->getCurveName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/tls/NamedGroup;->getFiniteFieldName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-static {p0}, Lorg/bouncycastle/tls/NamedGroup;->getKemName(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getText(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lorg/bouncycastle/tls/NamedGroup;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isChar2Curve(I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v1, 0xe

    if-le p0, v1, :cond_1

    :cond_0
    const v1, 0xff02

    if-ne p0, v1, :cond_2

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static isFiniteField(I)Z
    .locals 1

    and-int/lit16 p0, p0, -0x100

    const/16 v0, 0x100

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isPrimeCurve(I)Z
    .locals 1

    const/16 v0, 0xf

    if-lt p0, v0, :cond_0

    const/16 v0, 0x29

    if-le p0, v0, :cond_1

    :cond_0
    const v0, 0xff01

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static isPrivate(I)Z
    .locals 2

    ushr-int/lit8 v0, p0, 0x2

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_1

    ushr-int/lit8 p0, p0, 0x8

    const/16 v0, 0xfe

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isValid(I)Z
    .locals 1

    invoke-static {p0}, Lorg/bouncycastle/tls/NamedGroup;->refersToASpecificGroup(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/bouncycastle/tls/NamedGroup;->isPrivate(I)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0xff01

    if-lt p0, v0, :cond_0

    const v0, 0xff02

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static refersToASpecificCurve(I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v1, 0x29

    if-gt p0, v1, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static refersToASpecificFiniteField(I)Z
    .locals 1

    const/16 v0, 0x100

    if-lt p0, v0, :cond_0

    const/16 v0, 0x104

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static refersToASpecificGroup(I)Z
    .locals 1

    invoke-static {p0}, Lorg/bouncycastle/tls/NamedGroup;->refersToASpecificCurve(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/bouncycastle/tls/NamedGroup;->refersToASpecificFiniteField(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/bouncycastle/tls/NamedGroup;->refersToASpecificKem(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static refersToASpecificKem(I)Z
    .locals 1

    const/16 v0, 0x768

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1024

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x247
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static refersToAnECDHCurve(I)Z
    .locals 0

    invoke-static {p0}, Lorg/bouncycastle/tls/NamedGroup;->refersToASpecificCurve(I)Z

    move-result p0

    return p0
.end method

.method public static refersToAnECDSACurve(I)Z
    .locals 1

    invoke-static {p0}, Lorg/bouncycastle/tls/NamedGroup;->refersToASpecificCurve(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/tls/NamedGroup;->refersToAnXDHCurve(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static refersToAnXDHCurve(I)Z
    .locals 1

    const/16 v0, 0x1d

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1e

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
