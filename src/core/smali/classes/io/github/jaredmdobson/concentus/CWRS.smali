.class Lio/github/jaredmdobson/concentus/CWRS;
.super Ljava/lang/Object;
.source "CWRS.java"


# static fields
.field static final CELT_PVQ_U_ROW:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xf

    .line 158
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lio/github/jaredmdobson/concentus/CWRS;->CELT_PVQ_U_ROW:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0xb0
        0x15f
        0x20d
        0x2ba
        0x366
        0x411
        0x46b
        0x49a
        0x4b7
        0x4ca
        0x4d8
        0x4e0
        0x4e6
        0x4e9
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static CELT_PVQ_U(II)J
    .locals 3

    .line 165
    sget-object v0, Lio/github/jaredmdobson/concentus/CeltTables;->CELT_PVQ_U_DATA:[J

    sget-object v1, Lio/github/jaredmdobson/concentus/CWRS;->CELT_PVQ_U_ROW:[I

    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v2

    aget v1, v1, v2

    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->IMAX(II)I

    move-result p0

    add-int/2addr v1, p0

    aget-wide p0, v0, v1

    return-wide p0
.end method

.method private static CELT_PVQ_V(II)J
    .locals 2

    .line 172
    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/CWRS;->CELT_PVQ_U(II)J

    move-result-wide v0

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/CWRS;->CELT_PVQ_U(II)J

    move-result-wide p0

    add-long/2addr v0, p0

    return-wide v0
.end method

.method static cwrsi(IIJ[I)I
    .locals 16

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 206
    :goto_0
    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    move/from16 v2, p0

    if-le v2, v0, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 207
    :goto_1
    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    move/from16 v3, p1

    move-wide/from16 v4, p2

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2
    const/4 v8, 0x2

    if-le v2, v8, :cond_b

    if-lt v3, v2, :cond_7

    .line 214
    sget-object v8, Lio/github/jaredmdobson/concentus/CWRS;->CELT_PVQ_U_ROW:[I

    aget v8, v8, v2

    .line 216
    sget-object v9, Lio/github/jaredmdobson/concentus/CeltTables;->CELT_PVQ_U_DATA:[J

    add-int v10, v8, v3

    add-int/lit8 v11, v10, 0x1

    aget-wide v11, v9, v11

    cmp-long v9, v4, v11

    if-ltz v9, :cond_2

    const/4 v9, 0x1

    goto :goto_3

    :cond_2
    const/4 v9, 0x0

    :goto_3
    rsub-int/lit8 v9, v9, 0x0

    int-to-long v13, v9

    and-long/2addr v13, v11

    .line 218
    invoke-static {v13, v14}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v13

    sub-long/2addr v4, v13

    .line 221
    sget-object v13, Lio/github/jaredmdobson/concentus/CeltTables;->CELT_PVQ_U_DATA:[J

    add-int v14, v8, v2

    aget-wide v14, v13, v14

    cmp-long v13, v14, v4

    if-lez v13, :cond_5

    cmp-long v8, v11, v14

    if-lez v8, :cond_3

    const/4 v8, 0x1

    goto :goto_4

    :cond_3
    const/4 v8, 0x0

    .line 224
    :goto_4
    invoke-static {v8}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    move v8, v2

    .line 228
    :cond_4
    sget-object v10, Lio/github/jaredmdobson/concentus/CeltTables;->CELT_PVQ_U_DATA:[J

    sget-object v11, Lio/github/jaredmdobson/concentus/CWRS;->CELT_PVQ_U_ROW:[I

    add-int/lit8 v8, v8, -0x1

    aget v11, v11, v8

    add-int/2addr v11, v2

    aget-wide v11, v10, v11

    cmp-long v10, v11, v4

    if-gtz v10, :cond_4

    goto :goto_6

    .line 231
    :cond_5
    sget-object v11, Lio/github/jaredmdobson/concentus/CeltTables;->CELT_PVQ_U_DATA:[J

    aget-wide v10, v11, v10

    move-wide v11, v10

    move v10, v3

    :goto_5
    cmp-long v13, v11, v4

    if-lez v13, :cond_6

    add-int/lit8 v10, v10, -0x1

    sget-object v11, Lio/github/jaredmdobson/concentus/CeltTables;->CELT_PVQ_U_DATA:[J

    add-int v12, v8, v10

    aget-wide v12, v11, v12

    move-wide v11, v12

    goto :goto_5

    :cond_6
    move v8, v10

    :goto_6
    sub-long/2addr v4, v11

    sub-int/2addr v3, v8

    add-int/2addr v3, v9

    xor-int/2addr v3, v9

    int-to-short v3, v3

    add-int/lit8 v9, v7, 0x1

    .line 238
    aput v3, p4, v7

    .line 239
    invoke-static {v6, v3, v3}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(ISS)I

    move-result v6

    move v3, v8

    move v7, v9

    goto :goto_8

    .line 242
    :cond_7
    sget-object v8, Lio/github/jaredmdobson/concentus/CeltTables;->CELT_PVQ_U_DATA:[J

    sget-object v9, Lio/github/jaredmdobson/concentus/CWRS;->CELT_PVQ_U_ROW:[I

    aget v10, v9, v3

    add-int/2addr v10, v2

    aget-wide v10, v8, v10

    .line 243
    sget-object v8, Lio/github/jaredmdobson/concentus/CeltTables;->CELT_PVQ_U_DATA:[J

    add-int/lit8 v12, v3, 0x1

    aget v9, v9, v12

    add-int/2addr v9, v2

    aget-wide v12, v8, v9

    cmp-long v8, v10, v4

    if-gtz v8, :cond_8

    cmp-long v8, v4, v12

    if-gez v8, :cond_8

    sub-long/2addr v4, v10

    add-int/lit8 v8, v7, 0x1

    .line 246
    aput v1, p4, v7

    move v7, v8

    goto :goto_8

    :cond_8
    cmp-long v8, v4, v12

    if-ltz v8, :cond_9

    const/4 v8, 0x1

    goto :goto_7

    :cond_9
    const/4 v8, 0x0

    :goto_7
    rsub-int/lit8 v8, v8, 0x0

    int-to-long v9, v8

    and-long/2addr v9, v12

    .line 250
    invoke-static {v9, v10}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v9

    sub-long v9, v4, v9

    move v4, v3

    .line 254
    :cond_a
    sget-object v5, Lio/github/jaredmdobson/concentus/CeltTables;->CELT_PVQ_U_DATA:[J

    sget-object v11, Lio/github/jaredmdobson/concentus/CWRS;->CELT_PVQ_U_ROW:[I

    add-int/lit8 v4, v4, -0x1

    aget v11, v11, v4

    add-int/2addr v11, v2

    aget-wide v11, v5, v11

    cmp-long v5, v11, v9

    if-gtz v5, :cond_a

    sub-long/2addr v9, v11

    sub-int/2addr v3, v4

    add-int/2addr v3, v8

    xor-int/2addr v3, v8

    int-to-short v3, v3

    add-int/lit8 v5, v7, 0x1

    .line 259
    aput v3, p4, v7

    .line 260
    invoke-static {v6, v3, v3}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(ISS)I

    move-result v6

    move v3, v4

    move v7, v5

    move-wide v4, v9

    :goto_8
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_2

    :cond_b
    int-to-long v8, v3

    const-wide/16 v10, 0x2

    mul-long v8, v8, v10

    const-wide/16 v12, 0x1

    add-long/2addr v8, v12

    cmp-long v2, v4, v8

    if-ltz v2, :cond_c

    const/4 v2, 0x1

    goto :goto_9

    :cond_c
    const/4 v2, 0x0

    :goto_9
    sub-int/2addr v1, v2

    int-to-long v14, v1

    and-long/2addr v8, v14

    .line 269
    invoke-static {v8, v9}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v8

    sub-long/2addr v4, v8

    add-long v8, v4, v12

    shr-long/2addr v8, v0

    long-to-int v0, v8

    if-eqz v0, :cond_d

    int-to-long v8, v0

    mul-long v8, v8, v10

    sub-long/2addr v8, v12

    sub-long/2addr v4, v8

    :cond_d
    sub-int/2addr v3, v0

    add-int/2addr v3, v1

    xor-int/2addr v1, v3

    int-to-short v1, v1

    add-int/lit8 v2, v7, 0x1

    .line 277
    aput v1, p4, v7

    .line 278
    invoke-static {v6, v1, v1}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(ISS)I

    move-result v1

    long-to-int v3, v4

    neg-int v3, v3

    add-int/2addr v0, v3

    xor-int/2addr v0, v3

    int-to-short v0, v0

    .line 282
    aput v0, p4, v2

    .line 283
    invoke-static {v1, v0, v0}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(ISS)I

    move-result v0

    return v0
.end method

.method static decode_pulses([IIILio/github/jaredmdobson/concentus/EntropyCoder;)I
    .locals 2

    .line 288
    invoke-static {p1, p2}, Lio/github/jaredmdobson/concentus/CWRS;->CELT_PVQ_V(II)J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_uint(J)J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1, p0}, Lio/github/jaredmdobson/concentus/CWRS;->cwrsi(IIJ[I)I

    move-result p0

    return p0
.end method

.method static encode_pulses([IIILio/github/jaredmdobson/concentus/EntropyCoder;)V
    .locals 2

    if-lez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 195
    :goto_0
    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 196
    invoke-static {p1, p0}, Lio/github/jaredmdobson/concentus/CWRS;->icwrs(I[I)J

    move-result-wide v0

    invoke-static {p1, p2}, Lio/github/jaredmdobson/concentus/CWRS;->CELT_PVQ_V(II)J

    move-result-wide p0

    invoke-virtual {p3, v0, v1, p0, p1}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_uint(JJ)V

    return-void
.end method

.method static icwrs(I[I)J
    .locals 7

    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 179
    :goto_0
    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    add-int/lit8 v0, p0, -0x1

    .line 181
    aget v1, p1, v0

    if-gez v1, :cond_1

    const-wide/16 v2, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    .line 182
    :goto_1
    invoke-static {v1}, Lio/github/jaredmdobson/concentus/Inlines;->abs(I)I

    move-result v1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    sub-int v4, p0, v0

    .line 185
    invoke-static {v4, v1}, Lio/github/jaredmdobson/concentus/CWRS;->CELT_PVQ_U(II)J

    move-result-wide v5

    add-long/2addr v2, v5

    .line 186
    aget v5, p1, v0

    invoke-static {v5}, Lio/github/jaredmdobson/concentus/Inlines;->abs(I)I

    move-result v5

    add-int/2addr v1, v5

    .line 187
    aget v5, p1, v0

    if-gez v5, :cond_3

    add-int/lit8 v5, v1, 0x1

    .line 188
    invoke-static {v4, v5}, Lio/github/jaredmdobson/concentus/CWRS;->CELT_PVQ_U(II)J

    move-result-wide v4

    add-long/2addr v2, v4

    :cond_3
    if-gtz v0, :cond_2

    return-wide v2
.end method
