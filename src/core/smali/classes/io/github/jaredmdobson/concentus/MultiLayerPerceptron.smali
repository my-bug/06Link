.class Lio/github/jaredmdobson/concentus/MultiLayerPerceptron;
.super Ljava/lang/Object;
.source "MultiLayerPerceptron.java"


# static fields
.field private static final MAX_NEURONS:I = 0x64


# direct methods
.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static mlp_process(Lio/github/jaredmdobson/concentus/MLPState;[F[F)V
    .locals 9

    const/16 v0, 0x64

    .line 67
    new-array v0, v0, [F

    .line 68
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/MLPState;->weights:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 72
    :goto_0
    iget-object v5, p0, Lio/github/jaredmdobson/concentus/MLPState;->topo:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    if-ge v3, v5, :cond_1

    .line 74
    aget v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x0

    .line 76
    :goto_1
    iget-object v7, p0, Lio/github/jaredmdobson/concentus/MLPState;->topo:[I

    aget v7, v7, v2

    if-ge v6, v7, :cond_0

    .line 77
    aget v7, p1, v6

    aget v8, v1, v4

    mul-float v7, v7, v8

    add-float/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 80
    :cond_0
    invoke-static {v5}, Lio/github/jaredmdobson/concentus/MultiLayerPerceptron;->tansig_approx(F)F

    move-result v5

    aput v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 83
    :goto_2
    iget-object v3, p0, Lio/github/jaredmdobson/concentus/MLPState;->topo:[I

    const/4 v5, 0x2

    aget v3, v3, v5

    if-ge p1, v3, :cond_3

    .line 85
    aget v3, v1, v4

    add-int/2addr v4, v6

    const/4 v5, 0x0

    .line 87
    :goto_3
    iget-object v7, p0, Lio/github/jaredmdobson/concentus/MLPState;->topo:[I

    aget v7, v7, v6

    if-ge v5, v7, :cond_2

    .line 88
    aget v7, v0, v5

    aget v8, v1, v4

    mul-float v7, v7, v8

    add-float/2addr v3, v7

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 91
    :cond_2
    invoke-static {v3}, Lio/github/jaredmdobson/concentus/MultiLayerPerceptron;->tansig_approx(F)F

    move-result v3

    aput v3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method static tansig_approx(F)F
    .locals 5

    const/high16 v0, 0x41000000    # 8.0f

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_0

    return v1

    :cond_0
    const/high16 v0, -0x3f000000    # -8.0f

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v0, p0, v0

    if-gtz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_2

    neg-float p0, p0

    goto :goto_0

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    const/high16 v0, 0x41c80000    # 25.0f

    mul-float v0, v0, p0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v0, v3

    float-to-double v3, v0

    .line 57
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v0, v3

    const v3, 0x3d23d70a    # 0.04f

    int-to-float v4, v0

    mul-float v4, v4, v3

    sub-float/2addr p0, v4

    .line 59
    sget-object v3, Lio/github/jaredmdobson/concentus/OpusTables;->tansig_table:[F

    aget v0, v3, v0

    mul-float v3, v0, v0

    sub-float v3, v1, v3

    mul-float v3, v3, p0

    mul-float p0, p0, v0

    sub-float/2addr v1, p0

    mul-float v3, v3, v1

    add-float/2addr v0, v3

    mul-float v2, v2, v0

    return v2
.end method
