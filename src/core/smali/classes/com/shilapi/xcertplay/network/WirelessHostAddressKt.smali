.class public final Lcom/shilapi/xcertplay/network/WirelessHostAddressKt;
.super Ljava/lang/Object;
.source "WirelessHostAddress.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWirelessHostAddress.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WirelessHostAddress.kt\ncom/shilapi/xcertplay/network/WirelessHostAddressKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,55:1\n808#2,11:56\n295#2,2:67\n295#2,2:69\n*S KotlinDebug\n*F\n+ 1 WirelessHostAddress.kt\ncom/shilapi/xcertplay/network/WirelessHostAddressKt\n*L\n20#1:56,11\n20#1:67,2\n26#1:69,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u001a\u001e\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a \u0010\u0007\u001a\u0004\u0018\u00010\u00042\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "wirelessHostAddresses",
        "Lcom/shilapi/xcertplay/network/WirelessHostAddresses;",
        "addresses",
        "",
        "Ljava/net/InetAddress;",
        "interfaceIndex",
        "",
        "wirelessHostAddress",
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
.method public static final wirelessHostAddress(Ljava/util/List;I)Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/net/InetAddress;",
            ">;I)",
            "Ljava/net/InetAddress;"
        }
    .end annotation

    const-string v0, "addresses"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/network/WirelessHostAddressKt;->wirelessHostAddresses(Ljava/util/List;I)Lcom/shilapi/xcertplay/network/WirelessHostAddresses;

    move-result-object p0

    .line 39
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/network/WirelessHostAddresses;->getIpv6LinkLocal()Ljava/net/Inet6Address;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/net/InetAddress;

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/network/WirelessHostAddresses;->getIpv4()Ljava/net/Inet4Address;

    move-result-object p0

    check-cast p0, Ljava/net/InetAddress;

    return-object p0
.end method

.method public static final wirelessHostAddresses(Ljava/util/List;I)Lcom/shilapi/xcertplay/network/WirelessHostAddresses;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/net/InetAddress;",
            ">;I)",
            "Lcom/shilapi/xcertplay/network/WirelessHostAddresses;"
        }
    .end annotation

    const-string v0, "addresses"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-lez p1, :cond_4

    .line 20
    move-object v1, p0

    check-cast v1, Ljava/lang/Iterable;

    .line 56
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 65
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/net/Inet6Address;

    if-eqz v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :cond_1
    check-cast v2, Ljava/util/List;

    .line 20
    check-cast v2, Ljava/lang/Iterable;

    .line 67
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/net/Inet6Address;

    .line 20
    invoke-virtual {v3}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_3
    move-object v2, v0

    :goto_1
    check-cast v2, Ljava/net/Inet6Address;

    if-eqz v2, :cond_4

    .line 21
    invoke-virtual {v2}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v1

    invoke-static {v0, v1, p1}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;

    move-result-object p1

    goto :goto_2

    :cond_4
    move-object p1, v0

    .line 26
    :goto_2
    check-cast p0, Ljava/lang/Iterable;

    .line 69
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/net/InetAddress;

    .line 27
    instance-of v3, v2, Ljava/net/Inet4Address;

    if-eqz v3, :cond_5

    check-cast v2, Ljava/net/Inet4Address;

    invoke-virtual {v2}, Ljava/net/Inet4Address;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Ljava/net/Inet4Address;->isLinkLocalAddress()Z

    move-result v3

    if-nez v3, :cond_5

    .line 28
    invoke-virtual {v2}, Ljava/net/Inet4Address;->isAnyLocalAddress()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Ljava/net/Inet4Address;->isMulticastAddress()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_3

    :cond_6
    move-object v1, v0

    .line 26
    :goto_3
    instance-of p0, v1, Ljava/net/Inet4Address;

    if-eqz p0, :cond_7

    move-object v0, v1

    check-cast v0, Ljava/net/Inet4Address;

    .line 30
    :cond_7
    new-instance p0, Lcom/shilapi/xcertplay/network/WirelessHostAddresses;

    invoke-direct {p0, v0, p1}, Lcom/shilapi/xcertplay/network/WirelessHostAddresses;-><init>(Ljava/net/Inet4Address;Ljava/net/Inet6Address;)V

    return-object p0
.end method
