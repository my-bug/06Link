.class Lio/github/jaredmdobson/concentus/Laplace;
.super Ljava/lang/Object;
.source "Laplace.java"


# static fields
.field private static final LAPLACE_LOG_MINP:I = 0x0

.field private static final LAPLACE_MINP:J = 0x1L

.field private static final LAPLACE_NMIN:I = 0x10


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ec_laplace_decode(Lio/github/jaredmdobson/concentus/EntropyCoder;JI)I
    .locals 22

    const/16 v0, 0xf

    move-object/from16 v1, p0

    .line 96
    invoke-virtual {v1, v0}, Lio/github/jaredmdobson/concentus/EntropyCoder;->decode_bin(I)J

    move-result-wide v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    cmp-long v8, v2, p1

    if-ltz v8, :cond_3

    .line 102
    invoke-static/range {p1 .. p3}, Lio/github/jaredmdobson/concentus/Laplace;->ec_laplace_get_freq1(JI)J

    move-result-wide v8

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    move-wide/from16 v12, p1

    const/4 v14, 0x1

    :goto_0
    cmp-long v15, v8, v10

    if-lez v15, :cond_0

    const-wide/16 v15, 0x2

    mul-long v17, v8, v15

    add-long v19, v12, v17

    cmp-long v21, v2, v19

    if-ltz v21, :cond_0

    .line 106
    invoke-static/range {v19 .. v20}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v12

    sub-long v17, v17, v15

    move/from16 v15, p3

    int-to-long v8, v15

    mul-long v17, v17, v8

    shr-long v8, v17, v0

    .line 107
    invoke-static {v8, v9}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v8

    add-long/2addr v8, v10

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_0
    cmp-long v0, v8, v10

    if-gtz v0, :cond_1

    sub-long v10, v2, v12

    long-to-int v0, v10

    shr-int/2addr v0, v4

    add-int/2addr v14, v0

    mul-int/lit8 v0, v0, 0x2

    int-to-long v10, v0

    .line 116
    invoke-static {v10, v11}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v10

    add-long/2addr v12, v10

    invoke-static {v12, v13}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v12

    :cond_1
    add-long v10, v12, v8

    cmp-long v0, v2, v10

    if-gez v0, :cond_2

    neg-int v14, v14

    goto :goto_1

    .line 121
    :cond_2
    invoke-static {v10, v11}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v12

    goto :goto_1

    :cond_3
    move-wide/from16 v8, p1

    move-wide v12, v6

    const/4 v14, 0x0

    :goto_1
    const-wide/32 v10, 0x8000

    cmp-long v0, v12, v10

    if-gez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 125
    :goto_2
    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    cmp-long v0, v8, v6

    if-lez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    .line 126
    :goto_3
    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    cmp-long v0, v12, v2

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    .line 127
    :goto_4
    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    add-long/2addr v8, v12

    .line 128
    invoke-static {v8, v9, v10, v11}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(JJ)J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-gez v0, :cond_7

    goto :goto_5

    :cond_7
    const/4 v4, 0x0

    :goto_5
    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 130
    invoke-static {v8, v9, v10, v11}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(JJ)J

    move-result-wide v4

    const-wide/32 v6, 0x8000

    move-wide v2, v12

    invoke-virtual/range {v1 .. v7}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_update(JJJ)V

    return v14
.end method

.method static ec_laplace_encode(Lio/github/jaredmdobson/concentus/EntropyCoder;Lio/github/jaredmdobson/concentus/BoxedValueInt;JI)V
    .locals 17

    move-object/from16 v0, p1

    .line 54
    iget v1, v0, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_5

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gez v1, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    rsub-int/lit8 v6, v6, 0x0

    add-int/2addr v1, v6

    xor-int/2addr v1, v6

    .line 62
    invoke-static/range {p2 .. p4}, Lio/github/jaredmdobson/concentus/Laplace;->ec_laplace_get_freq1(JI)J

    move-result-wide v7

    move-wide v9, v7

    const/4 v11, 0x1

    move-wide/from16 v7, p2

    :goto_1
    cmp-long v12, v9, v2

    if-lez v12, :cond_1

    if-ge v11, v1, :cond_1

    const-wide/16 v12, 0x2

    mul-long v9, v9, v12

    add-long/2addr v7, v9

    add-long/2addr v7, v12

    .line 67
    invoke-static {v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v7

    move/from16 v12, p4

    int-to-long v13, v12

    mul-long v9, v9, v13

    const/16 v13, 0xf

    shr-long/2addr v9, v13

    .line 68
    invoke-static {v9, v10}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v9

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v12, 0x1

    const-wide/32 v14, 0x8000

    cmp-long v16, v9, v2

    if-nez v16, :cond_2

    sub-long v9, v14, v7

    long-to-int v10, v9

    sub-int/2addr v10, v6

    shr-int/lit8 v9, v10, 0x1

    sub-int/2addr v1, v11

    sub-int/2addr v9, v5

    .line 77
    invoke-static {v1, v9}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v1

    mul-int/lit8 v9, v1, 0x2

    add-int/2addr v9, v5

    add-int/2addr v9, v6

    int-to-long v9, v9

    add-long/2addr v7, v9

    .line 78
    invoke-static {v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v7

    sub-long v9, v14, v7

    .line 79
    invoke-static {v12, v13, v9, v10}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(JJ)J

    move-result-wide v9

    add-int/2addr v11, v1

    add-int/2addr v11, v6

    xor-int v1, v11, v6

    .line 80
    iput v1, v0, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    goto :goto_2

    :cond_2
    add-long/2addr v9, v12

    xor-int/lit8 v0, v6, -0x1

    int-to-long v0, v0

    and-long/2addr v0, v9

    .line 83
    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v0

    add-long/2addr v7, v0

    :goto_2
    add-long v0, v7, v9

    cmp-long v6, v0, v14

    if-gtz v6, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    .line 85
    :goto_3
    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    cmp-long v0, v9, v2

    if-lez v0, :cond_4

    const/4 v4, 0x1

    .line 86
    :cond_4
    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    move-wide v1, v7

    goto :goto_4

    :cond_5
    move-wide/from16 v9, p2

    move-wide v1, v2

    :goto_4
    add-long v3, v1, v9

    const/16 v5, 0xf

    move-object/from16 v0, p0

    .line 89
    invoke-virtual/range {v0 .. v5}, Lio/github/jaredmdobson/concentus/EntropyCoder;->encode_bin(JJI)V

    return-void
.end method

.method static ec_laplace_get_freq1(JI)J
    .locals 2

    const-wide/16 v0, 0x7fe0

    sub-long/2addr v0, p0

    .line 48
    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide p0

    rsub-int p2, p2, 0x4000

    int-to-long v0, p2

    mul-long p0, p0, v0

    .line 49
    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide p0

    const/16 p2, 0xf

    shr-long/2addr p0, p2

    return-wide p0
.end method
