.class Lio/github/jaredmdobson/concentus/K2A;
.super Ljava/lang/Object;
.source "K2A.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static silk_k2a([I[SI)V
    .locals 7

    const/16 v0, 0x10

    .line 43
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    .line 47
    aget v4, p0, v3

    aput v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_1

    .line 50
    aget v4, p0, v3

    sub-int v5, v2, v3

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    aget v5, v0, v5

    invoke-static {v5, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v5

    aget-short v6, p1, v2

    invoke-static {v4, v5, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v4

    aput v4, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 52
    :cond_1
    aget-short v3, p1, v2

    const/16 v4, 0x9

    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x0

    aput v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method static silk_k2a_Q16([I[II)V
    .locals 7

    const/16 v0, 0x10

    .line 63
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    .line 67
    aget v4, p0, v3

    aput v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_1

    .line 70
    aget v4, p0, v3

    sub-int v5, v2, v3

    add-int/lit8 v5, v5, -0x1

    aget v5, v0, v5

    aget v6, p1, v2

    invoke-static {v4, v5, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWW(III)I

    move-result v4

    aput v4, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 72
    :cond_1
    aget v3, p1, v2

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x0

    aput v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
