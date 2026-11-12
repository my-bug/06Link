.class public final Lcom/shilapi/xcertplay/airplay/AirPlayDisplaySettings;
.super Ljava/lang/Object;
.source "AirPlayDisplaySettings.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/airplay/AirPlayDisplaySettings$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0005J\u000e\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0005J\u000e\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0005J6\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u000eJ\u000e\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0005J\u000e\u0010 \u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0005J(\u0010!\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u00052\u0006\u0010$\u001a\u00020\u0005H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/AirPlayDisplaySettings;",
        "",
        "<init>",
        "()V",
        "MIN_FPS",
        "",
        "MAX_FPS",
        "FPS_STEP",
        "DEFAULT_FPS",
        "MIN_WIDTH_PHYSICAL_MM",
        "MAX_WIDTH_PHYSICAL_MM",
        "WIDTH_PHYSICAL_MM_STEP",
        "DEFAULT_WIDTH_PHYSICAL_MM",
        "DEFAULT_PHYSICAL_SIZE_BASIS",
        "Lcom/shilapi/xcertplay/airplay/AirPlayPhysicalSizeBasis;",
        "getDEFAULT_PHYSICAL_SIZE_BASIS",
        "()Lcom/shilapi/xcertplay/airplay/AirPlayPhysicalSizeBasis;",
        "MIN_REPORTED_PHYSICAL_MM",
        "MAX_REPORTED_PHYSICAL_MM",
        "sanitizeFps",
        "value",
        "sanitizeWidthPhysicalMm",
        "sanitizeReportedPhysicalMm",
        "resolvePhysicalSizeMm",
        "Lcom/shilapi/xcertplay/airplay/AirPlayPhysicalSizeMm;",
        "currentWidthPixels",
        "currentHeightPixels",
        "maximumWidthPixels",
        "maximumHeightPixels",
        "referenceMillimeters",
        "basis",
        "fpsProgress",
        "widthPhysicalMmProgress",
        "snapToStep",
        "minimum",
        "maximum",
        "step",
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
.field public static final DEFAULT_FPS:I = 0x3c

.field private static final DEFAULT_PHYSICAL_SIZE_BASIS:Lcom/shilapi/xcertplay/airplay/AirPlayPhysicalSizeBasis;

.field public static final DEFAULT_WIDTH_PHYSICAL_MM:I = 0xc8

.field public static final FPS_STEP:I = 0x5

.field public static final INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayDisplaySettings;

.field public static final MAX_FPS:I = 0x3c

.field public static final MAX_REPORTED_PHYSICAL_MM:I = 0x7d0

.field public static final MAX_WIDTH_PHYSICAL_MM:I = 0x190

.field public static final MIN_FPS:I = 0x1e

.field public static final MIN_REPORTED_PHYSICAL_MM:I = 0x1

.field public static final MIN_WIDTH_PHYSICAL_MM:I = 0x64

.field public static final WIDTH_PHYSICAL_MM_STEP:I = 0x32


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/airplay/AirPlayDisplaySettings;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/airplay/AirPlayDisplaySettings;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/airplay/AirPlayDisplaySettings;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayDisplaySettings;

    .line 24
    sget-object v0, Lcom/shilapi/xcertplay/airplay/AirPlayPhysicalSizeBasis;->WIDTH:Lcom/shilapi/xcertplay/airplay/AirPlayPhysicalSizeBasis;

    sput-object v0, Lcom/shilapi/xcertplay/airplay/AirPlayDisplaySettings;->DEFAULT_PHYSICAL_SIZE_BASIS:Lcom/shilapi/xcertplay/airplay/AirPlayPhysicalSizeBasis;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final snapToStep(IIII)I
    .locals 0

    .line 88
    invoke-static {p1, p2, p3}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p1

    sub-int/2addr p1, p2

    .line 89
    div-int/lit8 p3, p4, 0x2

    add-int/2addr p1, p3

    div-int/2addr p1, p4

    mul-int p1, p1, p4

    add-int/2addr p1, p2

    return p1
.end method


