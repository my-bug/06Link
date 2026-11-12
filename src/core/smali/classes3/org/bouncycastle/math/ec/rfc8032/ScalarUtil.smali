.class abstract Lorg/bouncycastle/math/ec/rfc8032/ScalarUtil;
.super Ljava/lang/Object;


# static fields
.field private static final M:J = 0xffffffffL


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addShifted_NP(II[I[I[I[I)V
    .locals 20

    move/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    const/16 v4, 0x20

    const/4 v5, 0x0

    const-wide v6, 0xffffffffL

    const-wide/16 v8, 0x0

    if-nez v1, :cond_0

    move-wide v10, v8

    :goto_0
    if-gt v5, v0, :cond_3

    aget v1, v2, v5

    aget v3, p2, v5

    int-to-long v12, v3

    and-long/2addr v12, v6

    add-long/2addr v8, v12

    int-to-long v12, v1

    and-long/2addr v12, v6

    add-long/2addr v8, v12

    add-long/2addr v10, v12

    aget v1, p3, v5

    int-to-long v12, v1

    and-long/2addr v12, v6

    add-long/2addr v10, v12

    long-to-int v1, v10

    ushr-long/2addr v10, v4

    aput v1, v2, v5

    int-to-long v12, v1

    and-long/2addr v12, v6

    add-long/2addr v8, v12

    long-to-int v1, v8

    aput v1, p2, v5

    ushr-long/2addr v8, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    if-ge v1, v4, :cond_1

    move-wide v10, v8

    move-wide v12, v10

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    if-gt v5, v0, :cond_3

    aget v14, v2, v5

    shl-int v15, v14, v1

    const/16 v16, 0x20

    neg-int v4, v1

    ushr-int/2addr v3, v4

    or-int/2addr v3, v15

    aget v15, p2, v5

    move-wide/from16 v17, v6

    int-to-long v6, v15

    and-long v6, v6, v17

    add-long/2addr v10, v6

    int-to-long v6, v3

    and-long v6, v6, v17

    add-long/2addr v10, v6

    aget v3, p3, v5

    shl-int v6, v3, v1

    ushr-int v7, v8, v4

    or-int/2addr v6, v7

    int-to-long v7, v14

    and-long v7, v7, v17

    add-long/2addr v12, v7

    int-to-long v6, v6

    and-long v6, v6, v17

    add-long/2addr v12, v6

    long-to-int v6, v12

    ushr-long v12, v12, v16

    aput v6, v2, v5

    shl-int v7, v6, v1

    ushr-int v4, v9, v4

    or-int/2addr v4, v7

    int-to-long v7, v4

    and-long v7, v7, v17

    add-long/2addr v10, v7

    long-to-int v4, v10

    aput v4, p2, v5

    ushr-long v10, v10, v16

    add-int/lit8 v5, v5, 0x1

    move v8, v3

    move v9, v6

    move v3, v14

    move-wide/from16 v6, v17

    const/16 v4, 0x20

    goto :goto_1

    :cond_1
    move-wide/from16 v17, v6

    const/16 v16, 0x20

    invoke-static {v2, v5, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    ushr-int/lit8 v4, v1, 0x5

    and-int/lit8 v1, v1, 0x1f

    if-nez v1, :cond_2

    move v1, v4

    move-wide v5, v8

    :goto_2
    if-gt v1, v0, :cond_3

    aget v7, p2, v1

    int-to-long v10, v7

    and-long v10, v10, v17

    add-long/2addr v8, v10

    sub-int v7, v1, v4

    aget v10, v3, v7

    int-to-long v10, v10

    and-long v10, v10, v17

    add-long/2addr v8, v10

    aget v10, v2, v1

    int-to-long v10, v10

    and-long v10, v10, v17

    add-long/2addr v5, v10

    aget v10, p3, v7

    int-to-long v10, v10

    and-long v10, v10, v17

    add-long/2addr v5, v10

    long-to-int v10, v5

    aput v10, v2, v1

    ushr-long v5, v5, v16

    aget v7, v2, v7

    int-to-long v10, v7

    and-long v10, v10, v17

    add-long/2addr v8, v10

    long-to-int v7, v8

    aput v7, p2, v1

    ushr-long v8, v8, v16

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move v12, v4

    move-wide v10, v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_3
    if-gt v12, v0, :cond_3

    sub-int v13, v12, v4

    aget v14, v3, v13

    shl-int v15, v14, v1

    neg-int v0, v1

    ushr-int/2addr v5, v0

    or-int/2addr v5, v15

    aget v15, p2, v12

    move/from16 v19, v0

    move/from16 p1, v1

    int-to-long v0, v15

    and-long v0, v0, v17

    add-long/2addr v8, v0

    int-to-long v0, v5

    and-long v0, v0, v17

    add-long/2addr v8, v0

    aget v5, p3, v13

    shl-int v0, v5, p1

    ushr-int v1, v6, v19

    or-int/2addr v0, v1

    aget v1, v2, v12

    int-to-long v1, v1

    and-long v1, v1, v17

    add-long/2addr v10, v1

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v10, v0

    long-to-int v0, v10

    aput v0, p4, v12

    ushr-long v10, v10, v16

    aget v0, p4, v13

    shl-int v1, v0, p1

    ushr-int v2, v7, v19

    or-int/2addr v1, v2

    int-to-long v1, v1

    and-long v1, v1, v17

    add-long/2addr v8, v1

    long-to-int v1, v8

    aput v1, p2, v12

    ushr-long v8, v8, v16

    add-int/lit8 v12, v12, 0x1

    move/from16 v1, p1

    move-object/from16 v2, p4

    move v7, v0

    move v6, v5

    move v5, v14

    move/from16 v0, p0

    goto :goto_3

    :cond_3
    return-void
.end method

.method static addShifted_UV(II[I[I[I[I)V
    .locals 17

    move/from16 v0, p0

    ushr-int/lit8 v1, p1, 0x5

    and-int/lit8 v2, p1, 0x1f

    const/16 v3, 0x20

    const-wide v4, 0xffffffffL

    const-wide/16 v6, 0x0

    if-nez v2, :cond_0

    move v2, v1

    move-wide v8, v6

    :goto_0
    if-gt v2, v0, :cond_1

    aget v10, p2, v2

    int-to-long v10, v10

    and-long/2addr v10, v4

    add-long/2addr v6, v10

    aget v10, p3, v2

    int-to-long v10, v10

    and-long/2addr v10, v4

    add-long/2addr v8, v10

    sub-int v10, v2, v1

    aget v11, p4, v10

    int-to-long v11, v11

    and-long/2addr v11, v4

    add-long/2addr v6, v11

    aget v10, p5, v10

    int-to-long v10, v10

    and-long/2addr v10, v4

    add-long/2addr v8, v10

    long-to-int v10, v6

    aput v10, p2, v2

    ushr-long/2addr v6, v3

    long-to-int v10, v8

    aput v10, p3, v2

    ushr-long/2addr v8, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    move v12, v1

    move-wide v8, v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    if-gt v12, v0, :cond_1

    sub-int v13, v12, v1

    aget v14, p4, v13

    aget v13, p5, v13

    shl-int v15, v14, v2

    const/16 p1, 0x20

    neg-int v3, v2

    ushr-int/2addr v10, v3

    or-int/2addr v10, v15

    shl-int v15, v13, v2

    ushr-int v3, v11, v3

    or-int/2addr v3, v15

    aget v11, p2, v12

    move-wide v15, v4

    int-to-long v4, v11

    and-long/2addr v4, v15

    add-long/2addr v6, v4

    aget v4, p3, v12

    int-to-long v4, v4

    and-long/2addr v4, v15

    add-long/2addr v8, v4

    int-to-long v4, v10

    and-long/2addr v4, v15

    add-long/2addr v6, v4

    int-to-long v3, v3

    and-long/2addr v3, v15

    add-long/2addr v8, v3

    long-to-int v3, v6

    aput v3, p2, v12

    ushr-long v6, v6, p1

    long-to-int v3, v8

    aput v3, p3, v12

    ushr-long v8, v8, p1

    add-int/lit8 v12, v12, 0x1

    move v11, v13

    move v10, v14

    move-wide v4, v15

    const/16 v3, 0x20

    goto :goto_1

    :cond_1
    return-void
.end method

.method static getBitLength(I[I)I
    .locals 2

    aget v0, p1, p0

    shr-int/lit8 v0, v0, 0x1f

    :goto_0
    if-lez p0, :cond_0

    aget v1, p1, p0

    if-ne v1, v0, :cond_0

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, p0, 0x20

    add-int/lit8 v1, v1, 0x20

    aget p0, p1, p0

    xor-int/2addr p0, v0

    invoke-static {p0}, Lorg/bouncycastle/util/Integers;->numberOfLeadingZeros(I)I

    move-result p0

    sub-int/2addr v1, p0

    return v1
.end method

.method static getBitLengthPositive(I[I)I
    .locals 1

    :goto_0
    if-lez p0, :cond_0

    aget v0, p1, p0

    if-nez v0, :cond_0

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, p0, 0x20

    add-int/lit8 v0, v0, 0x20

    aget p0, p1, p0

    invoke-static {p0}, Lorg/bouncycastle/util/Integers;->numberOfLeadingZeros(I)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method static lessThan(I[I[I)Z
    .locals 3

    :cond_0
    aget v0, p1, p0

    const/high16 v1, -0x80000000

    add-int/2addr v0, v1

    aget v2, p2, p0

    add-int/2addr v2, v1

    if-ge v0, v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 v1, 0x0

    if-le v0, v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 p0, p0, -0x1

    if-gez p0, :cond_0

    return v1
.end method

.method static subShifted_NP(II[I[I[I[I)V
    .locals 20

    move/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    const/16 v4, 0x20

    const/4 v5, 0x0

    const-wide v6, 0xffffffffL

    const-wide/16 v8, 0x0

    if-nez v1, :cond_0

    move-wide v10, v8

    :goto_0
    if-gt v5, v0, :cond_3

    aget v1, v2, v5

    aget v3, p2, v5

    int-to-long v12, v3

    and-long/2addr v12, v6

    add-long/2addr v8, v12

    int-to-long v12, v1

    and-long/2addr v12, v6

    sub-long/2addr v8, v12

    add-long/2addr v10, v12

    aget v1, p3, v5

    int-to-long v12, v1

    and-long/2addr v12, v6

    sub-long/2addr v10, v12

    long-to-int v1, v10

    shr-long/2addr v10, v4

    aput v1, v2, v5

    int-to-long v12, v1

    and-long/2addr v12, v6

    sub-long/2addr v8, v12

    long-to-int v1, v8

    aput v1, p2, v5

    shr-long/2addr v8, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    if-ge v1, v4, :cond_1

    move-wide v10, v8

    move-wide v12, v10

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    if-gt v5, v0, :cond_3

    aget v14, v2, v5

    shl-int v15, v14, v1

    const/16 v16, 0x20

    neg-int v4, v1

    ushr-int/2addr v3, v4

    or-int/2addr v3, v15

    aget v15, p2, v5

    move-wide/from16 v17, v6

    int-to-long v6, v15

    and-long v6, v6, v17

    add-long/2addr v10, v6

    int-to-long v6, v3

    and-long v6, v6, v17

    sub-long/2addr v10, v6

    aget v3, p3, v5

    shl-int v6, v3, v1

    ushr-int v7, v8, v4

    or-int/2addr v6, v7

    int-to-long v7, v14

    and-long v7, v7, v17

    add-long/2addr v12, v7

    int-to-long v6, v6

    and-long v6, v6, v17

    sub-long/2addr v12, v6

    long-to-int v6, v12

    shr-long v12, v12, v16

    aput v6, v2, v5

    shl-int v7, v6, v1

    ushr-int v4, v9, v4

    or-int/2addr v4, v7

    int-to-long v7, v4

    and-long v7, v7, v17

    sub-long/2addr v10, v7

    long-to-int v4, v10

    aput v4, p2, v5

    shr-long v10, v10, v16

    add-int/lit8 v5, v5, 0x1

    move v8, v3

    move v9, v6

    move v3, v14

    move-wide/from16 v6, v17

    const/16 v4, 0x20

    goto :goto_1

    :cond_1
    move-wide/from16 v17, v6

    const/16 v16, 0x20

    invoke-static {v2, v5, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    ushr-int/lit8 v4, v1, 0x5

    and-int/lit8 v1, v1, 0x1f

    if-nez v1, :cond_2

    move v1, v4

    move-wide v5, v8

    :goto_2
    if-gt v1, v0, :cond_3

    aget v7, p2, v1

    int-to-long v10, v7

    and-long v10, v10, v17

    add-long/2addr v8, v10

    sub-int v7, v1, v4

    aget v10, v3, v7

    int-to-long v10, v10

    and-long v10, v10, v17

    sub-long/2addr v8, v10

    aget v10, v2, v1

    int-to-long v10, v10

    and-long v10, v10, v17

    add-long/2addr v5, v10

    aget v10, p3, v7

    int-to-long v10, v10

    and-long v10, v10, v17

    sub-long/2addr v5, v10

    long-to-int v10, v5

    aput v10, v2, v1

    shr-long v5, v5, v16

    aget v7, v2, v7

    int-to-long v10, v7

    and-long v10, v10, v17

    sub-long/2addr v8, v10

    long-to-int v7, v8

    aput v7, p2, v1

    shr-long v8, v8, v16

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move v12, v4

    move-wide v10, v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_3
    if-gt v12, v0, :cond_3

    sub-int v13, v12, v4

    aget v14, v3, v13

    shl-int v15, v14, v1

    neg-int v0, v1

    ushr-int/2addr v5, v0

    or-int/2addr v5, v15

    aget v15, p2, v12

    move/from16 v19, v0

    move/from16 p1, v1

    int-to-long v0, v15

    and-long v0, v0, v17

    add-long/2addr v8, v0

    int-to-long v0, v5

    and-long v0, v0, v17

    sub-long/2addr v8, v0

    aget v5, p3, v13

    shl-int v0, v5, p1

    ushr-int v1, v6, v19

    or-int/2addr v0, v1

    aget v1, v2, v12

    int-to-long v1, v1

    and-long v1, v1, v17

    add-long/2addr v10, v1

    int-to-long v0, v0

    and-long v0, v0, v17

    sub-long/2addr v10, v0

    long-to-int v0, v10

    aput v0, p4, v12

    shr-long v10, v10, v16

    aget v0, p4, v13

    shl-int v1, v0, p1

    ushr-int v2, v7, v19

    or-int/2addr v1, v2

    int-to-long v1, v1

    and-long v1, v1, v17

    sub-long/2addr v8, v1

    long-to-int v1, v8

    aput v1, p2, v12

    shr-long v8, v8, v16

    add-int/lit8 v12, v12, 0x1

    move/from16 v1, p1

    move-object/from16 v2, p4

    move v7, v0

    move v6, v5

    move v5, v14

    move/from16 v0, p0

    goto :goto_3

    :cond_3
    return-void
.end method

.method static subShifted_UV(II[I[I[I[I)V
    .locals 17

    move/from16 v0, p0

    ushr-int/lit8 v1, p1, 0x5

    and-int/lit8 v2, p1, 0x1f

    const/16 v3, 0x20

    const-wide v4, 0xffffffffL

    const-wide/16 v6, 0x0

    if-nez v2, :cond_0

    move v2, v1

    move-wide v8, v6

    :goto_0
    if-gt v2, v0, :cond_1

    aget v10, p2, v2

    int-to-long v10, v10

    and-long/2addr v10, v4

    add-long/2addr v6, v10

    aget v10, p3, v2

    int-to-long v10, v10

    and-long/2addr v10, v4

    add-long/2addr v8, v10

    sub-int v10, v2, v1

    aget v11, p4, v10

    int-to-long v11, v11

    and-long/2addr v11, v4

    sub-long/2addr v6, v11

    aget v10, p5, v10

    int-to-long v10, v10

    and-long/2addr v10, v4

    sub-long/2addr v8, v10

    long-to-int v10, v6

    aput v10, p2, v2

    shr-long/2addr v6, v3

    long-to-int v10, v8

    aput v10, p3, v2

    shr-long/2addr v8, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    move v12, v1

    move-wide v8, v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    if-gt v12, v0, :cond_1

    sub-int v13, v12, v1

    aget v14, p4, v13

    aget v13, p5, v13

    shl-int v15, v14, v2

    const/16 p1, 0x20

    neg-int v3, v2

    ushr-int/2addr v10, v3

    or-int/2addr v10, v15

    shl-int v15, v13, v2

    ushr-int v3, v11, v3

    or-int/2addr v3, v15

    aget v11, p2, v12

    move-wide v15, v4

    int-to-long v4, v11

    and-long/2addr v4, v15

    add-long/2addr v6, v4

    aget v4, p3, v12

    int-to-long v4, v4

    and-long/2addr v4, v15

    add-long/2addr v8, v4

    int-to-long v4, v10

    and-long/2addr v4, v15

    sub-long/2addr v6, v4

    int-to-long v3, v3

    and-long/2addr v3, v15

    sub-long/2addr v8, v3

    long-to-int v3, v6

    aput v3, p2, v12

    shr-long v6, v6, p1

    long-to-int v3, v8

    aput v3, p3, v12

    shr-long v8, v8, p1

    add-int/lit8 v12, v12, 0x1

    move v11, v13

    move v10, v14

    move-wide v4, v15

    const/16 v3, 0x20

    goto :goto_1

    :cond_1
    return-void
.end method
