.class Lio/github/jaredmdobson/concentus/Sort;
.super Ljava/lang/Object;
.source "Sort.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static silk_insertion_sort_decreasing_int16([S[III)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 133
    :goto_0
    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    if-lez p2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 134
    :goto_1
    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    if-lt p2, p3, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 135
    :goto_2
    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    :goto_3
    if-ge v0, p3, :cond_3

    .line 139
    aput v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    if-ge v1, p3, :cond_5

    .line 144
    aget-short v0, p0, v1

    add-int/lit8 v2, v1, -0x1

    :goto_5
    if-ltz v2, :cond_4

    .line 145
    aget-short v3, p0, v2

    if-le v0, v3, :cond_4

    add-int/lit8 v4, v2, 0x1

    .line 146
    aput-short v3, p0, v4

    .line 148
    aget v3, p1, v2

    aput v3, p1, v4

    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 151
    aput-short v0, p0, v2

    .line 153
    aput v1, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    move v0, p3

    :goto_6
    if-ge v0, p2, :cond_8

    .line 160
    aget-short v1, p0, v0

    add-int/lit8 v2, p3, -0x1

    .line 161
    aget-short v2, p0, v2

    if-le v1, v2, :cond_7

    add-int/lit8 v2, p3, -0x2

    :goto_7
    if-ltz v2, :cond_6

    .line 162
    aget-short v3, p0, v2

    if-le v1, v3, :cond_6

    add-int/lit8 v4, v2, 0x1

    .line 163
    aput-short v3, p0, v4

    .line 165
    aget v3, p1, v2

    aput v3, p1, v4

    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 168
    aput-short v1, p0, v2

    .line 170
    aput v0, p1, v2

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    return-void
.end method

.method static silk_insertion_sort_increasing([I[III)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 48
    :goto_0
    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    if-lez p2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 49
    :goto_1
    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    if-lt p2, p3, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 50
    :goto_2
    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    :goto_3
    if-ge v0, p3, :cond_3

    .line 54
    aput v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    if-ge v1, p3, :cond_5

    .line 59
    aget v0, p0, v1

    add-int/lit8 v2, v1, -0x1

    :goto_5
    if-ltz v2, :cond_4

    .line 61
    aget v3, p0, v2

    if-ge v0, v3, :cond_4

    add-int/lit8 v4, v2, 0x1

    .line 62
    aput v3, p0, v4

    .line 64
    aget v3, p1, v2

    aput v3, p1, v4

    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 68
    aput v0, p0, v2

    .line 70
    aput v1, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    move v0, p3

    :goto_6
    if-ge v0, p2, :cond_8

    .line 77
    aget v1, p0, v0

    add-int/lit8 v2, p3, -0x1

    .line 79
    aget v2, p0, v2

    if-ge v1, v2, :cond_7

    add-int/lit8 v2, p3, -0x2

    :goto_7
    if-ltz v2, :cond_6

    .line 80
    aget v3, p0, v2

    if-ge v1, v3, :cond_6

    add-int/lit8 v4, v2, 0x1

    .line 81
    aput v3, p0, v4

    .line 83
    aget v3, p1, v2

    aput v3, p1, v4

    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 87
    aput v1, p0, v2

    .line 89
    aput v0, p1, v2

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    return-void
.end method

.method static silk_insertion_sort_increasing_all_values_int16([SI)V
    .locals 5

    const/4 v0, 0x1

    if-lez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 109
    :goto_0
    invoke-static {v1}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    :goto_1
    if-ge v0, p1, :cond_2

    .line 113
    aget-short v1, p0, v0

    add-int/lit8 v2, v0, -0x1

    :goto_2
    if-ltz v2, :cond_1

    .line 114
    aget-short v3, p0, v2

    if-ge v1, v3, :cond_1

    add-int/lit8 v4, v2, 0x1

    .line 115
    aput-short v3, p0, v4

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 118
    aput-short v1, p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
