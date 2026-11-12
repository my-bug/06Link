.class public final Lcom/shilapi/xcertplay/network/ManualHotspotManagerKt;
.super Ljava/lang/Object;
.source "ManualHotspotManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/network/ManualHotspotManagerKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nManualHotspotManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ManualHotspotManager.kt\ncom/shilapi/xcertplay/network/ManualHotspotManagerKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,558:1\n1#2:559\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u000c\u0010\u0004\u001a\u00020\u0005*\u00020\u0006H\u0002\u00a8\u0006\u0007"
    }
    d2 = {
        "wifiInfoIpv4",
        "Ljava/net/Inet4Address;",
        "ipAddress",
        "",
        "toIap2Security",
        "Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;",
        "Lcom/shilapi/xcertplay/orchestration/ManualHotspotSecurity;",
        "shared_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic access$toIap2Security(Lcom/shilapi/xcertplay/orchestration/ManualHotspotSecurity;)Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/shilapi/xcertplay/network/ManualHotspotManagerKt;->toIap2Security(Lcom/shilapi/xcertplay/orchestration/ManualHotspotSecurity;)Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    move-result-object p0

    return-object p0
.end method

.method private static final toIap2Security(Lcom/shilapi/xcertplay/orchestration/ManualHotspotSecurity;)Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;
    .locals 1

    .line 552
    sget-object v0, Lcom/shilapi/xcertplay/network/ManualHotspotManagerKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/orchestration/ManualHotspotSecurity;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 556
    sget-object p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;->WPA3_ONLY:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    return-object p0

    .line 552
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 555
    :cond_1
    sget-object p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;->WPA3_TRANSITION:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    return-object p0

    .line 554
    :cond_2
    sget-object p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;->WPA_WPA2:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    return-object p0

    .line 553
    :cond_3
    sget-object p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;->NONE:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    return-object p0
.end method

.method public static final wifiInfoIpv4(I)Ljava/net/Inet4Address;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    int-to-byte v1, p0

    ushr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    ushr-int/lit8 v3, p0, 0x10

    int-to-byte v3, v3

    ushr-int/lit8 p0, p0, 0x18

    int-to-byte p0, p0

    const/4 v4, 0x4

    .line 548
    new-array v4, v4, [B

    const/4 v5, 0x0

    aput-byte v1, v4, v5

    const/4 v1, 0x1

    aput-byte v2, v4, v1

    const/4 v1, 0x2

    aput-byte v3, v4, v1

    const/4 v1, 0x3

    aput-byte p0, v4, v1

    .line 549
    :try_start_0
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v4}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p0

    instance-of v1, p0, Ljava/net/Inet4Address;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/net/Inet4Address;

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move-object v0, p0

    :goto_2
    check-cast v0, Ljava/net/Inet4Address;

    return-object v0
.end method
