.class public Lorg/bouncycastle/pqc/crypto/gemss/GeMSSUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static CMP_LT_UINT(JJ)J
    .locals 7

    const/16 v0, 0x3f

    ushr-long v1, p0, v0

    ushr-long v3, p2, v0

    xor-long v5, v1, v3

    sub-long/2addr v1, v3

    ushr-long/2addr v1, v0

    and-long/2addr v1, v5

    const-wide/16 v3, 0x1

    xor-long/2addr v3, v5

    const-wide v5, 0x7fffffffffffffffL

    and-long/2addr p0, v5

    and-long/2addr p2, v5

    sub-long/2addr p0, p2

    ushr-long/2addr p0, v0

    and-long/2addr p0, v3

    xor-long/2addr p0, v1

    return-wide p0
.end method

.method static Highest_One(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x1

    xor-int/2addr p0, v0

    return p0
.end method

.method static NORBITS_UINT(J)J
    .locals 3

    const/16 v0, 0x20

    shl-long v1, p0, v0

    or-long/2addr p0, v1

    ushr-long/2addr p0, v0

    const-wide/16 v0, 0x1

    sub-long/2addr p0, v0

    const/16 v0, 0x3f

    ushr-long/2addr p0, v0

    return-wide p0
.end method

.method static ORBITS_UINT(J)J
    .locals 3

    const/16 v0, 0x20

    shl-long v1, p0, v0

    or-long/2addr p0, v1

    ushr-long/2addr p0, v0

    const-wide v1, 0xffffffffL

    add-long/2addr p0, v1

    ushr-long/2addr p0, v0

    return-wide p0
.end method

.method static XORBITS_UINT(J)J
    .locals 2

    const/4 v0, 0x1

    shl-long v0, p0, v0

    xor-long/2addr p0, v0

    const/4 v0, 0x2

    shl-long v0, p0, v0

    xor-long/2addr p0, v0

    const-wide v0, -0x7777777777777778L    # -1.48603973805866E-267

    and-long/2addr p0, v0

    const-wide v0, 0x1111111111111111L

    mul-long p0, p0, v0

    const/16 v0, 0x3f

    ushr-long/2addr p0, v0

    return-wide p0
.end method

.method static maskUINT(I)J
    .locals 4

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x1

    shl-long v2, v0, p0

    sub-long/2addr v2, v0

    return-wide v2

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
