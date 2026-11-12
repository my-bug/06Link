.class Lio/github/jaredmdobson/concentus/EncodePulses;
.super Ljava/lang/Object;
.source "EncodePulses.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static combine_and_check([II[IIII)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p5, :cond_1

    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, p3

    .line 53
    aget v3, p2, v2

    const/4 v4, 0x1

    add-int/2addr v2, v4

    aget v2, p2, v2

    add-int/2addr v3, v2

    if-le v3, p4, :cond_0

    return v4

    :cond_0
    add-int v2, p1, v1

    .line 57
    aput v3, p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method static combine_and_check([I[III)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_1

    mul-int/lit8 v2, v1, 0x2

    .line 76
    aget v3, p1, v2

    const/4 v4, 0x1

    add-int/2addr v2, v4

    aget v2, p1, v2

    add-int/2addr v3, v2

    if-le v3, p2, :cond_0

    return v4

    .line 80
    :cond_0
    aput v3, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method static silk_encode_pulses(Lio/github/jaredmdobson/concentus/EntropyCoder;II[BI)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    const/16 v6, 0x8

    .line 104
    new-array v7, v6, [I

    const/4 v13, 0x0

    .line 109
    invoke-static {v7, v13, v6}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    const/4 v14, 0x1

    .line 119
    invoke-static {v14}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/4 v3, 0x4

    .line 120
    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v4

    mul-int/lit8 v5, v4, 0x10

    const/16 v15, 0x10

    if-ge v5, v2, :cond_1

    const/16 v5, 0x78

    if-ne v2, v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 122
    :goto_0
    invoke-static {v5}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    add-int/lit8 v4, v4, 0x1

    .line 125
    invoke-static {v1, v13, v2, v15}, Lio/github/jaredmdobson/concentus/Arrays;->MemSetWithOffset([BBII)V

    :cond_1
    mul-int/lit8 v5, v4, 0x10

    .line 129
    new-array v9, v5, [I

    .line 130
    invoke-static {v14}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v5, :cond_2

    .line 134
    aget-byte v10, v1, v8

    invoke-static {v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_abs(I)I

    move-result v10

    aput v10, v9, v8

    add-int/lit8 v10, v8, 0x1

    .line 135
    aget-byte v11, v1, v10

    invoke-static {v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_abs(I)I

    move-result v11

    aput v11, v9, v10

    add-int/lit8 v10, v8, 0x2

    .line 136
    aget-byte v11, v1, v10

    invoke-static {v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_abs(I)I

    move-result v11

    aput v11, v9, v10

    add-int/lit8 v10, v8, 0x3

    .line 137
    aget-byte v11, v1, v10

    invoke-static {v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_abs(I)I

    move-result v11

    aput v11, v9, v10

    add-int/lit8 v8, v8, 0x4

    goto :goto_1

    .line 141
    :cond_2
    new-array v5, v4, [I

    .line 142
    new-array v8, v4, [I

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_2
    if-ge v10, v4, :cond_5

    .line 145
    aput v13, v8, v10

    .line 149
    :goto_3
    sget-object v12, Lio/github/jaredmdobson/concentus/SilkTables;->silk_max_pulses_table:[B

    aget-byte v12, v12, v13

    move/from16 v16, v10

    move v10, v11

    move v11, v12

    const/16 v12, 0x8

    move-object/from16 v17, v8

    const/4 v8, 0x0

    invoke-static/range {v7 .. v12}, Lio/github/jaredmdobson/concentus/EncodePulses;->combine_and_check([II[IIII)I

    move-result v8

    move/from16 v18, v10

    .line 151
    sget-object v10, Lio/github/jaredmdobson/concentus/SilkTables;->silk_max_pulses_table:[B

    aget-byte v10, v10, v14

    invoke-static {v7, v7, v10, v3}, Lio/github/jaredmdobson/concentus/EncodePulses;->combine_and_check([I[III)I

    move-result v10

    add-int/2addr v8, v10

    .line 153
    sget-object v10, Lio/github/jaredmdobson/concentus/SilkTables;->silk_max_pulses_table:[B

    const/4 v11, 0x2

    aget-byte v10, v10, v11

    invoke-static {v7, v7, v10, v11}, Lio/github/jaredmdobson/concentus/EncodePulses;->combine_and_check([I[III)I

    move-result v10

    add-int v19, v8, v10

    .line 155
    sget-object v8, Lio/github/jaredmdobson/concentus/SilkTables;->silk_max_pulses_table:[B

    const/4 v10, 0x3

    aget-byte v11, v8, v10

    const/4 v12, 0x1

    const/4 v10, 0x0

    move-object v8, v7

    move-object v7, v5

    move-object v5, v9

    move-object v9, v8

    move/from16 v8, v16

    invoke-static/range {v7 .. v12}, Lio/github/jaredmdobson/concentus/EncodePulses;->combine_and_check([II[IIII)I

    move-result v10

    move-object v8, v7

    move-object v7, v9

    add-int v19, v19, v10

    if-eqz v19, :cond_4

    .line 159
    aget v9, v17, v16

    add-int/2addr v9, v14

    aput v9, v17, v16

    move/from16 v11, v18

    :goto_4
    add-int/lit8 v9, v18, 0x10

    if-ge v11, v9, :cond_3

    .line 161
    aget v9, v5, v11

    invoke-static {v9, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v9

    aput v9, v5, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_3
    move-object v9, v5

    move-object v5, v8

    move/from16 v10, v16

    move-object/from16 v8, v17

    move/from16 v11, v18

    goto :goto_3

    :cond_4
    add-int/lit8 v11, v18, 0x10

    add-int/lit8 v10, v16, 0x1

    move-object v9, v5

    move-object v5, v8

    move-object/from16 v8, v17

    goto :goto_2

    :cond_5
    move-object/from16 v17, v8

    move-object v8, v5

    move-object v5, v9

    const v3, 0x7fffffff

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_5
    const/16 v10, 0x11

    const/16 v11, 0x9

    if-ge v7, v11, :cond_9

    .line 182
    sget-object v11, Lio/github/jaredmdobson/concentus/SilkTables;->silk_pulses_per_block_BITS_Q5:[[S

    aget-object v11, v11, v7

    .line 183
    sget-object v12, Lio/github/jaredmdobson/concentus/SilkTables;->silk_rate_levels_BITS_Q5:[[S

    shr-int/lit8 v16, p1, 0x1

    aget-object v12, v12, v16

    aget-short v12, v12, v7

    :goto_6
    if-ge v13, v4, :cond_7

    .line 185
    aget v18, v17, v13

    if-lez v18, :cond_6

    .line 186
    aget-short v18, v11, v10

    goto :goto_7

    .line 188
    :cond_6
    aget v18, v8, v13

    aget-short v18, v11, v18

    :goto_7
    add-int v12, v12, v18

    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_7
    if-ge v12, v3, :cond_8

    move v9, v7

    move v3, v12

    :cond_8
    add-int/lit8 v7, v7, 0x1

    const/4 v13, 0x0

    goto :goto_5

    .line 197
    :cond_9
    sget-object v3, Lio/github/jaredmdobson/concentus/SilkTables;->silk_rate_levels_iCDF:[[S

    shr-int/lit8 v7, p1, 0x1

    aget-object v3, v3, v7

    invoke-virtual {v0, v9, v3, v6}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_icdf(I[SI)V

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v4, :cond_c

    .line 207
    aget v7, v17, v3

    if-nez v7, :cond_a

    .line 208
    aget v7, v8, v3

    sget-object v12, Lio/github/jaredmdobson/concentus/SilkTables;->silk_pulses_per_block_iCDF:[[S

    aget-object v12, v12, v9

    invoke-virtual {v0, v7, v12, v6}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_icdf(I[SI)V

    goto :goto_a

    .line 210
    :cond_a
    sget-object v7, Lio/github/jaredmdobson/concentus/SilkTables;->silk_pulses_per_block_iCDF:[[S

    aget-object v7, v7, v9

    invoke-virtual {v0, v10, v7, v6}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_icdf(I[SI)V

    const/4 v7, 0x0

    .line 211
    :goto_9
    aget v12, v17, v3

    sub-int/2addr v12, v14

    if-ge v7, v12, :cond_b

    .line 212
    sget-object v12, Lio/github/jaredmdobson/concentus/SilkTables;->silk_pulses_per_block_iCDF:[[S

    aget-object v12, v12, v11

    invoke-virtual {v0, v10, v12, v6}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_icdf(I[SI)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 215
    :cond_b
    aget v7, v8, v3

    sget-object v12, Lio/github/jaredmdobson/concentus/SilkTables;->silk_pulses_per_block_iCDF:[[S

    aget-object v12, v12, v11

    invoke-virtual {v0, v7, v12, v6}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_icdf(I[SI)V

    :goto_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_c
    const/4 v3, 0x0

    :goto_b
    if-ge v3, v4, :cond_e

    .line 227
    aget v7, v8, v3

    if-lez v7, :cond_d

    mul-int/lit8 v7, v3, 0x10

    .line 228
    invoke-static {v0, v5, v7}, Lio/github/jaredmdobson/concentus/ShellCoder;->silk_shell_encoder(Lio/github/jaredmdobson/concentus/EntropyCoder;[II)V

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_e
    const/4 v3, 0x0

    :goto_c
    if-ge v3, v4, :cond_11

    .line 240
    aget v5, v17, v3

    if-lez v5, :cond_10

    mul-int/lit8 v7, v3, 0x10

    add-int/lit8 v5, v5, -0x1

    const/4 v9, 0x0

    :goto_d
    if-ge v9, v15, :cond_10

    add-int v10, v7, v9

    .line 244
    aget-byte v10, v1, v10

    invoke-static {v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_abs(I)I

    move-result v10

    int-to-byte v10, v10

    move v11, v5

    :goto_e
    if-lez v11, :cond_f

    .line 246
    invoke-static {v10, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v12

    and-int/2addr v12, v14

    .line 247
    sget-object v13, Lio/github/jaredmdobson/concentus/SilkTables;->silk_lsb_iCDF:[S

    invoke-virtual {v0, v12, v13, v6}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_icdf(I[SI)V

    add-int/lit8 v11, v11, -0x1

    goto :goto_e

    :cond_f
    and-int/lit8 v10, v10, 0x1

    .line 250
    sget-object v11, Lio/github/jaredmdobson/concentus/SilkTables;->silk_lsb_iCDF:[S

    invoke-virtual {v0, v10, v11, v6}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_icdf(I[SI)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_11
    move/from16 v3, p1

    move/from16 v4, p2

    move-object v5, v8

    .line 262
    invoke-static/range {v0 .. v5}, Lio/github/jaredmdobson/concentus/CodeSigns;->silk_encode_signs(Lio/github/jaredmdobson/concentus/EntropyCoder;[BIII[I)V

    return-void
.end method
