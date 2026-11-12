.class final Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$ApInterface;
.super Ljava/lang/Object;
.source "LocalOnlyHotspotManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ApInterface"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0002\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\n\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$ApInterface;",
        "",
        "name",
        "",
        "hostAddress",
        "Ljava/net/InetAddress;",
        "bssid",
        "<init>",
        "(Ljava/lang/String;Ljava/net/InetAddress;Ljava/lang/String;)V",
        "getName",
        "()Ljava/lang/String;",
        "getHostAddress",
        "()Ljava/net/InetAddress;",
        "getBssid",
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
.field private final bssid:Ljava/lang/String;

.field private final hostAddress:Ljava/net/InetAddress;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/net/InetAddress;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 862
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 863
    iput-object p1, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$ApInterface;->name:Ljava/lang/String;

    .line 864
    iput-object p2, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$ApInterface;->hostAddress:Ljava/net/InetAddress;

    .line 865
    iput-object p3, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$ApInterface;->bssid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getBssid()Ljava/lang/String;
    .locals 1

    .line 865
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$ApInterface;->bssid:Ljava/lang/String;

    return-object v0
.end method

.method public final getHostAddress()Ljava/net/InetAddress;
    .locals 1

    .line 864
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$ApInterface;->hostAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 863
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$ApInterface;->name:Ljava/lang/String;

    return-object v0
.end method
