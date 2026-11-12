.class Lio/github/jaredmdobson/concentus/DecodePulses;
.super Ljava/lang/Object;
.source "DecodePulses.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static silk_decode_pulses(Lio/github/jaredmdobson/concentus/EntropyCoder;[SIII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    const/16 v3, 0x14

    .line 51
    new-array v5, v3, [I

    .line 52
    new-array v6, v3, [I

    .line 62
    sget-object v3, Lio/github/jaredmdobson/concentus/SilkTables;->silk_rate_levels_iCDF:[[S

    shr-int/lit8 v4, p2, 0x1

    aget-object v3, v3, v4

    const/16 v7, 0x8

    invoke-virtual {v0, v3, v7}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_icdf([SI)I

    move-result v3

    const/4 v8, 0x1

    .line 65
    invoke-static {v8}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/4 v4, 0x4

    .line 66
    invoke-static {v2, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v4

    mul-int/lit8 v9, v4, 0x10

    const/4 v10, 0x0

    if-ge v9, v2, :cond_1

    const/16 v9, 0x78

    if-ne v2, v9, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 68
    :goto_0
    invoke-static {v9}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    add-int/lit8 v4, v4, 0x1

    :cond_1
    move v9, v4

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v9, :cond_4

    .line 81
    aput v10, v6, v4

    .line 82
    sget-object v11, Lio/github/jaredmdobson/concentus/SilkTables;->silk_pulses_per_block_iCDF:[[S

    aget-object v11, v11, v3

    invoke-virtual {v0, v11, v7}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_icdf([SI)I

    move-result v11

    aput v11, v5, v4

    .line 85
    :goto_2
    aget v11, v5, v4

    const/16 v12, 0x11

    if-ne v11, v12, :cond_3

    .line 86
    aget v11, v6, v4

    add-int/2addr v11, v8

    aput v11, v6, v4

    .line 88
    sget-object v11, Lio/github/jaredmdobson/concentus/SilkTables;->silk_pulses_per_block_iCDF:[[S

    const/16 v12, 0x9

    aget-object v11, v11, v12

    aget v12, v6, v4

    const/16 v13, 0xa

    if-ne v12, v13, :cond_2

    const/4 v12, 0x1

    goto :goto_3

    :cond_2
    const/4 v12, 0x0

    :goto_3
    invoke-virtual {v0, v11, v12, v7}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_icdf([SII)I

    move-result v11

    aput v11, v5, v4

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_4
    const/16 v11, 0x10

    if-ge v3, v9, :cond_6

    .line 101
    aget v4, v5, v3

    if-lez v4, :cond_5

    .line 102
    invoke-static {v3, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v4

    aget v11, v5, v3

    invoke-static {v1, v4, v0, v11}, Lio/github/jaredmdobson/concentus/ShellCoder;->silk_shell_decoder([SILio/github/jaredmdobson/concentus/EntropyCoder;I)V

    goto :goto_5

    .line 104
    :cond_5
    invoke-static {v3, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v4

    invoke-static {v1, v10, v4, v11}, Lio/github/jaredmdobson/concentus/Arrays;->MemSetWithOffset([SSII)V

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    :goto_6
    if-ge v3, v9, :cond_a

    .line 116
    aget v4, v6, v3

    if-lez v4, :cond_9

    .line 118
    invoke-static {v3, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v12

    const/4 v13, 0x0

    :goto_7
    if-ge v13, v11, :cond_8

    add-int v14, v12, v13

    .line 120
    aget-short v15, v1, v14

    :goto_8
    if-ge v10, v4, :cond_7

    .line 122
    invoke-static {v15, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v15

    .line 123
    sget-object v8, Lio/github/jaredmdobson/concentus/SilkTables;->silk_lsb_iCDF:[S

    invoke-virtual {v0, v8, v7}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_icdf([SI)I

    move-result v8

    add-int/2addr v15, v8

    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x1

    goto :goto_8

    :cond_7
    int-to-short v8, v15

    .line 125
    aput-short v8, v1, v14

    add-int/lit8 v13, v13, 0x1

    const/4 v8, 0x1

    const/4 v10, 0x0

    goto :goto_7

    .line 128
    :cond_8
    aget v8, v5, v3

    shl-int/lit8 v4, v4, 0x5

    or-int/2addr v4, v8

    aput v4, v5, v3

    :cond_9
    add-int/lit8 v3, v3, 0x1

    const/4 v8, 0x1

    const/4 v10, 0x0

    goto :goto_6

    :cond_a
    move/from16 v3, p2

    move/from16 v4, p3

    .line 139
    invoke-static/range {v0 .. v5}, Lio/github/jaredmdobson/concentus/CodeSigns;->silk_decode_signs(Lio/github/jaredmdobson/concentus/EntropyCoder;[SIII[I)V

    return-void
.end method
