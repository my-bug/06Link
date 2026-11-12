.class final Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;
.super Ljava/lang/Object;
.source "LocalOnlyHotspotManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HotspotConfiguration"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u000f\u0008\u0002\u0018\u00002\u00020\u0001BC\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u0010\u000c\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0010R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0010R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u000c\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0010\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;",
        "",
        "ssid",
        "",
        "passphrase",
        "security",
        "Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;",
        "channel",
        "",
        "bssid",
        "bssidBytes",
        "",
        "bandLabel",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;ILjava/lang/String;[BLjava/lang/String;)V",
        "getSsid",
        "()Ljava/lang/String;",
        "getPassphrase",
        "getSecurity",
        "()Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;",
        "getChannel",
        "()I",
        "getBssid",
        "getBssidBytes",
        "()[B",
        "getBandLabel",
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
.field private final bandLabel:Ljava/lang/String;

.field private final bssid:Ljava/lang/String;

.field private final bssidBytes:[B

.field private final channel:I

.field private final passphrase:Ljava/lang/String;

.field private final security:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

.field private final ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;ILjava/lang/String;[BLjava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "ssid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "passphrase"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "security"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bandLabel"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 852
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 853
    iput-object p1, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;->ssid:Ljava/lang/String;

    .line 854
    iput-object p2, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;->passphrase:Ljava/lang/String;

    .line 855
    iput-object p3, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;->security:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    .line 856
    iput p4, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;->channel:I

    .line 857
    iput-object p5, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;->bssid:Ljava/lang/String;

    .line 858
    iput-object p6, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;->bssidBytes:[B

    .line 859
    iput-object p7, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;->bandLabel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getBandLabel()Ljava/lang/String;
    .locals 1

    .line 859
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;->bandLabel:Ljava/lang/String;

    return-object v0
.end method

.method public final getBssid()Ljava/lang/String;
    .locals 1

    .line 857
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;->bssid:Ljava/lang/String;

    return-object v0
.end method

.method public final getBssidBytes()[B
    .locals 1

    .line 858
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;->bssidBytes:[B

    return-object v0
.end method

.method public final getChannel()I
    .locals 1

    .line 856
    iget v0, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;->channel:I

    return v0
.end method

.method public final getPassphrase()Ljava/lang/String;
    .locals 1

    .line 854
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;->passphrase:Ljava/lang/String;

    return-object v0
.end method

.method public final getSecurity()Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;
    .locals 1

    .line 855
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;->security:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    return-object v0
.end method

.method public final getSsid()Ljava/lang/String;
    .locals 1

    .line 853
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;->ssid:Ljava/lang/String;

    return-object v0
.end method
