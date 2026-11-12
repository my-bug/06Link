.class Lio/github/jaredmdobson/concentus/Inlines;
.super Ljava/lang/Object;
.source "Inlines.java"


# static fields
.field private static log2_C0:S

.field private static sqrt_C:[S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    .line 617
    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lio/github/jaredmdobson/concentus/Inlines;->sqrt_C:[S

    const/16 v0, -0x1a89

    .line 720
    sput-short v0, Lio/github/jaredmdobson/concentus/Inlines;->log2_C0:S

    return-void

    nop

    :array_0
    .array-data 2
        0x5a87s
        0x2d29s
        -0xbc3s
        0x6a3s
        -0x298s
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ABS16(F)F
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    neg-float p0, p0

    :cond_0
    return p0
.end method

.method static ABS16(I)I
    .locals 0

    if-gez p0, :cond_0

    neg-int p0, p0

    :cond_0
    return p0
.end method

.method static ABS16(S)S
    .locals 0

    if-gez p0, :cond_0

    neg-int p0, p0

    :cond_0
    int-to-short p0, p0

    return p0
.end method

.method static ABS32(I)I
    .locals 0

    if-gez p0, :cond_0

    neg-int p0, p0

    :cond_0
    return p0
.end method

.method static ADD16(II)I
    .locals 0

    add-int/2addr p0, p1

    return p0
.end method

.method static ADD16(SS)S
    .locals 0

    add-int/2addr p0, p1

    int-to-short p0, p0

    return p0
.end method

.method static ADD32(II)I
    .locals 0

    add-int/2addr p0, p1

    return p0
.end method

.method static CapToUInt32(I)J
    .locals 2

    int-to-long v0, p0

    return-wide v0
.end method

.method static CapToUInt32(J)J
    .locals 2

    long-to-int p1, p0

    int-to-long p0, p1

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    return-wide p0
.end method

.method static DIV32(II)I
    .locals 0

    .line 415
    div-int/2addr p0, p1

    return p0
.end method

.method static DIV32_16(II)I
    .locals 0

    .line 409
    div-int/2addr p0, p1

    return p0
.end method

.method static DIV32_16(IS)S
    .locals 0

    .line 405
    div-int/2addr p0, p1

    int-to-short p0, p0

    return p0
.end method

.method static EC_ILOG(J)I
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    cmp-long v3, p0, v0

    if-nez v3, :cond_0

    return v2

    :cond_0
    shr-long v0, p0, v2

    or-long/2addr p0, v0

    const/4 v0, 0x2

    shr-long v3, p0, v0

    or-long/2addr p0, v3

    const/4 v1, 0x4

    shr-long v3, p0, v1

    or-long/2addr p0, v3

    const/16 v3, 0x8

    shr-long v4, p0, v3

    or-long/2addr p0, v4

    const/16 v4, 0x10

    shr-long v5, p0, v4

    or-long/2addr p0, v5

    shr-long v5, p0, v2

    const-wide/32 v7, 0x55555555

    and-long/2addr v5, v7

    sub-long/2addr p0, v5

    shr-long v5, p0, v0

    const-wide/32 v7, 0x33333333

    and-long/2addr v5, v7

    and-long/2addr p0, v7

    add-long/2addr v5, p0

    shr-long p0, v5, v1

    add-long/2addr p0, v5

    const-wide/32 v0, 0xf0f0f0f

    and-long/2addr p0, v0

    shr-long v0, p0, v3

    add-long/2addr p0, v0

    shr-long v0, p0, v4

    add-long/2addr p0, v0

    const-wide/16 v0, 0x3f

    and-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method static EC_MINI(JJ)J
    .locals 3

    sub-long v0, p2, p0

    cmp-long v2, p2, p0

    if-gez v2, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    int-to-long p2, p2

    and-long/2addr p2, v0

    add-long/2addr p0, p2

    return-wide p0
.end method

.method static EXTEND32(I)I
    .locals 0

    return p0
.end method

.method static EXTEND32(S)I
    .locals 0

    return p0
.end method

.method static EXTRACT16(I)S
    .locals 0

    int-to-short p0, p0

    return p0
.end method

.method static FLOAT2INT16(F)S
    .locals 2

    const/high16 v0, 0x47000000    # 32768.0f

    mul-float p0, p0, v0

    const/high16 v0, -0x39000000    # -32768.0f

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    const/high16 p0, -0x39000000    # -32768.0f

    :cond_0
    const v0, 0x46fffe00    # 32767.0f

    cmpl-float v1, p0, v0

    if-lez v1, :cond_1

    const p0, 0x46fffe00    # 32767.0f

    :cond_1
    float-to-int p0, p0

    int-to-short p0, p0

    return p0
.end method

.method static FRAC_MUL16(II)I
    .locals 0

    int-to-short p0, p0

    int-to-short p1, p1

    mul-int p0, p0, p1

    add-int/lit16 p0, p0, 0x4000

    shr-int/lit8 p0, p0, 0xf

    return p0
.end method

.method static HALF16(I)I
    .locals 1

    const/4 v0, 0x1

    .line 237
    invoke-static {p0, v0}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result p0

    return p0
.end method

.method static HALF16(S)S
    .locals 1

    const/4 v0, 0x1

    .line 233
    invoke-static {p0, v0}, Lio/github/jaredmdobson/concentus/Inlines;->SHR16(SI)S

    move-result p0

    return p0
.end method

.method static HALF32(I)I
    .locals 1

    const/4 v0, 0x1

    .line 241
    invoke-static {p0, v0}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result p0

    return p0
.end method

.method static IMAX(II)I
    .locals 0

    if-le p0, p1, :cond_0

    return p0

    :cond_0
    return p1
.end method

.method static IMIN(II)I
    .locals 0

    if-ge p0, p1, :cond_0

    return p0

    :cond_0
    return p1
.end method

.method static IMIN(JJ)J
    .locals 1

    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    return-wide p0

    :cond_0
    return-wide p2
.end method

.method static MAC16_16(III)I
    .locals 0

    mul-int p1, p1, p2

    add-int/2addr p0, p1

    return p0
.end method

.method static MAC16_16(ISS)I
    .locals 0

    mul-int p1, p1, p2

    add-int/2addr p0, p1

    return p0
.end method

.method static MAC16_16(SSS)I
    .locals 0

    mul-int p1, p1, p2

    add-int/2addr p0, p1

    return p0
.end method

.method static MAC16_32_Q15(III)I
    .locals 2

    const/16 v0, 0xf

    .line 316
    invoke-static {p2, v0}, Lio/github/jaredmdobson/concentus/Inlines;->SHR(II)I

    move-result v1

    invoke-static {p1, v1}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v1

    and-int/lit16 p2, p2, 0x7fff

    invoke-static {p1, p2}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result p1

    invoke-static {p1, v0}, Lio/github/jaredmdobson/concentus/Inlines;->SHR(II)I

    move-result p1

    invoke-static {v1, p1}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result p1

    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result p0

    return p0
.end method

.method static MAC16_32_Q15(ISS)I
    .locals 2

    const/16 v0, 0xf

    .line 312
    invoke-static {p2, v0}, Lio/github/jaredmdobson/concentus/Inlines;->SHR(SI)I

    move-result v1

    invoke-static {p1, v1}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v1

    and-int/lit16 p2, p2, 0x7fff

    invoke-static {p1, p2}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result p1

    invoke-static {p1, v0}, Lio/github/jaredmdobson/concentus/Inlines;->SHR(II)I

    move-result p1

    invoke-static {v1, p1}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result p1

    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result p0

    return p0
.end method

.method static MAC16_32_Q16(III)I
    .locals 3

    const/16 v0, 0x10

    .line 327
    invoke-static {p2, v0}, Lio/github/jaredmdobson/concentus/Inlines;->SHR(II)I

    move-result v1

    invoke-static {p1, v1}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v1

    const v2, 0xffff

    and-int/2addr p2, v2

    invoke-static {p1, p2}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16SU(II)I

    move-result p1

    invoke-static {p1, v0}, Lio/github/jaredmdobson/concentus/Inlines;->SHR(II)I

    move-result p1

    invoke-static {v1, p1}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result p1

    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result p0

    return p0
.end method

.method static MAC16_32_Q16(ISS)I
    .locals 3

    const/16 v0, 0x10

    .line 323
    invoke-static {p2, v0}, Lio/github/jaredmdobson/concentus/Inlines;->SHR(SI)I

    move-result v1

    invoke-static {p1, v1}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v1

    const v2, 0xffff

    and-int/2addr p2, v2

    invoke-static {p1, p2}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16SU(II)I

    move-result p1

    invoke-static {p1, v0}, Lio/github/jaredmdobson/concentus/Inlines;->SHR(II)I

    move-result p1

    invoke-static {v1, p1}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result p1

    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result p0

    return p0
.end method

.method static MAX(II)I
    .locals 0

    if-le p0, p1, :cond_0

    return p0

    :cond_0
    return p1
.end method

.method static MAX(SS)S
    .locals 0

    if-le p0, p1, :cond_0

    return p0

    :cond_0
    return p1
.end method

.method static MAX16(FF)F
    .locals 1

    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    return p0

    :cond_0
    return p1
.end method

.method static MAX16(II)I
    .locals 0

    if-le p0, p1, :cond_0

    return p0

    :cond_0
    return p1
.end method

.method static MAX16(SS)S
    .locals 0

    if-le p0, p1, :cond_0

    return p0

    :cond_0
    return p1
.end method

.method static MAX32(FF)F
    .locals 1

    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    return p0

    :cond_0
    return p1
.end method

.method static MAX32(II)I
    .locals 0

    if-le p0, p1, :cond_0

    return p0

    :cond_0
    return p1
.end method

.method static MIN(II)I
    .locals 0

    if-ge p0, p1, :cond_0

    return p0

    :cond_0
    return p1
.end method

.method static MIN(SS)S
    .locals 0

    if-ge p0, p1, :cond_0

    return p0

    :cond_0
    return p1
.end method

.method static MIN16(FF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    return p0

    :cond_0
    return p1
.end method

.method static MIN16(II)I
    .locals 0

    if-ge p0, p1, :cond_0

    return p0

    :cond_0
    return p1
.end method

.method static MIN16(SS)S
    .locals 0

    if-ge p0, p1, :cond_0

    return p0

    :cond_0
    return p1
.end method

.method static MIN32(FF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    return p0

    :cond_0
    return p1
.end method

.method static MIN32(II)I
    .locals 0

    if-ge p0, p1, :cond_0

    return p0

    :cond_0
    return p1
.end method

.method static MUL32_FRAC_Q(III)I
    .locals 0

    .line 1579
    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULL(II)J

    move-result-wide p0

    invoke-static {p0, p1, p2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND64(JI)J

    move-result-wide p0

    long-to-int p1, p0

    return p1
.end method

.method static MULT16_16(II)I
    .locals 0

    mul-int p0, p0, p1

    return p0
.end method

.method static MULT16_16(SS)I
    .locals 0

    mul-int p0, p0, p1

    return p0
.end method

.method static MULT16_16SU(II)I
    .locals 1

    int-to-short p0, p0

    const v0, 0xffff

    and-int/2addr p1, v0

    mul-int p0, p0, p1

    return p0
.end method

.method static MULT16_16_16(II)I
    .locals 0

    mul-int p0, p0, p1

    return p0
.end method

.method static MULT16_16_16(SS)S
    .locals 0

    mul-int p0, p0, p1

    int-to-short p0, p0

    return p0
.end method

.method static MULT16_16_P13(II)I
    .locals 1

    const/16 v0, 0x1000

    .line 381
    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result p0

    invoke-static {v0, p0}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result p0

    const/16 p1, 0xd

    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->SHR(II)I

    move-result p0

    return p0
.end method

.method static MULT16_16_P13(SS)S
    .locals 1

    const/16 v0, 0x1000

    .line 377
    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(SS)I

    move-result p0

    invoke-static {v0, p0}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result p0

    const/16 p1, 0xd

    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->SHR(II)I

    move-result p0

    int-to-short p0, p0

    return p0
.end method

.method static MULT16_16_P14(II)I
    .locals 1

    const/16 v0, 0x2000

    .line 390
    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result p0

    invoke-static {v0, p0}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result p0

    const/16 p1, 0xe

    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->SHR(II)I

    move-result p0

    return p0
.end method

.method static MULT16_16_P14(SS)S
    .locals 1

    const/16 v0, 0x2000

    .line 386
    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(SS)I

    move-result p0

    invoke-static {v0, p0}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result p0

    const/16 p1, 0xe

    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->SHR(II)I

    move-result p0

    int-to-short p0, p0

    return p0
.end method

.method static MULT16_16_P15(II)I
    .locals 1

    const/16 v0, 0x4000

    .line 399
    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result p0

    invoke-static {v0, p0}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result p0

    const/16 p1, 0xf

    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->SHR(II)I

    move-result p0

    return p0
.end method

.method static MULT16_16_P15(SS)S
    .locals 1

    const/16 v0, 0x4000

    .line 395
    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(SS)I

    move-result p0

    invoke-static {v0, p0}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result p0

    const/16 p1, 0xf

    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->SHR(II)I

    move-result p0

    int-to-short p0, p0

    return p0
.end method

.method static MULT16_16_Q11(II)I
    .locals 0

    .line 345
    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result p0

    const/16 p1, 0xb

    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->SHR(II)I

    move-result p0

    return p0
.end method

.method static MULT16_16_Q11(SS)S
    .locals 0

    .line 341
    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(SS)I

    move-result p0

    const/16 p1, 0xb

    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->SHR(II)I

    move-result p0

    int-to-short p0, p0

    return p0
.end method

.method static MULT16_16_Q11_32(II)I
    .locals 0

    .line 336
    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result p0

    const/16 p1, 0xb

    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->SHR(II)I

    move-result p0

    return p0
.end method

.method static MULT16_16_Q11_32(SS)I
    .locals 0

    .line 332
    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(SS)I

    move-result p0

    const/16 p1, 0xb

    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->SHR(II)I

    move-result p0

    return p0
.end method

.method static MULT16_16_Q13(II)I
    .locals 0

    .line 354
    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result p0

    const/16 p1, 0xd

    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->SHR(II)I

    move-result p0

    return p0
.end method

.method static MULT16_16_Q13(SS)S
    .locals 0

    .line 350
    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(SS)I

    move-result p0

    const/16 p1, 0xd

    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->SHR(II)I

    move-result p0

    int-to-short p0, p0

    return p0
.end method

.method static MULT16_16_Q14(II)I
    .locals 0

    .line 363
    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result p0

    const/16 p1, 0xe

    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->SHR(II)I

    move-result p0

    return p0
.end method

.method static MULT16_16_Q14(SS)S
    .locals 0

    .line 359
    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(SS)I

    move-result p0

    const/16 p1, 0xe

    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->SHR(II)I

    move-result p0

    int-to-short p0, p0

    return p0
.end method

.method static MULT16_16_Q15(II)I
    .locals 0

    .line 372
    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result p0

    const/16 p1, 0xf

    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->SHR(II)I

    move-result p0

    return p0
.end method

.method static MULT16_16_Q15(SS)S
    .locals 0

    .line 368
    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(SS)I

    move-result p0

    const/16 p1, 0xf

    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->SHR(II)I

    move-result p0

    int-to-short p0, p0

    return p0
.end method

.method static MULT16_32_P16(II)I
    .locals 3

    const/16 v0, 0x10

    .line 84
    invoke-static {p1, v0}, Lio/github/jaredmdobson/concentus/Inlines;->SHR(II)I

    move-result v1

    invoke-static {p0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v1

    const v2, 0xffff

    and-int/2addr p1, v2

    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16SU(II)I

    move-result p0

    invoke-static {p0, v0}, Lio/github/jaredmdobson/concentus/Inlines;->PSHR(II)I

    move-result p0

    invoke-static {v1, p0}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result p0

    return p0
.end method

.method static MULT16_32_P16(SI)I
    .locals 3

    const/16 v0, 0x10

    .line 80
    invoke-static {p1, v0}, Lio/github/jaredmdobson/concentus/Inlines;->SHR(II)I

    move-result v1

    invoke-static {p0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v1

    const v2, 0xffff

    and-int/2addr p1, v2

    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16SU(II)I

    move-result p0

    invoke-static {p0, v0}, Lio/github/jaredmdobson/concentus/Inlines;->PSHR(II)I

    move-result p0

    invoke-static {v1, p0}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result p0

    return p0
.end method

.method static MULT16_32_Q15(II)I
    .locals 2

    shr-int/lit8 v0, p1, 0x10

    mul-int v0, v0, p0

    shl-int/lit8 v0, v0, 0x1

    const v1, 0xffff

    and-int/2addr p1, v1

    mul-int p0, p0, p1

    shr-int/lit8 p0, p0, 0xf

    add-int/2addr v0, p0

    return v0
.end method

.method static MULT16_32_Q15(SI)I
    .locals 2

    shr-int/lit8 v0, p1, 0x10

    mul-int v0, v0, p0

    shl-int/lit8 v0, v0, 0x1

    const v1, 0xffff

    and-int/2addr p1, v1

    mul-int p0, p0, p1

    shr-int/lit8 p0, p0, 0xf

    add-int/2addr v0, p0

    return v0
.end method

.method static MULT16_32_Q16(II)I
    .locals 3

    const/16 v0, 0x10

    .line 74
    invoke-static {p1, v0}, Lio/github/jaredmdobson/concentus/Inlines;->SHR(II)I

    move-result v1

    invoke-static {p0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v1

    const v2, 0xffff

    and-int/2addr p1, v2

    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16SU(II)I

    move-result p0

    invoke-static {p0, v0}, Lio/github/jaredmdobson/concentus/Inlines;->SHR(II)I

    move-result p0

    invoke-static {v1, p0}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result p0

    return p0
.end method

.method static MULT16_32_Q16(SI)I
    .locals 3

    const/16 v0, 0x10

    .line 70
    invoke-static {p1, v0}, Lio/github/jaredmdobson/concentus/Inlines;->SHR(II)I

    move-result v1

    invoke-static {p0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v1

    const v2, 0xffff

    and-int/2addr p1, v2

    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16SU(II)I

    move-result p0

    invoke-static {p0, v0}, Lio/github/jaredmdobson/concentus/Inlines;->SHR(II)I

    move-result p0

    invoke-static {v1, p0}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result p0

    return p0
.end method

.method static MULT32_32_Q31(II)I
    .locals 5

    const/16 v0, 0x10

    .line 101
    invoke-static {p0, v0}, Lio/github/jaredmdobson/concentus/Inlines;->SHR(II)I

    move-result v1

    invoke-static {p1, v0}, Lio/github/jaredmdobson/concentus/Inlines;->SHR(II)I

    move-result v2

    invoke-static {v1, v2}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lio/github/jaredmdobson/concentus/Inlines;->SHL(II)I

    move-result v1

    invoke-static {p0, v0}, Lio/github/jaredmdobson/concentus/Inlines;->SHR(II)I

    move-result v2

    const v3, 0xffff

    and-int v4, p1, v3

    invoke-static {v2, v4}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16SU(II)I

    move-result v2

    const/16 v4, 0xf

    invoke-static {v2, v4}, Lio/github/jaredmdobson/concentus/Inlines;->SHR(II)I

    move-result v2

    invoke-static {v1, v2}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result v1

    invoke-static {p1, v0}, Lio/github/jaredmdobson/concentus/Inlines;->SHR(II)I

    move-result p1

    and-int/2addr p0, v3

    invoke-static {p1, p0}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16SU(II)I

    move-result p0

    invoke-static {p0, v4}, Lio/github/jaredmdobson/concentus/Inlines;->SHR(II)I

    move-result p0

    invoke-static {v1, p0}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result p0

    return p0
.end method

.method static MatrixGet([IIII)I
    .locals 0

    mul-int p1, p1, p3

    add-int/2addr p1, p2

    .line 1459
    aget p0, p0, p1

    return p0
.end method

.method static MatrixGet([IIIII)I
    .locals 0

    mul-int p2, p2, p4

    add-int/2addr p1, p2

    add-int/2addr p1, p3

    .line 1471
    aget p0, p0, p1

    return p0
.end method

.method static MatrixGet([Lio/github/jaredmdobson/concentus/PitchAnalysisCore$silk_pe_stage3_vals;III)Lio/github/jaredmdobson/concentus/PitchAnalysisCore$silk_pe_stage3_vals;
    .locals 0

    mul-int p1, p1, p3

    add-int/2addr p1, p2

    .line 1467
    aget-object p0, p0, p1

    return-object p0
.end method

.method static MatrixGet([SIII)S
    .locals 0

    mul-int p1, p1, p3

    add-int/2addr p1, p2

    .line 1463
    aget-short p0, p0, p1

    return p0
.end method

.method static MatrixGet([SIIII)S
    .locals 0

    mul-int p2, p2, p4

    add-int/2addr p1, p2

    add-int/2addr p1, p3

    .line 1475
    aget-short p0, p0, p1

    return p0
.end method

.method static MatrixGetPointer(III)I
    .locals 0

    mul-int p0, p0, p2

    add-int/2addr p0, p1

    return p0
.end method

.method static MatrixSet([IIIII)V
    .locals 0

    mul-int p1, p1, p3

    add-int/2addr p1, p2

    .line 1487
    aput p4, p0, p1

    return-void
.end method

.method static MatrixSet([IIIIII)V
    .locals 0

    mul-int p2, p2, p4

    add-int/2addr p1, p2

    add-int/2addr p1, p3

    .line 1479
    aput p5, p0, p1

    return-void
.end method

.method static MatrixSet([SIIIIS)V
    .locals 0

    mul-int p2, p2, p4

    add-int/2addr p1, p2

    add-int/2addr p1, p3

    .line 1483
    aput-short p5, p0, p1

    return-void
.end method

.method static MatrixSet([SIIIS)V
    .locals 0

    mul-int p1, p1, p3

    add-int/2addr p1, p2

    .line 1491
    aput-short p4, p0, p1

    return-void
.end method

.method static NEG16(I)I
    .locals 0

    rsub-int/lit8 p0, p0, 0x0

    return p0
.end method

.method static NEG16(S)S
    .locals 0

    rsub-int/lit8 p0, p0, 0x0

    int-to-short p0, p0

    return p0
.end method

.method static NEG32(I)I
    .locals 0

    rsub-int/lit8 p0, p0, 0x0

    return p0
.end method

.method static OpusAssert(Z)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    .line 40
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method static OpusAssert(ZLjava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    .line 47
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method static PDIV32(II)I
    .locals 0

    .line 227
    div-int/2addr p0, p1

    return p0
.end method

.method private static PSHR(II)I
    .locals 2

    const/4 v0, 0x1

    .line 206
    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->EXTEND32(I)I

    move-result v1

    shl-int/2addr v1, p1

    shr-int/lit8 v0, v1, 0x1

    add-int/2addr p0, v0

    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->SHR(II)I

    move-result p0

    return p0
.end method

.method static PSHR16(II)I
    .locals 2

    const/4 v0, 0x1

    shl-int v1, v0, p1

    shr-int/lit8 v0, v1, 0x1

    add-int/2addr p0, v0

    .line 180
    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result p0

    return p0
.end method

.method static PSHR16(SI)S
    .locals 2

    const/4 v0, 0x1

    shl-int v1, v0, p1

    shr-int/lit8 v0, v1, 0x1

    add-int/2addr p0, v0

    int-to-short p0, p0

    .line 176
    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->SHR16(SI)S

    move-result p0

    return p0
.end method

.method static PSHR32(II)I
    .locals 2

    const/4 v0, 0x1

    .line 172
    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->EXTEND32(I)I

    move-result v1

    shl-int/2addr v1, p1

    shr-int/lit8 v0, v1, 0x1

    add-int/2addr p0, v0

    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result p0

    return p0
.end method

.method static QCONST16(FI)S
    .locals 2

    const/4 v0, 0x1

    shl-int p1, v0, p1

    int-to-float p1, p1

    mul-float p0, p0, p1

    float-to-double p0, p0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 106
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr p0, v0

    double-to-int p0, p0

    int-to-short p0, p0

    return p0
.end method

.method static QCONST32(FI)I
    .locals 2

    const/4 v0, 0x1

    shl-int p1, v0, p1

    int-to-float p1, p1

    mul-float p0, p0, p1

    float-to-double p0, p0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 111
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method static ROUND16(II)I
    .locals 0

    .line 223
    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->PSHR32(II)I

    move-result p0

    return p0
.end method

.method static ROUND16(SS)S
    .locals 0

    .line 219
    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->PSHR32(II)I

    move-result p0

    invoke-static {p0}, Lio/github/jaredmdobson/concentus/Inlines;->EXTRACT16(I)S

    move-result p0

    return p0
.end method

.method static SAT16(I)S
    .locals 1

    const/16 v0, 0x7fff

    if-le p0, v0, :cond_0

    return v0

    :cond_0
    const/16 v0, -0x8000

    if-ge p0, v0, :cond_1

    return v0

    :cond_1
    int-to-short p0, p0

    return p0
.end method

.method static SATURATE(II)I
    .locals 0

    if-le p0, p1, :cond_0

    return p1

    :cond_0
    neg-int p1, p1

    if-ge p0, p1, :cond_1

    return p1

    :cond_1
    return p0
.end method

.method static SATURATE16(I)S
    .locals 1

    const/16 v0, 0x7fff

    if-le p0, v0, :cond_0

    const/16 p0, 0x7fff

    goto :goto_0

    :cond_0
    const/16 v0, -0x8000

    if-ge p0, v0, :cond_1

    const/16 p0, -0x8000

    .line 214
    :cond_1
    :goto_0
    invoke-static {p0}, Lio/github/jaredmdobson/concentus/Inlines;->EXTRACT16(I)S

    move-result p0

    return p0
.end method

.method private static SHL(II)I
    .locals 0

    .line 194
    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->SHL32(II)I

    move-result p0

    return p0
.end method

.method private static SHL(SI)I
    .locals 0

    .line 202
    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->SHL32(II)I

    move-result p0

    return p0
.end method

.method static SHL16(II)I
    .locals 2

    int-to-long v0, p0

    shl-long p0, v0, p1

    long-to-int p1, p0

    return p1
.end method

.method static SHL16(SI)S
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    shl-int/2addr p0, p1

    int-to-short p0, p0

    return p0
.end method

.method static SHL32(II)I
    .locals 2

    int-to-long v0, p0

    shl-long p0, v0, p1

    long-to-int p1, p0

    return p1
.end method

.method private static SHR(II)I
    .locals 0

    shr-int/2addr p0, p1

    return p0
.end method

.method private static SHR(SI)I
    .locals 0

    shr-int/2addr p0, p1

    return p0
.end method

.method static SHR16(II)I
    .locals 0

    shr-int/2addr p0, p1

    return p0
.end method

.method static SHR16(SI)S
    .locals 0

    shr-int/2addr p0, p1

    int-to-short p0, p0

    return p0
.end method

.method static SHR32(II)I
    .locals 0

    shr-int/2addr p0, p1

    return p0
.end method

.method static SIG2WORD16(I)S
    .locals 1

    const/16 v0, 0xc

    .line 424
    invoke-static {p0, v0}, Lio/github/jaredmdobson/concentus/Inlines;->PSHR32(II)I

    move-result p0

    const/16 v0, -0x8000

    .line 425
    invoke-static {p0, v0}, Lio/github/jaredmdobson/concentus/Inlines;->MAX32(II)I

    move-result p0

    const/16 v0, 0x7fff

    .line 426
    invoke-static {p0, v0}, Lio/github/jaredmdobson/concentus/Inlines;->MIN32(II)I

    move-result p0

    .line 427
    invoke-static {p0}, Lio/github/jaredmdobson/concentus/Inlines;->EXTRACT16(I)S

    move-result p0

    return p0
.end method

.method static SILK_CONST(FI)I
    .locals 2

    const-wide/16 v0, 0x1

    shl-long/2addr v0, p1

    long-to-float p1, v0

    mul-float p0, p0, p1

    float-to-double p0, p0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 1221
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method static SUB16(II)I
    .locals 0

    sub-int/2addr p0, p1

    return p0
.end method

.method static SUB16(SS)S
    .locals 0

    sub-int/2addr p0, p1

    int-to-short p0, p0

    return p0
.end method

.method static SUB32(II)I
    .locals 0

    sub-int/2addr p0, p1

    return p0
.end method

.method static SignedByteToUnsignedInt(B)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method static VSHR32(II)I
    .locals 0

    if-lez p1, :cond_0

    .line 185
    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result p0

    return p0

    :cond_0
    neg-int p1, p1

    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->SHL32(II)I

    move-result p0

    return p0
.end method

.method static _celt_cos_pi_2(I)I
    .locals 3

    .line 809
    invoke-static {p0, p0}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_P15(II)I

    move-result p0

    const/16 v0, 0x7fff

    .line 810
    invoke-static {v0, p0}, Lio/github/jaredmdobson/concentus/Inlines;->SUB16(II)I

    move-result v0

    const/16 v1, -0x272

    invoke-static {v1, p0}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_P15(II)I

    move-result v1

    const/16 v2, 0x2055

    invoke-static {v2, v1}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result v1

    invoke-static {p0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_P15(II)I

    move-result v1

    const/16 v2, -0x1de3

    invoke-static {v2, v1}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result v1

    invoke-static {p0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_P15(II)I

    move-result p0

    invoke-static {v0, p0}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result p0

    const/16 v0, 0x7ffe

    invoke-static {v0, p0}, Lio/github/jaredmdobson/concentus/Inlines;->MIN32(II)I

    move-result p0

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result p0

    return p0
.end method

.method static abs(I)I
    .locals 0

    if-gez p0, :cond_0

    rsub-int/lit8 p0, p0, 0x0

    :cond_0
    return p0
.end method

.method static celt_atan01(I)I
    .locals 2

    const/16 v0, 0x1348

    .line 764
    invoke-static {v0, p0}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_P15(II)I

    move-result v0

    const/16 v1, -0x2ea7

    invoke-static {v1, v0}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result v0

    invoke-static {p0, v0}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_P15(II)I

    move-result v0

    const/16 v1, -0x15

    invoke-static {v1, v0}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result v0

    invoke-static {p0, v0}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_P15(II)I

    move-result v0

    const/16 v1, 0x7fff

    invoke-static {v1, v0}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result v0

    invoke-static {p0, v0}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_P15(II)I

    move-result p0

    return p0
.end method

.method static celt_atan2p(II)I
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0xf

    const/16 v2, 0x7fff

    if-ge p0, p1, :cond_1

    .line 771
    invoke-static {p0}, Lio/github/jaredmdobson/concentus/Inlines;->EXTEND32(I)I

    move-result p0

    invoke-static {p0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->SHL32(II)I

    move-result p0

    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->celt_div(II)I

    move-result p0

    if-lt p0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, p0

    .line 775
    :goto_0
    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->EXTRACT16(I)S

    move-result p0

    invoke-static {p0}, Lio/github/jaredmdobson/concentus/Inlines;->celt_atan01(I)I

    move-result p0

    invoke-static {p0, v0}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result p0

    return p0

    .line 778
    :cond_1
    invoke-static {p1}, Lio/github/jaredmdobson/concentus/Inlines;->EXTEND32(I)I

    move-result p1

    invoke-static {p1, v1}, Lio/github/jaredmdobson/concentus/Inlines;->SHL32(II)I

    move-result p1

    invoke-static {p1, p0}, Lio/github/jaredmdobson/concentus/Inlines;->celt_div(II)I

    move-result p0

    if-lt p0, v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, p0

    .line 782
    :goto_1
    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->EXTRACT16(I)S

    move-result p0

    invoke-static {p0}, Lio/github/jaredmdobson/concentus/Inlines;->celt_atan01(I)I

    move-result p0

    invoke-static {p0, v0}, Lio/github/jaredmdobson/concentus/Inlines;->SHR16(II)I

    move-result p0

    rsub-int p0, p0, 0x6488

    return p0
.end method

.method static celt_cos_norm(I)I
    .locals 4

    const v0, 0x1ffff

    and-int/2addr p0, v0

    const/4 v1, 0x1

    .line 788
    invoke-static {v1}, Lio/github/jaredmdobson/concentus/Inlines;->EXTEND32(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->SHL32(II)I

    move-result v2

    if-le p0, v2, :cond_0

    .line 789
    invoke-static {v1}, Lio/github/jaredmdobson/concentus/Inlines;->EXTEND32(I)I

    move-result v2

    const/16 v3, 0x11

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->SHL32(II)I

    move-result v2

    invoke-static {v2, p0}, Lio/github/jaredmdobson/concentus/Inlines;->SUB32(II)I

    move-result p0

    :cond_0
    and-int/lit16 v2, p0, 0x7fff

    if-eqz v2, :cond_2

    .line 792
    invoke-static {v1}, Lio/github/jaredmdobson/concentus/Inlines;->EXTEND32(I)I

    move-result v0

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->SHL32(II)I

    move-result v0

    if-ge p0, v0, :cond_1

    .line 793
    invoke-static {p0}, Lio/github/jaredmdobson/concentus/Inlines;->EXTRACT16(I)S

    move-result p0

    invoke-static {p0}, Lio/github/jaredmdobson/concentus/Inlines;->_celt_cos_pi_2(I)I

    move-result p0

    return p0

    :cond_1
    const/high16 v0, 0x10000

    sub-int/2addr v0, p0

    .line 795
    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->EXTRACT16(I)S

    move-result p0

    invoke-static {p0}, Lio/github/jaredmdobson/concentus/Inlines;->_celt_cos_pi_2(I)I

    move-result p0

    invoke-static {p0}, Lio/github/jaredmdobson/concentus/Inlines;->NEG32(I)I

    move-result p0

    return p0

    :cond_2
    const v1, 0xffff

    and-int/2addr v1, p0

    if-eqz v1, :cond_3

    const/4 p0, 0x0

    return p0

    :cond_3
    and-int/2addr p0, v0

    if-eqz p0, :cond_4

    const/16 p0, -0x7fff

    return p0

    :cond_4
    const/16 p0, 0x7fff

    return p0
.end method

.method static celt_div(II)I
    .locals 0

    .line 526
    invoke-static {p1}, Lio/github/jaredmdobson/concentus/Inlines;->celt_rcp(I)I

    move-result p1

    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->MULT32_32_Q31(II)I

    move-result p0

    return p0
.end method

.method static celt_exp2(I)I
    .locals 3

    const/16 v0, 0xa

    .line 751
    invoke-static {p0, v0}, Lio/github/jaredmdobson/concentus/Inlines;->SHR16(II)I

    move-result v1

    const/16 v2, 0xe

    if-le v1, v2, :cond_0

    const/high16 p0, 0x7f000000

    return p0

    :cond_0
    const/16 v2, -0xf

    if-ge v1, v2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    int-to-short v2, v1

    .line 757
    invoke-static {v2, v0}, Lio/github/jaredmdobson/concentus/Inlines;->SHL16(SI)S

    move-result v0

    sub-int/2addr p0, v0

    int-to-short p0, p0

    invoke-static {p0}, Lio/github/jaredmdobson/concentus/Inlines;->celt_exp2_frac(I)I

    move-result p0

    int-to-short p0, p0

    .line 758
    invoke-static {p0}, Lio/github/jaredmdobson/concentus/Inlines;->EXTEND32(I)I

    move-result p0

    neg-int v0, v1

    add-int/lit8 v0, v0, -0x2

    invoke-static {p0, v0}, Lio/github/jaredmdobson/concentus/Inlines;->VSHR32(II)I

    move-result p0

    return p0
.end method

.method static celt_exp2_frac(I)I
    .locals 2

    const/4 v0, 0x4

    .line 741
    invoke-static {p0, v0}, Lio/github/jaredmdobson/concentus/Inlines;->SHL16(II)I

    move-result p0

    const/16 v0, 0x27dc

    .line 742
    invoke-static {v0, p0}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v0

    const/16 v1, 0x39e3

    invoke-static {v1, v0}, Lio/github/jaredmdobson/concentus/Inlines;->ADD16(II)I

    move-result v0

    invoke-static {p0, v0}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v0

    const/16 v1, 0x5914

    invoke-static {v1, v0}, Lio/github/jaredmdobson/concentus/Inlines;->ADD16(II)I

    move-result v0

    invoke-static {p0, v0}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result p0

    const/16 v0, 0x3fff

    invoke-static {v0, p0}, Lio/github/jaredmdobson/concentus/Inlines;->ADD16(II)I

    move-result p0

    return p0
.end method

.method static celt_ilog2(I)I
    .locals 3

    const/4 v0, 0x1

    if-lez p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 533
    :goto_0
    const-string v2, "celt_ilog2() only defined for strictly positive numbers"

    invoke-static {v1, v2}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(ZLjava/lang/String;)V

    int-to-long v1, p0

    .line 534
    invoke-static {v1, v2}, Lio/github/jaredmdobson/concentus/Inlines;->EC_ILOG(J)I

    move-result p0

    sub-int/2addr p0, v0

    return p0
.end method

.method static celt_log2(I)I
    .locals 4

    if-nez p0, :cond_0

    const/16 p0, -0x7fff

    return p0

    .line 733
    :cond_0
    invoke-static {p0}, Lio/github/jaredmdobson/concentus/Inlines;->celt_ilog2(I)I

    move-result v0

    add-int/lit8 v1, v0, -0xf

    .line 734
    invoke-static {p0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->VSHR32(II)I

    move-result p0

    const v1, 0xc000

    sub-int/2addr p0, v1

    .line 735
    sget-short v1, Lio/github/jaredmdobson/concentus/Inlines;->log2_C0:S

    const/16 v2, -0x579

    invoke-static {p0, v2}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v2

    const/16 v3, 0x9f1

    invoke-static {v3, v2}, Lio/github/jaredmdobson/concentus/Inlines;->ADD16(II)I

    move-result v2

    invoke-static {p0, v2}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v2

    const/16 v3, -0x1461

    invoke-static {v3, v2}, Lio/github/jaredmdobson/concentus/Inlines;->ADD16(II)I

    move-result v2

    invoke-static {p0, v2}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v2

    const/16 v3, 0x3d82

    invoke-static {v3, v2}, Lio/github/jaredmdobson/concentus/Inlines;->ADD16(II)I

    move-result v2

    invoke-static {p0, v2}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result p0

    invoke-static {v1, p0}, Lio/github/jaredmdobson/concentus/Inlines;->ADD16(II)I

    move-result p0

    add-int/lit8 v0, v0, -0xd

    int-to-short v0, v0

    const/16 v1, 0xa

    .line 736
    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->SHL16(SI)S

    move-result v0

    const/4 v1, 0x4

    invoke-static {p0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->SHR16(II)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method static celt_maxabs16([III)I
    .locals 4

    const/4 v0, 0x0

    move v2, p1

    const/4 v1, 0x0

    :goto_0
    add-int v3, p2, p1

    if-ge v2, v3, :cond_0

    .line 549
    aget v3, p0, v2

    invoke-static {v0, v3}, Lio/github/jaredmdobson/concentus/Inlines;->MAX32(II)I

    move-result v0

    .line 550
    aget v3, p0, v2

    invoke-static {v1, v3}, Lio/github/jaredmdobson/concentus/Inlines;->MIN32(II)I

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 552
    :cond_0
    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->EXTEND32(I)I

    move-result p0

    invoke-static {v1}, Lio/github/jaredmdobson/concentus/Inlines;->EXTEND32(I)I

    move-result p1

    neg-int p1, p1

    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->MAX32(II)I

    move-result p0

    return p0
.end method

.method static celt_maxabs32([III)I
    .locals 5

    const/4 v0, 0x0

    move v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    add-int v4, p1, p2

    if-ge v1, v4, :cond_0

    .line 560
    aget v4, p0, v1

    invoke-static {v2, v4}, Lio/github/jaredmdobson/concentus/Inlines;->MAX32(II)I

    move-result v2

    .line 561
    aget v4, p0, v1

    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->MIN32(II)I

    move-result v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sub-int/2addr v0, v3

    .line 563
    invoke-static {v2, v0}, Lio/github/jaredmdobson/concentus/Inlines;->MAX32(II)I

    move-result p0

    return p0
.end method

.method static celt_maxabs32([SII)S
    .locals 5

    const/4 v0, 0x0

    move v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    add-int v4, p1, p2

    if-ge v1, v4, :cond_0

    .line 571
    aget-short v4, p0, v1

    invoke-static {v2, v4}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(SS)S

    move-result v2

    .line 572
    aget-short v4, p0, v1

    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->MIN16(SS)S

    move-result v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sub-int/2addr v0, v3

    int-to-short p0, v0

    .line 574
    invoke-static {v2, p0}, Lio/github/jaredmdobson/concentus/Inlines;->MAX(SS)S

    move-result p0

    return p0
.end method

.method static celt_rcp(I)I
    .locals 6

    const/4 v0, 0x1

    if-lez p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 648
    :goto_0
    const-string v2, "celt_rcp() only defined for positive values"

    invoke-static {v1, v2}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(ZLjava/lang/String;)V

    .line 649
    invoke-static {p0}, Lio/github/jaredmdobson/concentus/Inlines;->celt_ilog2(I)I

    move-result v1

    add-int/lit8 v2, v1, -0xf

    .line 651
    invoke-static {p0, v2}, Lio/github/jaredmdobson/concentus/Inlines;->VSHR32(II)I

    move-result p0

    add-int/lit16 p0, p0, -0x8000

    const/16 v2, -0x3c3c

    .line 655
    invoke-static {v2, p0}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v2

    const/16 v3, 0x7878

    invoke-static {v3, v2}, Lio/github/jaredmdobson/concentus/Inlines;->ADD16(II)I

    move-result v2

    .line 660
    invoke-static {v2, p0}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v3

    const/16 v4, -0x8000

    invoke-static {v2, v4}, Lio/github/jaredmdobson/concentus/Inlines;->ADD16(II)I

    move-result v5

    invoke-static {v3, v5}, Lio/github/jaredmdobson/concentus/Inlines;->ADD16(II)I

    move-result v3

    .line 659
    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v3

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->SUB16(II)I

    move-result v2

    .line 664
    invoke-static {v2, p0}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result p0

    invoke-static {v2, v4}, Lio/github/jaredmdobson/concentus/Inlines;->ADD16(II)I

    move-result v3

    invoke-static {p0, v3}, Lio/github/jaredmdobson/concentus/Inlines;->ADD16(II)I

    move-result p0

    .line 663
    invoke-static {v2, p0}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result p0

    invoke-static {v0, p0}, Lio/github/jaredmdobson/concentus/Inlines;->ADD16(II)I

    move-result p0

    invoke-static {v2, p0}, Lio/github/jaredmdobson/concentus/Inlines;->SUB16(II)I

    move-result p0

    .line 668
    invoke-static {p0}, Lio/github/jaredmdobson/concentus/Inlines;->EXTEND32(I)I

    move-result p0

    add-int/lit8 v1, v1, -0x10

    invoke-static {p0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->VSHR32(II)I

    move-result p0

    return p0
.end method

.method static celt_rsqrt_norm(I)I
    .locals 3

    add-int/lit16 p0, p0, -0x8000

    const/16 v0, 0x1a39

    .line 685
    invoke-static {p0, v0}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v0

    const/16 v1, -0x34b2

    invoke-static {v1, v0}, Lio/github/jaredmdobson/concentus/Inlines;->ADD16(II)I

    move-result v0

    invoke-static {p0, v0}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v0

    const/16 v1, 0x5c05

    invoke-static {v1, v0}, Lio/github/jaredmdobson/concentus/Inlines;->ADD16(II)I

    move-result v0

    .line 690
    invoke-static {v0, v0}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v1

    .line 691
    invoke-static {v1, p0}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result p0

    invoke-static {p0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->ADD16(II)I

    move-result p0

    const/16 v1, 0x4000

    invoke-static {p0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->SUB16(II)I

    move-result p0

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lio/github/jaredmdobson/concentus/Inlines;->SHL16(II)I

    move-result p0

    const/16 v2, 0x3000

    .line 697
    invoke-static {p0, v2}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v2

    invoke-static {v2, v1}, Lio/github/jaredmdobson/concentus/Inlines;->SUB16(II)I

    move-result v1

    .line 696
    invoke-static {p0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result p0

    invoke-static {v0, p0}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result p0

    invoke-static {v0, p0}, Lio/github/jaredmdobson/concentus/Inlines;->ADD16(II)I

    move-result p0

    return p0
.end method

.method static celt_sqrt(I)I
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    if-lt p0, v1, :cond_1

    const/16 p0, 0x7fff

    return p0

    .line 632
    :cond_1
    invoke-static {p0}, Lio/github/jaredmdobson/concentus/Inlines;->celt_ilog2(I)I

    move-result v1

    const/4 v2, 0x1

    shr-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x7

    mul-int/lit8 v3, v1, 0x2

    .line 633
    invoke-static {p0, v3}, Lio/github/jaredmdobson/concentus/Inlines;->VSHR32(II)I

    move-result p0

    add-int/lit16 p0, p0, -0x8000

    int-to-short p0, p0

    .line 635
    sget-object v3, Lio/github/jaredmdobson/concentus/Inlines;->sqrt_C:[S

    aget-short v0, v3, v0

    aget-short v2, v3, v2

    const/4 v4, 0x2

    aget-short v4, v3, v4

    const/4 v5, 0x3

    aget-short v5, v3, v5

    const/4 v6, 0x4

    aget-short v3, v3, v6

    .line 636
    invoke-static {p0, v3}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(SS)S

    move-result v3

    invoke-static {v5, v3}, Lio/github/jaredmdobson/concentus/Inlines;->ADD16(SS)S

    move-result v3

    invoke-static {p0, v3}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(SS)S

    move-result v3

    .line 635
    invoke-static {v4, v3}, Lio/github/jaredmdobson/concentus/Inlines;->ADD16(SS)S

    move-result v3

    invoke-static {p0, v3}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(SS)S

    move-result v3

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->ADD16(SS)S

    move-result v2

    invoke-static {p0, v2}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(SS)S

    move-result p0

    invoke-static {v0, p0}, Lio/github/jaredmdobson/concentus/Inlines;->ADD16(SS)S

    move-result p0

    rsub-int/lit8 v0, v1, 0x7

    .line 637
    invoke-static {p0, v0}, Lio/github/jaredmdobson/concentus/Inlines;->VSHR32(II)I

    move-result p0

    return p0
.end method

.method static celt_sudiv(II)I
    .locals 1

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 520
    :goto_0
    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 521
    div-int/2addr p0, p1

    return p0
.end method

.method static celt_udiv(II)I
    .locals 1

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 515
    :goto_0
    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 516
    div-int/2addr p0, p1

    return p0
.end method

.method static celt_zlog2(I)I
    .locals 0

    if-gtz p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 541
    :cond_0
    invoke-static {p0}, Lio/github/jaredmdobson/concentus/Inlines;->celt_ilog2(I)I

    move-result p0

    return p0
.end method

.method static frac_div32(II)I
    .locals 3

    .line 703
    invoke-static {p1}, Lio/github/jaredmdobson/concentus/Inlines;->celt_ilog2(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1d

    .line 704
    invoke-static {p0, v0}, Lio/github/jaredmdobson/concentus/Inlines;->VSHR32(II)I

    move-result p0

    .line 705
    invoke-static {p1, v0}, Lio/github/jaredmdobson/concentus/Inlines;->VSHR32(II)I

    move-result p1

    const/16 v0, 0x10

    .line 707
    invoke-static {p1, v0}, Lio/github/jaredmdobson/concentus/Inlines;->ROUND16(II)I

    move-result v0

    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->celt_rcp(I)I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->ROUND16(II)I

    move-result v0

    .line 708
    invoke-static {v0, p0}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v1

    const/4 v2, 0x2

    .line 709
    invoke-static {p0, v2}, Lio/github/jaredmdobson/concentus/Inlines;->PSHR32(II)I

    move-result p0

    invoke-static {v1, p1}, Lio/github/jaredmdobson/concentus/Inlines;->MULT32_32_Q31(II)I

    move-result p1

    sub-int/2addr p0, p1

    .line 710
    invoke-static {v0, p0}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result p0

    invoke-static {p0, v2}, Lio/github/jaredmdobson/concentus/Inlines;->SHL32(II)I

    move-result p0

    invoke-static {v1, p0}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result p0

    const/high16 p1, 0x20000000

    if-lt p0, p1, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    const/high16 p1, -0x20000000

    if-gt p0, p1, :cond_1

    const p0, -0x7fffffff

    return p0

    .line 716
    :cond_1
    invoke-static {p0, v2}, Lio/github/jaredmdobson/concentus/Inlines;->SHL32(II)I

    move-result p0

    return p0
.end method

.method static isqrt32(J)I
    .locals 6

    .line 602
    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->EC_ILOG(J)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    shr-int/2addr v0, v1

    shl-int/2addr v1, v0

    const/4 v2, 0x0

    :cond_0
    shl-int/lit8 v3, v2, 0x1

    add-int/2addr v3, v1

    shl-int/2addr v3, v0

    int-to-long v3, v3

    cmp-long v5, v3, p0

    if-gtz v5, :cond_1

    add-int/2addr v2, v1

    sub-long/2addr p0, v3

    :cond_1
    shr-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    return v2
.end method

.method static silk_ADD16(SS)S
    .locals 0

    add-int/2addr p0, p1

    int-to-short p0, p0

    return p0
.end method

.method static silk_ADD32(II)I
    .locals 0

    add-int/2addr p0, p1

    return p0
.end method

.method static silk_ADD32_ovflw(II)I
    .locals 2

    int-to-long v0, p0

    int-to-long p0, p1

    add-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method static silk_ADD32_ovflw(JJ)I
    .locals 0

    add-long/2addr p0, p2

    long-to-int p1, p0

    return p1
.end method

.method static silk_ADD64(JJ)J
    .locals 2

    add-long v0, p0, p2

    .line 955
    invoke-static {p0, p1, p2, p3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD_SAT64(JJ)J

    move-result-wide p0

    cmp-long p2, v0, p0

    if-nez p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    return-wide v0
.end method

.method static silk_ADD_LSHIFT(III)I
    .locals 0

    shl-int/2addr p1, p2

    add-int/2addr p0, p1

    return p0
.end method

.method static silk_ADD_LSHIFT32(III)I
    .locals 0

    shl-int/2addr p1, p2

    add-int/2addr p0, p1

    return p0
.end method

.method static silk_ADD_POS_SAT16(SS)S
    .locals 0

    add-int/2addr p0, p1

    const p1, 0x8000

    and-int/2addr p1, p0

    if-eqz p1, :cond_0

    const/16 p0, 0x7fff

    :cond_0
    int-to-short p0, p0

    return p0
.end method

.method static silk_ADD_POS_SAT32(II)I
    .locals 0

    add-int/2addr p0, p1

    const/high16 p1, -0x80000000

    and-int/2addr p1, p0

    if-eqz p1, :cond_0

    const p0, 0x7fffffff

    :cond_0
    return p0
.end method

.method static silk_ADD_POS_SAT64(JJ)J
    .locals 3

    add-long/2addr p0, p2

    const-wide/high16 p2, -0x8000000000000000L

    and-long/2addr p2, p0

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_0

    const-wide p0, 0x7fffffffffffffffL

    :cond_0
    return-wide p0
.end method

.method static silk_ADD_POS_SAT8(BB)B
    .locals 0

    add-int/2addr p0, p1

    and-int/lit16 p1, p0, 0x80

    if-eqz p1, :cond_0

    const/16 p0, 0x7f

    :cond_0
    int-to-byte p0, p0

    return p0
.end method

.method static silk_ADD_RSHIFT(III)I
    .locals 0

    shr-int/2addr p1, p2

    add-int/2addr p0, p1

    return p0
.end method

.method static silk_ADD_RSHIFT32(III)I
    .locals 0

    shr-int/2addr p1, p2

    add-int/2addr p0, p1

    return p0
.end method

.method static silk_ADD_RSHIFT_uint(JJI)J
    .locals 0

    .line 1169
    invoke-static {p2, p3}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide p2

    shr-long/2addr p2, p4

    add-long/2addr p0, p2

    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static silk_ADD_SAT16(SS)S
    .locals 1

    .line 996
    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v0

    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SAT16(I)I

    move-result v0

    int-to-short v0, v0

    add-int/2addr p0, p1

    .line 997
    invoke-static {p0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SAT16(I)I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    return v0
.end method

.method static silk_ADD_SAT32(II)I
    .locals 8

    int-to-long v0, p0

    int-to-long v2, p1

    add-long/2addr v0, v2

    const-wide/32 v2, -0x80000000

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    const/high16 v6, -0x80000000

    cmp-long v7, v2, v4

    if-nez v7, :cond_0

    and-int v2, p0, p1

    and-int/2addr v2, v6

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_0
    or-int v2, p0, p1

    and-int/2addr v2, v6

    if-nez v2, :cond_1

    const v6, 0x7fffffff

    goto :goto_0

    :cond_1
    add-int v6, p0, p1

    .line 1005
    :goto_0
    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SAT32(J)I

    move-result p0

    if-ne v6, p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    invoke-static {p0}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    return v6
.end method

.method static silk_ADD_SAT64(JJ)J
    .locals 9

    add-long v0, p0, p2

    const-wide/high16 v2, -0x8000000000000000L

    and-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    and-long/2addr p0, p2

    and-long/2addr p0, v2

    cmp-long p2, p0, v6

    if-eqz p2, :cond_1

    return-wide v2

    :cond_0
    or-long/2addr p0, p2

    and-long/2addr p0, v2

    cmp-long p2, p0, v6

    if-nez p2, :cond_1

    const-wide p0, 0x7fffffffffffffffL

    return-wide p0

    :cond_1
    return-wide v0
.end method

.method static silk_CLZ32(I)I
    .locals 3

    const/16 v0, 0x20

    if-nez p0, :cond_0

    return v0

    :cond_0
    int-to-long v1, p0

    .line 1525
    invoke-static {v1, v2}, Lio/github/jaredmdobson/concentus/Inlines;->EC_ILOG(J)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method static silk_CLZ64(J)I
    .locals 3

    const/16 v0, 0x20

    .line 1514
    invoke-static {p0, p1, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT64(JI)J

    move-result-wide v1

    long-to-int v2, v1

    if-nez v2, :cond_0

    long-to-int p1, p0

    .line 1517
    invoke-static {p1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_CLZ32(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0

    .line 1520
    :cond_0
    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_CLZ32(I)I

    move-result p0

    return p0
.end method

.method static silk_CLZ_FRAC(ILio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;)V
    .locals 1

    .line 1535
    invoke-static {p0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_CLZ32(I)I

    move-result v0

    .line 1537
    iput v0, p1, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    rsub-int/lit8 p1, v0, 0x18

    .line 1538
    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ROR32(II)I

    move-result p0

    and-int/lit8 p0, p0, 0x7f

    iput p0, p2, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    return-void
.end method

.method static silk_DIV32(II)I
    .locals 0

    .line 940
    div-int/2addr p0, p1

    return p0
.end method

.method static silk_DIV32_16(II)I
    .locals 0

    .line 936
    div-int/2addr p0, p1

    return p0
.end method

.method static silk_DIV32_varQ(III)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1336
    :goto_0
    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    if-ltz p2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 1337
    :goto_1
    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 1340
    invoke-static {p0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_abs(I)I

    move-result v2

    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_CLZ32(I)I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    .line 1341
    invoke-static {p0, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result p0

    .line 1343
    invoke-static {p1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_abs(I)I

    move-result v3

    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_CLZ32(I)I

    move-result v3

    sub-int/2addr v3, v1

    .line 1344
    invoke-static {p1, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result p1

    const/16 v1, 0x10

    .line 1348
    invoke-static {p1, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v1

    const v4, 0x1fffffff

    invoke-static {v4, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_16(II)I

    move-result v1

    .line 1352
    invoke-static {p0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v4

    .line 1357
    invoke-static {p1, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMMUL(II)I

    move-result p1

    const/4 v5, 0x3

    invoke-static {p1, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT_ovflw(II)I

    move-result p1

    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB32_ovflw(II)I

    move-result p0

    .line 1361
    invoke-static {v4, p0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result p0

    add-int/lit8 v2, v2, 0x1c

    sub-int/2addr v2, v3

    sub-int/2addr v2, p2

    if-gez v2, :cond_2

    neg-int p1, v2

    .line 1367
    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT_SAT32(II)I

    move-result p0

    return p0

    :cond_2
    const/16 p1, 0x20

    if-ge v2, p1, :cond_3

    .line 1369
    invoke-static {p0, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result p0

    return p0

    :cond_3
    return v0
.end method

.method static silk_INVERSE32_varQ(II)I
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1386
    :goto_0
    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    if-lez p1, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 1387
    :goto_1
    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 1390
    invoke-static {p0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_abs(I)I

    move-result v2

    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_CLZ32(I)I

    move-result v2

    sub-int/2addr v2, v0

    .line 1391
    invoke-static {p0, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result p0

    const/16 v0, 0x10

    .line 1395
    invoke-static {p0, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v3

    int-to-short v3, v3

    const v4, 0x1fffffff

    invoke-static {v4, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_16(II)I

    move-result v3

    .line 1399
    invoke-static {v3, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v0

    const/high16 v4, 0x20000000

    .line 1403
    invoke-static {p0, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result p0

    sub-int/2addr v4, p0

    const/4 p0, 0x3

    invoke-static {v4, p0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result p0

    .line 1407
    invoke-static {v0, p0, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWW(III)I

    move-result p0

    rsub-int/lit8 v0, v2, 0x3d

    sub-int/2addr v0, p1

    if-gtz v0, :cond_2

    neg-int p1, v0

    .line 1413
    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT_SAT32(II)I

    move-result p0

    return p0

    :cond_2
    const/16 p1, 0x20

    if-ge v0, p1, :cond_3

    .line 1415
    invoke-static {p0, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method static silk_LIMIT(FFF)F
    .locals 1

    cmpl-float v0, p1, p2

    if-lez v0, :cond_1

    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    goto :goto_1

    :cond_0
    cmpg-float p1, p0, p2

    if-gez p1, :cond_3

    goto :goto_0

    :cond_1
    cmpl-float v0, p0, p2

    if-lez v0, :cond_2

    :goto_0
    return p2

    :cond_2
    cmpg-float p2, p0, p1

    if-gez p2, :cond_3

    :goto_1
    return p1

    :cond_3
    return p0
.end method

.method static silk_LIMIT(III)I
    .locals 0

    .line 1263
    invoke-static {p0, p1, p2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LIMIT_32(III)I

    move-result p0

    return p0
.end method

.method static silk_LIMIT_16(SSS)S
    .locals 0

    if-le p1, p2, :cond_1

    if-le p0, p1, :cond_0

    goto :goto_1

    :cond_0
    if-ge p0, p2, :cond_3

    goto :goto_0

    :cond_1
    if-le p0, p2, :cond_2

    :goto_0
    return p2

    :cond_2
    if-ge p0, p1, :cond_3

    :goto_1
    return p1

    :cond_3
    return p0
.end method

.method static silk_LIMIT_32(III)I
    .locals 0

    if-le p1, p2, :cond_1

    if-le p0, p1, :cond_0

    goto :goto_1

    :cond_0
    if-ge p0, p2, :cond_3

    goto :goto_0

    :cond_1
    if-le p0, p2, :cond_2

    :goto_0
    return p2

    :cond_2
    if-ge p0, p1, :cond_3

    :goto_1
    return p1

    :cond_3
    return p0
.end method

.method static silk_LIMIT_int(III)I
    .locals 0

    .line 1267
    invoke-static {p0, p1, p2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LIMIT_32(III)I

    move-result p0

    return p0
.end method

.method static silk_LSHIFT(II)I
    .locals 0

    shl-int/2addr p0, p1

    return p0
.end method

.method static silk_LSHIFT16(SI)S
    .locals 0

    shl-int/2addr p0, p1

    int-to-short p0, p0

    return p0
.end method

.method static silk_LSHIFT32(II)I
    .locals 0

    shl-int/2addr p0, p1

    return p0
.end method

.method static silk_LSHIFT64(JI)J
    .locals 0

    shl-long/2addr p0, p2

    return-wide p0
.end method

.method static silk_LSHIFT8(BI)B
    .locals 0

    shl-int/2addr p0, p1

    int-to-byte p0, p0

    return p0
.end method

.method static silk_LSHIFT_SAT32(II)I
    .locals 2

    const/high16 v0, -0x80000000

    .line 1117
    invoke-static {v0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT32(II)I

    move-result v0

    const v1, 0x7fffffff

    invoke-static {v1, p1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT32(II)I

    move-result v1

    invoke-static {p0, v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LIMIT(III)I

    move-result p0

    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result p0

    return p0
.end method

.method static silk_LSHIFT_ovflw(II)I
    .locals 0

    shl-int/2addr p0, p1

    return p0
.end method

.method static silk_MLA(III)I
    .locals 7

    mul-int v0, p1, p2

    .line 849
    invoke-static {p0, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v0

    int-to-long v1, v0

    int-to-long v3, p0

    int-to-long p0, p1

    int-to-long v5, p2

    mul-long p0, p0, v5

    add-long/2addr v3, p0

    cmp-long p0, v1, v3

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 850
    :goto_0
    invoke-static {p0}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    return v0
.end method

.method static silk_MLA_ovflw(III)I
    .locals 4

    int-to-long v0, p0

    int-to-long p0, p1

    int-to-long v2, p2

    mul-long p0, p0, v2

    .line 910
    invoke-static {v0, v1, p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32_ovflw(JJ)I

    move-result p0

    return p0
.end method

.method static silk_MUL(II)I
    .locals 0

    mul-int p0, p0, p1

    return p0
.end method

.method static silk_RAND(I)I
    .locals 2

    const v0, 0x3619636b

    const v1, 0xbb38435

    .line 1306
    invoke-static {v0, p0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_MLA_ovflw(III)I

    move-result p0

    return p0
.end method

.method static silk_ROR32(II)I
    .locals 1

    rsub-int/lit8 v0, p1, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    if-gez p1, :cond_1

    shl-int p1, p0, v0

    rsub-int/lit8 v0, v0, 0x20

    shr-int/2addr p0, v0

    or-int/2addr p0, p1

    return p0

    :cond_1
    rsub-int/lit8 v0, p1, 0x20

    shl-int v0, p0, v0

    shr-int/2addr p0, p1

    or-int/2addr p0, v0

    return p0
.end method

.method static silk_RSHIFT(II)I
    .locals 0

    shr-int/2addr p0, p1

    return p0
.end method

.method static silk_RSHIFT16(SI)S
    .locals 0

    shr-int/2addr p0, p1

    int-to-short p0, p0

    return p0
.end method

.method static silk_RSHIFT32(II)I
    .locals 0

    shr-int/2addr p0, p1

    return p0
.end method

.method static silk_RSHIFT64(JI)J
    .locals 0

    shr-long/2addr p0, p2

    return-wide p0
.end method

.method static silk_RSHIFT8(BI)B
    .locals 0

    shr-int/2addr p0, p1

    int-to-byte p0, p0

    return p0
.end method

.method static silk_RSHIFT_ROUND(II)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    shr-int/lit8 p1, p0, 0x1

    and-int/2addr p0, v0

    add-int/2addr p1, p0

    return p1

    :cond_0
    sub-int/2addr p1, v0

    shr-int/2addr p0, p1

    add-int/2addr p0, v0

    shr-int/2addr p0, v0

    return p0
.end method

.method static silk_RSHIFT_ROUND64(JI)J
    .locals 4

    const-wide/16 v0, 0x1

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    shr-long v2, p0, v2

    and-long/2addr p0, v0

    add-long/2addr v2, p0

    return-wide v2

    :cond_0
    sub-int/2addr p2, v2

    shr-long/2addr p0, p2

    add-long/2addr p0, v0

    shr-long/2addr p0, v2

    return-wide p0
.end method

.method static silk_RSHIFT_uint(JI)J
    .locals 0

    .line 1141
    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide p0

    shr-long/2addr p0, p2

    return-wide p0
.end method

.method static silk_SAT16(I)I
    .locals 1

    const/16 v0, 0x7fff

    if-le p0, v0, :cond_0

    return v0

    :cond_0
    const/16 v0, -0x8000

    if-ge p0, v0, :cond_1

    return v0

    :cond_1
    return p0
.end method

.method static silk_SAT32(J)I
    .locals 3

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    const-wide/32 v0, -0x80000000

    cmp-long v2, p0, v0

    if-gez v2, :cond_1

    const/high16 p0, -0x80000000

    return p0

    :cond_1
    long-to-int p1, p0

    return p1
.end method

.method static silk_SAT8(I)I
    .locals 1

    const/16 v0, 0x7f

    if-le p0, v0, :cond_0

    return v0

    :cond_0
    const/16 v0, -0x80

    if-ge p0, v0, :cond_1

    return v0

    :cond_1
    return p0
.end method

.method static silk_SMLABB(III)I
    .locals 0

    int-to-short p1, p1

    int-to-short p2, p2

    mul-int p1, p1, p2

    add-int/2addr p0, p1

    return p0
.end method

.method static silk_SMLABB_ovflw(III)I
    .locals 0

    int-to-short p1, p1

    int-to-short p2, p2

    mul-int p1, p1, p2

    .line 914
    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32_ovflw(II)I

    move-result p0

    return p0
.end method

.method static silk_SMLABT(III)I
    .locals 0

    int-to-short p1, p1

    shr-int/lit8 p2, p2, 0x10

    mul-int p1, p1, p2

    add-int/2addr p0, p1

    return p0
.end method

.method static silk_SMLAL(JII)J
    .locals 2

    int-to-long v0, p2

    int-to-long p2, p3

    mul-long v0, v0, p2

    .line 1451
    invoke-static {p0, p1, v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD64(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static silk_SMLALBB(JSS)J
    .locals 0

    mul-int p2, p2, p3

    int-to-long p2, p2

    .line 869
    invoke-static {p0, p1, p2, p3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD64(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static silk_SMLATT(III)I
    .locals 0

    shr-int/lit8 p1, p1, 0x10

    shr-int/lit8 p2, p2, 0x10

    mul-int p1, p1, p2

    .line 865
    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result p0

    return p0
.end method

.method static silk_SMLAWB(III)I
    .locals 0

    .line 1430
    invoke-static {p1, p2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method static silk_SMLAWT(III)I
    .locals 1

    shr-int/lit8 v0, p1, 0x10

    shr-int/lit8 p2, p2, 0x10

    mul-int v0, v0, p2

    add-int/2addr p0, v0

    const v0, 0xffff

    and-int/2addr p1, v0

    mul-int p1, p1, p2

    shr-int/lit8 p1, p1, 0x10

    add-int/2addr p0, p1

    return p0
.end method

.method static silk_SMLAWW(III)I
    .locals 1

    .line 1507
    invoke-static {p0, p1, p2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result p0

    const/16 v0, 0x10

    invoke-static {p2, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result p2

    invoke-static {p0, p1, p2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_MLA(III)I

    move-result p0

    return p0
.end method

.method static silk_SMMUL(II)I
    .locals 1

    .line 1316
    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULL(II)J

    move-result-wide p0

    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT64(JI)J

    move-result-wide p0

    long-to-int p1, p0

    return p1
.end method

.method static silk_SMULBB(II)I
    .locals 0

    int-to-short p0, p0

    int-to-short p1, p1

    mul-int p0, p0, p1

    return p0
.end method

.method static silk_SMULBT(II)I
    .locals 0

    int-to-short p0, p0

    shr-int/lit8 p1, p1, 0x10

    mul-int p0, p0, p1

    return p0
.end method

.method static silk_SMULL(II)J
    .locals 2

    int-to-long v0, p0

    int-to-long p0, p1

    mul-long v0, v0, p0

    return-wide v0
.end method

.method static silk_SMULTT(II)I
    .locals 0

    shr-int/lit8 p0, p0, 0x10

    shr-int/lit8 p1, p1, 0x10

    mul-int p0, p0, p1

    return p0
.end method

.method static silk_SMULWB(II)I
    .locals 2

    int-to-long v0, p0

    int-to-short p0, p1

    int-to-long p0, p0

    mul-long v0, v0, p0

    const/16 p0, 0x10

    shr-long p0, v0, p0

    long-to-int p1, p0

    return p1
.end method

.method static silk_SMULWT(II)I
    .locals 2

    shr-int/lit8 v0, p0, 0x10

    shr-int/lit8 p1, p1, 0x10

    mul-int v0, v0, p1

    const v1, 0xffff

    and-int/2addr p0, v1

    mul-int p0, p0, p1

    shr-int/lit8 p0, p0, 0x10

    add-int/2addr v0, p0

    return v0
.end method

.method static silk_SMULWW(II)I
    .locals 2

    .line 1499
    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v0

    const/16 v1, 0x10

    invoke-static {p1, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result p1

    invoke-static {v0, p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_MLA(III)I

    move-result p0

    return p0
.end method

.method static silk_SQRT_APPROX(I)I
    .locals 3

    const/4 v0, 0x0

    if-gtz p0, :cond_0

    return v0

    .line 1557
    :cond_0
    new-instance v1, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v1, v0}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 1558
    new-instance v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v2, v0}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 1559
    invoke-static {p0, v1, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_CLZ_FRAC(ILio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;)V

    .line 1560
    iget p0, v1, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 1561
    iget v0, v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_1

    const v1, 0x8000

    goto :goto_0

    :cond_1
    const v1, 0xb486

    :goto_0
    const/4 v2, 0x1

    .line 1570
    invoke-static {p0, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result p0

    shr-int p0, v1, p0

    const/16 v1, 0xd5

    .line 1573
    invoke-static {v1, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v0

    invoke-static {p0, p0, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result p0

    return p0
.end method

.method static silk_SUB16(SS)S
    .locals 1

    sub-int v0, p0, p1

    int-to-short v0, v0

    .line 961
    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB_SAT16(SS)S

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    return v0
.end method

.method static silk_SUB32(II)I
    .locals 1

    sub-int v0, p0, p1

    .line 967
    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB_SAT32(II)I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    return v0
.end method

.method static silk_SUB32_ovflw(II)I
    .locals 2

    int-to-long v0, p0

    int-to-long p0, p1

    sub-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method static silk_SUB64(JJ)J
    .locals 2

    sub-long v0, p0, p2

    .line 973
    invoke-static {p0, p1, p2, p3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB_SAT64(JJ)J

    move-result-wide p0

    cmp-long p2, v0, p0

    if-nez p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    return-wide v0
.end method

.method static silk_SUB_LSHIFT32(III)I
    .locals 0

    shl-int/2addr p1, p2

    sub-int/2addr p0, p1

    return p0
.end method

.method static silk_SUB_RSHIFT32(III)I
    .locals 0

    shr-int/2addr p1, p2

    sub-int/2addr p0, p1

    return p0
.end method

.method static silk_SUB_SAT16(SS)S
    .locals 1

    .line 1018
    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB32(II)I

    move-result v0

    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SAT16(I)I

    move-result v0

    int-to-short v0, v0

    sub-int/2addr p0, p1

    .line 1019
    invoke-static {p0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SAT16(I)I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    return v0
.end method

.method static silk_SUB_SAT32(II)I
    .locals 8

    int-to-long v0, p0

    int-to-long v2, p1

    sub-long/2addr v0, v2

    const-wide/32 v2, -0x80000000

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    const/high16 v6, -0x80000000

    cmp-long v7, v2, v4

    if-nez v7, :cond_0

    xor-int v2, p1, v6

    and-int/2addr v2, p0

    and-int/2addr v2, v6

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_0
    xor-int v2, p0, v6

    and-int/2addr v2, p1

    and-int/2addr v2, v6

    if-eqz v2, :cond_1

    const v6, 0x7fffffff

    goto :goto_0

    :cond_1
    sub-int v6, p0, p1

    .line 1027
    :goto_0
    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SAT32(J)I

    move-result p0

    if-ne v6, p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    invoke-static {p0}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    return v6
.end method

.method static silk_SUB_SAT64(JJ)J
    .locals 9

    sub-long v0, p0, p2

    const-wide/high16 v2, -0x8000000000000000L

    and-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    xor-long/2addr p2, v2

    and-long/2addr p0, p2

    and-long/2addr p0, v2

    cmp-long p2, p0, v6

    if-eqz p2, :cond_1

    return-wide v2

    :cond_0
    xor-long/2addr p0, v2

    and-long/2addr p0, p2

    and-long/2addr p0, v2

    cmp-long p2, p0, v6

    if-eqz p2, :cond_1

    const-wide p0, 0x7fffffffffffffffL

    return-wide p0

    :cond_1
    return-wide v0
.end method

.method static silk_abs(I)I
    .locals 0

    if-lez p0, :cond_0

    return p0

    :cond_0
    neg-int p0, p0

    return p0
.end method

.method static silk_abs_int16(I)I
    .locals 1

    shr-int/lit8 v0, p0, 0xf

    xor-int/2addr p0, v0

    sub-int/2addr p0, v0

    return p0
.end method

.method static silk_abs_int32(I)I
    .locals 1

    shr-int/lit8 v0, p0, 0x1f

    xor-int/2addr p0, v0

    sub-int/2addr p0, v0

    return p0
.end method

.method static silk_abs_int64(J)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    return-wide p0

    :cond_0
    neg-long p0, p0

    return-wide p0
.end method

.method static silk_inner_prod([SI[SII)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v2, p1, v0

    .line 1710
    aget-short v2, p0, v2

    add-int v3, p3, v0

    aget-short v3, p2, v3

    invoke-static {v1, v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(ISS)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method static silk_inner_prod16_aligned_64([SI[SII)J
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p4, :cond_0

    add-int v3, p1, v2

    .line 1738
    aget-short v3, p0, v3

    add-int v4, p3, v2

    aget-short v4, p2, v4

    invoke-static {v0, v1, v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLALBB(JSS)J

    move-result-wide v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method static silk_inner_prod_aligned_scale([S[SII)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 1666
    aget-short v2, p0, v0

    aget-short v3, p1, v0

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v2

    invoke-static {v1, v2, p2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD_RSHIFT32(III)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method static silk_inner_prod_self([SII)I
    .locals 3

    const/4 v0, 0x0

    move v1, p1

    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_0

    .line 1723
    aget-short v2, p0, v1

    invoke-static {v0, v2, v2}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(ISS)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method static silk_interpolate([S[S[SII)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1643
    :goto_0
    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/4 v2, 0x4

    if-gt p3, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 1644
    :goto_1
    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    :goto_2
    if-ge v1, p4, :cond_2

    .line 1647
    aget-short v0, p1, v1

    aget-short v2, p2, v1

    sub-int/2addr v2, v0

    invoke-static {v2, p3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v2

    const/4 v3, 0x2

    invoke-static {v0, v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD_RSHIFT(III)I

    move-result v0

    int-to-short v0, v0

    aput-short v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method static silk_lin2log(I)I
    .locals 3

    .line 1589
    new-instance v0, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 1590
    new-instance v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v2, v1}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 1592
    invoke-static {p0, v0, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_CLZ_FRAC(ILio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;)V

    .line 1595
    iget p0, v0, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    rsub-int/lit8 p0, p0, 0x1f

    const/4 v0, 0x7

    invoke-static {p0, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result p0

    iget v0, v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    iget v1, v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    iget v2, v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    rsub-int v2, v2, 0x80

    invoke-static {v1, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_MUL(II)I

    move-result v1

    const/16 v2, 0xb3

    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v0

    add-int/2addr p0, v0

    return p0
.end method

.method static silk_log2lin(I)I
    .locals 5

    if-gez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v0, 0xf7f

    if-lt p0, v0, :cond_1

    const p0, 0x7fffffff

    return p0

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x7

    .line 1613
    invoke-static {p0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v2

    invoke-static {v0, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v0

    and-int/lit8 v2, p0, 0x7f

    const/16 v3, 0x800

    const/16 v4, -0xae

    if-ge p0, v3, :cond_2

    rsub-int p0, v2, 0x80

    .line 1618
    invoke-static {v2, p0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result p0

    invoke-static {v2, p0, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result p0

    invoke-static {v0, p0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_MUL(II)I

    move-result p0

    invoke-static {v0, p0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD_RSHIFT32(III)I

    move-result p0

    return p0

    .line 1621
    :cond_2
    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result p0

    rsub-int v1, v2, 0x80

    invoke-static {v2, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v1

    invoke-static {v2, v1, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v1

    invoke-static {v0, p0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_MLA(III)I

    move-result p0

    return p0
.end method

.method static silk_max(FF)F
    .locals 1

    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    return p0

    :cond_0
    return p1
.end method

.method static silk_max(II)I
    .locals 0

    if-le p0, p1, :cond_0

    return p0

    :cond_0
    return p1
.end method

.method static silk_max_16(SS)S
    .locals 0

    if-le p0, p1, :cond_0

    return p0

    :cond_0
    return p1
.end method

.method static silk_max_32(II)I
    .locals 0

    if-le p0, p1, :cond_0

    return p0

    :cond_0
    return p1
.end method

.method static silk_max_64(JJ)J
    .locals 1

    cmp-long v0, p0, p2

    if-lez v0, :cond_0

    return-wide p0

    :cond_0
    return-wide p2
.end method

.method static silk_max_int(II)I
    .locals 0

    if-le p0, p1, :cond_0

    return p0

    :cond_0
    return p1
.end method

.method static silk_min(FF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    return p0

    :cond_0
    return p1
.end method

.method static silk_min(II)I
    .locals 0

    if-ge p0, p1, :cond_0

    return p0

    :cond_0
    return p1
.end method

.method static silk_min_16(SS)S
    .locals 0

    if-ge p0, p1, :cond_0

    return p0

    :cond_0
    return p1
.end method

.method static silk_min_32(II)I
    .locals 0

    if-ge p0, p1, :cond_0

    return p0

    :cond_0
    return p1
.end method

.method static silk_min_64(JJ)J
    .locals 1

    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    return-wide p0

    :cond_0
    return-wide p2
.end method

.method static silk_min_int(II)I
    .locals 0

    if-ge p0, p1, :cond_0

    return p0

    :cond_0
    return p1
.end method

.method static silk_scale_copy_vector16([SI[SIII)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_0

    add-int v1, p1, v0

    add-int v2, p3, v0

    .line 1682
    aget-short v2, p2, v2

    invoke-static {p4, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v2

    int-to-short v2, v2

    aput-short v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static silk_scale_vector32_Q26_lshift_18([IIII)V
    .locals 4

    move v0, p1

    :goto_0
    add-int v1, p1, p3

    if-ge v0, v1, :cond_0

    .line 1694
    aget v1, p0, v0

    invoke-static {v1, p2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULL(II)J

    move-result-wide v1

    const/16 v3, 0x8

    invoke-static {v1, v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT64(JI)J

    move-result-wide v1

    long-to-int v2, v1

    aput v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static silk_sign(I)J
    .locals 2

    if-lez p0, :cond_0

    const-wide/16 v0, 0x1

    return-wide v0

    :cond_0
    if-gez p0, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    int-to-long v0, p0

    return-wide v0
.end method
