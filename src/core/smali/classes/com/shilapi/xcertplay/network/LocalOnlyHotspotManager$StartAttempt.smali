.class final Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;
.super Ljava/lang/Object;
.source "LocalOnlyHotspotManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StartAttempt"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R \u0010\u0004\u001a\u0008\u0018\u00010\u0005R\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;",
        "",
        "<init>",
        "()V",
        "reservation",
        "Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;",
        "Landroid/net/wifi/WifiManager;",
        "getReservation",
        "()Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;",
        "setReservation",
        "(Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)V",
        "failure",
        "Ljava/io/IOException;",
        "getFailure",
        "()Ljava/io/IOException;",
        "setFailure",
        "(Ljava/io/IOException;)V",
        "stopped",
        "",
        "getStopped",
        "()Z",
        "setStopped",
        "(Z)V",
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
.field private failure:Ljava/io/IOException;

.field private reservation:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

.field private stopped:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 846
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFailure()Ljava/io/IOException;
    .locals 1

    .line 848
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;->failure:Ljava/io/IOException;

    return-object v0
.end method

.method public final getReservation()Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;
    .locals 1

    .line 847
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;->reservation:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    return-object v0
.end method

.method public final getStopped()Z
    .locals 1

    .line 849
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;->stopped:Z

    return v0
.end method

.method public final setFailure(Ljava/io/IOException;)V
    .locals 0

    .line 848
    iput-object p1, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;->failure:Ljava/io/IOException;

    return-void
.end method

.method public final setReservation(Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)V
    .locals 0

    .line 847
    iput-object p1, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;->reservation:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    return-void
.end method

.method public final setStopped(Z)V
    .locals 0

    .line 849
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;->stopped:Z

    return-void
.end method
