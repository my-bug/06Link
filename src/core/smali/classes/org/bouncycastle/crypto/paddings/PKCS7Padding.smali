.class public Lorg/bouncycastle/crypto/paddings/PKCS7Padding;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addPadding([BI)I
    .locals 2

    array-length v0, p1

    sub-int/2addr v0, p2

    int-to-byte v0, v0

    :goto_0
    array-length v1, p1

    if-ge p2, v1, :cond_0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getPaddingName()Ljava/lang/String;
    .locals 1

    const-string v0, "PKCS7"

    return-object v0
.end method

.method public init(Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    return-void
.end method

.method public padCount([B)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p1, v0

    and-int/lit16 v1, v0, 0xff

    array-length v2, p1

    sub-int/2addr v2, v1

    add-int/lit8 v3, v1, -0x1

    or-int/2addr v3, v2

    shr-int/lit8 v3, v3, 0x1f

    const/4 v4, 0x0

    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_0

    aget-byte v5, p1, v4

    xor-int/2addr v5, v0

    sub-int v6, v4, v2

    shr-int/lit8 v6, v6, 0x1f

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    or-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-nez v3, :cond_1

    return v1

    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v0, "pad block corrupted"

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
