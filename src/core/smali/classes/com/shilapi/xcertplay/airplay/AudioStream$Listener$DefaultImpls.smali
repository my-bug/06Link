.class public final Lcom/shilapi/xcertplay/airplay/AudioStream$Listener$DefaultImpls;
.super Ljava/lang/Object;
.source "AudioStream.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/airplay/AudioStream$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static onPacket(Lcom/shilapi/xcertplay/airplay/AudioStream$Listener;[B[BLjava/lang/Integer;Ljava/lang/Throwable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v0, "wire"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    # invokes: Lcom/shilapi/xcertplay/airplay/AudioStream$Listener$-CC;->$default$onPacket(Lcom/shilapi/xcertplay/airplay/AudioStream$Listener;[B[BLjava/lang/Integer;Ljava/lang/Throwable;)V
    invoke-static {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/airplay/AudioStream$Listener$-CC;->access$onPacket$jd(Lcom/shilapi/xcertplay/airplay/AudioStream$Listener;[B[BLjava/lang/Integer;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onRtp(Lcom/shilapi/xcertplay/airplay/AudioStream$Listener;[BI)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "rtp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    # invokes: Lcom/shilapi/xcertplay/airplay/AudioStream$Listener$-CC;->$default$onRtp(Lcom/shilapi/xcertplay/airplay/AudioStream$Listener;[BI)V
    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/airplay/AudioStream$Listener$-CC;->access$onRtp$jd(Lcom/shilapi/xcertplay/airplay/AudioStream$Listener;[BI)V

    return-void
.end method

.method public static onStarted(Lcom/shilapi/xcertplay/airplay/AudioStream$Listener;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 37
    # invokes: Lcom/shilapi/xcertplay/airplay/AudioStream$Listener$-CC;->$default$onStarted(Lcom/shilapi/xcertplay/airplay/AudioStream$Listener;I)V
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/AudioStream$Listener$-CC;->access$onStarted$jd(Lcom/shilapi/xcertplay/airplay/AudioStream$Listener;I)V

    return-void
.end method
