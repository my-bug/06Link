.class public final Lcom/shilapi/xcertplay/media/DualDisplayVideoLoad;
.super Ljava/lang/Object;
.source "DualDisplayVideoLoad.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDualDisplayVideoLoad.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DualDisplayVideoLoad.kt\ncom/shilapi/xcertplay/media/DualDisplayVideoLoad\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,62:1\n1#2:63\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000cJ\u0016\u0010\r\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000cJ\u0016\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\n\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u000cJ\u0016\u0010\u000f\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000cJ\u0016\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000b\u001a\u00020\u000cJ0\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u000c2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0011J\u0010\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0018H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/media/DualDisplayVideoLoad;",
        "",
        "<init>",
        "()V",
        "MAIN_MAX_FPS",
        "",
        "MAIN_MAX_SCALE_TENTHS",
        "CLUSTER_SCALE_PERCENT",
        "CLUSTER_FPS",
        "mainFps",
        "requested",
        "dual",
        "",
        "mainScaleTenths",
        "mainHevc",
        "clusterScalePercent",
        "tuneCluster",
        "Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;",
        "config",
        "summary",
        "",
        "cluster",
        "roundTo8",
        "value",
        "",
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
.field public static final CLUSTER_FPS:I = 0x14

.field public static final CLUSTER_SCALE_PERCENT:I = 0x43

.field public static final INSTANCE:Lcom/shilapi/xcertplay/media/DualDisplayVideoLoad;

.field public static final MAIN_MAX_FPS:I = 0x1e

.field public static final MAIN_MAX_SCALE_TENTHS:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/media/DualDisplayVideoLoad;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/media/DualDisplayVideoLoad;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/media/DualDisplayVideoLoad;->INSTANCE:Lcom/shilapi/xcertplay/media/DualDisplayVideoLoad;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final roundTo8(D)I
    .locals 2

    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    div-double/2addr p1, v0

    .line 60
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    const/16 v0, 0x8

    int-to-long v0, v0

    mul-long p1, p1, v0

    long-to-int p2, p1

    return p2
.end method


# virtual methods
.method public final clusterScalePercent(IZ)I
    .locals 2

    .line 38
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    sget-object v1, Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay;->INSTANCE:Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay;->getScalePresets()Ljava/util/List;

    move-result-object v1

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

    goto :goto_1

    :cond_1
    const/16 p1, 0x53

    :goto_1
    if-eqz p2, :cond_2

    const/16 p2, 0x43

    .line 40
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_2
    return p1
.end method

.method public final mainFps(IZ)I
    .locals 0

    return p1
.end method

.method public final mainHevc(ZZ)Z
    .locals 0

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final mainScaleTenths(IZ)I
    .locals 0

    return p1
.end method

.method public final summary(ZIIZLcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    .line 55
    const-string p1, "dual-display load: off (single screen)"

    return-object p1

    :cond_0
    mul-int/lit8 p3, p3, 0xa

    if-eqz p4, :cond_1

    .line 57
    const-string p1, "HEVC"

    goto :goto_0

    :cond_1
    const-string p1, "H.264"

    :goto_0
    if-eqz p5, :cond_2

    .line 58
    invoke-virtual {p5}, Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;->getWidthPixels()I

    move-result p4

    invoke-virtual {p5}, Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;->getHeightPixels()I

    move-result v0

    invoke-virtual {p5}, Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;->getFps()I

    move-result p5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p4, "x"

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "@"

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_3

    :cond_2
    const-string p4, "none"

    :cond_3
    new-instance p5, Ljava/lang/StringBuilder;

    const-string v0, "dual-display load: on main="

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "fps scale="

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "% codec="

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cluster="

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final tuneCluster(Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;Z)Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;
    .locals 14

    move-object v0, p1

    const-string v1, "config"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    return-object v0

    .line 48
    :cond_0
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;->getWidthPixels()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3fe570a3d70a3d71L    # 0.67

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    invoke-direct {p0, v1, v2}, Lcom/shilapi/xcertplay/media/DualDisplayVideoLoad;->roundTo8(D)I

    move-result v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    .line 49
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;->getHeightPixels()I

    move-result v5

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v3

    invoke-direct {p0, v5, v6}, Lcom/shilapi/xcertplay/media/DualDisplayVideoLoad;->roundTo8(D)I

    move-result v3

    invoke-static {v3, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    const/16 v12, 0x7ec

    const/4 v13, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x14

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 47
    invoke-static/range {v0 .. v13}, Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;->copy$default(Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;IILjava/lang/Integer;Ljava/lang/Integer;IILcom/shilapi/xcertplay/airplay/AirPlayInsets;Lcom/shilapi/xcertplay/airplay/AirPlayInsets;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/shilapi/xcertplay/E01DisplayConfig;->afterLoad(Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;)Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;

    move-result-object v0

    return-object v0
.end method
