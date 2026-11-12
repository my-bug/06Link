.class Lio/github/jaredmdobson/concentus/ShellCoder;
.super Ljava/lang/Object;
.source "ShellCoder.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static combine_pulses([I[II)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    mul-int/lit8 v1, v0, 0x2

    .line 66
    aget v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    aget v1, p1, v1

    add-int/2addr v2, v1

    aput v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static combine_pulses([I[III)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    mul-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p2

    .line 51
    aget v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    aget v1, p1, v1

    add-int/2addr v2, v1

    aput v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static decode_split([SI[SILio/github/jaredmdobson/concentus/EntropyCoder;I[S)V
    .locals 2

    if-lez p5, :cond_0

    .line 98
    sget-object v0, Lio/github/jaredmdobson/concentus/SilkTables;->silk_shell_code_table_offsets:[S

    aget-short v0, v0, p5

    const/16 v1, 0x8

    invoke-virtual {p4, p6, v0, v1}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_icdf([SII)I

    move-result p4

    int-to-short p4, p4

    aput-short p4, p0, p1

    sub-int/2addr p5, p4

    int-to-short p0, p5

    .line 99
    aput-short p0, p2, p3

    return-void

    :cond_0
    const/4 p4, 0x0

    .line 101
    aput-short p4, p0, p1

    .line 102
    aput-short p4, p2, p3

    return-void
.end method

.method static encode_split(Lio/github/jaredmdobson/concentus/EntropyCoder;II[S)V
    .locals 1

    if-lez p2, :cond_0

    .line 77
    sget-object v0, Lio/github/jaredmdobson/concentus/SilkTables;->silk_shell_code_table_offsets:[S

    aget-short p2, v0, p2

    const/16 v0, 0x8

    invoke-virtual {p0, p1, p3, p2, v0}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_icdf(I[SII)V

    :cond_0
    return-void
.end method

.method static silk_shell_decoder([SILio/github/jaredmdobson/concentus/EntropyCoder;I)V
    .locals 25

    const/16 v0, 0x8

    .line 157
    new-array v1, v0, [S

    const/4 v0, 0x4

    .line 158
    new-array v2, v0, [S

    const/4 v9, 0x2

    .line 159
    new-array v10, v9, [S

    const/16 v17, 0x1

    .line 162
    invoke-static/range {v17 .. v17}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/4 v13, 0x1

    .line 164
    sget-object v16, Lio/github/jaredmdobson/concentus/SilkTables;->silk_shell_code_table3:[S

    const/4 v11, 0x0

    move-object v12, v10

    move-object/from16 v14, p2

    move/from16 v15, p3

    invoke-static/range {v10 .. v16}, Lio/github/jaredmdobson/concentus/ShellCoder;->decode_split([SI[SILio/github/jaredmdobson/concentus/EntropyCoder;I[S)V

    .line 166
    aget-short v7, v10, v11

    sget-object v8, Lio/github/jaredmdobson/concentus/SilkTables;->silk_shell_code_table2:[S

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v4, v2

    move-object/from16 v6, p2

    invoke-static/range {v2 .. v8}, Lio/github/jaredmdobson/concentus/ShellCoder;->decode_split([SI[SILio/github/jaredmdobson/concentus/EntropyCoder;I[S)V

    move-object v8, v2

    .line 168
    aget-short v6, v8, v11

    sget-object v7, Lio/github/jaredmdobson/concentus/SilkTables;->silk_shell_code_table1:[S

    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object v3, v1

    move-object/from16 v5, p2

    invoke-static/range {v1 .. v7}, Lio/github/jaredmdobson/concentus/ShellCoder;->decode_split([SI[SILio/github/jaredmdobson/concentus/EntropyCoder;I[S)V

    add-int/lit8 v21, p1, 0x1

    .line 169
    aget-short v23, v1, v11

    sget-object v24, Lio/github/jaredmdobson/concentus/SilkTables;->silk_shell_code_table0:[S

    move-object/from16 v20, p0

    move-object/from16 v18, p0

    move/from16 v19, p1

    move-object/from16 v22, p2

    invoke-static/range {v18 .. v24}, Lio/github/jaredmdobson/concentus/ShellCoder;->decode_split([SI[SILio/github/jaredmdobson/concentus/EntropyCoder;I[S)V

    add-int/lit8 v19, p1, 0x2

    add-int/lit8 v21, p1, 0x3

    .line 170
    aget-short v23, v1, v17

    sget-object v24, Lio/github/jaredmdobson/concentus/SilkTables;->silk_shell_code_table0:[S

    invoke-static/range {v18 .. v24}, Lio/github/jaredmdobson/concentus/ShellCoder;->decode_split([SI[SILio/github/jaredmdobson/concentus/EntropyCoder;I[S)V

    .line 172
    aget-short v6, v8, v17

    sget-object v7, Lio/github/jaredmdobson/concentus/SilkTables;->silk_shell_code_table1:[S

    const/4 v2, 0x2

    const/4 v4, 0x3

    invoke-static/range {v1 .. v7}, Lio/github/jaredmdobson/concentus/ShellCoder;->decode_split([SI[SILio/github/jaredmdobson/concentus/EntropyCoder;I[S)V

    add-int/lit8 v19, p1, 0x4

    add-int/lit8 v21, p1, 0x5

    .line 173
    aget-short v23, v1, v9

    sget-object v24, Lio/github/jaredmdobson/concentus/SilkTables;->silk_shell_code_table0:[S

    invoke-static/range {v18 .. v24}, Lio/github/jaredmdobson/concentus/ShellCoder;->decode_split([SI[SILio/github/jaredmdobson/concentus/EntropyCoder;I[S)V

    add-int/lit8 v19, p1, 0x6

    add-int/lit8 v21, p1, 0x7

    const/4 v11, 0x3

    .line 174
    aget-short v23, v1, v11

    sget-object v24, Lio/github/jaredmdobson/concentus/SilkTables;->silk_shell_code_table0:[S

    invoke-static/range {v18 .. v24}, Lio/github/jaredmdobson/concentus/ShellCoder;->decode_split([SI[SILio/github/jaredmdobson/concentus/EntropyCoder;I[S)V

    .line 176
    aget-short v7, v10, v17

    move-object v2, v8

    sget-object v8, Lio/github/jaredmdobson/concentus/SilkTables;->silk_shell_code_table2:[S

    const/4 v3, 0x2

    const/4 v5, 0x3

    move-object v4, v2

    move-object/from16 v6, p2

    invoke-static/range {v2 .. v8}, Lio/github/jaredmdobson/concentus/ShellCoder;->decode_split([SI[SILio/github/jaredmdobson/concentus/EntropyCoder;I[S)V

    move-object v8, v2

    .line 178
    aget-short v6, v8, v9

    sget-object v7, Lio/github/jaredmdobson/concentus/SilkTables;->silk_shell_code_table1:[S

    const/4 v2, 0x4

    const/4 v4, 0x5

    move-object v3, v1

    move-object/from16 v5, p2

    invoke-static/range {v1 .. v7}, Lio/github/jaredmdobson/concentus/ShellCoder;->decode_split([SI[SILio/github/jaredmdobson/concentus/EntropyCoder;I[S)V

    add-int/lit8 v19, p1, 0x8

    add-int/lit8 v21, p1, 0x9

    .line 179
    aget-short v23, v1, v0

    sget-object v24, Lio/github/jaredmdobson/concentus/SilkTables;->silk_shell_code_table0:[S

    invoke-static/range {v18 .. v24}, Lio/github/jaredmdobson/concentus/ShellCoder;->decode_split([SI[SILio/github/jaredmdobson/concentus/EntropyCoder;I[S)V

    add-int/lit8 v19, p1, 0xa

    add-int/lit8 v21, p1, 0xb

    const/4 v0, 0x5

    .line 180
    aget-short v23, v1, v0

    sget-object v24, Lio/github/jaredmdobson/concentus/SilkTables;->silk_shell_code_table0:[S

    invoke-static/range {v18 .. v24}, Lio/github/jaredmdobson/concentus/ShellCoder;->decode_split([SI[SILio/github/jaredmdobson/concentus/EntropyCoder;I[S)V

    .line 182
    aget-short v6, v8, v11

    sget-object v7, Lio/github/jaredmdobson/concentus/SilkTables;->silk_shell_code_table1:[S

    const/4 v2, 0x6

    const/4 v4, 0x7

    invoke-static/range {v1 .. v7}, Lio/github/jaredmdobson/concentus/ShellCoder;->decode_split([SI[SILio/github/jaredmdobson/concentus/EntropyCoder;I[S)V

    add-int/lit8 v19, p1, 0xc

    add-int/lit8 v21, p1, 0xd

    const/4 v0, 0x6

    .line 183
    aget-short v23, v1, v0

    sget-object v24, Lio/github/jaredmdobson/concentus/SilkTables;->silk_shell_code_table0:[S

    invoke-static/range {v18 .. v24}, Lio/github/jaredmdobson/concentus/ShellCoder;->decode_split([SI[SILio/github/jaredmdobson/concentus/EntropyCoder;I[S)V

    add-int/lit8 v19, p1, 0xe

    add-int/lit8 v21, p1, 0xf

    const/4 v0, 0x7

    .line 184
    aget-short v23, v1, v0

    sget-object v24, Lio/github/jaredmdobson/concentus/SilkTables;->silk_shell_code_table0:[S

    invoke-static/range {v18 .. v24}, Lio/github/jaredmdobson/concentus/ShellCoder;->decode_split([SI[SILio/github/jaredmdobson/concentus/EntropyCoder;I[S)V

    return-void
.end method

.method static silk_shell_encoder(Lio/github/jaredmdobson/concentus/EntropyCoder;[II)V
    .locals 10

    const/16 v0, 0x8

    .line 112
    new-array v1, v0, [I

    const/4 v2, 0x4

    .line 113
    new-array v3, v2, [I

    const/4 v4, 0x2

    .line 114
    new-array v5, v4, [I

    const/4 v6, 0x1

    .line 115
    new-array v7, v6, [I

    .line 118
    invoke-static {v6}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 121
    invoke-static {v1, p1, p2, v0}, Lio/github/jaredmdobson/concentus/ShellCoder;->combine_pulses([I[III)V

    .line 122
    invoke-static {v3, v1, v2}, Lio/github/jaredmdobson/concentus/ShellCoder;->combine_pulses([I[II)V

    .line 123
    invoke-static {v5, v3, v4}, Lio/github/jaredmdobson/concentus/ShellCoder;->combine_pulses([I[II)V

    .line 124
    invoke-static {v7, v5, v6}, Lio/github/jaredmdobson/concentus/ShellCoder;->combine_pulses([I[II)V

    const/4 v0, 0x0

    .line 126
    aget v8, v5, v0

    aget v7, v7, v0

    sget-object v9, Lio/github/jaredmdobson/concentus/SilkTables;->silk_shell_code_table3:[S

    invoke-static {p0, v8, v7, v9}, Lio/github/jaredmdobson/concentus/ShellCoder;->encode_split(Lio/github/jaredmdobson/concentus/EntropyCoder;II[S)V

    .line 128
    aget v7, v3, v0

    aget v8, v5, v0

    sget-object v9, Lio/github/jaredmdobson/concentus/SilkTables;->silk_shell_code_table2:[S

    invoke-static {p0, v7, v8, v9}, Lio/github/jaredmdobson/concentus/ShellCoder;->encode_split(Lio/github/jaredmdobson/concentus/EntropyCoder;II[S)V

    .line 130
    aget v7, v1, v0

    aget v8, v3, v0

    sget-object v9, Lio/github/jaredmdobson/concentus/SilkTables;->silk_shell_code_table1:[S

    invoke-static {p0, v7, v8, v9}, Lio/github/jaredmdobson/concentus/ShellCoder;->encode_split(Lio/github/jaredmdobson/concentus/EntropyCoder;II[S)V

    .line 131
    aget v7, p1, p2

    aget v0, v1, v0

    sget-object v8, Lio/github/jaredmdobson/concentus/SilkTables;->silk_shell_code_table0:[S

    invoke-static {p0, v7, v0, v8}, Lio/github/jaredmdobson/concentus/ShellCoder;->encode_split(Lio/github/jaredmdobson/concentus/EntropyCoder;II[S)V

    add-int/lit8 v0, p2, 0x2

    .line 132
    aget v0, p1, v0

    aget v7, v1, v6

    sget-object v8, Lio/github/jaredmdobson/concentus/SilkTables;->silk_shell_code_table0:[S

    invoke-static {p0, v0, v7, v8}, Lio/github/jaredmdobson/concentus/ShellCoder;->encode_split(Lio/github/jaredmdobson/concentus/EntropyCoder;II[S)V

    .line 134
    aget v0, v1, v4

    aget v7, v3, v6

    sget-object v8, Lio/github/jaredmdobson/concentus/SilkTables;->silk_shell_code_table1:[S

    invoke-static {p0, v0, v7, v8}, Lio/github/jaredmdobson/concentus/ShellCoder;->encode_split(Lio/github/jaredmdobson/concentus/EntropyCoder;II[S)V

    add-int/lit8 v0, p2, 0x4

    .line 135
    aget v0, p1, v0

    aget v7, v1, v4

    sget-object v8, Lio/github/jaredmdobson/concentus/SilkTables;->silk_shell_code_table0:[S

    invoke-static {p0, v0, v7, v8}, Lio/github/jaredmdobson/concentus/ShellCoder;->encode_split(Lio/github/jaredmdobson/concentus/EntropyCoder;II[S)V

    add-int/lit8 v0, p2, 0x6

    .line 136
    aget v0, p1, v0

    const/4 v7, 0x3

    aget v8, v1, v7

    sget-object v9, Lio/github/jaredmdobson/concentus/SilkTables;->silk_shell_code_table0:[S

    invoke-static {p0, v0, v8, v9}, Lio/github/jaredmdobson/concentus/ShellCoder;->encode_split(Lio/github/jaredmdobson/concentus/EntropyCoder;II[S)V

    .line 138
    aget v0, v3, v4

    aget v5, v5, v6

    sget-object v6, Lio/github/jaredmdobson/concentus/SilkTables;->silk_shell_code_table2:[S

    invoke-static {p0, v0, v5, v6}, Lio/github/jaredmdobson/concentus/ShellCoder;->encode_split(Lio/github/jaredmdobson/concentus/EntropyCoder;II[S)V

    .line 140
    aget v0, v1, v2

    aget v4, v3, v4

    sget-object v5, Lio/github/jaredmdobson/concentus/SilkTables;->silk_shell_code_table1:[S

    invoke-static {p0, v0, v4, v5}, Lio/github/jaredmdobson/concentus/ShellCoder;->encode_split(Lio/github/jaredmdobson/concentus/EntropyCoder;II[S)V

    add-int/lit8 v0, p2, 0x8

    .line 141
    aget v0, p1, v0

    aget v2, v1, v2

    sget-object v4, Lio/github/jaredmdobson/concentus/SilkTables;->silk_shell_code_table0:[S

    invoke-static {p0, v0, v2, v4}, Lio/github/jaredmdobson/concentus/ShellCoder;->encode_split(Lio/github/jaredmdobson/concentus/EntropyCoder;II[S)V

    add-int/lit8 v0, p2, 0xa

    .line 142
    aget v0, p1, v0

    const/4 v2, 0x5

    aget v2, v1, v2

    sget-object v4, Lio/github/jaredmdobson/concentus/SilkTables;->silk_shell_code_table0:[S

    invoke-static {p0, v0, v2, v4}, Lio/github/jaredmdobson/concentus/ShellCoder;->encode_split(Lio/github/jaredmdobson/concentus/EntropyCoder;II[S)V

    const/4 v0, 0x6

    .line 144
    aget v2, v1, v0

    aget v3, v3, v7

    sget-object v4, Lio/github/jaredmdobson/concentus/SilkTables;->silk_shell_code_table1:[S

    invoke-static {p0, v2, v3, v4}, Lio/github/jaredmdobson/concentus/ShellCoder;->encode_split(Lio/github/jaredmdobson/concentus/EntropyCoder;II[S)V

    add-int/lit8 v2, p2, 0xc

    .line 145
    aget v2, p1, v2

    aget v0, v1, v0

    sget-object v3, Lio/github/jaredmdobson/concentus/SilkTables;->silk_shell_code_table0:[S

    invoke-static {p0, v2, v0, v3}, Lio/github/jaredmdobson/concentus/ShellCoder;->encode_split(Lio/github/jaredmdobson/concentus/EntropyCoder;II[S)V

    add-int/lit8 p2, p2, 0xe

    .line 146
    aget p1, p1, p2

    const/4 p2, 0x7

    aget p2, v1, p2

    sget-object v0, Lio/github/jaredmdobson/concentus/SilkTables;->silk_shell_code_table0:[S

    invoke-static {p0, p1, p2, v0}, Lio/github/jaredmdobson/concentus/ShellCoder;->encode_split(Lio/github/jaredmdobson/concentus/EntropyCoder;II[S)V

    return-void
.end method
