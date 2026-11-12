.class public final Lcom/shilapi/xcertplay/network/ExternalWifiStation;
.super Ljava/lang/Object;
.source "ExternalWifiStation.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/network/ExternalWifiStation$Station;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExternalWifiStation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExternalWifiStation.kt\ncom/shilapi/xcertplay/network/ExternalWifiStation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,95:1\n1#2:96\n295#3,2:97\n12637#4,2:99\n*S KotlinDebug\n*F\n+ 1 ExternalWifiStation.kt\ncom/shilapi/xcertplay/network/ExternalWifiStation\n*L\n54#1:97,2\n73#1:99,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001!B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\tJ\"\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0005H\u0002J\u0017\u0010\u0011\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0012\u001a\u00020\u0013H\u0000\u00a2\u0006\u0002\u0008\u0014JA\u0010\u0015\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0017H\u0000\u00a2\u0006\u0002\u0008\u001dJ\u0019\u0010\u001e\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0005H\u0000\u00a2\u0006\u0002\u0008 R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/ExternalWifiStation;",
        "",
        "<init>",
        "()V",
        "UNKNOWN_SSID",
        "",
        "current",
        "Lcom/shilapi/xcertplay/network/ExternalWifiStation$Station;",
        "context",
        "Landroid/content/Context;",
        "readSecurity",
        "Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;",
        "wifi",
        "Landroid/net/wifi/WifiManager;",
        "networkId",
        "",
        "ssid",
        "securityOf",
        "config",
        "Landroid/net/wifi/WifiConfiguration;",
        "securityOf$shared_release",
        "securityFrom",
        "none",
        "",
        "wpaPsk",
        "wpa2Psk",
        "sae",
        "hasWepKey",
        "enterprise",
        "securityFrom$shared_release",
        "unquote",
        "value",
        "unquote$shared_release",
        "Station",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/network/ExternalWifiStation;

