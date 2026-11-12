.class public final Lcom/shilapi/xcertplay/airplay/ScreenStream$listener$1;
.super Ljava/lang/Object;
.source "ScreenStream.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/airplay/ScreenStream;-><init>([BLkotlin/jvm/functions/Function1;Ljava/net/InetAddress;)V
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
        "com/shilapi/xcertplay/airplay/ScreenStream$listener$1",
        "Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;",
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

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Ljava/lang/Throwable;)V
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener$-CC;->$default$onClosed(Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onCodec(Lcom/shilapi/xcertplay/airplay/VideoCodec;)V
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener$-CC;->$default$onCodec(Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;Lcom/shilapi/xcertplay/airplay/VideoCodec;)V

    return-void
.end method

.method public onConfig([B)V
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener$-CC;->$default$onConfig(Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;[B)V

    return-void
.end method

.method public onFrame([B)V
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener$-CC;->$default$onFrame(Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;[B)V

    return-void
.end method