# virtual methods
.method public final fpsProgress(I)I
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlayDisplaySettings;->sanitizeFps(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1e

    div-int/lit8 p1, p1, 0x5

    return p1
.end method

.method public final getDEFAULT_PHYSICAL_SIZE_BASIS()Lcom/shilapi/xcertplay/airplay/AirPlayPhysicalSizeBasis;
    .locals 1

    .line 24
    sget-object v0, Lcom/shilapi/xcertplay/airplay/AirPlayDisplaySettings;->DEFAULT_PHYSICAL_SIZE_BASIS:Lcom/shilapi/xcertplay/airplay/AirPlayPhysicalSizeBasis;

    return-object v0
.end method

.method public final resolvePhysicalSizeMm(IIIIILcom/shilapi/xcertplay/airplay/AirPlayPhysicalSizeBasis;)Lcom/shilapi/xcertplay/airplay/AirPlayPhysicalSizeMm;
    .locals 7

    const-string v0, "basis"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez p1, :cond_5

    if-lez p2, :cond_5

    if-lez p3, :cond_4

    if-lez p4, :cond_4

    .line 56
    sget-object v0, Lcom/shilapi/xcertplay/airplay/AirPlayDisplaySettings$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p6}, Lcom/shilapi/xcertplay/airplay/AirPlayPhysicalSizeBasis;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    int-to-double v3, p2

    int-to-double p3, p4

    .line 60
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_0

    .line 56
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    int-to-double v3, p1

    int-to-double p3, p3

    .line 58
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    :goto_0
    div-double/2addr v3, p3

    .line 62
    invoke-static {p5, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p3

    int-to-double p3, p3

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p3, p3, v3

    .line 65
    sget-object p5, Lcom/shilapi/xcertplay/airplay/AirPlayDisplaySettings$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p6}, Lcom/shilapi/xcertplay/airplay/AirPlayPhysicalSizeBasis;->ordinal()I

    move-result p6

    aget p5, p5, p6

    if-eq p5, v2, :cond_3

    if-ne p5, v1, :cond_2

    int-to-double p5, p1

    .line 72
    invoke-static {p5, p6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p5, p5, p3

    int-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p5, p1

    move-wide v5, p5

    move-wide p5, p3

    move-wide p3, v5

    goto :goto_1

    .line 65
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_3
    int-to-double p5, p2

    .line 68
    invoke-static {p5, p6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p5, p5, p3

    int-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p5, p1

    .line 75
    :goto_1
    new-instance p1, Lcom/shilapi/xcertplay/airplay/AirPlayPhysicalSizeMm;

    .line 76
    invoke-static {p3, p4}, Ljava/lang/Math;->round(D)J

    move-result-wide p2

    long-to-int p3, p2

    invoke-virtual {p0, p3}, Lcom/shilapi/xcertplay/airplay/AirPlayDisplaySettings;->sanitizeReportedPhysicalMm(I)I

    move-result p2

    .line 77
    invoke-static {p5, p6}, Ljava/lang/Math;->round(D)J

    move-result-wide p3

    long-to-int p4, p3

    invoke-virtual {p0, p4}, Lcom/shilapi/xcertplay/airplay/AirPlayDisplaySettings;->sanitizeReportedPhysicalMm(I)I

    move-result p3

    .line 75
    invoke-direct {p1, p2, p3}, Lcom/shilapi/xcertplay/airplay/AirPlayPhysicalSizeMm;-><init>(II)V

    return-object p1

    .line 53
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Maximum display dimensions must be positive"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Current display dimensions must be positive"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final sanitizeFps(I)I
    .locals 3

    const/16 v0, 0x3c

    const/4 v1, 0x5

    const/16 v2, 0x1e

    .line 29
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/shilapi/xcertplay/airplay/AirPlayDisplaySettings;->snapToStep(IIII)I

    move-result p1

    return p1
.end method

.method public final sanitizeReportedPhysicalMm(I)I
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x7d0

    .line 40
    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p1

    return p1
.end method

.method public final sanitizeWidthPhysicalMm(I)I
    .locals 3

    const/16 v0, 0x190

    const/16 v1, 0x32

    const/16 v2, 0x64

    .line 32
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/shilapi/xcertplay/airplay/AirPlayDisplaySettings;->snapToStep(IIII)I

    move-result p1

    return p1
.end method

.method public final widthPhysicalMmProgress(I)I
    .locals 0

    .line 85
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlayDisplaySettings;->sanitizeWidthPhysicalMm(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x64

    div-int/lit8 p1, p1, 0x32

    return p1
.end method
