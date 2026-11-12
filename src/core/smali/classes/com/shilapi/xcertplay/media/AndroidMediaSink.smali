.class public final Lcom/shilapi/xcertplay/media/AndroidMediaSink;
.super Ljava/lang/Object;
.source "AndroidMediaSink.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/airplay/MediaSink;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidMediaSink.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidMediaSink.kt\ncom/shilapi/xcertplay/media/AndroidMediaSink\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1750:1\n1#2:1751\n1869#3,2:1752\n1869#3,2:1754\n1869#3,2:1756\n1869#3,2:1758\n1869#3,2:1760\n*S KotlinDebug\n*F\n+ 1 AndroidMediaSink.kt\ncom/shilapi/xcertplay/media/AndroidMediaSink\n*L\n383#1:1752,2\n479#1:1754,2\n483#1:1756,2\n488#1:1758,2\n493#1:1760,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00e4\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0012\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010#\n\u0002\u0008\u0006\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u00db\u0001\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0004\u0012\u001c\u0008\u0002\u0010\u0012\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0004\u0012\u0014\u0008\u0002\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00110\u0014\u0012\u0014\u0008\u0002\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00110\u0014\u0012\u0016\u0008\u0002\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0014\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0017\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u001f\u0010\"\u001a\u00020\u00112\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\"\u0010#J\u0017\u0010%\u001a\u00020$2\u0006\u0010\u001c\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008%\u0010&J)\u0010,\u001a\u00020+2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010(\u001a\u00020\'2\u0008\u0010*\u001a\u0004\u0018\u00010)H\u0002\u00a2\u0006\u0004\u0008,\u0010-J%\u00100\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u00042\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u00110.H\u0016\u00a2\u0006\u0004\u00080\u00101J+\u00102\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u00042\u0012\u0010/\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00110\u0014H\u0016\u00a2\u0006\u0004\u00082\u00103J\u001d\u00104\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u00084\u00105J\u001d\u00106\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u00086\u00105J)\u00108\u001a\u00020\u00112\u001a\u00107\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010\u00a2\u0006\u0004\u00088\u00109J\u001f\u0010<\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u00042\u0006\u0010;\u001a\u00020:H\u0016\u00a2\u0006\u0004\u0008<\u0010=J\'\u0010@\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u00042\u0006\u0010>\u001a\u00020\u00042\u0006\u0010?\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008@\u0010AJ\u001f\u0010D\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u00042\u0006\u0010C\u001a\u00020BH\u0016\u00a2\u0006\u0004\u0008D\u0010EJ\u001f\u0010G\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u00042\u0006\u0010F\u001a\u00020BH\u0016\u00a2\u0006\u0004\u0008G\u0010EJ\u001f\u0010H\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008H\u0010IJ\'\u0010K\u001a\u00020\u00112\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010(\u001a\u00020\'2\u0006\u0010J\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008K\u0010LJ/\u0010O\u001a\u00020\u00112\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010(\u001a\u00020\'2\u0006\u0010M\u001a\u00020B2\u0006\u0010N\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008O\u0010PJ\u0017\u0010Q\u001a\u00020\u00112\u0006\u0010 \u001a\u00020\u001fH\u0016\u00a2\u0006\u0004\u0008Q\u0010RJ\u001f\u0010U\u001a\u00020\u00112\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010T\u001a\u00020SH\u0016\u00a2\u0006\u0004\u0008U\u0010VJ\u0017\u0010W\u001a\u00020\u00112\u0006\u0010 \u001a\u00020\u001fH\u0016\u00a2\u0006\u0004\u0008W\u0010RJ\r\u0010X\u001a\u00020\u0011\u00a2\u0006\u0004\u0008X\u0010YR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010ZR\u0014\u0010\u0006\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010ZR\u0014\u0010\u0008\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010[R\u0014\u0010\t\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010[R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010[R\u0014\u0010\u000b\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010ZR\u0014\u0010\u000c\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010ZR\u0014\u0010\u000f\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010ZR\u0014\u0010\u0013\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010ZR \u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00110\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\\R \u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00110\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\\R\"\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\\R\u0016\u0010]\u001a\u0004\u0018\u00010\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008]\u0010^R\u0017\u0010`\u001a\u00020_8\u0006\u00a2\u0006\u000c\n\u0004\u0008`\u0010a\u001a\u0004\u0008b\u0010cR\u0016\u0010e\u001a\u0004\u0018\u00010d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008e\u0010fR\u0014\u0010h\u001a\u00020g8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008h\u0010iR\u0016\u0010k\u001a\u0004\u0018\u00010j8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008k\u0010lR\u0014\u0010n\u001a\u00020m8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008n\u0010oR\u001a\u0010q\u001a\u0008\u0012\u0004\u0012\u00020\u00040p8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008q\u0010rR\u0016\u0010s\u001a\u0004\u0018\u00010\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008s\u0010tR*\u0010u\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008u\u0010vR \u0010x\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00020w8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008x\u0010yR \u0010z\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020$0w8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008z\u0010yR\u001a\u0010{\u001a\u0008\u0012\u0004\u0012\u00020\u001f0p8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008{\u0010rR \u0010|\u001a\u000e\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020+0w8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008|\u0010yR\u0014\u0010~\u001a\u00020}8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008~\u0010\u007fR/\u0010\u0081\u0001\u001a\u001b\u0012\u0004\u0012\u00020\u0004\u0012\u0011\u0012\u000f\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0080\u00010w8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u0081\u0001\u0010yR#\u0010\u0083\u0001\u001a\u000f\u0012\u0004\u0012\u00020\u001f\u0012\u0005\u0012\u00030\u0082\u00010w8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u0083\u0001\u0010yR\"\u0010\u0084\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020:0w8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u0084\u0001\u0010yR(\u0010\u0085\u0001\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110.0w8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u0085\u0001\u0010yR.\u0010\u0086\u0001\u001a\u001a\u0012\u0004\u0012\u00020\u0004\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00110\u00140w8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u0086\u0001\u0010yR\u0018\u0010\u0088\u0001\u001a\u00030\u0087\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0088\u0001\u0010\u0089\u0001R\"\u0010\u008c\u0001\u001a\r \u008b\u0001*\u0005\u0018\u00010\u008a\u00010\u008a\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u008c\u0001\u0010\u008d\u0001\u00a8\u0006\u008e\u0001"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/media/AndroidMediaSink;",
        "Lcom/shilapi/xcertplay/airplay/MediaSink;",
        "Landroid/view/Surface;",
        "surface",
        "",
        "videoWidth",
        "videoHeight",
        "",
        "preferSoftwareHevcDecoder",
        "advancedAudioChannelMapping",
        "audioFocusEnabled",
        "mediaChannel",
        "navigationChannel",
        "Landroid/content/Context;",
        "context",
        "navigationStreamType",
        "Lkotlin/Function2;",
        "",
        "onScreenStreamActiveChanged",
        "mediaBufferMillis",
        "Lkotlin/Function1;",
        "",
        "onAudioDiagnostic",
        "onMediaAudioChanged",
        "Lcom/shilapi/xcertplay/media/VideoWindow;",
        "onMainVideoWindow",
        "<init>",
        "(Landroid/view/Surface;IIZZZIILandroid/content/Context;ILkotlin/jvm/functions/Function2;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
        "type",
        "requestVideoRecovery",
        "(I)V",
        "Lcom/shilapi/xcertplay/airplay/AudioStreamId;",
        "id",
        "active",
        "updateMediaAudio",
        "(Lcom/shilapi/xcertplay/airplay/AudioStreamId;Z)V",
        "Lcom/shilapi/xcertplay/media/VideoDecoder;",
        "videoDecoder",
        "(I)Lcom/shilapi/xcertplay/media/VideoDecoder;",
        "Lcom/shilapi/xcertplay/airplay/AudioFormat;",
        "format",
        "Lcom/shilapi/xcertplay/media/MicrophoneTuning$Settings;",
        "tuning",
        "Lcom/shilapi/xcertplay/media/AudioRenderer;",
        "audioRenderer",
        "(Lcom/shilapi/xcertplay/airplay/AudioStreamId;Lcom/shilapi/xcertplay/airplay/AudioFormat;Lcom/shilapi/xcertplay/media/MicrophoneTuning$Settings;)Lcom/shilapi/xcertplay/media/AudioRenderer;",
        "Lkotlin/Function0;",
        "handler",
        "setVideoRecoveryHandler",
        "(ILkotlin/jvm/functions/Function0;)V",
        "setVideoDiagnosticHandler",
        "(ILkotlin/jvm/functions/Function1;)V",
        "setSurface",
        "(ILandroid/view/Surface;)V",
        "clearSurface",
        "listener",
        "setScreenStreamActiveChangedListener",
        "(Lkotlin/jvm/functions/Function2;)V",
        "Lcom/shilapi/xcertplay/airplay/VideoCodec;",
        "codec",
        "onVideoCodec",
        "(ILcom/shilapi/xcertplay/airplay/VideoCodec;)V",
        "width",
        "height",
        "onVideoSize",
        "(III)V",
        "",
        "codecData",
        "onVideoConfig",
        "(I[B)V",
        "naluBytes",
        "onVideoFrame",
        "onScreenStreamActive",
        "(IZ)V",
        "firstSample",
        "onAudioStarted",
        "(Lcom/shilapi/xcertplay/airplay/AudioStreamId;Lcom/shilapi/xcertplay/airplay/AudioFormat;I)V",
        "rtp",
        "sample",
        "onAudioRtp",
        "(Lcom/shilapi/xcertplay/airplay/AudioStreamId;Lcom/shilapi/xcertplay/airplay/AudioFormat;[BI)V",
        "onAudioStopped",
        "(Lcom/shilapi/xcertplay/airplay/AudioStreamId;)V",
        "Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;",
        "config",
        "onMicrophoneStarted",
        "(Lcom/shilapi/xcertplay/airplay/AudioStreamId;Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;)V",
        "onMicrophoneStopped",
        "close",
        "()V",
        "I",
        "Z",
        "Lkotlin/jvm/functions/Function1;",
        "appContext",
        "Landroid/content/Context;",
        "Lcom/shilapi/xcertplay/media/FirstPictureCounters;",
        "mainPicture",
        "Lcom/shilapi/xcertplay/media/FirstPictureCounters;",
        "getMainPicture",
        "()Lcom/shilapi/xcertplay/media/FirstPictureCounters;",
        "Lcom/shilapi/xcertplay/media/CallAudioMode;",
        "callAudioMode",
        "Lcom/shilapi/xcertplay/media/CallAudioMode;",
        "Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;",
        "audioFocusCoordinator",
        "Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;",
        "Lcom/shilapi/xcertplay/media/KeyVolumeFollower;",
        "keyVolumeFollower",
        "Lcom/shilapi/xcertplay/media/KeyVolumeFollower;",
        "",
        "screenStateLock",
        "Ljava/lang/Object;",
        "",
        "activeScreenTypes",
        "Ljava/util/Set;",
        "defaultSurface",
        "Landroid/view/Surface;",
        "screenStreamActiveChanged",
        "Lkotlin/jvm/functions/Function2;",
        "j$/util/concurrent/ConcurrentHashMap",
        "surfaces",
        "Lj$/util/concurrent/ConcurrentHashMap;",
        "videoDecoders",
        "mediaAudioTypes",
        "audioRenderers",
        "Lcom/shilapi/xcertplay/media/RendererRestartGate;",
        "rendererRestarts",
        "Lcom/shilapi/xcertplay/media/RendererRestartGate;",
        "Lkotlin/Pair;",
        "videoSizes",
        "Lcom/shilapi/xcertplay/media/MicrophoneUplink;",
        "microphoneUplinks",
        "pendingVideoCodec",
        "videoRecoveryHandlers",
        "videoDiagnosticHandlers",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "recoveryPending",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Ljava/util/concurrent/ExecutorService;",
        "kotlin.jvm.PlatformType",
        "recoveryExecutor",
        "Ljava/util/concurrent/ExecutorService;",
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
.field private final activeScreenTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final advancedAudioChannelMapping:Z

