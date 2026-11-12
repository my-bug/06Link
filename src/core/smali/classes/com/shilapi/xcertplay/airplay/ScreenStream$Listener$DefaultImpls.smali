.class public final Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener$DefaultImpls;
.super Ljava/lang/Object;
.source "ScreenStream.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;
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
.method public static onClosed(Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;Ljava/lang/Throwable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 32
    # invokes: Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener$-CC;->$default$onClosed(Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;Ljava/lang/Throwable;)V
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener$-CC;->access$onClosed$jd(Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onCodec(Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;Lcom/shilapi/xcertplay/airplay/VideoCodec;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "codec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    # invokes: Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener$-CC;->$default$onCodec(Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;Lcom/shilapi/xcertplay/airplay/VideoCodec;)V
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener$-CC;->access$onCodec$jd(Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;Lcom/shilapi/xcertplay/airplay/VideoCodec;)V

    return-void
.end method

.method public static onConfig(Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;[B)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "codecData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    # invokes: Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener$-CC;->$default$onConfig(Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;[B)V
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener$-CC;->access$onConfig$jd(Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;[B)V

    return-void
.end method

.method public static onFrame(Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;[B)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "naluBytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    # invokes: Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener$-CC;->$default$onFrame(Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;[B)V
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener$-CC;->access$onFrame$jd(Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;[B)V

    return-void
.end method
