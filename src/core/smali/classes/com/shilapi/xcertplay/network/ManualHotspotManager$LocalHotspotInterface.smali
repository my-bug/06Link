.class final Lcom/shilapi/xcertplay/network/ManualHotspotManager$LocalHotspotInterface;
.super Ljava/lang/Object;
.source "ManualHotspotManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/network/ManualHotspotManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocalHotspotInterface"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\n\u0008\u0002\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000cR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/ManualHotspotManager$LocalHotspotInterface;",
        "",
        "name",
        "",
        "hostAddress",
        "Ljava/net/InetAddress;",
        "hardwareAddress",
        "score",
        "",
        "<init>",
        "(Ljava/lang/String;Ljava/net/InetAddress;Ljava/lang/String;I)V",
        "getName",
        "()Ljava/lang/String;",
        "getHostAddress",
        "()Ljava/net/InetAddress;",
        "getHardwareAddress",
        "getScore",
        "()I",
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
.field private final hardwareAddress:Ljava/lang/String;

.field private final hostAddress:Ljava/net/InetAddress;

.field private final name:Ljava/lang/String;

.field private final score:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/net/InetAddress;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hostAddress"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    iput-object p1, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager$LocalHotspotInterface;->name:Ljava/lang/String;

    .line 518
    iput-object p2, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager$LocalHotspotInterface;->hostAddress:Ljava/net/InetAddress;

    .line 519
    iput-object p3, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager$LocalHotspotInterface;->hardwareAddress:Ljava/lang/String;

    .line 520
    iput p4, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager$LocalHotspotInterface;->score:I

    return-void
.end method


# virtual methods
.method public final getHardwareAddress()Ljava/lang/String;
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager$LocalHotspotInterface;->hardwareAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getHostAddress()Ljava/net/InetAddress;
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager$LocalHotspotInterface;->hostAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager$LocalHotspotInterface;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getScore()I
    .locals 1

    .line 520
    iget v0, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager$LocalHotspotInterface;->score:I

    return v0
.end method
