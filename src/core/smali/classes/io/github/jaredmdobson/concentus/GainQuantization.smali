.class Lio/github/jaredmdobson/concentus/GainQuantization;
.super Ljava/lang/Object;
.source "GainQuantization.java"


# static fields
.field private static final INV_SCALE_Q16:I = 0x1d1c71

.field private static final OFFSET:I = 0x82a

.field private static final SCALE_Q16:I = 0x8cb


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static silk_gains_ID([BI)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 156
    aget-byte v2, p0, v0

    const/16 v3, 0x8

    invoke-static {v2, v1, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD_LSHIFT32(III)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method static silk_gains_dequant([I[BLio/github/jaredmdobson/concentus/BoxedValueByte;II)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_2

    if-nez v1, :cond_0

    if-nez p3, :cond_0

    .line 122
    aget-byte v2, p1, v1

    iget-byte v3, p2, Lio/github/jaredmdobson/concentus/BoxedValueByte;->Val:B

    add-int/lit8 v3, v3, -0x10

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_max_int(II)I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, p2, Lio/github/jaredmdobson/concentus/BoxedValueByte;->Val:B

    goto :goto_1

    .line 125
    :cond_0
    aget-byte v2, p1, v1

    add-int/lit8 v2, v2, -0x4

    .line 128
    iget-byte v3, p2, Lio/github/jaredmdobson/concentus/BoxedValueByte;->Val:B

    add-int/lit8 v3, v3, 0x8

    if-le v2, v3, :cond_1

    .line 130
    iget-byte v4, p2, Lio/github/jaredmdobson/concentus/BoxedValueByte;->Val:B

    const/4 v5, 0x1

    invoke-static {v2, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v2

    sub-int/2addr v2, v3

    int-to-byte v2, v2

    add-int/2addr v4, v2

    int-to-byte v2, v4

    iput-byte v2, p2, Lio/github/jaredmdobson/concentus/BoxedValueByte;->Val:B

    goto :goto_1

    .line 132
    :cond_1
    iget-byte v3, p2, Lio/github/jaredmdobson/concentus/BoxedValueByte;->Val:B

    int-to-byte v2, v2

    add-int/2addr v3, v2

    int-to-byte v2, v3

    iput-byte v2, p2, Lio/github/jaredmdobson/concentus/BoxedValueByte;->Val:B

    .line 136
    :goto_1
    iget-byte v2, p2, Lio/github/jaredmdobson/concentus/BoxedValueByte;->Val:B

    const/16 v3, 0x3f

    invoke-static {v2, v0, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LIMIT_int(III)I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, p2, Lio/github/jaredmdobson/concentus/BoxedValueByte;->Val:B

    const v2, 0x1d1c71

    .line 139
    iget-byte v3, p2, Lio/github/jaredmdobson/concentus/BoxedValueByte;->Val:B

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v2

    add-int/lit16 v2, v2, 0x82a

    const/16 v3, 0xf7f

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_min_32(II)I

    move-result v2

    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_log2lin(I)I

    move-result v2

    aput v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method static silk_gains_quant([B[ILio/github/jaredmdobson/concentus/BoxedValueByte;II)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_4

    .line 59
    aget v2, p1, v1

    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_lin2log(I)I

    move-result v2

    add-int/lit16 v2, v2, -0x82a

    const/16 v3, 0x8cb

    invoke-static {v3, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 62
    iget-byte v3, p2, Lio/github/jaredmdobson/concentus/BoxedValueByte;->Val:B

    const/4 v4, 0x1

    if-ge v2, v3, :cond_0

    .line 63
    aget-byte v2, p0, v1

    add-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 66
    :cond_0
    aget-byte v2, p0, v1

    const/16 v3, 0x3f

    invoke-static {v2, v0, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LIMIT_int(III)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    const/4 v5, -0x4

    if-nez v1, :cond_1

    if-nez p3, :cond_1

    .line 71
    iget-byte v4, p2, Lio/github/jaredmdobson/concentus/BoxedValueByte;->Val:B

    add-int/2addr v4, v5

    invoke-static {v2, v4, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LIMIT_int(III)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 72
    iput-byte v2, p2, Lio/github/jaredmdobson/concentus/BoxedValueByte;->Val:B

    goto :goto_2

    .line 75
    :cond_1
    iget-byte v3, p2, Lio/github/jaredmdobson/concentus/BoxedValueByte;->Val:B

    sub-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 78
    iget-byte v2, p2, Lio/github/jaredmdobson/concentus/BoxedValueByte;->Val:B

    add-int/lit8 v2, v2, 0x8

    .line 79
    aget-byte v3, p0, v1

    if-le v3, v2, :cond_2

    sub-int/2addr v3, v2

    add-int/2addr v3, v4

    .line 80
    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v3

    add-int/2addr v3, v2

    int-to-byte v3, v3

    aput-byte v3, p0, v1

    .line 83
    :cond_2
    aget-byte v3, p0, v1

    const/16 v6, 0x24

    invoke-static {v3, v5, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LIMIT_int(III)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, p0, v1

    if-le v3, v2, :cond_3

    .line 87
    iget-byte v3, p2, Lio/github/jaredmdobson/concentus/BoxedValueByte;->Val:B

    aget-byte v6, p0, v1

    invoke-static {v6, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v4

    sub-int/2addr v4, v2

    int-to-byte v2, v4

    add-int/2addr v3, v2

    int-to-byte v2, v3

    iput-byte v2, p2, Lio/github/jaredmdobson/concentus/BoxedValueByte;->Val:B

    goto :goto_1

    .line 89
    :cond_3
    iget-byte v2, p2, Lio/github/jaredmdobson/concentus/BoxedValueByte;->Val:B

    aget-byte v3, p0, v1

    add-int/2addr v2, v3

    int-to-byte v2, v2

    iput-byte v2, p2, Lio/github/jaredmdobson/concentus/BoxedValueByte;->Val:B

    .line 93
    :goto_1
    aget-byte v2, p0, v1

    sub-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    :goto_2
    const v2, 0x1d1c71

    .line 98
    iget-byte v3, p2, Lio/github/jaredmdobson/concentus/BoxedValueByte;->Val:B

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v2

    add-int/lit16 v2, v2, 0x82a

    const/16 v3, 0xf7f

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_min_32(II)I

    move-result v2

    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_log2lin(I)I

    move-result v2

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method
