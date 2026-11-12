.class public final Lcom/shilapi/xcertplay/airplay/IapTunnel$listener$1;
.super Ljava/lang/Object;
.source "IapTunnel.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/airplay/IapTunnel;-><init>([BLjava/net/InetAddress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/shilapi/xcertplay/airplay/IapTunnel$listener$1",
        "Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;",
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Ljava/lang/Throwable;)V
    .locals 0

    .line 43
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener$-CC;->$default$onClosed(Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onDebug(Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener$-CC;->$default$onDebug(Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;Ljava/lang/String;)V

    return-void
.end method

.method public onIap([B)V
    .locals 0

    .line 43
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener$-CC;->$default$onIap(Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;[B)V

    return-void
.end method

.method public onOpen(Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener$-CC;->$default$onOpen(Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;Ljava/lang/String;)V

    return-void
.end method
