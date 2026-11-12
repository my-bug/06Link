.class public final Lcom/shilapi/xcertplay/network/WirelessHostAddresses;
.super Ljava/lang/Object;
.source "WirelessHostAddress.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/WirelessHostAddresses;",
        "",
        "ipv4",
        "Ljava/net/Inet4Address;",
        "ipv6LinkLocal",
        "Ljava/net/Inet6Address;",
        "<init>",
        "(Ljava/net/Inet4Address;Ljava/net/Inet6Address;)V",
        "getIpv4",
        "()Ljava/net/Inet4Address;",
        "getIpv6LinkLocal",
        "()Ljava/net/Inet6Address;",
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


# instance fields
.field private final ipv4:Ljava/net/Inet4Address;

.field private final ipv6LinkLocal:Ljava/net/Inet6Address;


# direct methods
.method public constructor <init>(Ljava/net/Inet4Address;Ljava/net/Inet6Address;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/WirelessHostAddresses;->ipv4:Ljava/net/Inet4Address;

    iput-object p2, p0, Lcom/shilapi/xcertplay/network/WirelessHostAddresses;->ipv6LinkLocal:Ljava/net/Inet6Address;

    return-void
.end method


# virtual methods
.method public final getIpv4()Ljava/net/Inet4Address;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WirelessHostAddresses;->ipv4:Ljava/net/Inet4Address;

    return-object v0
.end method

.method public final getIpv6LinkLocal()Ljava/net/Inet6Address;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WirelessHostAddresses;->ipv6LinkLocal:Ljava/net/Inet6Address;

    return-object v0
.end method