.field private final appContext:Landroid/content/Context;

.field private final audioFocusCoordinator:Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;

.field private final audioFocusEnabled:Z

.field private final audioRenderers:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Lcom/shilapi/xcertplay/airplay/AudioStreamId;",
            "Lcom/shilapi/xcertplay/media/AudioRenderer;",
            ">;"
        }
    .end annotation
.end field

.field private final callAudioMode:Lcom/shilapi/xcertplay/media/CallAudioMode;

.field private final defaultSurface:Landroid/view/Surface;

.field private final keyVolumeFollower:Lcom/shilapi/xcertplay/media/KeyVolumeFollower;

.field private final mainPicture:Lcom/shilapi/xcertplay/media/FirstPictureCounters;

.field private final mediaAudioTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/shilapi/xcertplay/airplay/AudioStreamId;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaBufferMillis:I

.field private final mediaChannel:I

.field private final microphoneUplinks:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Lcom/shilapi/xcertplay/airplay/AudioStreamId;",
            "Lcom/shilapi/xcertplay/media/MicrophoneUplink;",
            ">;"
        }
    .end annotation
.end field

.field private final navigationChannel:I

.field private final navigationStreamType:I

.field private final onAudioDiagnostic:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onMainVideoWindow:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/shilapi/xcertplay/media/VideoWindow;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onMediaAudioChanged:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingVideoCodec:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/shilapi/xcertplay/airplay/VideoCodec;",
            ">;"
        }
    .end annotation
