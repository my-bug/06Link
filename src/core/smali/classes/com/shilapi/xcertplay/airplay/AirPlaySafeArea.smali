.class public final Lcom/shilapi/xcertplay/airplay/AirPlaySafeArea;
.super Ljava/lang/Object;
.source "SafeArea.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSafeArea.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeArea.kt\ncom/shilapi/xcertplay/airplay/AirPlaySafeArea\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,173:1\n1#2:174\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007J\u0016\u0010\t\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007J \u0010\n\u001a\u00020\u00052\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0007J.\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0007J0\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0007J \u0010\u0018\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J \u0010\u0019\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u0007H\u0002J \u0010\u001d\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u0007H\u0002\u00a8\u0006!"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/AirPlaySafeArea;",
        "",
        "<init>",
        "()V",
        "full",
        "Lcom/shilapi/xcertplay/airplay/SafeAreaRect;",
        "widthPixels",
        "",
        "heightPixels",
        "default",
        "resolve",
        "mapping",
        "activityWidthPixels",
        "activityHeightPixels",
        "scaleRect",
        "rect",
        "sourceWidthPixels",
        "sourceHeightPixels",
        "targetWidthPixels",
        "targetHeightPixels",
        "toInsets",
        "Lcom/shilapi/xcertplay/airplay/AirPlayInsets;",
        "displayWidthPixels",
        "displayHeightPixels",
        "alignDimensionsToEven",
        "scaleCoordinate",
        "coordinate",
        "source",
        "target",
        "roundFraction",
        "value",
        "numerator",
        "denominator",
        "shared_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlaySafeArea;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/airplay/AirPlaySafeArea;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/airplay/AirPlaySafeArea;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/airplay/AirPlaySafeArea;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlaySafeArea;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final alignDimensionsToEven(Lcom/shilapi/xcertplay/airplay/SafeAreaRect;II)Lcom/shilapi/xcertplay/airplay/SafeAreaRect;
    .locals 7

    .line 128
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->getLeft()I

    move-result v0

    .line 129
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->getTop()I

    move-result v1

    .line 130
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->getRight()I

    move-result v2

    .line 131
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->getBottom()I

    move-result p1

    sub-int v3, v2, v0

    .line 132
    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    if-ge v2, p2, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    :cond_1
    :goto_0
    sub-int v3, p1, v1

    .line 135
    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    if-ge p1, p3, :cond_2

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 138
    :cond_3
    :goto_1
    new-instance v3, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;

    add-int/lit8 v4, p2, -0x1

    const/4 v5, 0x0

    .line 139
    invoke-static {v0, v5, v4}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v4

    add-int/lit8 v6, p3, -0x1

    .line 140
    invoke-static {v1, v5, v6}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v5

    add-int/lit8 v0, v0, 0x1

    .line 141
    invoke-static {v2, v0, p2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p2

    add-int/lit8 v1, v1, 0x1

    .line 142
    invoke-static {p1, v1, p3}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p1

    .line 138
    invoke-direct {v3, v4, v5, p2, p1}, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;-><init>(IIII)V

    return-object v3
.end method

.method private final roundFraction(III)I
    .locals 4

    int-to-long v0, p1

    int-to-long p1, p2

    mul-long v0, v0, p1

    int-to-long p1, p3

    const-wide/16 v2, 0x2

    .line 150
    div-long v2, p1, v2

    add-long/2addr v0, v2

    div-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method private final scaleCoordinate(III)I
    .locals 4

    int-to-long v0, p1

    int-to-long v2, p3

    mul-long v0, v0, v2

    int-to-long p1, p2

    const-wide/16 v2, 0x2

    .line 147
    div-long v2, p1, v2

    add-long/2addr v0, v2

    div-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method


# virtual methods
.method public final default(II)Lcom/shilapi/xcertplay/airplay/SafeAreaRect;
    .locals 6

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x4

    .line 42
    invoke-direct {p0, p1, v0, v1}, Lcom/shilapi/xcertplay/airplay/AirPlaySafeArea;->roundFraction(III)I

    move-result v2

    add-int/lit8 v3, p1, -0x1

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v2

    .line 43
    invoke-direct {p0, p2, v0, v1}, Lcom/shilapi/xcertplay/airplay/AirPlaySafeArea;->roundFraction(III)I

    move-result v0

    add-int/lit8 v3, p2, -0x1

    invoke-static {v0, v4, v3}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v0

    const/4 v3, 0x3

    .line 44
    invoke-direct {p0, p1, v3, v1}, Lcom/shilapi/xcertplay/airplay/AirPlaySafeArea;->roundFraction(III)I

    move-result v4

    add-int/lit8 v5, v2, 0x1

    .line 45
    invoke-static {v4, v5, p1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p1

    .line 46
    invoke-direct {p0, p2, v3, v1}, Lcom/shilapi/xcertplay/airplay/AirPlaySafeArea;->roundFraction(III)I

    move-result v1

    add-int/lit8 v3, v0, 0x1

    .line 47
    invoke-static {v1, v3, p2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p2

    .line 48
    new-instance v1, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;

    invoke-direct {v1, v2, v0, p1, p2}, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;-><init>(IIII)V

    return-object v1

    .line 41
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Activity dimensions must be positive"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final full(II)Lcom/shilapi/xcertplay/airplay/SafeAreaRect;
    .locals 2

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 33
    new-instance v0, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p2}, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;-><init>(IIII)V

    return-object v0

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Activity dimensions must be positive"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final resolve(Lcom/shilapi/xcertplay/airplay/SafeAreaRect;II)Lcom/shilapi/xcertplay/airplay/SafeAreaRect;
    .locals 0

    if-eqz p1, :cond_1

    .line 55
    invoke-virtual {p1, p2, p3}, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->clampTo(II)Lcom/shilapi/xcertplay/airplay/SafeAreaRect;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    .line 56
    :cond_1
    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/shilapi/xcertplay/airplay/AirPlaySafeArea;->full(II)Lcom/shilapi/xcertplay/airplay/SafeAreaRect;

    move-result-object p1

    return-object p1
.end method

.method public final scaleRect(Lcom/shilapi/xcertplay/airplay/SafeAreaRect;IIII)Lcom/shilapi/xcertplay/airplay/SafeAreaRect;
    .locals 4

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez p2, :cond_1

    if-lez p3, :cond_1

    if-lez p4, :cond_0

    if-lez p5, :cond_0

    .line 71
    invoke-virtual {p1, p2, p3}, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->clampTo(II)Lcom/shilapi/xcertplay/airplay/SafeAreaRect;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->getLeft()I

    move-result v0

    invoke-direct {p0, v0, p2, p4}, Lcom/shilapi/xcertplay/airplay/AirPlaySafeArea;->scaleCoordinate(III)I

    move-result v0

    add-int/lit8 v1, p4, -0x1

    const/4 v2, 0x0

    .line 73
    invoke-static {v0, v2, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v0

    .line 74
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->getTop()I

    move-result v1

    invoke-direct {p0, v1, p3, p5}, Lcom/shilapi/xcertplay/airplay/AirPlaySafeArea;->scaleCoordinate(III)I

    move-result v1

    add-int/lit8 v3, p5, -0x1

    .line 75
    invoke-static {v1, v2, v3}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v1

    .line 76
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->getRight()I

    move-result v2

    invoke-direct {p0, v2, p2, p4}, Lcom/shilapi/xcertplay/airplay/AirPlaySafeArea;->scaleCoordinate(III)I

    move-result p2

    add-int/lit8 v2, v0, 0x1

    .line 77
    invoke-static {p2, v2, p4}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p2

    .line 78
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->getBottom()I

    move-result p1

    invoke-direct {p0, p1, p3, p5}, Lcom/shilapi/xcertplay/airplay/AirPlaySafeArea;->scaleCoordinate(III)I

    move-result p1

    add-int/lit8 p3, v1, 0x1

    .line 79
    invoke-static {p1, p3, p5}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p1

    .line 80
    new-instance p3, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;

    invoke-direct {p3, v0, v1, p2, p1}, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;-><init>(IIII)V

    return-object p3

    .line 68
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Target dimensions must be positive"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Source dimensions must be positive"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final toInsets(Lcom/shilapi/xcertplay/airplay/SafeAreaRect;IIII)Lcom/shilapi/xcertplay/airplay/AirPlayInsets;
    .locals 4

    if-lez p2, :cond_1

    if-lez p3, :cond_1

    if-lez p4, :cond_0

    if-lez p5, :cond_0

    .line 101
    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/airplay/AirPlaySafeArea;->resolve(Lcom/shilapi/xcertplay/airplay/SafeAreaRect;II)Lcom/shilapi/xcertplay/airplay/SafeAreaRect;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->getLeft()I

    move-result v0

    invoke-direct {p0, v0, p2, p4}, Lcom/shilapi/xcertplay/airplay/AirPlaySafeArea;->scaleCoordinate(III)I

    move-result v0

    add-int/lit8 v1, p4, -0x1

    const/4 v2, 0x0

    .line 103
    invoke-static {v0, v2, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v0

    .line 104
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->getTop()I

    move-result v1

    invoke-direct {p0, v1, p3, p5}, Lcom/shilapi/xcertplay/airplay/AirPlaySafeArea;->scaleCoordinate(III)I

    move-result v1

    add-int/lit8 v3, p5, -0x1

    .line 105
    invoke-static {v1, v2, v3}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v1

    .line 106
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->getRight()I

    move-result v2

    invoke-direct {p0, v2, p2, p4}, Lcom/shilapi/xcertplay/airplay/AirPlaySafeArea;->scaleCoordinate(III)I

    move-result p2

    add-int/lit8 v2, v0, 0x1

    .line 107
    invoke-static {p2, v2, p4}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p2

    .line 108
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->getBottom()I

    move-result p1

    invoke-direct {p0, p1, p3, p5}, Lcom/shilapi/xcertplay/airplay/AirPlaySafeArea;->scaleCoordinate(III)I

    move-result p1

    add-int/lit8 p3, v1, 0x1

    .line 109
    invoke-static {p1, p3, p5}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p1

    .line 111
    new-instance p3, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;

    invoke-direct {p3, v0, v1, p2, p1}, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;-><init>(IIII)V

    .line 110
    invoke-direct {p0, p3, p4, p5}, Lcom/shilapi/xcertplay/airplay/AirPlaySafeArea;->alignDimensionsToEven(Lcom/shilapi/xcertplay/airplay/SafeAreaRect;II)Lcom/shilapi/xcertplay/airplay/SafeAreaRect;

    move-result-object p1

    .line 115
    new-instance p2, Lcom/shilapi/xcertplay/airplay/AirPlayInsets;

    .line 116
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->getTop()I

    move-result p3

    .line 117
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->getBottom()I

    move-result v0

    sub-int/2addr p5, v0

    .line 118
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->getLeft()I

    move-result v0

    .line 119
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->getRight()I

    move-result p1

    sub-int/2addr p4, p1

    .line 115
    invoke-direct {p2, p3, p5, v0, p4}, Lcom/shilapi/xcertplay/airplay/AirPlayInsets;-><init>(IIII)V

    return-object p2

    .line 98
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Display dimensions must be positive"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Activity dimensions must be positive"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
