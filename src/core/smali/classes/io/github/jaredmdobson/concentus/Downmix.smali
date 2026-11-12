.class Lio/github/jaredmdobson/concentus/Downmix;
.super Ljava/lang/Object;
.source "Downmix.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static downmix_int([SI[IIIIIII)V
    .locals 4

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v1, v0, p3

    add-int v2, v0, p5

    mul-int v2, v2, p8

    add-int/2addr v2, p6

    .line 54
    aget-short v2, p0, v2

    aput v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p6, -0x1

    const/4 v0, -0x2

    if-le p7, p6, :cond_1

    const/4 p6, 0x0

    :goto_1
    if-ge p6, p4, :cond_3

    add-int v1, p6, p3

    .line 58
    aget v2, p2, v1

    add-int v3, p6, p5

    mul-int v3, v3, p8

    add-int/2addr v3, p7

    aget-short v3, p0, v3

    add-int/2addr v2, v3

    aput v2, p2, v1

    add-int/lit8 p6, p6, 0x1

    goto :goto_1

    :cond_1
    if-ne p7, v0, :cond_3

    const/4 p6, 0x1

    :goto_2
    if-ge p6, p8, :cond_3

    const/4 p7, 0x0

    :goto_3
    if-ge p7, p4, :cond_2

    add-int v1, p7, p3

    .line 64
    aget v2, p2, v1

    add-int v3, p7, p5

    mul-int v3, v3, p8

    add-int/2addr v3, p6

    aget-short v3, p0, v3

    add-int/2addr v2, v3

    aput v2, p2, v1

    add-int/lit8 p7, p7, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 p6, p6, 0x1

    goto :goto_2

    :cond_3
    if-ne p8, v0, :cond_4

    const/16 p0, 0x1000

    .line 70
    div-int/2addr p0, p8

    goto :goto_4

    :cond_4
    const/16 p0, 0x800

    :goto_4
    if-ge p1, p4, :cond_5

    add-int p5, p1, p3

    .line 75
    aget p6, p2, p5

    mul-int p6, p6, p0

    aput p6, p2, p5

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_5
    return-void
.end method