.field private static final UNKNOWN_SSID:Ljava/lang/String; = "<unknown ssid>"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/network/ExternalWifiStation;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/network/ExternalWifiStation;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/network/ExternalWifiStation;->INSTANCE:Lcom/shilapi/xcertplay/network/ExternalWifiStation;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final readSecurity(Landroid/net/wifi/WifiManager;ILjava/lang/String;)Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;
    .locals 4

    .line 53
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/network/ExternalWifiStation;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p1, v1

    :cond_0
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_4

    check-cast p1, Ljava/lang/Iterable;

    .line 97
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 54
    iget v3, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v3, p2, :cond_2

    sget-object v3, Lcom/shilapi/xcertplay/network/ExternalWifiStation;->INSTANCE:Lcom/shilapi/xcertplay/network/ExternalWifiStation;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/shilapi/xcertplay/network/ExternalWifiStation;->unquote$shared_release(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    move-object v1, v0

    :cond_3
    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_4

    .line 56
    invoke-virtual {p0, v1}, Lcom/shilapi/xcertplay/network/ExternalWifiStation;->securityOf$shared_release(Landroid/net/wifi/WifiConfiguration;)Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    move-result-object p1

    return-object p1

    .line 55
    :cond_4
    sget-object p1, Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;->WPA_WPA2:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    return-object p1
.end method

.method public static synthetic securityFrom$shared_release$default(Lcom/shilapi/xcertplay/network/ExternalWifiStation;ZZZZZZILjava/lang/Object;)Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    const/4 p6, 0x0

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    move v6, p6

    :goto_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 78
    invoke-virtual/range {v0 .. v6}, Lcom/shilapi/xcertplay/network/ExternalWifiStation;->securityFrom$shared_release(ZZZZZZ)Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    move-result-object p0

    return-object p0
.end method

.method private static final securityOf$bit(Ljava/util/BitSet;I)Z
    .locals 1

    .line 66
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p0, p1

    :cond_0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final current(Landroid/content/Context;)Lcom/shilapi/xcertplay/network/ExternalWifiStation$Station;
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "getApplicationContext(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-static {p1, v0}, Lcom/shilapi/xcertplay/compat/Api19Kt;->systemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 37
    :cond_0
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/network/ExternalWifiStation;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v0

    :cond_1
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    .line 38
    :cond_2
    :try_start_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/network/ExternalWifiStation;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v1, v0

    :cond_3
    check-cast v1, Landroid/net/wifi/WifiInfo;

    if-nez v1, :cond_4

    return-object v0

    .line 39
    :cond_4
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v2

    sget-object v3, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v2, v3, :cond_a

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    goto/16 :goto_4

    .line 40
    :cond_5
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/shilapi/xcertplay/network/ExternalWifiStation;->unquote$shared_release(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "<unknown ssid>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    move-object v2, v0

    :goto_2
    if-nez v2, :cond_7

    goto :goto_4

    .line 41
    :cond_7
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_8

    invoke-static {v1}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/net/wifi/WifiInfo;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-lez v4, :cond_8

    goto :goto_3

    :cond_8
    move-object v3, v0

    .line 42
    :goto_3
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "00:00:00:00:00:00"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "02:00:00:00:00:00"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    move-object v0, v4

    .line 43
    :cond_9
    new-instance v4, Lcom/shilapi/xcertplay/network/ExternalWifiStation$Station;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    invoke-direct {p0, p1, v1, v2}, Lcom/shilapi/xcertplay/network/ExternalWifiStation;->readSecurity(Landroid/net/wifi/WifiManager;ILjava/lang/String;)Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    move-result-object p1

    invoke-direct {v4, v2, v0, v3, p1}, Lcom/shilapi/xcertplay/network/ExternalWifiStation$Station;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;)V

    return-object v4

    :cond_a
    :goto_4
    return-object v0
.end method

.method public final securityFrom$shared_release(ZZZZZZ)Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;
    .locals 0

    if-eqz p6, :cond_0

    if-nez p3, :cond_0

    if-nez p2, :cond_0

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 81
    sget-object p1, Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;->WPA3_TRANSITION:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    return-object p1

    :cond_1
    if-eqz p4, :cond_2

    .line 82
    sget-object p1, Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;->WPA3_ONLY:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    return-object p1

    :cond_2
    if-nez p3, :cond_5

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    if-nez p5, :cond_4

    .line 86
    sget-object p1, Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;->NONE:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    return-object p1

    .line 87
    :cond_4
    sget-object p1, Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;->WPA_WPA2:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    return-object p1

    .line 83
    :cond_5
    :goto_0
    sget-object p1, Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;->WPA_WPA2:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    return-object p1
.end method

.method public final securityOf$shared_release(Landroid/net/wifi/WifiConfiguration;)Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;
    .locals 11

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    if-nez v0, :cond_0

    sget-object p1, Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;->WPA_WPA2:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    return-object p1

    :cond_0
    const/4 v1, 0x0

    .line 67
    invoke-static {v0, v1}, Lcom/shilapi/xcertplay/network/ExternalWifiStation;->securityOf$bit(Ljava/util/BitSet;I)Z

    move-result v3

    const/4 v2, 0x1

    .line 68
    invoke-static {v0, v2}, Lcom/shilapi/xcertplay/network/ExternalWifiStation;->securityOf$bit(Ljava/util/BitSet;I)Z

    move-result v4

    const/4 v5, 0x2

    .line 69
    invoke-static {v0, v5}, Lcom/shilapi/xcertplay/network/ExternalWifiStation;->securityOf$bit(Ljava/util/BitSet;I)Z

    move-result v5

    const/4 v6, 0x3

    .line 70
    invoke-static {v0, v6}, Lcom/shilapi/xcertplay/network/ExternalWifiStation;->securityOf$bit(Ljava/util/BitSet;I)Z

    move-result v6

    const/4 v7, 0x4

    .line 71
    invoke-static {v0, v7}, Lcom/shilapi/xcertplay/network/ExternalWifiStation;->securityOf$bit(Ljava/util/BitSet;I)Z

    move-result v7

    .line 72
    :try_start_0
    sget-object v8, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v8, p0

    check-cast v8, Lcom/shilapi/xcertplay/network/ExternalWifiStation;

    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v8, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v0, v8

    :cond_1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 73
    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 99
    array-length v8, p1

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_5

    aget-object v10, p1, v9

    .line 73
    check-cast v10, Ljava/lang/CharSequence;

    if-eqz v10, :cond_3

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-nez v10, :cond_2

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v10, 0x1

    :goto_3
    if-nez v10, :cond_4

    move p1, v5

    move v5, v7

    const/4 v7, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_5
    move p1, v5

    move v5, v7

    const/4 v7, 0x0

    :goto_4
    if-nez p1, :cond_7

    if-eqz v6, :cond_6

    goto :goto_5

    :cond_6
    const/4 v8, 0x0

    goto :goto_6

    :cond_7
    :goto_5
    const/4 v8, 0x1

    :goto_6
    move-object v2, p0

    move v6, v0

    .line 74
    invoke-virtual/range {v2 .. v8}, Lcom/shilapi/xcertplay/network/ExternalWifiStation;->securityFrom$shared_release(ZZZZZZ)Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    move-result-object p1

    return-object p1
.end method

.method public final unquote$shared_release(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 92
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->first(Ljava/lang/CharSequence;)C

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->last(Ljava/lang/CharSequence;)C

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "substring(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method
