.class final Lcom/shilapi/xcertplay/network/ExternalWifiManager$ClientInterface;
.super Ljava/lang/Object;
.source "ExternalWifiManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/network/ExternalWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClientInterface"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/ExternalWifiManager$ClientInterface;",
        "",
        "name",
        "",
        "hostAddress",
        "Ljava/net/InetAddress;",
        "<init>",
        "(Ljava/lang/String;Ljava/net/InetAddress;)V",
        "getName",
        "()Ljava/lang/String;",
        "getHostAddress",
        "()Ljava/net/InetAddress;",
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
.field private final hostAddress:Ljava/net/InetAddress;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/net/InetAddress;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/ExternalWifiManager$ClientInterface;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/shilapi/xcertplay/network/ExternalWifiManager$ClientInterface;->hostAddress:Ljava/net/InetAddress;

    return-void
.end method


# virtual methods
.method public final getHostAddress()Ljava/net/InetAddress;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/ExternalWifiManager$ClientInterface;->hostAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/ExternalWifiManager$ClientInterface;->name:Ljava/lang/String;

    return-object v0
.end method
