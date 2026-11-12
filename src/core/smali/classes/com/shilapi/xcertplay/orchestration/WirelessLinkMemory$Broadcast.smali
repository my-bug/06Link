.class public final Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory$Broadcast;
.super Ljava/lang/Object;
.source "WirelessLinkMemory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Broadcast"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\r\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0008\u0010\u0016\u001a\u00020\u0005H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0010R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory$Broadcast;",
        "",
        "mode",
        "Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;",
        "ssid",
        "",
        "passphrase",
        "security",
        "Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;",
        "channel",
        "",
        "<init>",
        "(Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;I)V",
        "getMode",
        "()Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;",
        "getSsid",
        "()Ljava/lang/String;",
        "getPassphrase",
        "getSecurity",
        "()Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;",
        "getChannel",
        "()I",
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
.field private final channel:I

.field private final mode:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

.field private final passphrase:Ljava/lang/String;

.field private final security:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

.field private final ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;I)V
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "ssid"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "passphrase"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "security"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory$Broadcast;->mode:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    .line 22
    iput-object p2, p0, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory$Broadcast;->ssid:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory$Broadcast;->passphrase:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory$Broadcast;->security:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    .line 25
    iput p5, p0, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory$Broadcast;->channel:I

    return-void
.end method


# virtual methods
.method public final getChannel()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory$Broadcast;->channel:I

    return v0
.end method

.method public final getMode()Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory$Broadcast;->mode:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    return-object v0
.end method

.method public final getPassphrase()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory$Broadcast;->passphrase:Ljava/lang/String;

    return-object v0
.end method

.method public final getSecurity()Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory$Broadcast;->security:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    return-object v0
.end method

.method public final getSsid()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory$Broadcast;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 27
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory$Broadcast;->mode:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory$Broadcast;->ssid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory$Broadcast;->passphrase:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 28
    iget-object v3, p0, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory$Broadcast;->security:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    iget v4, p0, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory$Broadcast;->channel:I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Broadcast(mode="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", ssidLength="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", passphraseLength="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", security="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", channel="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
