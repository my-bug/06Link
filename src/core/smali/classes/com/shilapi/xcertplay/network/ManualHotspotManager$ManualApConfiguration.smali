.class final Lcom/shilapi/xcertplay/network/ManualHotspotManager$ManualApConfiguration;
.super Ljava/lang/Object;
.source "ManualHotspotManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/network/ManualHotspotManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ManualApConfiguration"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0008\u0002\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\u0011\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0015\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\u0011\u001a\u0004\u0008\u0014\u0010\u0010R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u000e\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/ManualHotspotManager$ManualApConfiguration;",
        "",
        "ssid",
        "",
        "band",
        "",
        "channel",
        "frequencyMHz",
        "security",
        "Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;",
        "passphrase",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Integer;Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;Ljava/lang/String;)V",
        "getSsid",
        "()Ljava/lang/String;",
        "getBand",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getChannel",
        "()I",
        "getFrequencyMHz",
        "getSecurity",
        "()Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;",
        "getPassphrase",
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
.field private final band:Ljava/lang/Integer;

.field private final channel:I

.field private final frequencyMHz:Ljava/lang/Integer;

.field private final passphrase:Ljava/lang/String;

.field private final security:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

.field private final ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Integer;Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "ssid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "security"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 507
    iput-object p1, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager$ManualApConfiguration;->ssid:Ljava/lang/String;

    .line 508
    iput-object p2, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager$ManualApConfiguration;->band:Ljava/lang/Integer;

    .line 509
    iput p3, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager$ManualApConfiguration;->channel:I

    .line 510
    iput-object p4, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager$ManualApConfiguration;->frequencyMHz:Ljava/lang/Integer;

    .line 511
    iput-object p5, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager$ManualApConfiguration;->security:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    .line 513
    iput-object p6, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager$ManualApConfiguration;->passphrase:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Integer;Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    const/4 p6, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 506
    invoke-direct/range {v0 .. v6}, Lcom/shilapi/xcertplay/network/ManualHotspotManager$ManualApConfiguration;-><init>(Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Integer;Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getBand()Ljava/lang/Integer;
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager$ManualApConfiguration;->band:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getChannel()I
    .locals 1

    .line 509
    iget v0, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager$ManualApConfiguration;->channel:I

    return v0
.end method

.method public final getFrequencyMHz()Ljava/lang/Integer;
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager$ManualApConfiguration;->frequencyMHz:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getPassphrase()Ljava/lang/String;
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager$ManualApConfiguration;->passphrase:Ljava/lang/String;

    return-object v0
.end method

.method public final getSecurity()Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;
    .locals 1

    .line 511
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager$ManualApConfiguration;->security:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    return-object v0
.end method

.method public final getSsid()Ljava/lang/String;
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager$ManualApConfiguration;->ssid:Ljava/lang/String;

    return-object v0
.end method
