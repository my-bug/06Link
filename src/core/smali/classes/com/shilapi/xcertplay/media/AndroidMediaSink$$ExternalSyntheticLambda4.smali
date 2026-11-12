.class public final synthetic Lcom/shilapi/xcertplay/media/AndroidMediaSink$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;

.field public final synthetic f$1:Lcom/shilapi/xcertplay/media/MicrophoneTuning$Settings;

.field public final synthetic f$2:Lcom/shilapi/xcertplay/media/AndroidMediaSink;


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;Lcom/shilapi/xcertplay/media/MicrophoneTuning$Settings;Lcom/shilapi/xcertplay/media/AndroidMediaSink;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink$$ExternalSyntheticLambda4;->f$0:Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;

    iput-object p2, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink$$ExternalSyntheticLambda4;->f$1:Lcom/shilapi/xcertplay/media/MicrophoneTuning$Settings;

    iput-object p3, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink$$ExternalSyntheticLambda4;->f$2:Lcom/shilapi/xcertplay/media/AndroidMediaSink;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink$$ExternalSyntheticLambda4;->f$0:Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;

    iget-object v1, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink$$ExternalSyntheticLambda4;->f$1:Lcom/shilapi/xcertplay/media/MicrophoneTuning$Settings;

    iget-object v2, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink$$ExternalSyntheticLambda4;->f$2:Lcom/shilapi/xcertplay/media/AndroidMediaSink;

    check-cast p1, Lcom/shilapi/xcertplay/airplay/AudioStreamId;

    invoke-static {v0, v1, v2, p1}, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->$r8$lambda$HtnH0VbbZvKqcSKJxHPtPLCJur8(Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;Lcom/shilapi/xcertplay/media/MicrophoneTuning$Settings;Lcom/shilapi/xcertplay/media/AndroidMediaSink;Lcom/shilapi/xcertplay/airplay/AudioStreamId;)Lcom/shilapi/xcertplay/media/MicrophoneUplink;

    move-result-object p1

    return-object p1
.end method
