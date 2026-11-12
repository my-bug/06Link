.class public final Lcom/shilapi/xcertplay/airplay/CarPlayUiScale;
.super Ljava/lang/Object;
.source "CarPlayUiScale.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCarPlayUiScale.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CarPlayUiScale.kt\ncom/shilapi/xcertplay/airplay/CarPlayUiScale\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,40:1\n1#2:41\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u0005J\u0016\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/CarPlayUiScale;",
        "",
        "<init>",
        "()V",
        "DEFAULT",
        "",
        "presets",
        "",
        "getPresets",
        "()Ljava/util/List;",
        "sanitize",
        "percent",
        "label",
        "",
        "apply",
        "Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;",
        "display",
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
.field public static final DEFAULT:I = 0x64

.field public static final INSTANCE:Lcom/shilapi/xcertplay/airplay/CarPlayUiScale;

.field private static final presets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/shilapi/xcertplay/airplay/CarPlayUiScale;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/airplay/CarPlayUiScale;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/airplay/CarPlayUiScale;->INSTANCE:Lcom/shilapi/xcertplay/airplay/CarPlayUiScale;

    const/16 v0, 0x4b

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x55

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x73

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Integer;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/airplay/CarPlayUiScale;->presets:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final apply$insets(ILcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;ILcom/shilapi/xcertplay/airplay/AirPlayInsets;)Lcom/shilapi/xcertplay/airplay/AirPlayInsets;
    .locals 7

    if-eqz p3, :cond_0

    .line 30
    invoke-virtual {p3}, Lcom/shilapi/xcertplay/airplay/AirPlayInsets;->getTop()I

    move-result v0

    int-to-double v0, v0

    int-to-double v2, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;->getHeightPixels()I

    move-result p0

    int-to-double v4, p0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result p0

    .line 31
    invoke-virtual {p3}, Lcom/shilapi/xcertplay/airplay/AirPlayInsets;->getBottom()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;->getHeightPixels()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result v0

    .line 32
    invoke-virtual {p3}, Lcom/shilapi/xcertplay/airplay/AirPlayInsets;->getLeft()I

    move-result v1

    int-to-double v1, v1

    int-to-double v3, p2

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;->getWidthPixels()I

    move-result p2

    int-to-double v5, p2

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v5

    invoke-static {v1, v2}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result p2

    .line 33
    invoke-virtual {p3}, Lcom/shilapi/xcertplay/airplay/AirPlayInsets;->getRight()I

    move-result v1

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;->getWidthPixels()I

    move-result p1

    int-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result p1

    .line 29
    invoke-virtual {p3, p0, v0, p2, p1}, Lcom/shilapi/xcertplay/airplay/AirPlayInsets;->copy(IIII)Lcom/shilapi/xcertplay/airplay/AirPlayInsets;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static final apply$pixels(II)I
    .locals 4

    int-to-long v0, p1

    const/16 p1, 0x64

    int-to-long v2, p1

    mul-long v0, v0, v2

    int-to-long p0, p0

    .line 23
    div-long/2addr v0, p0

    const-wide/16 p0, 0x1

    add-long/2addr v0, p0

    const/4 p0, 0x2

    int-to-long p0, p0

    div-long/2addr v0, p0

    mul-long v0, v0, p0

    long-to-int p0, v0

    return p0
.end method


# virtual methods
.method public final apply(Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;I)Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;
    .locals 14

    move-object v0, p1

    const-string v1, "display"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v1, p2

    .line 20
    invoke-virtual {p0, v1}, Lcom/shilapi/xcertplay/airplay/CarPlayUiScale;->sanitize(I)I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;->getWidthPixels()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;->getHeightPixels()I

    move-result v3

    if-lez v3, :cond_3

    .line 24
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;->getWidthPixels()I

    move-result v3

    invoke-static {v1, v3}, Lcom/shilapi/xcertplay/airplay/CarPlayUiScale;->apply$pixels(II)I

    move-result v3

    .line 25
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;->getHeightPixels()I

    move-result v4

    invoke-static {v1, v4}, Lcom/shilapi/xcertplay/airplay/CarPlayUiScale;->apply$pixels(II)I

    move-result v4

    if-ge v1, v2, :cond_2

    .line 27
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/16 v2, 0xf00

    if-gt v1, v2, :cond_1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, 0x870

    if-le v1, v2, :cond_2

    :cond_1
    :goto_0
    return-object v0

    .line 37
    :cond_2
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;->getViewArea()Lcom/shilapi/xcertplay/airplay/AirPlayInsets;

    move-result-object v1

    invoke-static {v4, p1, v3, v1}, Lcom/shilapi/xcertplay/airplay/CarPlayUiScale;->apply$insets(ILcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;ILcom/shilapi/xcertplay/airplay/AirPlayInsets;)Lcom/shilapi/xcertplay/airplay/AirPlayInsets;

    move-result-object v7

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;->getSafeArea()Lcom/shilapi/xcertplay/airplay/AirPlayInsets;

    move-result-object v1

    invoke-static {v4, p1, v3, v1}, Lcom/shilapi/xcertplay/airplay/CarPlayUiScale;->apply$insets(ILcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;ILcom/shilapi/xcertplay/airplay/AirPlayInsets;)Lcom/shilapi/xcertplay/airplay/AirPlayInsets;

    move-result-object v8

    const/16 v12, 0x73c

    const/4 v13, 0x0

    move v1, v3

    const/4 v3, 0x0

    move v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 36
    invoke-static/range {v0 .. v13}, Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;->copy$default(Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;IILjava/lang/Integer;Ljava/lang/Integer;IILcom/shilapi/xcertplay/airplay/AirPlayInsets;Lcom/shilapi/xcertplay/airplay/AirPlayInsets;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;

    move-result-object v0

    return-object v0

    .line 22
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getPresets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/shilapi/xcertplay/airplay/CarPlayUiScale;->presets:Ljava/util/List;

    return-object v0
.end method

.method public final label(I)Ljava/lang/String;
    .locals 1

    .line 12
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/airplay/CarPlayUiScale;->sanitize(I)I

    move-result p1

    const/16 v0, 0x4b

    if-eq p1, v0, :cond_2

    const/16 v0, 0x55

    if-eq p1, v0, :cond_1

    const/16 v0, 0x73

    if-eq p1, v0, :cond_0

    .line 16
    const-string p1, "Default"

    return-object p1

    .line 15
    :cond_0
    const-string p1, "Large"

    return-object p1

    .line 14
    :cond_1
    const-string p1, "Small"

    return-object p1

    .line 13
    :cond_2
    const-string p1, "Smaller"

    return-object p1
.end method

.method public final sanitize(I)I
    .locals 2

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    sget-object v1, Lcom/shilapi/xcertplay/airplay/CarPlayUiScale;->presets:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    const/16 p1, 0x64

    return p1
.end method
