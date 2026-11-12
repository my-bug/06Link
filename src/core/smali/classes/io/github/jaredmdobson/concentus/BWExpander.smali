.class Lio/github/jaredmdobson/concentus/BWExpander;
.super Ljava/lang/Object;
.source "BWExpander.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static silk_bwexpander([SII)V
    .locals 4

    const/high16 v0, 0x10000

    sub-int v0, p2, v0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, p1, -0x1

    const/16 v3, 0x10

    if-ge v1, v2, :cond_0

    .line 73
    aget-short v2, p0, v1

    invoke-static {p2, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_MUL(II)I

    move-result v2

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v2

    int-to-short v2, v2

    aput-short v2, p0, v1

    .line 74
    invoke-static {p2, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_MUL(II)I

    move-result v2

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v2

    add-int/2addr p2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    :cond_0
    aget-short p1, p0, v2

    invoke-static {p2, p1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_MUL(II)I

    move-result p1

    invoke-static {p1, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result p1

    int-to-short p1, p1

    aput-short p1, p0, v2

    return-void
.end method

.method static silk_bwexpander_32([III)V
    .locals 4

    const/high16 v0, 0x10000

    sub-int v0, p2, v0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, p1, -0x1

    if-ge v1, v2, :cond_0

    .line 51
    aget v2, p0, v1

    invoke-static {p2, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWW(II)I

    move-result v2

    aput v2, p0, v1

    .line 52
    invoke-static {p2, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_MUL(II)I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v2

    add-int/2addr p2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    :cond_0
    aget p1, p0, v2

    invoke-static {p2, p1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWW(II)I

    move-result p1

    aput p1, p0, v2

    return-void
.end method
