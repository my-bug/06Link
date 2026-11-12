.class public final Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;
.super Ljava/lang/Object;
.source "WirelessHotspotManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0015\u0018\u00002\u00020\u0001B_\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0008\u0010$\u001a\u00020\u0003H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0014R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0015\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\n\n\u0002\u0010\u001c\u001a\u0004\u0008\u001a\u0010\u001bR\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0014R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u0014R\u0013\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u0011\u0010\u000e\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u0014R\u0011\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#\u00a8\u0006%"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;",
        "",
        "ssid",
        "",
        "passphrase",
        "security",
        "Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;",
        "channel",
        "",
        "frequencyMHz",
        "bssid",
        "interfaceName",
        "hostAddress",
        "Ljava/net/InetAddress;",
        "bandLabel",
        "backend",
        "Lcom/shilapi/xcertplay/network/WirelessHotspotBackend;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/net/InetAddress;Ljava/lang/String;Lcom/shilapi/xcertplay/network/WirelessHotspotBackend;)V",
        "getSsid",
        "()Ljava/lang/String;",
        "getPassphrase",
        "getSecurity",
        "()Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;",
        "getChannel",
        "()I",
        "getFrequencyMHz",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getBssid",
        "getInterfaceName",
        "getHostAddress",
        "()Ljava/net/InetAddress;",
        "getBandLabel",
        "getBackend",
        "()Lcom/shilapi/xcertplay/network/WirelessHotspotBackend;",
        "toString",
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
.field private final backend:Lcom/shilapi/xcertplay/network/WirelessHotspotBackend;

.field private final bandLabel:Ljava/lang/String;

.field private final bssid:Ljava/lang/String;

.field private final channel:I

.field private final frequencyMHz:Ljava/lang/Integer;

.field private final hostAddress:Ljava/net/InetAddress;

.field private final interfaceName:Ljava/lang/String;

.field private final passphrase:Ljava/lang/String;

.field private final security:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

.field private final ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/net/InetAddress;Ljava/lang/String;Lcom/shilapi/xcertplay/network/WirelessHotspotBackend;)V
    .locals 1

    const-string/jumbo v0, "ssid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "passphrase"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "security"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bandLabel"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backend"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->ssid:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->passphrase:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->security:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    .line 19
    iput p4, p0, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->channel:I

    .line 20
    iput-object p5, p0, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->frequencyMHz:Ljava/lang/Integer;

    .line 21
    iput-object p6, p0, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->bssid:Ljava/lang/String;

    .line 22
    iput-object p7, p0, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->interfaceName:Ljava/lang/String;

    .line 23
    iput-object p8, p0, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->hostAddress:Ljava/net/InetAddress;

    .line 24
    iput-object p9, p0, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->bandLabel:Ljava/lang/String;

    .line 25
    iput-object p10, p0, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->backend:Lcom/shilapi/xcertplay/network/WirelessHotspotBackend;

    return-void
.end method


# virtual methods
.method public final getBackend()Lcom/shilapi/xcertplay/network/WirelessHotspotBackend;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->backend:Lcom/shilapi/xcertplay/network/WirelessHotspotBackend;

    return-object v0
.end method

.method public final getBandLabel()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->bandLabel:Ljava/lang/String;

    return-object v0
.end method

.method public final getBssid()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->bssid:Ljava/lang/String;

    return-object v0
.end method

.method public final getChannel()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->channel:I

    return v0
.end method

.method public final getFrequencyMHz()Ljava/lang/Integer;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->frequencyMHz:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getHostAddress()Ljava/net/InetAddress;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->hostAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public final getInterfaceName()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->interfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPassphrase()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->passphrase:Ljava/lang/String;

    return-object v0
.end method

.method public final getSecurity()Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->security:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    return-object v0
.end method

.method public final getSsid()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 28
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->backend:Lcom/shilapi/xcertplay/network/WirelessHotspotBackend;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/WirelessHotspotBackend;->getLabel()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->ssid:Ljava/lang/String;

    .line 29
    iget-object v2, p0, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->security:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    iget v3, p0, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->channel:I

    .line 30
    iget-object v4, p0, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->frequencyMHz:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->bssid:Ljava/lang/String;

    iget-object v6, p0, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->interfaceName:Ljava/lang/String;

    .line 31
    iget-object v7, p0, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->hostAddress:Ljava/net/InetAddress;

    iget-object v8, p0, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->bandLabel:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "WirelessHotspotInfo(backend="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ssid=\'"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', passphrase=<redacted>, security="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", channel="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", frequencyMHz="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", bssid=\'"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', interfaceName="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", hostAddress="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", bandLabel=\'"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\')"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
