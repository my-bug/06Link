.class public final Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onAudio$1;
.super Ljava/lang/Object;
.source "CarPlayMediaEngine.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/airplay/AudioStream$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->onAudio(Lcom/shilapi/xcertplay/airplay/AirPlaySession;ILjava/util/Map;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCarPlayMediaEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CarPlayMediaEngine.kt\ncom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onAudio$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,477:1\n1#2:478\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0010\u0003\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0005H\u0016J3\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016\u00a2\u0006\u0002\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "com/shilapi/xcertplay/airplay/CarPlayMediaEngine$onAudio$1",
        "Lcom/shilapi/xcertplay/airplay/AudioStream$Listener;",
        "onStarted",
        "",
        "firstSample",
        "",
        "onRtp",
        "rtp",
        "",
        "sample",
        "onPacket",
        "wire",
        "error",
        "",
        "([B[BLjava/lang/Integer;Ljava/lang/Throwable;)V",
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
.field final synthetic $capture:Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;

.field final synthetic $format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

.field final synthetic $meta:Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;

.field final synthetic $microphone:Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;

.field final synthetic $streamId:Lcom/shilapi/xcertplay/airplay/AudioStreamId;

.field final synthetic this$0:Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;


# direct methods
.method constructor <init>(Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;Lcom/shilapi/xcertplay/airplay/AudioStreamId;Lcom/shilapi/xcertplay/airplay/AudioFormat;Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;)V
    .locals 0

    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onAudio$1;->$meta:Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;

    iput-object p2, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onAudio$1;->this$0:Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;

    iput-object p3, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onAudio$1;->$streamId:Lcom/shilapi/xcertplay/airplay/AudioStreamId;

    iput-object p4, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onAudio$1;->$format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    iput-object p5, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onAudio$1;->$microphone:Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;

    iput-object p6, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onAudio$1;->$capture:Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPacket([B[BLjava/lang/Integer;Ljava/lang/Throwable;)V
    .locals 1

    const-string/jumbo v0, "wire"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onAudio$1;->$capture:Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->record([B[BLjava/lang/Integer;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onRtp([BI)V
    .locals 3

    const-string v0, "rtp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onAudio$1;->this$0:Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;

    # getter for: Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->sink:Lcom/shilapi/xcertplay/airplay/MediaSink;
    invoke-static {v0}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->access$getSink$p(Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;)Lcom/shilapi/xcertplay/airplay/MediaSink;

    move-result-object v0

    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onAudio$1;->$streamId:Lcom/shilapi/xcertplay/airplay/AudioStreamId;

    iget-object v2, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onAudio$1;->$format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/shilapi/xcertplay/airplay/MediaSink;->onAudioRtp(Lcom/shilapi/xcertplay/airplay/AudioStreamId;Lcom/shilapi/xcertplay/airplay/AudioFormat;[BI)V

    return-void
.end method

.method public onStarted(I)V
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onAudio$1;->$meta:Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->setFirstSample(Ljava/lang/Integer;)V

    .line 169
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onAudio$1;->$meta:Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->setOriginNs(Ljava/lang/Long;)V

    .line 170
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onAudio$1;->this$0:Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;

    # getter for: Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->sink:Lcom/shilapi/xcertplay/airplay/MediaSink;
    invoke-static {v0}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->access$getSink$p(Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;)Lcom/shilapi/xcertplay/airplay/MediaSink;

    move-result-object v0

    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onAudio$1;->$streamId:Lcom/shilapi/xcertplay/airplay/AudioStreamId;

    iget-object v2, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onAudio$1;->$format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-interface {v0, v1, v2, p1}, Lcom/shilapi/xcertplay/airplay/MediaSink;->onAudioStarted(Lcom/shilapi/xcertplay/airplay/AudioStreamId;Lcom/shilapi/xcertplay/airplay/AudioFormat;I)V

    .line 171
    iget-object p1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onAudio$1;->$microphone:Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onAudio$1;->this$0:Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;

    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onAudio$1;->$streamId:Lcom/shilapi/xcertplay/airplay/AudioStreamId;

    # getter for: Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->sink:Lcom/shilapi/xcertplay/airplay/MediaSink;
    invoke-static {v0}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->access$getSink$p(Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;)Lcom/shilapi/xcertplay/airplay/MediaSink;

    move-result-object v0

    invoke-interface {v0, v1, p1}, Lcom/shilapi/xcertplay/airplay/MediaSink;->onMicrophoneStarted(Lcom/shilapi/xcertplay/airplay/AudioStreamId;Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;)V

    :cond_0
    return-void
.end method
