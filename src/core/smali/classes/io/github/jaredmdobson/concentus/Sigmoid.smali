.class Lio/github/jaredmdobson/concentus/Sigmoid;
.super Ljava/lang/Object;
.source "Sigmoid.java"


# static fields
.field private static final sigm_LUT_neg_Q15:[I

.field private static final sigm_LUT_pos_Q15:[I

.field private static final sigm_LUT_slope_Q10:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x6

    .line 39
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lio/github/jaredmdobson/concentus/Sigmoid;->sigm_LUT_slope_Q10:[I

    .line 43
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lio/github/jaredmdobson/concentus/Sigmoid;->sigm_LUT_pos_Q15:[I

    .line 47
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lio/github/jaredmdobson/concentus/Sigmoid;->sigm_LUT_neg_Q15:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xed
        0x99
        0x49
        0x1e
        0xc
        0x7
    .end array-data

    :array_1
    .array-data 4
        0x4000
        0x5d93
        0x70bd
        0x79ed
        0x7db2
        0x7f24
    .end array-data

    :array_2
    .array-data 4
        0x4000
        0x226c
        0xf42
        0x612
        0x24d
        0xdb
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static silk_sigm_Q15(I)I
    .locals 3

    const/4 v0, 0x5

    const/16 v1, 0xc0

    if-gez p0, :cond_1

    neg-int p0, p0

    if-lt p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 62
    :cond_0
    invoke-static {p0, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v0

    .line 63
    sget-object v1, Lio/github/jaredmdobson/concentus/Sigmoid;->sigm_LUT_neg_Q15:[I

    aget v1, v1, v0

    sget-object v2, Lio/github/jaredmdobson/concentus/Sigmoid;->sigm_LUT_slope_Q10:[I

    aget v0, v2, v0

    and-int/lit8 p0, p0, 0x1f

    invoke-static {v0, p0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result p0

    sub-int/2addr v1, p0

    return v1

    :cond_1
    if-lt p0, v1, :cond_2

    const/16 p0, 0x7fff

    return p0

    .line 70
    :cond_2
    invoke-static {p0, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v0

    .line 71
    sget-object v1, Lio/github/jaredmdobson/concentus/Sigmoid;->sigm_LUT_pos_Q15:[I

    aget v1, v1, v0

    sget-object v2, Lio/github/jaredmdobson/concentus/Sigmoid;->sigm_LUT_slope_Q10:[I

    aget v0, v2, v0

    and-int/lit8 p0, p0, 0x1f

    invoke-static {v0, p0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method
