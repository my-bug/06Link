.class Lio/github/jaredmdobson/concentus/CodeSigns;
.super Ljava/lang/Object;
.source "CodeSigns.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static silk_dec_map(I)I
    .locals 1

    const/4 v0, 0x1

    .line 41
    invoke-static {p0, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result p0

    sub-int/2addr p0, v0

    return p0
.end method

.method static silk_decode_signs(Lio/github/jaredmdobson/concentus/EntropyCoder;[SIII[I)V
    .locals 9

    const/4 v0, 0x2

    .line 103
    new-array v0, v0, [S

    .line 105
    sget-object v1, Lio/github/jaredmdobson/concentus/SilkTables;->silk_sign_iCDF:[S

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 108
    aput-short v3, v0, v2

    const/4 v4, 0x7

    .line 110
    invoke-static {p4, p3, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD_LSHIFT(III)I

    move-result p3

    invoke-static {v4, p3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result p3

    const/16 p4, 0x8

    add-int/2addr p2, p4

    const/4 v2, 0x4

    .line 112
    invoke-static {p2, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result p2

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, p2, :cond_2

    .line 115
    aget v5, p5, v2

    if-lez v5, :cond_1

    and-int/lit8 v5, v5, 0x1f

    const/4 v6, 0x6

    .line 118
    invoke-static {v5, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_min(II)I

    move-result v5

    add-int/2addr v5, p3

    aget-short v5, v1, v5

    aput-short v5, v0, v3

    const/4 v5, 0x0

    :goto_1
    const/16 v6, 0x10

    if-ge v5, v6, :cond_1

    add-int v6, v4, v5

    .line 120
    aget-short v7, p1, v6

    if-lez v7, :cond_0

    .line 122
    invoke-virtual {p0, v0, p4}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_icdf([SI)I

    move-result v8

    invoke-static {v8}, Lio/github/jaredmdobson/concentus/CodeSigns;->silk_dec_map(I)I

    move-result v8

    int-to-short v8, v8

    mul-int v7, v7, v8

    int-to-short v7, v7

    aput-short v7, p1, v6

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x10

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static silk_enc_map(I)I
    .locals 1

    const/16 v0, 0xf

    .line 37
    invoke-static {p0, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static silk_encode_signs(Lio/github/jaredmdobson/concentus/EntropyCoder;[BIII[I)V
    .locals 7

    const/4 v0, 0x2

    .line 61
    new-array v0, v0, [S

    .line 63
    sget-object v1, Lio/github/jaredmdobson/concentus/SilkTables;->silk_sign_iCDF:[S

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 66
    aput-short v3, v0, v2

    const/4 v4, 0x7

    .line 68
    invoke-static {p4, p3, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD_LSHIFT(III)I

    move-result p3

    invoke-static {v4, p3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result p3

    const/16 p4, 0x8

    add-int/2addr p2, p4

    const/4 v2, 0x4

    .line 70
    invoke-static {p2, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result p2

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, p2, :cond_2

    .line 72
    aget v5, p5, v2

    if-lez v5, :cond_1

    and-int/lit8 v5, v5, 0x1f

    const/4 v6, 0x6

    .line 74
    invoke-static {v5, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_min(II)I

    move-result v5

    add-int/2addr v5, p3

    aget-short v5, v1, v5

    aput-short v5, v0, v3

    move v5, v4

    :goto_1
    add-int/lit8 v6, v4, 0x10

    if-ge v5, v6, :cond_1

    .line 76
    aget-byte v6, p1, v5

    if-eqz v6, :cond_0

    .line 77
    invoke-static {v6}, Lio/github/jaredmdobson/concentus/CodeSigns;->silk_enc_map(I)I

    move-result v6

    invoke-virtual {p0, v6, v0, p4}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_icdf(I[SI)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x10

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
