.class public abstract Lorg/bouncycastle/math/raw/Mont256;
.super Ljava/lang/Object;


# static fields
.field private static final M:J = 0xffffffffL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inverse32(I)I
    .locals 2

    mul-int v0, p0, p0

    rsub-int/lit8 v0, v0, 0x2

    mul-int v0, v0, p0

    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int v0, v0, v1

    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int v0, v0, v1

    mul-int p0, p0, v0

    rsub-int/lit8 p0, p0, 0x2

    mul-int v0, v0, p0

    return v0
.end method

.method public static multAdd([I[I[I[II)V
    .locals 28

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const/4 v2, 0x0

    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    const/16 v9, 0x8

    if-ge v7, v9, :cond_1

    aget v10, v0, v2

    int-to-long v10, v10

    and-long/2addr v10, v5

    aget v12, p0, v7

    int-to-long v12, v12

    and-long/2addr v12, v5

    mul-long v14, v12, v3

    and-long v16, v14, v5

    add-long v10, v16, v10

    const/16 v16, 0x0

    long-to-int v2, v10

    mul-int v2, v2, p4

    move-wide/from16 v17, v5

    int-to-long v5, v2

    and-long v5, v5, v17

    aget v2, v1, v16

    move-wide/from16 v20, v10

    int-to-long v9, v2

    and-long v9, v9, v17

    mul-long v9, v9, v5

    and-long v22, v9, v17

    add-long v20, v20, v22

    const/16 v2, 0x20

    ushr-long v20, v20, v2

    ushr-long/2addr v14, v2

    add-long v20, v20, v14

    ushr-long/2addr v9, v2

    add-long v20, v20, v9

    const/4 v9, 0x1

    const/16 v10, 0x8

    :goto_1
    if-ge v9, v10, :cond_0

    aget v11, p1, v9

    int-to-long v14, v11

    and-long v14, v14, v17

    mul-long v14, v14, v12

    aget v11, v1, v9

    move-wide/from16 v22, v3

    const/16 v4, 0x20

    int-to-long v2, v11

    and-long v2, v2, v17

    mul-long v2, v2, v5

    and-long v24, v14, v17

    and-long v26, v2, v17

    add-long v24, v24, v26

    aget v11, v0, v9

    move-wide/from16 v26, v5

    const/16 v6, 0x20

    int-to-long v4, v11

    and-long v4, v4, v17

    add-long v24, v24, v4

    add-long v4, v20, v24

    add-int/lit8 v11, v9, -0x1

    const/16 v19, 0x20

    long-to-int v6, v4

    aput v6, v0, v11

    ushr-long v4, v4, v19

    ushr-long v14, v14, v19

    add-long/2addr v4, v14

    ushr-long v2, v2, v19

    add-long v20, v4, v2

    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v3, v22

    move-wide/from16 v5, v26

    const/16 v2, 0x20

    goto :goto_1

    :cond_0
    move-wide/from16 v22, v3

    const/16 v19, 0x20

    int-to-long v2, v8

    and-long v2, v2, v17

    add-long v2, v20, v2

    const/4 v4, 0x7

    long-to-int v5, v2

    aput v5, v0, v4

    ushr-long v2, v2, v19

    long-to-int v8, v2

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v5, v17

    move-wide/from16 v3, v22

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_1
    if-nez v8, :cond_3

    invoke-static/range {p2 .. p3}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    :goto_2
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    return-void
.end method

.method public static multAddXF([I[I[I[I)V
    .locals 26

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const/4 v2, 0x0

    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    const/16 v9, 0x8

    if-ge v7, v9, :cond_1

    aget v10, p0, v7

    int-to-long v10, v10

    and-long/2addr v10, v5

    mul-long v12, v10, v3

    aget v14, v0, v2

    int-to-long v14, v14

    and-long/2addr v14, v5

    add-long/2addr v12, v14

    and-long v14, v12, v5

    const/16 v16, 0x20

    ushr-long v12, v12, v16

    add-long/2addr v12, v14

    const/16 v17, 0x1

    const/4 v2, 0x1

    :goto_1
    if-ge v2, v9, :cond_0

    move-wide/from16 v18, v5

    aget v5, p1, v2

    int-to-long v5, v5

    and-long v5, v5, v18

    mul-long v5, v5, v10

    aget v9, v1, v2

    move-wide/from16 v20, v3

    move v4, v2

    int-to-long v2, v9

    and-long v2, v2, v18

    mul-long v2, v2, v14

    and-long v22, v5, v18

    and-long v24, v2, v18

    add-long v22, v22, v24

    aget v9, v0, v4

    move-wide/from16 v24, v2

    int-to-long v2, v9

    and-long v2, v2, v18

    add-long v22, v22, v2

    add-long v12, v12, v22

    add-int/lit8 v2, v4, -0x1

    long-to-int v3, v12

    aput v3, v0, v2

    ushr-long v2, v12, v16

    ushr-long v5, v5, v16

    add-long/2addr v2, v5

    ushr-long v5, v24, v16

    add-long v12, v2, v5

    add-int/lit8 v2, v4, 0x1

    move-wide/from16 v5, v18

    move-wide/from16 v3, v20

    const/16 v9, 0x8

    goto :goto_1

    :cond_0
    move-wide/from16 v20, v3

    move-wide/from16 v18, v5

    int-to-long v2, v8

    and-long v2, v2, v18

    add-long/2addr v12, v2

    const/4 v2, 0x7

    long-to-int v3, v12

    aput v3, v0, v2

    ushr-long v2, v12, v16

    long-to-int v8, v2

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v3, v20

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    if-nez v8, :cond_3

    invoke-static/range {p2 .. p3}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    :goto_2
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    return-void
.end method

.method public static reduce([I[II)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x8

    if-ge v3, v4, :cond_1

    aget v5, v0, v2

    mul-int v6, v5, p2

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    aget v10, v1, v2

    int-to-long v10, v10

    and-long/2addr v10, v8

    mul-long v10, v10, v6

    int-to-long v12, v5

    and-long/2addr v12, v8

    add-long/2addr v10, v12

    const/16 v5, 0x20

    ushr-long/2addr v10, v5

    const/4 v12, 0x1

    :goto_1
    if-ge v12, v4, :cond_0

    aget v13, v1, v12

    int-to-long v13, v13

    and-long/2addr v13, v8

    mul-long v13, v13, v6

    aget v15, v0, v12

    move/from16 v16, v3

    int-to-long v2, v15

    and-long/2addr v2, v8

    add-long/2addr v13, v2

    add-long/2addr v10, v13

    add-int/lit8 v2, v12, -0x1

    long-to-int v3, v10

    aput v3, v0, v2

    ushr-long/2addr v10, v5

    add-int/lit8 v12, v12, 0x1

    move/from16 v3, v16

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    move/from16 v16, v3

    const/4 v2, 0x7

    long-to-int v3, v10

    aput v3, v0, v2

    add-int/lit8 v3, v16, 0x1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-static/range {p0 .. p1}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    :cond_2
    return-void
.end method

.method public static reduceXF([I[I)V
    .locals 14

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    aget v3, p0, v0

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    const/4 v7, 0x1

    move-wide v8, v3

    :goto_1
    if-ge v7, v2, :cond_0

    aget v10, p1, v7

    int-to-long v10, v10

    and-long/2addr v10, v5

    mul-long v10, v10, v3

    aget v12, p0, v7

    int-to-long v12, v12

    and-long/2addr v12, v5

    add-long/2addr v10, v12

    add-long/2addr v8, v10

    add-int/lit8 v10, v7, -0x1

    long-to-int v11, v8

    aput v11, p0, v10

    const/16 v10, 0x20

    ushr-long/2addr v8, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x7

    long-to-int v3, v8

    aput v3, p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0, p1, p0}, Lorg/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    :cond_2
    return-void
.end method