.end field

.field private final preferSoftwareHevcDecoder:Z

.field private final recoveryExecutor:Ljava/util/concurrent/ExecutorService;

.field private final recoveryPending:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final rendererRestarts:Lcom/shilapi/xcertplay/media/RendererRestartGate;

.field private final screenStateLock:Ljava/lang/Object;

.field private volatile screenStreamActiveChanged:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final surfaces:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private final videoDecoders:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/shilapi/xcertplay/media/VideoDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private final videoDiagnosticHandlers:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private final videoHeight:I

.field private final videoRecoveryHandlers:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private final videoSizes:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final videoWidth:I


# direct methods
.method public static synthetic $r8$lambda$HtnH0VbbZvKqcSKJxHPtPLCJur8(Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;Lcom/shilapi/xcertplay/media/MicrophoneTuning$Settings;Lcom/shilapi/xcertplay/media/AndroidMediaSink;Lcom/shilapi/xcertplay/airplay/AudioStreamId;)Lcom/shilapi/xcertplay/media/MicrophoneUplink;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->onMicrophoneStarted$lambda$17(Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;Lcom/shilapi/xcertplay/media/MicrophoneTuning$Settings;Lcom/shilapi/xcertplay/media/AndroidMediaSink;Lcom/shilapi/xcertplay/airplay/AudioStreamId;)Lcom/shilapi/xcertplay/media/MicrophoneUplink;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SiceJuQ6CMJ9FiQF7uR0yPKX3EA(Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->_init_$lambda$1(Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XIjKp5htiPPICLIyI9VyNFAMncM(Lcom/shilapi/xcertplay/media/AndroidMediaSink;IF)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->keyVolumeFollower$lambda$7$lambda$5(Lcom/shilapi/xcertplay/media/AndroidMediaSink;IF)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Zd-gzlyN9geXguJ9UTlwYyg3fVk(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/shilapi/xcertplay/media/MicrophoneUplink;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->onMicrophoneStarted$lambda$18(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/shilapi/xcertplay/media/MicrophoneUplink;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$amKvXmUha4nWDbhVBt5pm4bMpRg(Lcom/shilapi/xcertplay/media/AndroidMediaSink;ILjava/lang/Integer;)Lcom/shilapi/xcertplay/media/VideoDecoder;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->videoDecoder$lambda$27(Lcom/shilapi/xcertplay/media/AndroidMediaSink;ILjava/lang/Integer;)Lcom/shilapi/xcertplay/media/VideoDecoder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bLfvD2PuzfINj-ME_Tvh5BDWess(Lcom/shilapi/xcertplay/media/AndroidMediaSink;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->videoDecoder$lambda$27$lambda$25(Lcom/shilapi/xcertplay/media/AndroidMediaSink;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$edf0GyGxEafOee_265pEOnT9xnI(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->_init_$lambda$0(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$idI3Yg_PpaXxsKdyTPfB8_jBWiw(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->recoveryExecutor$lambda$9(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$n-WswhM4jGtGgHVwSHQfOmx_fdg(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/shilapi/xcertplay/media/VideoDecoder;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->videoDecoder$lambda$28(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/shilapi/xcertplay/media/VideoDecoder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vPcQIKmntT8QePBxy0BiWmg7pPM(Lcom/shilapi/xcertplay/media/AndroidMediaSink;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->requestVideoRecovery$lambda$10(Lcom/shilapi/xcertplay/media/AndroidMediaSink;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$xdj9zBujoAPjpw3ZrAcWzH_jV1E(Lcom/shilapi/xcertplay/media/AndroidMediaSink;ILjava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->videoDecoder$lambda$27$lambda$26(Lcom/shilapi/xcertplay/media/AndroidMediaSink;ILjava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 18

    const/16 v16, 0x7fff

    const/16 v17, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v17}, Lcom/shilapi/xcertplay/media/AndroidMediaSink;-><init>(Landroid/view/Surface;IIZZZIILandroid/content/Context;ILkotlin/jvm/functions/Function2;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/Surface;IIZZZIILandroid/content/Context;ILkotlin/jvm/functions/Function2;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            "IIZZZII",
            "Landroid/content/Context;",
            "I",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/media/VideoWindow;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p13

    move-object/from16 v1, p14

    const-string v2, "onAudioDiagnostic"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "onMediaAudioChanged"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    iput p2, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->videoWidth:I

    .line 294
    iput p3, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->videoHeight:I

    .line 295
    iput-boolean p4, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->preferSoftwareHevcDecoder:Z

    .line 296
    iput-boolean p5, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->advancedAudioChannelMapping:Z

    .line 297
    iput-boolean p6, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->audioFocusEnabled:Z

    .line 298
    iput p7, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->mediaChannel:I

    .line 299
    iput p8, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->navigationChannel:I

    .line 301
    iput p10, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->navigationStreamType:I

    move/from16 p2, p12

    .line 303
    iput p2, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->mediaBufferMillis:I

    .line 304
    iput-object v0, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->onAudioDiagnostic:Lkotlin/jvm/functions/Function1;

    .line 306
    iput-object v1, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->onMediaAudioChanged:Lkotlin/jvm/functions/Function1;

    move-object/from16 p2, p15

    .line 308
    iput-object p2, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->onMainVideoWindow:Lkotlin/jvm/functions/Function1;

    const/4 p2, 0x0

    if-eqz p9, :cond_0

    .line 310
    invoke-virtual {p9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    move-object p5, p3

    goto :goto_0

    :cond_0
    move-object p5, p2

    :goto_0
    iput-object p5, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->appContext:Landroid/content/Context;

    invoke-static {p0, p5}, Lcom/shilapi/xcertplay/E01ClusterVideoGate;->bind(Ljava/lang/Object;Landroid/content/Context;)V

    .line 312
    new-instance p3, Lcom/shilapi/xcertplay/media/FirstPictureCounters;

    invoke-direct {p3}, Lcom/shilapi/xcertplay/media/FirstPictureCounters;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 p4, 0x1

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    :goto_1
    invoke-virtual {p3, p4}, Lcom/shilapi/xcertplay/media/FirstPictureCounters;->onSurface(Z)V

    iput-object p3, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->mainPicture:Lcom/shilapi/xcertplay/media/FirstPictureCounters;

    if-eqz p5, :cond_2

    .line 314
    sget-object p3, Lcom/shilapi/xcertplay/media/CallAudioMode;->Companion:Lcom/shilapi/xcertplay/media/CallAudioMode$Companion;

    invoke-virtual {p3, p5, v0}, Lcom/shilapi/xcertplay/media/CallAudioMode$Companion;->forContext(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/media/CallAudioMode;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 315
    invoke-virtual {p3}, Lcom/shilapi/xcertplay/media/CallAudioMode;->recoverStale()V

    goto :goto_2

    :cond_2
    move-object p3, p2

    :goto_2
    iput-object p3, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->callAudioMode:Lcom/shilapi/xcertplay/media/CallAudioMode;

    .line 316
    new-instance p3, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;

    invoke-direct {p3, p5, p6, v0}, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;-><init>(Landroid/content/Context;ZLkotlin/jvm/functions/Function1;)V

    iput-object p3, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->audioFocusCoordinator:Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;

    if-eqz p5, :cond_3

    .line 323
    new-instance p4, Lcom/shilapi/xcertplay/media/KeyVolumeFollower;

    .line 326
    new-instance p2, Lcom/shilapi/xcertplay/media/AndroidMediaSink$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0}, Lcom/shilapi/xcertplay/media/AndroidMediaSink$$ExternalSyntheticLambda8;-><init>(Lcom/shilapi/xcertplay/media/AndroidMediaSink;)V

    const/4 p3, 0x2

    const/4 p6, 0x0

    const/4 v0, 0x0

    move-object p7, p2

    move-object p9, p6

    const/4 p6, 0x0

    const/4 p8, 0x2

    .line 323
    invoke-direct/range {p4 .. p9}, Lcom/shilapi/xcertplay/media/KeyVolumeFollower;-><init>(Landroid/content/Context;ILkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 326
    invoke-virtual {p4}, Lcom/shilapi/xcertplay/media/KeyVolumeFollower;->start()V

    move-object p2, p4

    .line 322
    :cond_3
    iput-object p2, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->keyVolumeFollower:Lcom/shilapi/xcertplay/media/KeyVolumeFollower;

    .line 328
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->screenStateLock:Ljava/lang/Object;

    .line 329
    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast p2, Ljava/util/Set;

    iput-object p2, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->activeScreenTypes:Ljava/util/Set;

    .line 330
    iput-object p1, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->defaultSurface:Landroid/view/Surface;

    .line 331
    iput-object p11, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->screenStreamActiveChanged:Lkotlin/jvm/functions/Function2;

    .line 332
    new-instance p1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->surfaces:Lj$/util/concurrent/ConcurrentHashMap;

    .line 333
    new-instance p1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->videoDecoders:Lj$/util/concurrent/ConcurrentHashMap;

    .line 334
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->mediaAudioTypes:Ljava/util/Set;

    .line 335
    new-instance p1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->audioRenderers:Lj$/util/concurrent/ConcurrentHashMap;

    .line 336
    new-instance p2, Lcom/shilapi/xcertplay/media/RendererRestartGate;

    const/4 p1, 0x3

    const/4 p3, 0x0

    const-wide/16 p4, 0x0

    const-wide/16 v2, 0x0

    move-object p8, p3

    move-wide p3, p4

    move-wide p5, v2

    const/4 p7, 0x3

    invoke-direct/range {p2 .. p8}, Lcom/shilapi/xcertplay/media/RendererRestartGate;-><init>(JJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->rendererRestarts:Lcom/shilapi/xcertplay/media/RendererRestartGate;

    .line 338
    new-instance p1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->videoSizes:Lj$/util/concurrent/ConcurrentHashMap;

    .line 339
    new-instance p1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->microphoneUplinks:Lj$/util/concurrent/ConcurrentHashMap;

    .line 340
    new-instance p1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->pendingVideoCodec:Lj$/util/concurrent/ConcurrentHashMap;

    .line 341
    new-instance p1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->videoRecoveryHandlers:Lj$/util/concurrent/ConcurrentHashMap;

    .line 342
    new-instance p1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->videoDiagnosticHandlers:Lj$/util/concurrent/ConcurrentHashMap;

    .line 343
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->recoveryPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 344
    new-instance p1, Lcom/shilapi/xcertplay/media/AndroidMediaSink$$ExternalSyntheticLambda9;

    invoke-direct {p1}, Lcom/shilapi/xcertplay/media/AndroidMediaSink$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->recoveryExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/Surface;IIZZZIILandroid/content/Context;ILkotlin/jvm/functions/Function2;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 16

    move/from16 v0, p16

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    const/16 v3, 0x500

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    const/16 v4, 0x2d0

    goto :goto_2

    :cond_2
    move/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    goto :goto_4

    :cond_4
    move/from16 v7, p5

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    goto :goto_5

    :cond_5
    move/from16 v8, p6

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    const/4 v9, 0x0

    goto :goto_6

    :cond_6
    move/from16 v9, p7

    :goto_6
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    goto :goto_7

    :cond_7
    move/from16 v6, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    move-object v10, v2

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    const/16 v11, 0xe

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    move-object v12, v2

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    const/16 v13, 0x12c

    goto :goto_b

    :cond_b
    move/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_c

    .line 304
    new-instance v14, Lcom/shilapi/xcertplay/media/AndroidMediaSink$$ExternalSyntheticLambda0;

    invoke-direct {v14}, Lcom/shilapi/xcertplay/media/AndroidMediaSink$$ExternalSyntheticLambda0;-><init>()V

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_d

    .line 306
    new-instance v15, Lcom/shilapi/xcertplay/media/AndroidMediaSink$$ExternalSyntheticLambda2;

    invoke-direct {v15}, Lcom/shilapi/xcertplay/media/AndroidMediaSink$$ExternalSyntheticLambda2;-><init>()V

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_e

    move-object/from16 p16, v2

    goto :goto_e

    :cond_e
    move-object/from16 p16, p15

    :goto_e
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move/from16 p3, v3

    move/from16 p4, v4

    move/from16 p5, v5

    move/from16 p9, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move-object/from16 p10, v10

    move/from16 p11, v11

    move-object/from16 p12, v12

    move/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    .line 291
    invoke-direct/range {p1 .. p16}, Lcom/shilapi/xcertplay/media/AndroidMediaSink;-><init>(Landroid/view/Surface;IIZZZIILandroid/content/Context;ILkotlin/jvm/functions/Function2;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final _init_$lambda$0(Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final _init_$lambda$1(Z)Lkotlin/Unit;
    .locals 0

    .line 306
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final declared-synchronized audioRenderer(Lcom/shilapi/xcertplay/airplay/AudioStreamId;Lcom/shilapi/xcertplay/airplay/AudioFormat;Lcom/shilapi/xcertplay/media/MicrophoneTuning$Settings;)Lcom/shilapi/xcertplay/media/AudioRenderer;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "Audio: renderer ended audioType="

    monitor-enter p0

    .line 516
    :try_start_0
    iget-object v3, v1, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->audioRenderers:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shilapi/xcertplay/media/AudioRenderer;

    if-eqz v3, :cond_2

    .line 518
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/media/AudioRenderer;->getFormat()Lcom/shilapi/xcertplay/airplay/AudioFormat;

    move-result-object v6

    move-object/from16 v8, p2

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 519
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/media/AudioRenderer;->isAlive()Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    monitor-exit p0

    return-object v3

    .line 522
    :cond_0
    :try_start_1
    iget-object v6, v1, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->rendererRestarts:Lcom/shilapi/xcertplay/media/RendererRestartGate;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    invoke-virtual {v6, v0, v9, v10}, Lcom/shilapi/xcertplay/media/RendererRestartGate;->allow(Ljava/lang/Object;J)Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_1

    monitor-exit p0

    return-object v3

    .line 524
    :cond_1
    :try_start_2
    iget-object v6, v1, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->onAudioDiagnostic:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v8}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getAudioType()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; starting a new one"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v8, p2

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v3, :cond_4

    .line 526
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/media/AudioRenderer;->close()V

    :cond_4
    if-nez p3, :cond_5

    .line 527
    sget-object v3, Lcom/shilapi/xcertplay/media/MicrophoneTuning;->INSTANCE:Lcom/shilapi/xcertplay/media/MicrophoneTuning;

    iget-object v6, v1, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->appContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Lcom/shilapi/xcertplay/media/MicrophoneTuning;->read(Landroid/content/Context;)Lcom/shilapi/xcertplay/media/MicrophoneTuning$Settings;

    move-result-object v3

    goto :goto_1

    :cond_5
    move-object/from16 v3, p3

    .line 528
    :goto_1
    new-instance v7, Lcom/shilapi/xcertplay/media/AudioRenderer;

    .line 530
    iget-boolean v9, v1, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->advancedAudioChannelMapping:Z

    .line 531
    iget-boolean v10, v1, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->audioFocusEnabled:Z

    .line 532
    iget v11, v1, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->mediaChannel:I

    .line 533
    iget v12, v1, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->navigationChannel:I

    .line 534
    iget-object v13, v1, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->audioFocusCoordinator:Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;

    .line 535
    iget v14, v1, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->navigationStreamType:I

    .line 536
    iget v15, v1, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->mediaBufferMillis:I

    .line 537
    iget-object v6, v1, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->onAudioDiagnostic:Lkotlin/jvm/functions/Function1;

    .line 539
    invoke-virtual {v8}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getAudioType()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "telephony"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/media/MicrophoneTuning$Settings;->getCallMode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "media"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v17, 0x1

    goto :goto_2

    :cond_6
    const/16 v17, 0x0

    .line 540
    :goto_2
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/media/MicrophoneTuning$Settings;->getSoftwareOpusDecoder()Z

    move-result v18

    move-object/from16 v16, v6

    .line 528
    invoke-direct/range {v7 .. v18}, Lcom/shilapi/xcertplay/media/AudioRenderer;-><init>(Lcom/shilapi/xcertplay/airplay/AudioFormat;ZZIILcom/shilapi/xcertplay/media/AudioFocusCoordinator;IILkotlin/jvm/functions/Function1;ZZ)V

    .line 542
    iget-object v3, v1, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->audioRenderers:Lj$/util/concurrent/ConcurrentHashMap;

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_7

    .line 543
    invoke-virtual {v7}, Lcom/shilapi/xcertplay/media/AudioRenderer;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 528
    :cond_7
    monitor-exit p0

    return-object v7

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private static final keyVolumeFollower$lambda$7$lambda$5(Lcom/shilapi/xcertplay/media/AndroidMediaSink;IF)Lkotlin/Unit;
    .locals 3

    .line 324
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->audioFocusCoordinator:Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;

    invoke-virtual {v0, p2}, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->setKeyGain(F)V

    .line 325
    iget-object p0, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->onAudioDiagnostic:Lkotlin/jvm/functions/Function1;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Audio: car volume keys moved stream "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; CarPlay music gain=%.3f"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "format(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onMicrophoneStarted$lambda$17(Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;Lcom/shilapi/xcertplay/media/MicrophoneTuning$Settings;Lcom/shilapi/xcertplay/media/AndroidMediaSink;Lcom/shilapi/xcertplay/airplay/AudioStreamId;)Lcom/shilapi/xcertplay/media/MicrophoneUplink;
    .locals 1

    const-string v0, "it"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 467
    new-instance p3, Lcom/shilapi/xcertplay/media/MicrophoneUplink;

    iget-object p2, p2, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->onAudioDiagnostic:Lkotlin/jvm/functions/Function1;

    invoke-direct {p3, p0, p1, p2}, Lcom/shilapi/xcertplay/media/MicrophoneUplink;-><init>(Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;Lcom/shilapi/xcertplay/media/MicrophoneTuning$Settings;Lkotlin/jvm/functions/Function1;)V

    return-object p3
.end method

.method private static final onMicrophoneStarted$lambda$18(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/shilapi/xcertplay/media/MicrophoneUplink;
    .locals 0

    .line 467
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/shilapi/xcertplay/media/MicrophoneUplink;

    return-object p0
.end method

.method private static final recoveryExecutor$lambda$9(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 345
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "carplay-video-recovery"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method private final requestVideoRecovery(I)V
    .locals 3

    .line 357
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->recoveryPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 359
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->recoveryExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/shilapi/xcertplay/media/AndroidMediaSink$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/shilapi/xcertplay/media/AndroidMediaSink$$ExternalSyntheticLambda3;-><init>(Lcom/shilapi/xcertplay/media/AndroidMediaSink;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 364
    :catch_0
    iget-object p1, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->recoveryPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private static final requestVideoRecovery$lambda$10(Lcom/shilapi/xcertplay/media/AndroidMediaSink;I)V
    .locals 3

    const/4 v0, 0x0

    .line 360
    :try_start_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->videoRecoveryHandlers:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->recoveryPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 361
    :try_start_1
    const-string/jumbo v1, "xcertplay-usb"

    const-string v2, "Video keyframe request failed"

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 362
    :goto_1
    iget-object p0, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->recoveryPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private final updateMediaAudio(Lcom/shilapi/xcertplay/airplay/AudioStreamId;Z)V
    .locals 2

    .line 448
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->mediaAudioTypes:Ljava/util/Set;

    monitor-enter v0

    .line 449
    :try_start_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->mediaAudioTypes:Ljava/util/Set;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz p2, :cond_0

    .line 450
    iget-object p2, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->mediaAudioTypes:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->mediaAudioTypes:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 451
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object p2, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->mediaAudioTypes:Ljava/util/Set;

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    monitor-exit v0

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq p2, v0, :cond_1

    .line 453
    iget-object p2, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->onMediaAudioChanged:Lkotlin/jvm/functions/Function1;

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 448
    monitor-exit v0

    throw p1
.end method

.method private final videoDecoder(I)Lcom/shilapi/xcertplay/media/VideoDecoder;
    .locals 3

    .line 499
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->videoDecoders:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/shilapi/xcertplay/media/AndroidMediaSink$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, p1}, Lcom/shilapi/xcertplay/media/AndroidMediaSink$$ExternalSyntheticLambda10;-><init>(Lcom/shilapi/xcertplay/media/AndroidMediaSink;I)V

    new-instance p1, Lcom/shilapi/xcertplay/media/AndroidMediaSink$$ExternalSyntheticLambda1;

    invoke-direct {p1, v2}, Lcom/shilapi/xcertplay/media/AndroidMediaSink$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-static {v0, v1, p1}, Lj$/util/concurrent/ConcurrentMap$-EL;->computeIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "computeIfAbsent(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/shilapi/xcertplay/media/VideoDecoder;

    return-object p1
.end method

.method private static final videoDecoder$lambda$27(Lcom/shilapi/xcertplay/media/AndroidMediaSink;ILjava/lang/Integer;)Lcom/shilapi/xcertplay/media/VideoDecoder;
    .locals 10

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 500
    iget-object p2, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->videoSizes:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/Pair;

    .line 501
    new-instance v0, Lcom/shilapi/xcertplay/media/VideoDecoder;

    .line 503
    iget-object v1, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->surfaces:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->defaultSurface:Landroid/view/Surface;

    :cond_0
    move-object v2, v1

    if-eqz p2, :cond_1

    .line 504
    invoke-virtual {p2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->videoWidth:I

    :goto_0
    move v3, v1

    if-eqz p2, :cond_2

    .line 505
    invoke-virtual {p2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    goto :goto_1

    :cond_2
    iget p2, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->videoHeight:I

    :goto_1
    move v4, p2

    .line 506
    iget-boolean v5, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->preferSoftwareHevcDecoder:Z

    .line 507
    new-instance v6, Lcom/shilapi/xcertplay/media/AndroidMediaSink$$ExternalSyntheticLambda6;

    invoke-direct {v6, p0, p1}, Lcom/shilapi/xcertplay/media/AndroidMediaSink$$ExternalSyntheticLambda6;-><init>(Lcom/shilapi/xcertplay/media/AndroidMediaSink;I)V

    .line 508
    new-instance v7, Lcom/shilapi/xcertplay/media/AndroidMediaSink$$ExternalSyntheticLambda7;

    invoke-direct {v7, p0, p1}, Lcom/shilapi/xcertplay/media/AndroidMediaSink$$ExternalSyntheticLambda7;-><init>(Lcom/shilapi/xcertplay/media/AndroidMediaSink;I)V

    const/4 p2, 0x0

    const/16 v1, 0x6e

    if-ne p1, v1, :cond_3

    .line 509
    iget-object v8, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->onMainVideoWindow:Lkotlin/jvm/functions/Function1;

    goto :goto_2

    :cond_3
    move-object v8, p2

    :goto_2
    if-ne p1, v1, :cond_4

    .line 510
    iget-object p2, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->mainPicture:Lcom/shilapi/xcertplay/media/FirstPictureCounters;

    :cond_4
    move v1, p1

    move-object v9, p2

    .line 501
    invoke-direct/range {v0 .. v9}, Lcom/shilapi/xcertplay/media/VideoDecoder;-><init>(ILandroid/view/Surface;IIZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/shilapi/xcertplay/media/FirstPictureCounters;)V

    return-object v0
.end method

.method private static final videoDecoder$lambda$27$lambda$25(Lcom/shilapi/xcertplay/media/AndroidMediaSink;I)Lkotlin/Unit;
    .locals 0

    .line 507
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->requestVideoRecovery(I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final videoDecoder$lambda$27$lambda$26(Lcom/shilapi/xcertplay/media/AndroidMediaSink;ILjava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 508
    iget-object p0, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->videoDiagnosticHandlers:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final videoDecoder$lambda$28(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/shilapi/xcertplay/media/VideoDecoder;
    .locals 0

    .line 499
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/shilapi/xcertplay/media/VideoDecoder;

    return-object p0
.end method


# virtual methods
.method public final clearSurface(ILandroid/view/Surface;)V
    .locals 2

    const-string/jumbo v0, "surface"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->surfaces:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 p2, 0x6e

    if-ne p1, p2, :cond_0

    .line 375
    iget-object p2, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->mainPicture:Lcom/shilapi/xcertplay/media/FirstPictureCounters;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/shilapi/xcertplay/media/FirstPictureCounters;->onSurface(Z)V

    .line 376
    :cond_0
    iget-object p2, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->videoDecoders:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shilapi/xcertplay/media/VideoDecoder;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/shilapi/xcertplay/media/VideoDecoder;->setSurface(Landroid/view/Surface;)V

    :cond_1
    return-void
.end method

.method public final close()V
    .locals 5

    invoke-static {p0}, Lcom/shilapi/xcertplay/E01ClusterVideoGate;->close(Ljava/lang/Object;)V

    .line 477
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->keyVolumeFollower:Lcom/shilapi/xcertplay/media/KeyVolumeFollower;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/media/KeyVolumeFollower;->stop()V

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->screenStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 479
    :try_start_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->activeScreenTypes:Ljava/util/Set;

    check-cast v1, Ljava/lang/Iterable;

    .line 1754
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 479
    iget-object v4, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->screenStreamActiveChanged:Lkotlin/jvm/functions/Function2;

    if-eqz v4, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 480
    :cond_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->activeScreenTypes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    const/4 v1, 0x0

    .line 481
    iput-object v1, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->screenStreamActiveChanged:Lkotlin/jvm/functions/Function2;

    .line 482
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 478
    monitor-exit v0

    .line 483
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->videoDecoders:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "<get-values>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 1756
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shilapi/xcertplay/media/VideoDecoder;

    .line 483
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/media/VideoDecoder;->close()V

    goto :goto_1

    .line 484
    :cond_3
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->videoDecoders:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    .line 485
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->videoRecoveryHandlers:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    .line 486
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->videoDiagnosticHandlers:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    .line 487
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->recoveryExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 488
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->audioRenderers:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "<get-values>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 1758
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shilapi/xcertplay/media/AudioRenderer;

    .line 488
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/media/AudioRenderer;->close()V

    goto :goto_2

    .line 489
    :cond_4
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->audioRenderers:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    .line 490
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->mediaAudioTypes:Ljava/util/Set;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->mediaAudioTypes:Ljava/util/Set;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    iget-object v2, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->mediaAudioTypes:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    if-nez v1, :cond_5

    .line 491
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->onMediaAudioChanged:Lkotlin/jvm/functions/Function1;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    :cond_5
    sget-object v0, Lcom/shilapi/xcertplay/airplay/CarPlayCallAudio;->INSTANCE:Lcom/shilapi/xcertplay/airplay/CarPlayCallAudio;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/CarPlayCallAudio;->clear()V

    .line 493
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->microphoneUplinks:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "<get-values>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 1760
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shilapi/xcertplay/media/MicrophoneUplink;

    .line 493
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->close()V

    goto :goto_3

    .line 494
    :cond_6
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->microphoneUplinks:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    .line 495
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->callAudioMode:Lcom/shilapi/xcertplay/media/CallAudioMode;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/media/CallAudioMode;->releaseAll()V

    :cond_7
    invoke-static {}, Lcom/shilapi/xcertplay/E01NavigationAudioProbe;->resetSession()V

    return-void

    :catchall_0
    move-exception v1

    .line 490
    monitor-exit v0

    throw v1

    :catchall_1
    move-exception v1

    .line 478
    monitor-exit v0

    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method

.method public final getMainPicture()Lcom/shilapi/xcertplay/media/FirstPictureCounters;
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->mainPicture:Lcom/shilapi/xcertplay/media/FirstPictureCounters;

    return-object v0
.end method

.method public onAudioRtp(Lcom/shilapi/xcertplay/airplay/AudioStreamId;Lcom/shilapi/xcertplay/airplay/AudioFormat;[BI)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "format"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rtp"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 436
    invoke-direct {p0, p1, p2, v0}, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->audioRenderer(Lcom/shilapi/xcertplay/airplay/AudioStreamId;Lcom/shilapi/xcertplay/airplay/AudioFormat;Lcom/shilapi/xcertplay/media/MicrophoneTuning$Settings;)Lcom/shilapi/xcertplay/media/AudioRenderer;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lcom/shilapi/xcertplay/media/AudioRenderer;->submit([BI)V

    return-void
.end method

.method public onAudioStarted(Lcom/shilapi/xcertplay/airplay/AudioStreamId;Lcom/shilapi/xcertplay/airplay/AudioFormat;I)V
    .locals 5

    const-string p3, "id"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "format"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 421
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getAudioType()Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v0, "telephony"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    sget-object p3, Lcom/shilapi/xcertplay/media/MicrophoneTuning;->INSTANCE:Lcom/shilapi/xcertplay/media/MicrophoneTuning;

    iget-object v1, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->appContext:Landroid/content/Context;

    invoke-virtual {p3, v1}, Lcom/shilapi/xcertplay/media/MicrophoneTuning;->read(Landroid/content/Context;)Lcom/shilapi/xcertplay/media/MicrophoneTuning$Settings;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_1

    .line 423
    iget-object v1, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->onAudioDiagnostic:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p3}, Lcom/shilapi/xcertplay/media/MicrophoneTuning$Settings;->summary()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Audio: call variant "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    invoke-virtual {p3}, Lcom/shilapi/xcertplay/media/MicrophoneTuning$Settings;->getCallMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hands-free"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->callAudioMode:Lcom/shilapi/xcertplay/media/CallAudioMode;

    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "audio:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/shilapi/xcertplay/media/CallAudioMode;->acquire(Ljava/lang/String;)V

    .line 426
    :cond_1
    iget-object v1, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->rendererRestarts:Lcom/shilapi/xcertplay/media/RendererRestartGate;

    invoke-virtual {v1, p1}, Lcom/shilapi/xcertplay/media/RendererRestartGate;->reset(Ljava/lang/Object;)V

    .line 427
    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->audioRenderer(Lcom/shilapi/xcertplay/airplay/AudioStreamId;Lcom/shilapi/xcertplay/airplay/AudioFormat;Lcom/shilapi/xcertplay/media/MicrophoneTuning$Settings;)Lcom/shilapi/xcertplay/media/AudioRenderer;

    move-result-object p3

    invoke-virtual {p3}, Lcom/shilapi/xcertplay/media/AudioRenderer;->start()V

    .line 428
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getAudioType()Ljava/lang/String;

    move-result-object p3

    const-string v1, "media"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    const/4 v1, 0x1

    if-eqz p3, :cond_2

    invoke-direct {p0, p1, v1}, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->updateMediaAudio(Lcom/shilapi/xcertplay/airplay/AudioStreamId;Z)V

    .line 430
    :cond_2
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getAudioType()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    sget-object p3, Lcom/shilapi/xcertplay/airplay/CarPlayCallAudio;->INSTANCE:Lcom/shilapi/xcertplay/airplay/CarPlayCallAudio;

    invoke-virtual {p3, p1, v1}, Lcom/shilapi/xcertplay/airplay/CarPlayCallAudio;->update(Lcom/shilapi/xcertplay/airplay/AudioStreamId;Z)V

    .line 432
    :cond_3
    sget-object p1, Lcom/shilapi/xcertplay/airplay/CarPlayAttention;->INSTANCE:Lcom/shilapi/xcertplay/airplay/CarPlayAttention;

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getAudioType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/shilapi/xcertplay/airplay/CarPlayAttention;->audioStarted(Ljava/lang/String;)V

    return-void
.end method

.method public onAudioStopped(Lcom/shilapi/xcertplay/airplay/AudioStreamId;)V
    .locals 3

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->audioRenderers:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/media/AudioRenderer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/media/AudioRenderer;->close()V

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->rendererRestarts:Lcom/shilapi/xcertplay/media/RendererRestartGate;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/media/RendererRestartGate;->reset(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 442
    invoke-direct {p0, p1, v0}, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->updateMediaAudio(Lcom/shilapi/xcertplay/airplay/AudioStreamId;Z)V

    .line 443
    sget-object v1, Lcom/shilapi/xcertplay/airplay/CarPlayCallAudio;->INSTANCE:Lcom/shilapi/xcertplay/airplay/CarPlayCallAudio;

    invoke-virtual {v1, p1, v0}, Lcom/shilapi/xcertplay/airplay/CarPlayCallAudio;->update(Lcom/shilapi/xcertplay/airplay/AudioStreamId;Z)V

    .line 444
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->callAudioMode:Lcom/shilapi/xcertplay/media/CallAudioMode;

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "audio:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/media/CallAudioMode;->release(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onIapMessage([B)V
    .locals 0

    .line 291
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/MediaSink$-CC;->$default$onIapMessage(Lcom/shilapi/xcertplay/airplay/MediaSink;[B)V

    return-void
.end method

.method public onMicrophoneStarted(Lcom/shilapi/xcertplay/airplay/AudioStreamId;Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;)V
    .locals 4

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 458
    sget-object v0, Lcom/shilapi/xcertplay/media/MicrophoneTuning;->INSTANCE:Lcom/shilapi/xcertplay/media/MicrophoneTuning;

    iget-object v1, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->appContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/media/MicrophoneTuning;->read(Landroid/content/Context;)Lcom/shilapi/xcertplay/media/MicrophoneTuning$Settings;

    move-result-object v0

    .line 459
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->getAudioType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "telephony"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/media/MicrophoneTuning$Settings;->getCallMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hands-free"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 460
    iget-object v1, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->callAudioMode:Lcom/shilapi/xcertplay/media/CallAudioMode;

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mic:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/shilapi/xcertplay/media/CallAudioMode;->acquire(Ljava/lang/String;)V

    .line 464
    :cond_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->microphoneUplinks:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shilapi/xcertplay/media/MicrophoneUplink;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->getConfig$shared_release()Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;

    move-result-object v2

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 465
    iget-object v2, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->microphoneUplinks:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->close()V

    .line 467
    :cond_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->microphoneUplinks:Lj$/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lcom/shilapi/xcertplay/media/AndroidMediaSink$$ExternalSyntheticLambda4;

    invoke-direct {v2, p2, v0, p0}, Lcom/shilapi/xcertplay/media/AndroidMediaSink$$ExternalSyntheticLambda4;-><init>(Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;Lcom/shilapi/xcertplay/media/MicrophoneTuning$Settings;Lcom/shilapi/xcertplay/media/AndroidMediaSink;)V

    new-instance p2, Lcom/shilapi/xcertplay/media/AndroidMediaSink$$ExternalSyntheticLambda5;

    invoke-direct {p2, v2}, Lcom/shilapi/xcertplay/media/AndroidMediaSink$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-static {v1, p1, p2}, Lj$/util/concurrent/ConcurrentMap$-EL;->computeIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "computeIfAbsent(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/shilapi/xcertplay/media/MicrophoneUplink;

    .line 468
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->start()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->microphoneUplinks:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public onMicrophoneStopped(Lcom/shilapi/xcertplay/airplay/AudioStreamId;)V
    .locals 3

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->microphoneUplinks:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/media/MicrophoneUplink;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->close()V

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->callAudioMode:Lcom/shilapi/xcertplay/media/CallAudioMode;

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mic:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/media/CallAudioMode;->release(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onScreenStreamActive(IZ)V
    .locals 3

    if-nez p2, :cond_1

    .line 407
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->videoRecoveryHandlers:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->videoDiagnosticHandlers:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->videoDecoders:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/media/VideoDecoder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/media/VideoDecoder;->close()V

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->pendingVideoCodec:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->screenStateLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_2

    .line 413
    :try_start_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->activeScreenTypes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->activeScreenTypes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 414
    :goto_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->screenStreamActiveChanged:Lkotlin/jvm/functions/Function2;

    if-eqz v1, :cond_3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public onVideoCodec(ILcom/shilapi/xcertplay/airplay/VideoCodec;)V
    .locals 1

    const-string v0, "codec"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->pendingVideoCodec:Lj$/util/concurrent/ConcurrentHashMap;

    check-cast v0, Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onVideoConfig(I[B)V
    .locals 2

    const-string v0, "codecData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->pendingVideoCodec:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/airplay/VideoCodec;

    if-nez v0, :cond_0

    sget-object v0, Lcom/shilapi/xcertplay/airplay/VideoCodec;->H264:Lcom/shilapi/xcertplay/airplay/VideoCodec;

    .line 398
    :cond_0
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->videoDecoder(I)Lcom/shilapi/xcertplay/media/VideoDecoder;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lcom/shilapi/xcertplay/media/VideoDecoder;->configure(Lcom/shilapi/xcertplay/airplay/VideoCodec;[B)V

    return-void
.end method

.method public onVideoFrame(I[B)V
    .locals 1

    const-string v0, "naluBytes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/E01ClusterVideoGate;->drop(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 402
    :cond_0
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->videoDecoder(I)Lcom/shilapi/xcertplay/media/VideoDecoder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/shilapi/xcertplay/media/VideoDecoder;->submit([B)V

    return-void
.end method

.method public onVideoSize(III)V
    .locals 1

    const/16 v0, 0x6e

    if-eq p1, v0, :cond_0

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    .line 393
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->videoSizes:Lj$/util/concurrent/ConcurrentHashMap;

    check-cast v0, Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final setScreenStreamActiveChangedListener(Lkotlin/jvm/functions/Function2;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 381
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->screenStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 382
    :try_start_0
    iput-object p1, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->screenStreamActiveChanged:Lkotlin/jvm/functions/Function2;

    .line 383
    iget-object v1, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->activeScreenTypes:Ljava/util/Set;

    check-cast v1, Ljava/lang/Iterable;

    .line 1752
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-eqz p1, :cond_0

    .line 383
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 384
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final setSurface(ILandroid/view/Surface;)V
    .locals 2

    const-string/jumbo v0, "surface"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->surfaces:Lj$/util/concurrent/ConcurrentHashMap;

    check-cast v0, Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x6e

    if-ne p1, v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->mainPicture:Lcom/shilapi/xcertplay/media/FirstPictureCounters;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/media/FirstPictureCounters;->onSurface(Z)V

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->videoDecoders:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shilapi/xcertplay/media/VideoDecoder;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/shilapi/xcertplay/media/VideoDecoder;->setSurface(Landroid/view/Surface;)V

    :cond_1
    return-void
.end method

.method public setVideoDiagnosticHandler(ILkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->videoDiagnosticHandlers:Lj$/util/concurrent/ConcurrentHashMap;

    check-cast v0, Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setVideoRecoveryHandler(ILkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->videoRecoveryHandlers:Lj$/util/concurrent/ConcurrentHashMap;

    check-cast v0, Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
