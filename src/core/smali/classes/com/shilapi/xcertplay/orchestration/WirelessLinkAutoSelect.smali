.class public final Lcom/shilapi/xcertplay/orchestration/WirelessLinkAutoSelect;
.super Ljava/lang/Object;
.source "WirelessLinkAutoSelect.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\tJ\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rJ(\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0005JG\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00052\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/orchestration/WirelessLinkAutoSelect;",
        "",
        "<init>",
        "()V",
        "systemHotspotLocked",
        "",
        "hotspotOn",
        "hotspotDetailsKnown",
        "sdk",
        "",
        "context",
        "Landroid/content/Context;",
        "savedCarHotspotSsid",
        "",
        "candidates",
        "",
        "Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;",
        "externalWifiReady",
        "canWriteSettings",
        "wifiEnabled",
        "(ZZIZLjava/lang/Boolean;Z)Ljava/util/List;",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/orchestration/WirelessLinkAutoSelect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/orchestration/WirelessLinkAutoSelect;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/orchestration/WirelessLinkAutoSelect;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/orchestration/WirelessLinkAutoSelect;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/WirelessLinkAutoSelect;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic candidates$default(Lcom/shilapi/xcertplay/orchestration/WirelessLinkAutoSelect;Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 40
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/orchestration/WirelessLinkAutoSelect;->candidates(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic candidates$default(Lcom/shilapi/xcertplay/orchestration/WirelessLinkAutoSelect;ZZIZLjava/lang/Boolean;ZILjava/lang/Object;)Ljava/util/List;
    .locals 7

    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    and-int/lit8 p5, p7, 0x20

    if-eqz p5, :cond_1

    const/4 p6, 0x0

    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    move v6, p6

    :goto_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 52
    invoke-virtual/range {v0 .. v6}, Lcom/shilapi/xcertplay/orchestration/WirelessLinkAutoSelect;->candidates(ZZIZLjava/lang/Boolean;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final candidates(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget-object v0, Lcom/shilapi/xcertplay/network/CarHotspotStatus;->INSTANCE:Lcom/shilapi/xcertplay/network/CarHotspotStatus;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/network/CarHotspotStatus;->isOnOrStarting(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 43
    sget-object v0, Lcom/shilapi/xcertplay/network/SystemHotspotCredentials;->INSTANCE:Lcom/shilapi/xcertplay/network/SystemHotspotCredentials;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/network/SystemHotspotCredentials;->read(Landroid/content/Context;)Lcom/shilapi/xcertplay/network/SystemHotspotCredentials$Credentials;

    move-result-object v0

    if-nez v0, :cond_1

    check-cast p2, Ljava/lang/CharSequence;

    if-eqz p2, :cond_0

    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    const/4 v1, 0x0

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    .line 44
    :goto_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 45
    sget-object p2, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->Companion:Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;

    invoke-virtual {p2, p1}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;->canWriteSettings(Landroid/content/Context;)Z

    move-result v7

    const/4 p2, 0x0

    .line 46
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/orchestration/WirelessLinkAutoSelect;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/net/wifi/WifiManager;

    goto :goto_1

    :cond_2
    move-object p1, p2

    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    :cond_3
    move-object p1, p2

    .line 46
    :goto_2
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p1, v0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 48
    :goto_3
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    move-object p2, p1

    :goto_4
    move-object v8, p2

    check-cast v8, Ljava/lang/Boolean;

    move-object v3, p0

    move v9, p3

    .line 41
    invoke-virtual/range {v3 .. v9}, Lcom/shilapi/xcertplay/orchestration/WirelessLinkAutoSelect;->candidates(ZZIZLjava/lang/Boolean;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final candidates(ZZIZLjava/lang/Boolean;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZIZ",
            "Ljava/lang/Boolean;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;",
            ">;"
        }
    .end annotation

    .line 56
    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/orchestration/WirelessLinkAutoSelect;->systemHotspotLocked(ZZI)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;->WIFI_P2P:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 57
    sget-object p2, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;->MANUAL:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/16 p2, 0x1d

    if-eqz p6, :cond_2

    if-nez p1, :cond_2

    if-ge p3, p2, :cond_2

    .line 61
    sget-object p6, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;->EXTERNAL_WIFI:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    invoke-interface {v0, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-ge p3, p2, :cond_4

    const/16 p2, 0x1a

    if-ge p3, p2, :cond_3

    if-eqz p4, :cond_4

    .line 63
    :cond_3
    sget-object p2, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;->LOCAL_ONLY_HOTSPOT:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_4
    sget-object p2, Lcom/shilapi/xcertplay/network/P2pPreconditions;->INSTANCE:Lcom/shilapi/xcertplay/network/P2pPreconditions;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p3, p1, p5}, Lcom/shilapi/xcertplay/network/P2pPreconditions;->blocker(ILjava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;->WIFI_P2P:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_6
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final systemHotspotLocked(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object v0, Lcom/shilapi/xcertplay/network/CarHotspotStatus;->INSTANCE:Lcom/shilapi/xcertplay/network/CarHotspotStatus;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/network/CarHotspotStatus;->isOnOrStarting(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 36
    sget-object v2, Lcom/shilapi/xcertplay/network/SystemHotspotCredentials;->INSTANCE:Lcom/shilapi/xcertplay/network/SystemHotspotCredentials;

    invoke-virtual {v2, p1}, Lcom/shilapi/xcertplay/network/SystemHotspotCredentials;->read(Landroid/content/Context;)Lcom/shilapi/xcertplay/network/SystemHotspotCredentials$Credentials;

    move-result-object p1

    if-nez p1, :cond_1

    check-cast p2, Ljava/lang/CharSequence;

    if-eqz p2, :cond_0

    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 37
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 34
    invoke-virtual {p0, v0, v1, p1}, Lcom/shilapi/xcertplay/orchestration/WirelessLinkAutoSelect;->systemHotspotLocked(ZZI)Z

    move-result p1

    return p1
.end method

.method public final systemHotspotLocked(ZZI)Z
    .locals 1

    const/16 v0, 0x1a

    if-gt v0, p3, :cond_0

    const/16 v0, 0x1d

    if-ge p3, v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
