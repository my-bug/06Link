.class public final Lcom/shilapi/xcertplay/network/LocalOnlyHotspotBandPolicy;
.super Ljava/lang/Object;
.source "LocalOnlyHotspotManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J%\u0010\u0008\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\t\u001a\u0004\u0018\u00010\u00072\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u000e\u0010\r\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/LocalOnlyHotspotBandPolicy;",
        "",
        "<init>",
        "()V",
        "systemChoosesEverything",
        "",
        "sdk",
        "",
        "accepts",
        "liveFrequencyMHz",
        "bandLabel",
        "",
        "(ILjava/lang/Integer;Ljava/lang/String;)Z",
        "unreadChannel",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/network/LocalOnlyHotspotBandPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotBandPolicy;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotBandPolicy;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotBandPolicy;->INSTANCE:Lcom/shilapi/xcertplay/network/LocalOnlyHotspotBandPolicy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 884
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accepts(ILjava/lang/Integer;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "bandLabel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 889
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotBandPolicy;->systemChoosesEverything(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p2, :cond_1

    .line 890
    new-instance p1, Lkotlin/ranges/IntRange;

    const/16 p3, 0x1428

    const/16 v0, 0x1707

    invoke-direct {p1, p3, v0}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lkotlin/ranges/IntRange;->contains(I)Z

    move-result p1

    return p1

    .line 891
    :cond_1
    const-string p1, "5 GHz"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final systemChoosesEverything(I)Z
    .locals 2

    const/16 v0, 0x1a

    const/4 v1, 0x0

    if-gt v0, p1, :cond_0

    const/16 v0, 0x1d

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final unreadChannel(I)I
    .locals 0

    .line 895
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotBandPolicy;->systemChoosesEverything(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 p1, 0x24

    return p1
.end method
