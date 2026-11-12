.class public Lorg/bouncycastle/crypto/paddings/TBCPadding;
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
    .locals 4

    array-length v0, p1

    sub-int/2addr v0, p2

    const/16 v1, 0xff

    const/4 v2, 0x0

    if-lez p2, :cond_0

    add-int/lit8 v3, p2, -0x1

    aget-byte v3, p1, v3

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_1

    goto :goto_0

    :cond_0
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p1, v3

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    int-to-byte v1, v1

    :goto_1
    array-length v2, p1

    if-ge p2, v2, :cond_2

    aput-byte v1, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    return v0
.end method

.method public getPaddingName()Ljava/lang/String;
    .locals 1

    const-string v0, "TBC"

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

    const/4 v1, -0x1

    add-int/2addr v0, v1

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, -0x1

    :goto_0
    add-int/2addr v0, v1

    if-ltz v0, :cond_0

    aget-byte v6, p1, v0

    and-int/lit16 v6, v6, 0xff

    xor-int/2addr v6, v2

    sub-int/2addr v6, v3

    shr-int/lit8 v6, v6, 0x1f

    and-int/2addr v5, v6

    sub-int/2addr v4, v5

    goto :goto_0

    :cond_0
    return v4
.end method
