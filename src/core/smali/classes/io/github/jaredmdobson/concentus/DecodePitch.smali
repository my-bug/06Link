.class Lio/github/jaredmdobson/concentus/DecodePitch;
.super Ljava/lang/Object;
.source "DecodePitch.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static silk_decode_pitch(SB[III)V
    .locals 5

    const/16 v0, 0x8

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne p3, v0, :cond_2

    if-ne p4, v1, :cond_0

    .line 48
    sget-object v0, Lio/github/jaredmdobson/concentus/SilkTables;->silk_CB_lags_stage2:[[B

    goto :goto_2

    :cond_0
    if-ne p4, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 50
    :goto_0
    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 51
    sget-object v0, Lio/github/jaredmdobson/concentus/SilkTables;->silk_CB_lags_stage2_10_ms:[[B

    goto :goto_2

    :cond_2
    if-ne p4, v1, :cond_3

    .line 54
    sget-object v0, Lio/github/jaredmdobson/concentus/SilkTables;->silk_CB_lags_stage3:[[B

    goto :goto_2

    :cond_3
    if-ne p4, v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    .line 56
    :goto_1
    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 57
    sget-object v0, Lio/github/jaredmdobson/concentus/SilkTables;->silk_CB_lags_stage3_10_ms:[[B

    .line 60
    :goto_2
    invoke-static {v4, p3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v1

    const/16 v2, 0x12

    .line 61
    invoke-static {v2, p3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result p3

    add-int/2addr p0, v1

    :goto_3
    if-ge v3, p4, :cond_5

    .line 65
    aget-object v2, v0, v3

    aget-byte v2, v2, p1

    add-int/2addr v2, p0

    aput v2, p2, v3

    .line 66
    invoke-static {v2, v1, p3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LIMIT(III)I

    move-result v2

    aput v2, p2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method
