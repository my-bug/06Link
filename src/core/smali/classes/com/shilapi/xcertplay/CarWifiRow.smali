.class public final Lcom/shilapi/xcertplay/CarWifiRow;
.super Ljava/lang/Object;
.source "CarWifiRow.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/CarWifiRow$Mode;,
        Lcom/shilapi/xcertplay/CarWifiRow$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001:\u0001\u0014B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tJ<\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00072\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u001e\u0010\u0010\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0011\u001a\u00020\u000c2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0013\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/CarWifiRow;",
        "",
        "<init>",
        "()V",
        "of",
        "Lcom/shilapi/xcertplay/CarWifiRow$Mode;",
        "link",
        "Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;",
        "sdk",
        "",
        "modeFor",
        "auto",
        "",
        "manual",
        "inUse",
        "lastUp",
        "predicted",
        "wifiDirectKnown",
        "candidates",
        "",
        "Mode",
        "common_release"
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/CarWifiRow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/CarWifiRow;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/CarWifiRow;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/CarWifiRow;->INSTANCE:Lcom/shilapi/xcertplay/CarWifiRow;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final modeFor(ZLcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;I)Lcom/shilapi/xcertplay/CarWifiRow$Mode;
    .locals 1

    const-string v0, "manual"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 26
    invoke-virtual {p0, p2, p6}, Lcom/shilapi/xcertplay/CarWifiRow;->of(Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;I)Lcom/shilapi/xcertplay/CarWifiRow$Mode;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez p3, :cond_3

    if-nez p4, :cond_2

    if-nez p5, :cond_1

    .line 27
    sget-object p1, Lcom/shilapi/xcertplay/CarWifiRow$Mode;->OTHER:Lcom/shilapi/xcertplay/CarWifiRow$Mode;

    return-object p1

    :cond_1
    move-object p3, p5

    goto :goto_0

    :cond_2
    move-object p3, p4

    .line 28
    :cond_3
    :goto_0
    invoke-virtual {p0, p3, p6}, Lcom/shilapi/xcertplay/CarWifiRow;->of(Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;I)Lcom/shilapi/xcertplay/CarWifiRow$Mode;

    move-result-object p1

    return-object p1
.end method

.method public final of(Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;I)Lcom/shilapi/xcertplay/CarWifiRow$Mode;
    .locals 1

    const-string v0, "link"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget-object v0, Lcom/shilapi/xcertplay/CarWifiRow$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    .line 17
    sget-object p1, Lcom/shilapi/xcertplay/CarWifiRow$Mode;->OTHER:Lcom/shilapi/xcertplay/CarWifiRow$Mode;

    return-object p1

    .line 13
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    const/16 p1, 0x1a

    if-ge p2, p1, :cond_2

    .line 16
    sget-object p1, Lcom/shilapi/xcertplay/CarWifiRow$Mode;->SYSTEM:Lcom/shilapi/xcertplay/CarWifiRow$Mode;

    return-object p1

    :cond_2
    sget-object p1, Lcom/shilapi/xcertplay/CarWifiRow$Mode;->LOCAL_ONLY:Lcom/shilapi/xcertplay/CarWifiRow$Mode;

    return-object p1

    .line 15
    :cond_3
    sget-object p1, Lcom/shilapi/xcertplay/CarWifiRow$Mode;->P2P:Lcom/shilapi/xcertplay/CarWifiRow$Mode;

    return-object p1

    .line 14
    :cond_4
    sget-object p1, Lcom/shilapi/xcertplay/CarWifiRow$Mode;->SYSTEM:Lcom/shilapi/xcertplay/CarWifiRow$Mode;

    return-object p1
.end method

.method public final predicted(ZLjava/util/List;)Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "+",
            "Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;",
            ">;)",
            "Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;"
        }
    .end annotation

    const-string v0, "candidates"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 37
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;->WIFI_P2P:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    return-object p1

    :cond_0
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    return-object p1
.end method
