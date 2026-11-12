.class public final Lcom/shilapi/xcertplay/network/ExternalWifiStation$Station;
.super Ljava/lang/Object;
.source "ExternalWifiStation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/network/ExternalWifiStation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Station"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\n\n\u0002\u0010\u0010\u001a\u0004\u0008\u000e\u0010\u000fR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/ExternalWifiStation$Station;",
        "",
        "ssid",
        "",
        "bssid",
        "frequencyMHz",
        "",
        "security",
        "Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;)V",
        "getSsid",
        "()Ljava/lang/String;",
        "getBssid",
        "getFrequencyMHz",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getSecurity",
        "()Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;",
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

.field private final frequencyMHz:Ljava/lang/Integer;

.field private final security:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

.field private final ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;)V
    .locals 1

    const-string/jumbo v0, "ssid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/shilapi/xcertplay/network/ExternalWifiStation$Station;->ssid:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/shilapi/xcertplay/network/ExternalWifiStation$Station;->bssid:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/shilapi/xcertplay/network/ExternalWifiStation$Station;->frequencyMHz:Ljava/lang/Integer;

    .line 30
    iput-object p4, p0, Lcom/shilapi/xcertplay/network/ExternalWifiStation$Station;->security:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    return-void
.end method


# virtual methods
.method public final getBssid()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/ExternalWifiStation$Station;->bssid:Ljava/lang/String;

    return-object v0
.end method

.method public final getFrequencyMHz()Ljava/lang/Integer;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/ExternalWifiStation$Station;->frequencyMHz:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSecurity()Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/ExternalWifiStation$Station;->security:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    return-object v0
.end method

.method public final getSsid()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/ExternalWifiStation$Station;->ssid:Ljava/lang/String;

    return-object v0
.end method
