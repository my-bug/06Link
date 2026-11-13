.class final Lcom/shilapi/xcertplay/media/AudioRenderer;
.super Ljava/lang/Object;
.source "AndroidMediaSink.kt"

# interfaces
.implements Ljava/io/Closeable;
.implements Lcom/shilapi/xcertplay/media/AudioInputPump$Input;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/media/AudioRenderer$AudioPacket;,
        Lcom/shilapi/xcertplay/media/AudioRenderer$Companion;,
        Lcom/shilapi/xcertplay/media/AudioRenderer$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidMediaSink.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidMediaSink.kt\ncom/shilapi/xcertplay/media/AudioRenderer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1750:1\n1#2:1751\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ae\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u001e\u0008\u0002\u0018\u0000 \u0093\u00012\u00020\u0001:\u0004\u0092\u0001\u0093\u0001Bo\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\u0008\u0012\u0006\u0010\r\u001a\u00020\u0008\u0012\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000f\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0006\u0010W\u001a\u00020\u0011J\u0016\u0010Z\u001a\u00020\u00112\u0006\u0010[\u001a\u00020,2\u0006\u0010\\\u001a\u00020\u0008J\u0008\u0010]\u001a\u00020\u0011H\u0016J\u0008\u0010^\u001a\u00020\u0011H\u0002J\u0010\u0010_\u001a\u00020\u00112\u0006\u0010`\u001a\u00020\u0010H\u0002J\u0010\u0010a\u001a\u00020#2\u0006\u0010`\u001a\u00020\u0010H\u0002J\u0008\u0010b\u001a\u00020\u0011H\u0002J\u0010\u0010c\u001a\u00020\u00082\u0006\u0010d\u001a\u00020\u001cH\u0002J\u0018\u0010e\u001a\u00020\u00192\u0006\u0010f\u001a\u00020g2\u0006\u0010h\u001a\u00020\u0008H\u0002J\u0008\u0010i\u001a\u00020gH\u0002J\u0010\u0010e\u001a\u00020\u00192\u0006\u0010f\u001a\u00020gH\u0002J\u0008\u0010j\u001a\u00020\u0011H\u0002J\u0008\u0010k\u001a\u00020\u0011H\u0002J \u0010l\u001a\n n*\u0004\u0018\u00010m0m2\u0006\u0010o\u001a\u00020\u00082\u0006\u0010p\u001a\u00020\u0008H\u0002J\u0008\u0010q\u001a\u00020\u0008H\u0002J\u0008\u0010r\u001a\u00020,H\u0002J\u0010\u0010s\u001a\u00020\u00082\u0006\u0010d\u001a\u00020\u001cH\u0002J\u0010\u0010t\u001a\u00020\u00082\u0006\u0010u\u001a\u00020vH\u0002J\u0008\u0010w\u001a\u00020,H\u0002J\u0008\u0010x\u001a\u00020,H\u0002J\u0008\u0010y\u001a\u00020,H\u0002J\u0010\u0010z\u001a\u00020\u00112\u0006\u0010{\u001a\u00020\u001fH\u0002J\u0010\u0010|\u001a\u00020A2\u0006\u0010\\\u001a\u00020\u0008H\u0002J\u0018\u0010}\u001a\u00020\u00112\u0006\u0010~\u001a\u00020,2\u0006\u0010\u007f\u001a\u00020AH\u0002J\u0011\u0010\u0080\u0001\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020#H\u0002J(\u0010\u0081\u0001\u001a\u00020\u00112\u0007\u0010\u0082\u0001\u001a\u00020,2\t\u0008\u0002\u0010\u0083\u0001\u001a\u00020\u00082\t\u0008\u0002\u0010\u0084\u0001\u001a\u00020\u0008H\u0002J\u0011\u0010\u0085\u0001\u001a\u00020\u00082\u0006\u0010)\u001a\u00020*H\u0002J\u0011\u0010\u0086\u0001\u001a\u00020\u00052\u0006\u0010)\u001a\u00020*H\u0002J\u0019\u0010\u0087\u0001\u001a\u0004\u0018\u00010\u00082\u0006\u0010)\u001a\u00020*H\u0002\u00a2\u0006\u0003\u0010\u0088\u0001J\u0019\u0010\u0089\u0001\u001a\u0004\u0018\u00010\u00082\u0006\u0010)\u001a\u00020*H\u0002\u00a2\u0006\u0003\u0010\u0088\u0001J\u0011\u0010\u008a\u0001\u001a\u00020\u00112\u0006\u0010)\u001a\u00020*H\u0002J\t\u0010\u008b\u0001\u001a\u00020\u0011H\u0002J\u0014\u0010\u008c\u0001\u001a\u00020\u00112\t\u0008\u0002\u0010\u008d\u0001\u001a\u00020\u0005H\u0002J$\u0010\u008e\u0001\u001a\u00020\u00112\u0007\u0010\u0082\u0001\u001a\u00020,2\u0007\u0010\u0083\u0001\u001a\u00020\u00082\u0007\u0010\u0084\u0001\u001a\u00020\u0008H\u0002J\u0012\u0010\u008f\u0001\u001a\u00020,2\u0007\u0010\u0090\u0001\u001a\u00020,H\u0002J\t\u0010\u0091\u0001\u001a\u00020\u0011H\u0002R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010$\u001a\u0004\u0018\u00010%X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010&\u001a\u00020\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010(R\u0010\u0010)\u001a\u0004\u0018\u00010*X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020,X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00101\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00102\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00103\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00104\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00105\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00106\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00107\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00108\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00109\u001a\u00020:X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010;\u001a\u00020:X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010<\u001a\u00020=X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010>\u001a\u00020=X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010?\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010@\u001a\u00020AX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010B\u001a\u00020AX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010C\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010D\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010ER\u000e\u0010F\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010G\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010H\u001a\u0004\u0018\u00010AX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010IR\u000e\u0010J\u001a\u00020AX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010K\u001a\u00020AX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010L\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010M\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010N\u001a\u00020OX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010P\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010Q\u001a\u00020AX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010R\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010S\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010T\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010ER\u000e\u0010U\u001a\u00020VX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010X\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008X\u0010Y\u00a8\u0006\u0094\u0001"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/media/AudioRenderer;",
        "Ljava/io/Closeable;",
        "format",
        "Lcom/shilapi/xcertplay/airplay/AudioFormat;",
        "advancedAudioChannelMapping",
        "",
        "audioFocusEnabled",
        "mediaChannel",
        "",
        "navigationChannel",
        "audioFocusCoordinator",
        "Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;",
        "navigationStreamType",
        "mediaBufferMillis",
        "report",
        "Lkotlin/Function1;",
        "",
        "",
        "phoneAsMedia",
        "forceSoftwareOpus",
        "<init>",
        "(Lcom/shilapi/xcertplay/airplay/AudioFormat;ZZIILcom/shilapi/xcertplay/media/AudioFocusCoordinator;IILkotlin/jvm/functions/Function1;ZZ)V",
        "getFormat",
        "()Lcom/shilapi/xcertplay/airplay/AudioFormat;",
        "trackAttributes",
        "Landroid/media/AudioAttributes;",
        "trackStreamType",
        "mappedChannel",
        "Lcom/shilapi/xcertplay/media/AudioChannel;",
        "queue",
        "Ljava/util/concurrent/LinkedBlockingQueue;",
        "Lcom/shilapi/xcertplay/media/AudioRenderer$AudioPacket;",
        "running",
        "started",
        "codec",
        "Landroid/media/MediaCodec;",
        "softwareOpus",
        "Lcom/shilapi/xcertplay/media/SoftwareOpusDecoder;",
        "playbackRate",
        "getPlaybackRate",
        "()I",
        "track",
        "Landroid/media/AudioTrack;",
        "pcm",
        "",
        "playbackStarted",
        "prebufferBytes",
        "startThresholdBytes",
        "fadeApplied",
        "droppedPacketsLogged",
        "firstAacPayloadLogged",
        "firstOpusShortPacketLogged",
        "firstInputQueuedLogged",
        "inputQueued",
        "inputDropped",
        "outputBuffers",
        "firstPcmLogged",
        "packetsReceived",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "packetsDropped",
        "lastArrivalNs",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "maxArrivalGapMs",
        "frameBytes",
        "totalWrittenFrames",
        "",
        "writtenFramesThisWindow",
        "writeErrorsThisWindow",
        "lastWriteErrorCode",
        "Ljava/lang/Integer;",
        "zeroWritesThisWindow",
        "partialWritesThisWindow",
        "lastPlaybackHeadFrames",
        "Ljava/lang/Long;",
        "maxWriteMs",
        "statsWindowStartNs",
        "statsLastUnderruns",
        "bytesPerSecond",
        "bufferProgress",
        "Lcom/shilapi/xcertplay/media/AudioBufferProgress;",
        "underrunsAtPlaybackStart",
        "lastPcmWriteNs",
        "rebufferCount",
        "threadPriority",
        "threadNice",
        "thread",
        "Ljava/lang/Thread;",
        "start",
        "isAlive",
        "()Z",
        "submit",
        "rtp",
        "sample",
        "close",
        "run",
        "configureCodec",
        "mime",
        "createConfiguredCodec",
        "createTrack",
        "channelOverride",
        "channel",
        "audioAttributesFor",
        "selection",
        "Lcom/shilapi/xcertplay/media/AudioChannelSelection;",
        "streamOverride",
        "mappedSelection",
        "requestAudioFocus",
        "abandonAudioFocus",
        "pcmFormat",
        "Landroid/media/AudioFormat;",
        "kotlin.jvm.PlatformType",
        "encoding",
        "channelMask",
        "streamType",
        "aacAudioSpecificConfig",
        "usageFor",
        "contentTypeFor",
        "contentType",
        "Lcom/shilapi/xcertplay/media/AudioContentType;",
        "opusHead",
        "opusCodecDelay",
        "opusSeekPreRoll",
        "handle",
        "packet",
        "sampleTimestampUs",
        "feedCodec",
        "payload",
        "presentationTimeUs",
        "drainCodec",
        "writePcm",
        "data",
        "offset",
        "length",
        "underrunCount",
        "underranSinceStart",
        "trackBufferFrames",
        "(Landroid/media/AudioTrack;)Ljava/lang/Integer;",
        "routedDeviceType",
        "startPlayback",
        "maintainPlaybackBuffer",
        "logStatsIfDue",
        "force",
        "applyFadeIn",
        "byteSwapS16",
        "source",
        "release",
        "AudioPacket",
        "Companion",
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


# static fields
.field public static final AAC_OBJECT_TYPE_LC:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AUDIO_POLL_MILLIS:J = 0xaL
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BUFFER_TAIL_WAIT_NS:J = 0x1dcd6500L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final Companion:Lcom/shilapi/xcertplay/media/AudioRenderer$Companion;

.field public static final DECODED_BUFFER_LOG_INTERVAL:I = 0x32
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ERROR_DEAD_OBJECT:I = -0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INPUT_TIMEOUT_US:J = 0x2710L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAX_QUEUED_PACKETS:I = 0xc0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MIN_OPUS_PACKET_BYTES:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OPUS_CODEC_DELAY_NANOS:J = 0x632ea0L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OPUS_SEEK_PRE_ROLL_NANOS:J = 0x4c4b400L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PREBUFFER_WRITE_CHUNK_BYTES:I = 0x800
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATS_TAG:Ljava/lang/String; = "DiPlay-AudioStats"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATS_WINDOW_NS:J = 0x12a05f200L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "xcertplay-usb"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final advancedAudioChannelMapping:Z

.field private final audioFocusCoordinator:Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;

.field private final audioFocusEnabled:Z

.field private final bufferProgress:Lcom/shilapi/xcertplay/media/AudioBufferProgress;

.field private bytesPerSecond:I

.field private codec:Landroid/media/MediaCodec;

.field private droppedPacketsLogged:Z

.field private fadeApplied:Z

.field private firstAacPayloadLogged:Z

.field private firstInputQueuedLogged:Z

.field private firstOpusShortPacketLogged:Z

.field private firstPcmLogged:Z

.field private final forceSoftwareOpus:Z

.field private final format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

.field private final frameBytes:I

.field private inputDropped:I

.field private inputQueued:I

.field private final lastArrivalNs:Ljava/util/concurrent/atomic/AtomicLong;

.field private lastPcmWriteNs:J

.field private lastPlaybackHeadFrames:Ljava/lang/Long;

.field private lastWriteErrorCode:Ljava/lang/Integer;

.field private mappedChannel:Lcom/shilapi/xcertplay/media/AudioChannel;

.field private final maxArrivalGapMs:Ljava/util/concurrent/atomic/AtomicLong;

.field private maxWriteMs:J

.field private final mediaBufferMillis:I

.field private final mediaChannel:I

.field private final navigationChannel:I

.field private final navigationStreamType:I

.field private outputBuffers:I

.field private final packetsDropped:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final packetsReceived:Ljava/util/concurrent/atomic/AtomicInteger;

.field private partialWritesThisWindow:I

.field private pcm:[B

.field private final phoneAsMedia:Z

.field private playbackStarted:Z

.field private prebufferBytes:I

.field private final queue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/shilapi/xcertplay/media/AudioRenderer$AudioPacket;",
            ">;"
        }
    .end annotation
.end field

.field private rebufferCount:I

.field private final report:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private volatile running:Z

.field private softwareOpus:Lcom/shilapi/xcertplay/media/SoftwareOpusDecoder;

.field private startThresholdBytes:I

.field private volatile started:Z

.field private statsLastUnderruns:I

.field private statsWindowStartNs:J

.field private final thread:Ljava/lang/Thread;

.field private threadNice:Ljava/lang/Integer;

.field private threadPriority:Ljava/lang/String;

.field private totalWrittenFrames:J

.field private track:Landroid/media/AudioTrack;

.field private trackAttributes:Landroid/media/AudioAttributes;

.field private trackStreamType:I

.field private underrunsAtPlaybackStart:I

.field private writeErrorsThisWindow:I

.field private writtenFramesThisWindow:J

.field private zeroWritesThisWindow:I


# direct methods
.method public static synthetic $r8$lambda$-l8ixbrD9K2Vk1fRAhuUgmljtIg(Landroid/media/AudioTrack;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/media/AudioRenderer;->createTrack$lambda$8(Landroid/media/AudioTrack;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$8rtT9Xo8wfWTRI1m7yF8DBDxdsg(Landroid/media/AudioTrack;)Z
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/media/AudioRenderer;->createTrack$lambda$7(Landroid/media/AudioTrack;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Csks6xKVraCHSOyZWg8XLD6y01k(Lkotlin/jvm/internal/Ref$ObjectRef;ILcom/shilapi/xcertplay/media/AudioRenderer;Lcom/shilapi/xcertplay/media/AudioChannelSelection;IILcom/shilapi/xcertplay/media/MediaAudioBuffer$Plan;)Landroid/media/AudioTrack;
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/shilapi/xcertplay/media/AudioRenderer;->createTrack$lambda$13(Lkotlin/jvm/internal/Ref$ObjectRef;ILcom/shilapi/xcertplay/media/AudioRenderer;Lcom/shilapi/xcertplay/media/AudioChannelSelection;IILcom/shilapi/xcertplay/media/MediaAudioBuffer$Plan;)Landroid/media/AudioTrack;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$EB8JYBlhLQo-DqRF0J4t1vnBx_U(Lkotlin/jvm/internal/Ref$ObjectRef;IILcom/shilapi/xcertplay/media/AudioRenderer;IILcom/shilapi/xcertplay/media/MediaAudioBuffer$Plan;)Landroid/media/AudioTrack;
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/shilapi/xcertplay/media/AudioRenderer;->createTrack$lambda$9(Lkotlin/jvm/internal/Ref$ObjectRef;IILcom/shilapi/xcertplay/media/AudioRenderer;IILcom/shilapi/xcertplay/media/MediaAudioBuffer$Plan;)Landroid/media/AudioTrack;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HlJdOTYAas2kJqZGTl2hUDw-VMo(Landroid/media/AudioTrack;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/media/AudioRenderer;->createTrack$lambda$12(Landroid/media/AudioTrack;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RAzYbPRwvwNqBtnvbb1MYFc4kz8(ILcom/shilapi/xcertplay/media/AudioRenderer;IILcom/shilapi/xcertplay/media/MediaAudioBuffer$Plan;)Landroid/media/AudioTrack;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/media/AudioRenderer;->createTrack$lambda$10(ILcom/shilapi/xcertplay/media/AudioRenderer;IILcom/shilapi/xcertplay/media/MediaAudioBuffer$Plan;)Landroid/media/AudioTrack;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$sGtGOneUakbJ6gEhecf22IWfbkY(ILcom/shilapi/xcertplay/media/AudioRenderer;IILcom/shilapi/xcertplay/media/MediaAudioBuffer$Plan;)Landroid/media/AudioTrack;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/media/AudioRenderer;->createTrack$lambda$6(ILcom/shilapi/xcertplay/media/AudioRenderer;IILcom/shilapi/xcertplay/media/MediaAudioBuffer$Plan;)Landroid/media/AudioTrack;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vFF9aFMJM7ZpqTBde5yG7j9idEE(Landroid/media/AudioTrack;)Z
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/media/AudioRenderer;->createTrack$lambda$11(Landroid/media/AudioTrack;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$xxoRYj4XpxvKpEG1f0qKB614LaU(JJ)J
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/media/AudioRenderer;->submit$maxOf__proxy(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic $r8$lambda$y9bI2OLvsUea0M73l_amlmg8kig(Lcom/shilapi/xcertplay/media/AudioRenderer;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/media/AudioRenderer;->run()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/media/AudioRenderer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/media/AudioRenderer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/media/AudioRenderer;->Companion:Lcom/shilapi/xcertplay/media/AudioRenderer$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/shilapi/xcertplay/airplay/AudioFormat;ZZIILcom/shilapi/xcertplay/media/AudioFocusCoordinator;IILkotlin/jvm/functions/Function1;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/airplay/AudioFormat;",
            "ZZII",
            "Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;",
            "II",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;ZZ)V"
        }
    .end annotation

    const-string v0, "format"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioFocusCoordinator"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "report"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 972
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 973
    iput-object p1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    .line 974
    iput-boolean p2, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->advancedAudioChannelMapping:Z

    .line 975
    iput-boolean p3, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->audioFocusEnabled:Z

    .line 976
    iput p4, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->mediaChannel:I

    .line 977
    iput p5, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->navigationChannel:I

    .line 978
    iput-object p6, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->audioFocusCoordinator:Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;

    .line 979
    iput p7, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->navigationStreamType:I

    .line 980
    iput p8, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->mediaBufferMillis:I

    .line 981
    iput-object p9, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->report:Lkotlin/jvm/functions/Function1;

    .line 982
    iput-boolean p10, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->phoneAsMedia:Z

    .line 983
    iput-boolean p11, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->forceSoftwareOpus:Z

    const/4 p2, 0x3

    .line 988
    iput p2, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->trackStreamType:I

    .line 990
    new-instance p2, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 p3, 0xc0

    invoke-direct {p2, p3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object p2, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 p2, 0x1

    .line 991
    iput-boolean p2, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->running:Z

    const/high16 p3, 0x10000

    .line 998
    new-array p3, p3, [B

    iput-object p3, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->pcm:[B

    .line 1011
    new-instance p3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p3, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->packetsReceived:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1012
    new-instance p3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p3, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->packetsDropped:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1013
    new-instance p3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p3, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->lastArrivalNs:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1014
    new-instance p3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p3, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->maxArrivalGapMs:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1015
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getChannels()I

    move-result p3

    const/4 p4, 0x4

    const/4 p5, 0x2

    if-lt p3, p5, :cond_0

    const/4 p3, 0x4

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    :goto_0
    iput p3, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->frameBytes:I

    .line 1027
    new-instance p3, Lcom/shilapi/xcertplay/media/AudioBufferProgress;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getChannels()I

    move-result p1

    if-lt p1, p5, :cond_1

    goto :goto_1

    :cond_1
    const/4 p4, 0x2

    :goto_1
    invoke-direct {p3, p4}, Lcom/shilapi/xcertplay/media/AudioBufferProgress;-><init>(I)V

    iput-object p3, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->bufferProgress:Lcom/shilapi/xcertplay/media/AudioBufferProgress;

    .line 1031
    const-string p1, "default"

    iput-object p1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->threadPriority:Ljava/lang/String;

    .line 1033
    new-instance p1, Ljava/lang/Thread;

    new-instance p3, Lcom/shilapi/xcertplay/media/AudioRenderer$$ExternalSyntheticLambda17;

    invoke-direct {p3, p0}, Lcom/shilapi/xcertplay/media/AudioRenderer$$ExternalSyntheticLambda17;-><init>(Lcom/shilapi/xcertplay/media/AudioRenderer;)V

    const-string p4, "carplay-audio"

    invoke-direct {p1, p3, p4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setDaemon(Z)V

    iput-object p1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->thread:Ljava/lang/Thread;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/airplay/AudioFormat;ZZIILcom/shilapi/xcertplay/media/AudioFocusCoordinator;IILkotlin/jvm/functions/Function1;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit16 p13, p12, 0x200

    const/4 v0, 0x0

    if-eqz p13, :cond_0

    const/4 p10, 0x0

    :cond_0
    and-int/lit16 p12, p12, 0x400

    if-eqz p12, :cond_1

    const/4 p12, 0x0

    goto :goto_0

    :cond_1
    move p12, p11

    :goto_0
    move p11, p10

    move-object p10, p9

    move p9, p8

    move p8, p7

    move-object p7, p6

    move p6, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 972
    invoke-direct/range {p1 .. p12}, Lcom/shilapi/xcertplay/media/AudioRenderer;-><init>(Lcom/shilapi/xcertplay/airplay/AudioFormat;ZZIILcom/shilapi/xcertplay/media/AudioFocusCoordinator;IILkotlin/jvm/functions/Function1;ZZ)V

    return-void
.end method

.method private final aacAudioSpecificConfig()[B
    .locals 5

    .line 1361
    sget-object v0, Lcom/shilapi/xcertplay/media/MediaCodecSupport;->INSTANCE:Lcom/shilapi/xcertplay/media/MediaCodecSupport;

    iget-object v1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getSampleRate()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/media/MediaCodecSupport;->aacFrequencyIndex(I)I

    move-result v0

    const/4 v1, 0x7

    shl-int/2addr v0, v1

    or-int/lit16 v0, v0, 0x1000

    .line 1364
    iget-object v2, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getChannels()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v1

    shl-int/lit8 v1, v1, 0x3

    or-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x8

    int-to-byte v1, v1

    int-to-byte v0, v0

    const/4 v2, 0x2

    .line 1365
    new-array v2, v2, [B

    const/4 v4, 0x0

    aput-byte v1, v2, v4

    aput-byte v0, v2, v3

    return-object v2
.end method

.method private final abandonAudioFocus()V
    .locals 2

    .line 1337
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->track:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->audioFocusCoordinator:Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;

    invoke-virtual {v1, v0}, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->release(Landroid/media/AudioTrack;)V

    :cond_0
    return-void
.end method

.method private final applyFadeIn([BII)V
    .locals 8

    .line 1673
    rem-int/lit8 v0, p3, 0x2

    sub-int/2addr p3, v0

    div-int/lit8 p3, p3, 0x2

    .line 1674
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getSampleRate()I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    mul-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p2

    .line 1677
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v1, 0x1

    aget-byte v4, p1, v3

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    int-to-long v4, v2

    add-int/lit8 v0, v0, 0x1

    int-to-long v6, v0

    mul-long v4, v4, v6

    int-to-long v6, p3

    .line 1678
    div-long/2addr v4, v6

    long-to-int v2, v4

    int-to-byte v4, v2

    .line 1679
    aput-byte v4, p1, v1

    shr-int/lit8 v1, v2, 0x8

    int-to-byte v1, v1

    .line 1680
    aput-byte v1, p1, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final audioAttributesFor(Lcom/shilapi/xcertplay/media/AudioChannelSelection;)Landroid/media/AudioAttributes;
    .locals 2

    .line 1316
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 1317
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/media/AudioChannelSelection;->getChannel()Lcom/shilapi/xcertplay/media/AudioChannel;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/media/AudioRenderer;->usageFor(Lcom/shilapi/xcertplay/media/AudioChannel;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 1318
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/media/AudioChannelSelection;->getContentType()Lcom/shilapi/xcertplay/media/AudioContentType;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/media/AudioRenderer;->contentTypeFor(Lcom/shilapi/xcertplay/media/AudioContentType;)I

    move-result p1

    invoke-static {v0, p1}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    .line 1319
    invoke-static {p1}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioAttributes$Builder;)Landroid/media/AudioAttributes;

    move-result-object p1

    const-string v0, "build(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final audioAttributesFor(Lcom/shilapi/xcertplay/media/AudioChannelSelection;I)Landroid/media/AudioAttributes;
    .locals 4

    const/4 v0, 0x1

    .line 1286
    const-string v1, "build(...)"

    if-gt v0, p2, :cond_0

    const/16 v0, 0xb

    if-ge p2, v0, :cond_0

    .line 1291
    :try_start_0
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-static {v0, p2}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-static {v0}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioAttributes$Builder;)Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1293
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "legacy audio stream "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " rejected; keeping usage routing"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast v0, Ljava/lang/Throwable;

    const-string/jumbo v2, "xcertplay-usb"

    invoke-static {v2, p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1296
    :cond_0
    new-instance p2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 1297
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/media/AudioChannelSelection;->getChannel()Lcom/shilapi/xcertplay/media/AudioChannel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/media/AudioRenderer;->usageFor(Lcom/shilapi/xcertplay/media/AudioChannel;)I

    move-result v0

    invoke-static {p2, v0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;

    move-result-object p2

    .line 1298
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/media/AudioChannelSelection;->getContentType()Lcom/shilapi/xcertplay/media/AudioContentType;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/media/AudioRenderer;->contentTypeFor(Lcom/shilapi/xcertplay/media/AudioContentType;)I

    move-result p1

    invoke-static {p2, p1}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    .line 1299
    invoke-static {p1}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioAttributes$Builder;)Landroid/media/AudioAttributes;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final byteSwapS16([B)[B
    .locals 6

    .line 1685
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Lkotlin/ranges/IntProgression;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v1

    invoke-virtual {v0}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v2

    invoke-virtual {v0}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v0

    if-lez v0, :cond_0

    if-le v1, v2, :cond_1

    :cond_0
    if-gez v0, :cond_2

    if-gt v2, v1, :cond_2

    .line 1686
    :cond_1
    :goto_0
    aget-byte v3, p1, v1

    add-int/lit8 v4, v1, 0x1

    .line 1687
    aget-byte v5, p1, v4

    aput-byte v5, p1, v1

    .line 1688
    aput-byte v3, p1, v4

    if-eq v1, v2, :cond_2

    add-int/2addr v1, v0

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private final channelOverride(Lcom/shilapi/xcertplay/media/AudioChannel;)I
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shilapi/xcertplay/E01AudioRoute;->stream(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    .line 1276
    :cond_0
    sget-object v0, Lcom/shilapi/xcertplay/media/AudioRenderer$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/media/AudioChannel;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 1278
    :cond_1
    iget p1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->navigationChannel:I

    return p1

    .line 1277
    :cond_2
    iget p1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->mediaChannel:I

    return p1
.end method

.method private final configureCodec(Ljava/lang/String;)V
    .locals 4

    .line 1108
    sget-object v0, Lcom/shilapi/xcertplay/media/OpusDecoderChoice;->INSTANCE:Lcom/shilapi/xcertplay/media/OpusDecoderChoice;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/media/OpusDecoderChoice;->mediaCodecUsable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1109
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->report:Lkotlin/jvm/functions/Function1;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Audio: no MediaCodec on API "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not decoded"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1113
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/media/AudioRenderer;->createConfiguredCodec(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1115
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "audio decoder configuration failed mime="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "xcertplay-usb"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 1112
    :goto_0
    iput-object p1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->codec:Landroid/media/MediaCodec;

    return-void
.end method

.method private final contentTypeFor(Lcom/shilapi/xcertplay/media/AudioContentType;)I
    .locals 2

    .line 1375
    sget-object v0, Lcom/shilapi/xcertplay/media/AudioRenderer$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/media/AudioContentType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    return v0
.end method

.method private final createConfiguredCodec(Ljava/lang/String;)Landroid/media/MediaCodec;
    .locals 7

    .line 1121
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 1122
    const-string v1, "mime"

    invoke-static {v0, v1, p1}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/media/MediaFormat;Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    iget-object v1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getSampleRate()I

    move-result v1

    const-string v2, "sample-rate"

    invoke-static {v0, v2, v1}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 1124
    iget-object v1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getChannels()I

    move-result v1

    const-string v2, "channel-count"

    invoke-static {v0, v2, v1}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 1125
    const-string v1, "max-input-size"

    const/high16 v2, 0x10000

    invoke-static {v0, v1, v2}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 1126
    const-string v1, "audio/mp4a-latm"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "csd-0"

    if-eqz v2, :cond_0

    .line 1127
    const-string v2, "is-adts"

    const/4 v4, 0x1

    invoke-static {v0, v2, v4}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 1128
    invoke-direct {p0}, Lcom/shilapi/xcertplay/media/AudioRenderer;->aacAudioSpecificConfig()[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/media/MediaFormat;Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 1130
    :cond_0
    invoke-direct {p0}, Lcom/shilapi/xcertplay/media/AudioRenderer;->opusHead()[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/media/MediaFormat;Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 1131
    invoke-direct {p0}, Lcom/shilapi/xcertplay/media/AudioRenderer;->opusCodecDelay()[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    const-string v3, "csd-1"

    invoke-static {v0, v3, v2}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/media/MediaFormat;Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 1132
    invoke-direct {p0}, Lcom/shilapi/xcertplay/media/AudioRenderer;->opusSeekPreRoll()[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    const-string v3, "csd-2"

    invoke-static {v0, v3, v2}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/media/MediaFormat;Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 1135
    :goto_0
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "xcertplay-usb"

    if-eqz v1, :cond_1

    .line 1138
    iget-object v1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getSampleRate()I

    move-result v1

    iget-object v3, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getChannels()I

    move-result v3

    .line 1139
    invoke-direct {p0}, Lcom/shilapi/xcertplay/media/AudioRenderer;->aacAudioSpecificConfig()[B

    move-result-object v4

    invoke-static {v4}, Lcom/shilapi/xcertplay/airplay/BytesKt;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "audio AAC config rate="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " channels="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " csd0="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1136
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    :cond_1
    invoke-static {p1}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    const-string v3, "createDecoderByType(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1144
    :try_start_0
    invoke-static {v1, v0, v4, v4, v3}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodec;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 1145
    invoke-static {v1}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m$3(Landroid/media/MediaCodec;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1150
    sget-object v0, Lcom/shilapi/xcertplay/compat/MediaCodecCompat;->INSTANCE:Lcom/shilapi/xcertplay/compat/MediaCodecCompat;

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/compat/MediaCodecCompat;->name(Landroid/media/MediaCodec;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "audio decoder configured mime="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " name="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catchall_0
    move-exception p1

    .line 1147
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m$2(Landroid/media/MediaCodec;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    :goto_1
    throw p1
.end method

.method private final createTrack()V
    .locals 31

    move-object/from16 v2, p0

    .line 1156
    iget-object v0, v2, Lcom/shilapi/xcertplay/media/AudioRenderer;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getChannels()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/16 v0, 0xc

    const/16 v3, 0xc

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    const/4 v3, 0x4

    .line 1158
    :goto_0
    invoke-direct {v2}, Lcom/shilapi/xcertplay/media/AudioRenderer;->getPlaybackRate()I

    move-result v0

    const/4 v4, 0x2

    invoke-static {v0, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v9

    .line 1159
    const-string v11, " channels="

    const-string/jumbo v12, "xcertplay-usb"

    if-gtz v9, :cond_1

    .line 1160
    invoke-direct {v2}, Lcom/shilapi/xcertplay/media/AudioRenderer;->getPlaybackRate()I

    move-result v0

    iget-object v1, v2, Lcom/shilapi/xcertplay/media/AudioRenderer;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getChannels()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AudioTrack buffer size unavailable rate="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1163
    :cond_1
    invoke-direct {v2}, Lcom/shilapi/xcertplay/media/AudioRenderer;->mappedSelection()Lcom/shilapi/xcertplay/media/AudioChannelSelection;

    move-result-object v13

    .line 1164
    invoke-virtual {v13}, Lcom/shilapi/xcertplay/media/AudioChannelSelection;->getChannel()Lcom/shilapi/xcertplay/media/AudioChannel;

    move-result-object v0

    iput-object v0, v2, Lcom/shilapi/xcertplay/media/AudioRenderer;->mappedChannel:Lcom/shilapi/xcertplay/media/AudioChannel;

    .line 1165
    invoke-virtual {v13}, Lcom/shilapi/xcertplay/media/AudioChannelSelection;->getChannel()Lcom/shilapi/xcertplay/media/AudioChannel;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/shilapi/xcertplay/media/AudioRenderer;->channelOverride(Lcom/shilapi/xcertplay/media/AudioChannel;)I

    move-result v1

    .line 1167
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v0, v5, :cond_2

    invoke-direct {v2, v13, v1}, Lcom/shilapi/xcertplay/media/AudioRenderer;->audioAttributesFor(Lcom/shilapi/xcertplay/media/AudioChannelSelection;I)Landroid/media/AudioAttributes;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-object v0, v2, Lcom/shilapi/xcertplay/media/AudioRenderer;->trackAttributes:Landroid/media/AudioAttributes;

    .line 1168
    sget-object v0, Lcom/shilapi/xcertplay/compat/AudioCompat;->INSTANCE:Lcom/shilapi/xcertplay/compat/AudioCompat;

    invoke-virtual {v13}, Lcom/shilapi/xcertplay/media/AudioChannelSelection;->getChannel()Lcom/shilapi/xcertplay/media/AudioChannel;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/shilapi/xcertplay/media/AudioRenderer;->usageFor(Lcom/shilapi/xcertplay/media/AudioChannel;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/shilapi/xcertplay/compat/AudioCompat;->streamTypeForUsage(I)I

    move-result v0

    const/4 v14, 0x1

    if-gt v14, v1, :cond_3

    const/16 v5, 0x9

    if-ge v1, v5, :cond_3

    move v5, v1

    goto :goto_2

    :cond_3
    move v5, v0

    .line 1173
    :goto_2
    invoke-static {v1, v5}, Lcom/shilapi/xcertplay/E01AudioRoute;->trackedStream(II)I

    move-result v5

    iput v5, v2, Lcom/shilapi/xcertplay/media/AudioRenderer;->trackStreamType:I

    .line 1175
    sget-object v5, Lcom/shilapi/xcertplay/media/MediaAudioBuffer;->INSTANCE:Lcom/shilapi/xcertplay/media/MediaAudioBuffer;

    invoke-virtual {v13}, Lcom/shilapi/xcertplay/media/AudioChannelSelection;->getChannel()Lcom/shilapi/xcertplay/media/AudioChannel;

    move-result-object v6

    sget-object v7, Lcom/shilapi/xcertplay/media/AudioChannel;->MEDIA:Lcom/shilapi/xcertplay/media/AudioChannel;

    if-ne v6, v7, :cond_4

    const/4 v6, 0x1

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    .line 1176
    :goto_3
    invoke-direct {v2}, Lcom/shilapi/xcertplay/media/AudioRenderer;->getPlaybackRate()I

    move-result v7

    iget-object v8, v2, Lcom/shilapi/xcertplay/media/AudioRenderer;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-virtual {v8}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getChannels()I

    move-result v8

    iget v10, v2, Lcom/shilapi/xcertplay/media/AudioRenderer;->mediaBufferMillis:I

    .line 1175
    invoke-virtual/range {v5 .. v10}, Lcom/shilapi/xcertplay/media/MediaAudioBuffer;->plan(ZIIII)Lcom/shilapi/xcertplay/media/MediaAudioBuffer$Plan;

    move-result-object v10

    .line 1177
    invoke-direct {v2}, Lcom/shilapi/xcertplay/media/AudioRenderer;->getPlaybackRate()I

    move-result v5

    iget v6, v2, Lcom/shilapi/xcertplay/media/AudioRenderer;->frameBytes:I

    mul-int v5, v5, v6

    iput v5, v2, Lcom/shilapi/xcertplay/media/AudioRenderer;->bytesPerSecond:I

    .line 1179
    new-instance v15, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 1180
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    const-string/jumbo v7, "streamType="

    if-ge v5, v6, :cond_6

    if-nez v1, :cond_5

    .line 1183
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "(legacy usage)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move v6, v3

    .line 1184
    sget-object v3, Lcom/shilapi/xcertplay/compat/AudioCompat;->INSTANCE:Lcom/shilapi/xcertplay/compat/AudioCompat;

    invoke-direct {v2}, Lcom/shilapi/xcertplay/media/AudioRenderer;->getPlaybackRate()I

    move-result v5

    .line 1185
    invoke-virtual {v10}, Lcom/shilapi/xcertplay/media/MediaAudioBuffer$Plan;->getTrackBufferBytes()I

    move-result v8

    move v4, v0

    const/4 v7, 0x2

    .line 1184
    invoke-virtual/range {v3 .. v8}, Lcom/shilapi/xcertplay/compat/AudioCompat;->streamTrack(IIIII)Landroid/media/AudioTrack;

    move-result-object v0

    move-object v5, v10

    move-object v4, v13

    move-object v6, v15

    goto/16 :goto_5

    :cond_5
    move v8, v0

    move v6, v3

    .line 1188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1189
    sget-object v7, Lcom/shilapi/xcertplay/media/LegacyAudioFallback;->INSTANCE:Lcom/shilapi/xcertplay/media/LegacyAudioFallback;

    new-instance v0, Lcom/shilapi/xcertplay/media/AudioRenderer$$ExternalSyntheticLambda9;

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/media/AudioRenderer$$ExternalSyntheticLambda9;-><init>(ILcom/shilapi/xcertplay/media/AudioRenderer;IILcom/shilapi/xcertplay/media/MediaAudioBuffer$Plan;)V

    move-object v10, v0

    new-instance v0, Lcom/shilapi/xcertplay/media/AudioRenderer$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/media/AudioRenderer$$ExternalSyntheticLambda13;-><init>()V

    new-instance v2, Lcom/shilapi/xcertplay/media/AudioRenderer$$ExternalSyntheticLambda14;

    invoke-direct {v2}, Lcom/shilapi/xcertplay/media/AudioRenderer$$ExternalSyntheticLambda14;-><init>()V

    move-object v3, v0

    new-instance v0, Lcom/shilapi/xcertplay/media/AudioRenderer$$ExternalSyntheticLambda15;

    move-object/from16 v4, p0

    move-object v14, v2

    move v2, v1

    move-object v1, v15

    move-object v15, v3

    move v3, v8

    move-object v8, v7

    move-object v7, v5

    move v5, v6

    const/4 v6, 0x2

    invoke-direct/range {v0 .. v7}, Lcom/shilapi/xcertplay/media/AudioRenderer$$ExternalSyntheticLambda15;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;IILcom/shilapi/xcertplay/media/AudioRenderer;IILcom/shilapi/xcertplay/media/MediaAudioBuffer$Plan;)V

    move-object v6, v1

    move v1, v2

    move-object v2, v4

    move-object v5, v7

    invoke-virtual {v8, v10, v15, v14, v0}, Lcom/shilapi/xcertplay/media/LegacyAudioFallback;->build(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    goto :goto_4

    :cond_6
    move-object v5, v10

    move-object v6, v15

    if-nez v1, :cond_7

    .line 1205
    invoke-direct {v2, v13}, Lcom/shilapi/xcertplay/media/AudioRenderer;->audioAttributesFor(Lcom/shilapi/xcertplay/media/AudioChannelSelection;)Landroid/media/AudioAttributes;

    move-result-object v0

    .line 1206
    const-string/jumbo v7, "usage"

    iput-object v7, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1207
    new-instance v7, Landroid/media/AudioTrack$Builder;

    invoke-direct {v7}, Landroid/media/AudioTrack$Builder;-><init>()V

    .line 1208
    invoke-static {v7, v0}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioTrack$Builder;Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object v0

    .line 1209
    invoke-direct {v2, v4, v3}, Lcom/shilapi/xcertplay/media/AudioRenderer;->pcmFormat(II)Landroid/media/AudioFormat;

    move-result-object v3

    invoke-static {v0, v3}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioTrack$Builder;Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object v0

    const/4 v3, 0x1

    .line 1210
    invoke-static {v0, v3}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioTrack$Builder;I)Landroid/media/AudioTrack$Builder;

    move-result-object v0

    .line 1211
    invoke-virtual {v5}, Lcom/shilapi/xcertplay/media/MediaAudioBuffer$Plan;->getTrackBufferBytes()I

    move-result v3

    invoke-static {v0, v3}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/media/AudioTrack$Builder;I)Landroid/media/AudioTrack$Builder;

    move-result-object v0

    .line 1212
    invoke-static {v0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioTrack$Builder;)Landroid/media/AudioTrack;

    move-result-object v0

    const-string v3, "build(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_4
    move-object v4, v13

    goto :goto_5

    .line 1215
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1216
    sget-object v8, Lcom/shilapi/xcertplay/media/LegacyAudioFallback;->INSTANCE:Lcom/shilapi/xcertplay/media/LegacyAudioFallback;

    new-instance v0, Lcom/shilapi/xcertplay/media/AudioRenderer$$ExternalSyntheticLambda16;

    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/media/AudioRenderer$$ExternalSyntheticLambda16;-><init>(ILcom/shilapi/xcertplay/media/AudioRenderer;IILcom/shilapi/xcertplay/media/MediaAudioBuffer$Plan;)V

    move-object v10, v0

    new-instance v14, Lcom/shilapi/xcertplay/media/AudioRenderer$$ExternalSyntheticLambda10;

    invoke-direct {v14}, Lcom/shilapi/xcertplay/media/AudioRenderer$$ExternalSyntheticLambda10;-><init>()V

    new-instance v15, Lcom/shilapi/xcertplay/media/AudioRenderer$$ExternalSyntheticLambda11;

    invoke-direct {v15}, Lcom/shilapi/xcertplay/media/AudioRenderer$$ExternalSyntheticLambda11;-><init>()V

    new-instance v0, Lcom/shilapi/xcertplay/media/AudioRenderer$$ExternalSyntheticLambda12;

    move v2, v1

    move-object v7, v5

    move-object v1, v6

    move-object v4, v13

    const/4 v5, 0x2

    move v6, v3

    move-object/from16 v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/shilapi/xcertplay/media/AudioRenderer$$ExternalSyntheticLambda12;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;ILcom/shilapi/xcertplay/media/AudioRenderer;Lcom/shilapi/xcertplay/media/AudioChannelSelection;IILcom/shilapi/xcertplay/media/MediaAudioBuffer$Plan;)V

    move-object v6, v1

    move v1, v2

    move-object v2, v3

    move-object v5, v7

    invoke-virtual {v8, v10, v14, v15, v0}, Lcom/shilapi/xcertplay/media/LegacyAudioFallback;->build(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    .line 1238
    :goto_5
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v3

    const-string v7, " route="

    const/4 v8, 0x1

    if-ne v3, v8, :cond_10

    .line 1243
    iput-object v0, v2, Lcom/shilapi/xcertplay/media/AudioRenderer;->track:Landroid/media/AudioTrack;

    .line 1244
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1d

    if-lt v3, v8, :cond_8

    invoke-static {v0}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/media/AudioTrack;)Landroid/media/AudioAttributes;

    move-result-object v3

    iput-object v3, v2, Lcom/shilapi/xcertplay/media/AudioRenderer;->trackAttributes:Landroid/media/AudioAttributes;

    .line 1245
    :cond_8
    invoke-direct {v2, v0}, Lcom/shilapi/xcertplay/media/AudioRenderer;->trackBufferFrames(Landroid/media/AudioTrack;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_9

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget v3, v2, Lcom/shilapi/xcertplay/media/AudioRenderer;->frameBytes:I

    mul-int v0, v0, v3

    goto :goto_6

    :cond_9
    invoke-virtual {v5}, Lcom/shilapi/xcertplay/media/MediaAudioBuffer$Plan;->getTrackBufferBytes()I

    move-result v0

    .line 1246
    :goto_6
    sget-object v3, Lcom/shilapi/xcertplay/media/MediaAudioBuffer;->INSTANCE:Lcom/shilapi/xcertplay/media/MediaAudioBuffer;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/media/MediaAudioBuffer$Plan;->getStartBytes()I

    move-result v5

    const/16 v8, 0x800

    invoke-virtual {v3, v5, v0, v8}, Lcom/shilapi/xcertplay/media/MediaAudioBuffer;->startBytesFor(III)I

    move-result v3

    iput v3, v2, Lcom/shilapi/xcertplay/media/AudioRenderer;->startThresholdBytes:I

    .line 1247
    iget-object v3, v2, Lcom/shilapi/xcertplay/media/AudioRenderer;->report:Lkotlin/jvm/functions/Function1;

    iget-object v5, v2, Lcom/shilapi/xcertplay/media/AudioRenderer;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getAudioType()Ljava/lang/String;

    move-result-object v5

    iget-object v8, v2, Lcom/shilapi/xcertplay/media/AudioRenderer;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-virtual {v8}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getCodec()Lcom/shilapi/xcertplay/airplay/AudioCodecKind;

    move-result-object v8

    .line 1248
    iget-object v10, v2, Lcom/shilapi/xcertplay/media/AudioRenderer;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-virtual {v10}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getSampleRate()I

    move-result v10

    iget-object v13, v2, Lcom/shilapi/xcertplay/media/AudioRenderer;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-virtual {v13}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getChannels()I

    move-result v13

    .line 1249
    iget-object v14, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move v15, v1

    int-to-long v0, v0

    const-wide/16 v16, 0x3e8

    mul-long v0, v0, v16

    move-wide/from16 v18, v0

    .line 1250
    iget v0, v2, Lcom/shilapi/xcertplay/media/AudioRenderer;->bytesPerSecond:I

    move-object/from16 v20, v3

    move-object v1, v4

    int-to-long v3, v0

    div-long v3, v18, v3

    move-object/from16 v21, v1

    iget v1, v2, Lcom/shilapi/xcertplay/media/AudioRenderer;->startThresholdBytes:I

    move-wide/from16 v22, v3

    int-to-long v3, v1

    mul-long v3, v3, v16

    move-wide/from16 v24, v3

    int-to-long v3, v0

    div-long v3, v24, v3

    move-wide/from16 v24, v3

    int-to-long v3, v9

    mul-long v3, v3, v16

    int-to-long v0, v0

    .line 1251
    div-long v0, v3, v0

    .line 1252
    invoke-virtual/range {v21 .. v21}, Lcom/shilapi/xcertplay/media/AudioChannelSelection;->getChannel()Lcom/shilapi/xcertplay/media/AudioChannel;

    move-result-object v9

    move-wide/from16 v26, v3

    sget-object v3, Lcom/shilapi/xcertplay/media/AudioChannel;->MEDIA:Lcom/shilapi/xcertplay/media/AudioChannel;

    if-ne v9, v3, :cond_a

    sget-object v3, Lcom/shilapi/xcertplay/media/MediaAudioBuffer;->INSTANCE:Lcom/shilapi/xcertplay/media/MediaAudioBuffer;

    iget v4, v2, Lcom/shilapi/xcertplay/media/AudioRenderer;->mediaBufferMillis:I

    invoke-virtual {v3, v4}, Lcom/shilapi/xcertplay/media/MediaAudioBuffer;->sanitize(I)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_a
    const-string v3, "low-latency"

    .line 1253
    :goto_7
    iget-object v4, v2, Lcom/shilapi/xcertplay/media/AudioRenderer;->threadPriority:Ljava/lang/String;

    iget-object v9, v2, Lcom/shilapi/xcertplay/media/AudioRenderer;->threadNice:Ljava/lang/Integer;

    const-string v28, "?"

    if-nez v9, :cond_b

    move-object/from16 v9, v28

    :cond_b
    move/from16 v29, v15

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v30, v12

    const-string v12, "Audio: ready audioType="

    invoke-direct {v15, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " codec="

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " rate="

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " bufferMs="

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v12, v22

    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " startMs="

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v12, v24

    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " minBufferMs="

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " preset="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " thread="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " nice="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, v20

    .line 1247
    invoke-interface {v3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1256
    iget-object v0, v2, Lcom/shilapi/xcertplay/media/AudioRenderer;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getPayloadType()I

    move-result v3

    iget-object v0, v2, Lcom/shilapi/xcertplay/media/AudioRenderer;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getAudioType()Ljava/lang/String;

    move-result-object v4

    .line 1257
    iget-object v0, v2, Lcom/shilapi/xcertplay/media/AudioRenderer;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getCodec()Lcom/shilapi/xcertplay/airplay/AudioCodecKind;

    move-result-object v9

    .line 1258
    iget-object v0, v2, Lcom/shilapi/xcertplay/media/AudioRenderer;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getSampleRate()I

    move-result v10

    iget-object v0, v2, Lcom/shilapi/xcertplay/media/AudioRenderer;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getChannels()I

    move-result v12

    .line 1259
    iget-object v6, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1260
    iget v0, v2, Lcom/shilapi/xcertplay/media/AudioRenderer;->bytesPerSecond:I

    int-to-long v13, v0

    div-long v13, v18, v13

    iget v15, v2, Lcom/shilapi/xcertplay/media/AudioRenderer;->startThresholdBytes:I

    move-wide/from16 v18, v13

    int-to-long v13, v15

    mul-long v13, v13, v16

    move-wide v15, v13

    int-to-long v13, v0

    div-long v13, v15, v13

    move-object v15, v1

    int-to-long v0, v0

    move-wide/from16 v16, v13

    .line 1261
    div-long v13, v26, v0

    iget-object v1, v2, Lcom/shilapi/xcertplay/media/AudioRenderer;->threadPriority:Ljava/lang/String;

    iget-object v0, v2, Lcom/shilapi/xcertplay/media/AudioRenderer;->threadNice:Ljava/lang/Integer;

    move-object/from16 v20, v15

    if-nez v0, :cond_c

    move-object/from16 v15, v28

    goto :goto_8

    :cond_c
    move-object v15, v0

    .line 1262
    :goto_8
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v2

    check-cast v0, Lcom/shilapi/xcertplay/media/AudioRenderer;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception v0

    sget-object v22, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_9
    const/16 v22, -0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_d

    move-object/from16 v0, v22

    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    const-string v0, "audio track prepared type="

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " audioType="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " buffer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, v18

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms start="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, v16

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " minBuffer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms thread="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v20

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " tid="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v22

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v30

    .line 1254
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, p0

    .line 1266
    iget-object v1, v3, Lcom/shilapi/xcertplay/media/AudioRenderer;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getPayloadType()I

    move-result v1

    iget-object v4, v3, Lcom/shilapi/xcertplay/media/AudioRenderer;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getAudioType()Ljava/lang/String;

    move-result-object v4

    .line 1267
    iget-boolean v5, v3, Lcom/shilapi/xcertplay/media/AudioRenderer;->advancedAudioChannelMapping:Z

    if-eqz v5, :cond_e

    sget-object v5, Lcom/shilapi/xcertplay/media/AudioChannelMappingMode;->AUTOMOTIVE_BUS:Lcom/shilapi/xcertplay/media/AudioChannelMappingMode;

    goto :goto_a

    :cond_e
    sget-object v5, Lcom/shilapi/xcertplay/media/AudioChannelMappingMode;->MOBILE_COMPATIBLE:Lcom/shilapi/xcertplay/media/AudioChannelMappingMode;

    .line 1268
    :goto_a
    invoke-virtual/range {v21 .. v21}, Lcom/shilapi/xcertplay/media/AudioChannelSelection;->getChannel()Lcom/shilapi/xcertplay/media/AudioChannel;

    move-result-object v6

    invoke-virtual/range {v21 .. v21}, Lcom/shilapi/xcertplay/media/AudioChannelSelection;->getChannel()Lcom/shilapi/xcertplay/media/AudioChannel;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/shilapi/xcertplay/media/AudioRenderer;->usageFor(Lcom/shilapi/xcertplay/media/AudioChannel;)I

    move-result v7

    .line 1269
    invoke-virtual/range {v21 .. v21}, Lcom/shilapi/xcertplay/media/AudioChannelSelection;->getContentType()Lcom/shilapi/xcertplay/media/AudioContentType;

    move-result-object v8

    invoke-direct {v3, v8}, Lcom/shilapi/xcertplay/media/AudioRenderer;->contentTypeFor(Lcom/shilapi/xcertplay/media/AudioContentType;)I

    move-result v8

    .line 1271
    iget-boolean v9, v3, Lcom/shilapi/xcertplay/media/AudioRenderer;->audioFocusEnabled:Z

    if-eqz v9, :cond_f

    const-string v9, "on"

    goto :goto_b

    :cond_f
    const-string v9, "off"

    :goto_b
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "audio route type="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mode="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " channel="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " usage="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " contentType="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " streamOverride="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v29

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " focus="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1264
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    move-object v3, v2

    .line 1239
    :try_start_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, v3

    check-cast v1, Lcom/shilapi/xcertplay/media/AudioRenderer;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_c

    :catchall_1
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1240
    :goto_c
    iget-object v0, v3, Lcom/shilapi/xcertplay/media/AudioRenderer;->report:Lkotlin/jvm/functions/Function1;

    iget-object v1, v3, Lcom/shilapi/xcertplay/media/AudioRenderer;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getAudioType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Audio: track not initialized audioType="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "AudioTrack not initialized route="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final createTrack$lambda$10(ILcom/shilapi/xcertplay/media/AudioRenderer;IILcom/shilapi/xcertplay/media/MediaAudioBuffer$Plan;)Landroid/media/AudioTrack;
    .locals 7

    .line 1218
    new-instance v0, Landroid/media/AudioTrack;

    invoke-direct {p1}, Lcom/shilapi/xcertplay/media/AudioRenderer;->getPlaybackRate()I

    move-result v2

    .line 1219
    invoke-virtual {p4}, Lcom/shilapi/xcertplay/media/MediaAudioBuffer$Plan;->getTrackBufferBytes()I

    move-result v5

    const/4 v6, 0x1

    move v1, p0

    move v3, p2

    move v4, p3

    .line 1218
    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    return-object v0
.end method

.method private static final createTrack$lambda$11(Landroid/media/AudioTrack;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1221
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getState()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static final createTrack$lambda$12(Landroid/media/AudioTrack;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1222
    invoke-virtual {p0}, Landroid/media/AudioTrack;->release()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final createTrack$lambda$13(Lkotlin/jvm/internal/Ref$ObjectRef;ILcom/shilapi/xcertplay/media/AudioRenderer;Lcom/shilapi/xcertplay/media/AudioChannelSelection;IILcom/shilapi/xcertplay/media/MediaAudioBuffer$Plan;)Landroid/media/AudioTrack;
    .locals 3

    .line 1224
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "streamType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "(fallback=usage)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1225
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " rejected by this ROM; falling back to usage-based track"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "xcertplay-usb"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    new-instance p0, Landroid/media/AudioTrack$Builder;

    invoke-direct {p0}, Landroid/media/AudioTrack$Builder;-><init>()V

    .line 1227
    invoke-direct {p2, p3}, Lcom/shilapi/xcertplay/media/AudioRenderer;->audioAttributesFor(Lcom/shilapi/xcertplay/media/AudioChannelSelection;)Landroid/media/AudioAttributes;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioTrack$Builder;Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object p0

    .line 1228
    invoke-direct {p2, p4, p5}, Lcom/shilapi/xcertplay/media/AudioRenderer;->pcmFormat(II)Landroid/media/AudioFormat;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioTrack$Builder;Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 1229
    invoke-static {p0, p1}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioTrack$Builder;I)Landroid/media/AudioTrack$Builder;

    move-result-object p0

    .line 1230
    invoke-virtual {p6}, Lcom/shilapi/xcertplay/media/MediaAudioBuffer$Plan;->getTrackBufferBytes()I

    move-result p1

    invoke-static {p0, p1}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/media/AudioTrack$Builder;I)Landroid/media/AudioTrack$Builder;

    move-result-object p0

    .line 1231
    invoke-static {p0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioTrack$Builder;)Landroid/media/AudioTrack;

    move-result-object p0

    const-string p1, "build(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final createTrack$lambda$6(ILcom/shilapi/xcertplay/media/AudioRenderer;IILcom/shilapi/xcertplay/media/MediaAudioBuffer$Plan;)Landroid/media/AudioTrack;
    .locals 6

    .line 1191
    sget-object v0, Lcom/shilapi/xcertplay/compat/AudioCompat;->INSTANCE:Lcom/shilapi/xcertplay/compat/AudioCompat;

    invoke-direct {p1}, Lcom/shilapi/xcertplay/media/AudioRenderer;->getPlaybackRate()I

    move-result v2

    .line 1192
    invoke-virtual {p4}, Lcom/shilapi/xcertplay/media/MediaAudioBuffer$Plan;->getTrackBufferBytes()I

    move-result v5

    move v1, p0

    move v3, p2

    move v4, p3

    .line 1191
    invoke-virtual/range {v0 .. v5}, Lcom/shilapi/xcertplay/compat/AudioCompat;->streamTrack(IIIII)Landroid/media/AudioTrack;

    move-result-object p0

    return-object p0
.end method

.method private static final createTrack$lambda$7(Landroid/media/AudioTrack;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1194
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getState()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static final createTrack$lambda$8(Landroid/media/AudioTrack;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1195
    invoke-virtual {p0}, Landroid/media/AudioTrack;->release()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final createTrack$lambda$9(Lkotlin/jvm/internal/Ref$ObjectRef;IILcom/shilapi/xcertplay/media/AudioRenderer;IILcom/shilapi/xcertplay/media/MediaAudioBuffer$Plan;)Landroid/media/AudioTrack;
    .locals 6

    .line 1197
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "streamType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "(fallback="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1198
    iput p2, p3, Lcom/shilapi/xcertplay/media/AudioRenderer;->trackStreamType:I

    .line 1199
    sget-object v0, Lcom/shilapi/xcertplay/compat/AudioCompat;->INSTANCE:Lcom/shilapi/xcertplay/compat/AudioCompat;

    invoke-direct {p3}, Lcom/shilapi/xcertplay/media/AudioRenderer;->getPlaybackRate()I

    move-result v2

    .line 1200
    invoke-virtual {p6}, Lcom/shilapi/xcertplay/media/MediaAudioBuffer$Plan;->getTrackBufferBytes()I

    move-result v5

    move v1, p2

    move v3, p4

    move v4, p5

    .line 1199
    invoke-virtual/range {v0 .. v5}, Lcom/shilapi/xcertplay/compat/AudioCompat;->streamTrack(IIIII)Landroid/media/AudioTrack;

    move-result-object p0

    return-object p0
.end method

.method private final drainCodec(Landroid/media/MediaCodec;)V
    .locals 9

    .line 1491
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 1492
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->running:Z

    if-eqz v1, :cond_7

    const-wide/16 v1, 0x0

    .line 1493
    invoke-static {p1, v0, v1, v2}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodec;Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    goto/16 :goto_1

    :cond_1
    const/4 v2, -0x2

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->track:Landroid/media/AudioTrack;

    invoke-static {v2, p1}, Lcom/shilapi/xcertplay/E01NavigationAudioProbe;->decodedFormat(Landroid/media/AudioTrack;Landroid/media/MediaCodec;)V

    goto :goto_0

    :cond_2
    if-ltz v1, :cond_7

    .line 1498
    invoke-static {v0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v2

    if-lez v2, :cond_4

    .line 1500
    iget v3, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->outputBuffers:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->outputBuffers:I

    if-eq v3, v4, :cond_3

    .line 1501
    rem-int/lit8 v3, v3, 0x32

    if-nez v3, :cond_4

    .line 1504
    :cond_3
    iget-object v3, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getCodec()Lcom/shilapi/xcertplay/airplay/AudioCodecKind;

    move-result-object v3

    .line 1505
    iget v4, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->outputBuffers:I

    .line 1506
    iget v5, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->inputQueued:I

    iget v6, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->inputDropped:I

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "audio decoder output codec="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " buffers="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " queued="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " dropped="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1502
    const-string/jumbo v4, "xcertplay-usb"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v3, 0x0

    if-lez v2, :cond_6

    .line 1511
    sget-object v4, Lcom/shilapi/xcertplay/compat/MediaCodecCompat;->INSTANCE:Lcom/shilapi/xcertplay/compat/MediaCodecCompat;

    invoke-virtual {v4, p1, v1}, Lcom/shilapi/xcertplay/compat/MediaCodecCompat;->outputBuffer(Landroid/media/MediaCodec;I)Ljava/nio/ByteBuffer;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 1513
    iget-object v5, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->pcm:[B

    array-length v5, v5

    if-le v2, v5, :cond_5

    new-array v5, v2, [B

    iput-object v5, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->pcm:[B

    .line 1514
    :cond_5
    invoke-static {v0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m$2(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1515
    invoke-static {v0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m$2(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1516
    iget-object v5, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->pcm:[B

    invoke-virtual {v4, v5, v3, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1517
    iget-object v4, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->pcm:[B

    invoke-direct {p0, v4, v3, v2}, Lcom/shilapi/xcertplay/media/AudioRenderer;->writePcm([BII)V

    .line 1520
    :cond_6
    invoke-static {p1, v1, v3}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodec;IZ)V

    .line 1521
    invoke-static {v0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    :cond_7
    :goto_1
    return-void
.end method

.method private final feedCodec([BJ)V
    .locals 9

    .line 1456
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->codec:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/shilapi/xcertplay/media/AudioInputPump;->acquire(Lcom/shilapi/xcertplay/media/AudioInputPump$Input;)I

    move-result v1

    .line 1458
    const-string/jumbo v7, "xcertplay-usb"

    const/4 v8, 0x1

    if-gez v1, :cond_1

    .line 1459
    iget p1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->inputDropped:I

    add-int/2addr p1, v8

    iput p1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->inputDropped:I

    if-ne p1, v8, :cond_2

    .line 1463
    iget-object p1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getCodec()Lcom/shilapi/xcertplay/airplay/AudioCodecKind;

    move-result-object p1

    .line 1464
    iget p2, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->inputQueued:I

    iget p3, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->inputDropped:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "audio decoder input unavailable codec="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " queued="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " dropped="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1461
    invoke-static {v7, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1469
    :cond_1
    sget-object v2, Lcom/shilapi/xcertplay/compat/MediaCodecCompat;->INSTANCE:Lcom/shilapi/xcertplay/compat/MediaCodecCompat;

    invoke-virtual {v2, v0, v1}, Lcom/shilapi/xcertplay/compat/MediaCodecCompat;->inputBuffer(Landroid/media/MediaCodec;I)Ljava/nio/ByteBuffer;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_2
    :goto_0
    return-void

    .line 1470
    :cond_3
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1471
    array-length v3, p1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-gt v3, v4, :cond_4

    .line 1472
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1473
    array-length v3, p1

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v6}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodec;IIIJI)V

    .line 1474
    iget p2, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->inputQueued:I

    add-int/2addr p2, v8

    iput p2, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->inputQueued:I

    .line 1475
    iget-boolean p2, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->firstInputQueuedLogged:Z

    if-nez p2, :cond_5

    .line 1476
    iput-boolean v8, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->firstInputQueuedLogged:Z

    .line 1479
    iget-object p2, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getCodec()Lcom/shilapi/xcertplay/airplay/AudioCodecKind;

    move-result-object p2

    array-length p3, p1

    .line 1480
    array-length v1, p1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const-string v1, "copyOf(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/shilapi/xcertplay/airplay/BytesKt;->toHexString([B)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "audio decoder first input codec="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " bytes="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " head="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1477
    invoke-static {v7, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1484
    invoke-static/range {v0 .. v6}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodec;IIIJI)V

    .line 1485
    iget p1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->inputDropped:I

    add-int/2addr p1, v8

    iput p1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->inputDropped:I

    .line 1487
    :cond_5
    :goto_1
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/media/AudioRenderer;->drainCodec(Landroid/media/MediaCodec;)V

    return-void
.end method

.method private final getPlaybackRate()I
    .locals 1

    .line 996
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->softwareOpus:Lcom/shilapi/xcertplay/media/SoftwareOpusDecoder;

    if-eqz v0, :cond_0

    const v0, 0xbb80

    return v0

    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getSampleRate()I

    move-result v0

    return v0
.end method

.method private final handle(Lcom/shilapi/xcertplay/media/AudioRenderer$AudioPacket;)V
    .locals 12

    .line 1408
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/media/AudioRenderer$AudioPacket;->getRtp()[B

    move-result-object v0

    .line 1409
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/media/AudioRenderer$AudioPacket;->getSample()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/media/AudioRenderer;->sampleTimestampUs(I)J

    move-result-wide v1

    .line 1410
    iget-object p1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getCodec()Lcom/shilapi/xcertplay/airplay/AudioCodecKind;

    move-result-object p1

    sget-object v3, Lcom/shilapi/xcertplay/media/AudioRenderer$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/AudioCodecKind;->ordinal()I

    move-result p1

    aget p1, v3, p1

    const-string v3, " head="

    const-string/jumbo v4, "xcertplay-usb"

    const/16 v5, 0xc

    const/4 v6, 0x1

    if-eq p1, v6, :cond_4

    const/4 v7, 0x2

    if-eq p1, v7, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 1411
    array-length p1, v0

    invoke-static {v0, v5, p1}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/media/AudioRenderer;->byteSwapS16([B)[B

    move-result-object v1

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/shilapi/xcertplay/media/AudioRenderer;->writePcm$default(Lcom/shilapi/xcertplay/media/AudioRenderer;[BIIILjava/lang/Object;)V

    move-object p1, v0

    return-void

    :cond_0
    move-object p1, p0

    .line 1410
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_1
    move-object p1, p0

    .line 1430
    array-length v7, v0

    invoke-static {v0, v5, v7}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v0

    .line 1431
    array-length v5, v0

    const/4 v7, 0x4

    if-ge v5, v7, :cond_2

    .line 1432
    iget-boolean v1, p1, Lcom/shilapi/xcertplay/media/AudioRenderer;->firstOpusShortPacketLogged:Z

    if-nez v1, :cond_7

    .line 1433
    iput-boolean v6, p1, Lcom/shilapi/xcertplay/media/AudioRenderer;->firstOpusShortPacketLogged:Z

    .line 1436
    array-length v1, v0

    .line 1437
    invoke-static {v0}, Lcom/shilapi/xcertplay/airplay/BytesKt;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "audio Opus skipping short packet bytes="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1434
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1442
    :cond_2
    iget-object v3, p1, Lcom/shilapi/xcertplay/media/AudioRenderer;->softwareOpus:Lcom/shilapi/xcertplay/media/SoftwareOpusDecoder;

    if-eqz v3, :cond_3

    .line 1444
    invoke-virtual {v3, v0}, Lcom/shilapi/xcertplay/media/SoftwareOpusDecoder;->decode([B)[B

    move-result-object v7

    if-eqz v7, :cond_7

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, p1

    invoke-static/range {v6 .. v11}, Lcom/shilapi/xcertplay/media/AudioRenderer;->writePcm$default(Lcom/shilapi/xcertplay/media/AudioRenderer;[BIIILjava/lang/Object;)V

    return-void

    .line 1447
    :cond_3
    invoke-direct {p0, v0, v1, v2}, Lcom/shilapi/xcertplay/media/AudioRenderer;->feedCodec([BJ)V

    return-void

    :cond_4
    move-object p1, p0

    .line 1413
    array-length v7, v0

    invoke-static {v0, v5, v7}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v0

    .line 1414
    array-length v5, v0

    if-nez v5, :cond_5

    const/4 v5, 0x1

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_7

    .line 1415
    iget-boolean v5, p1, Lcom/shilapi/xcertplay/media/AudioRenderer;->firstAacPayloadLogged:Z

    if-nez v5, :cond_6

    .line 1416
    iput-boolean v6, p1, Lcom/shilapi/xcertplay/media/AudioRenderer;->firstAacPayloadLogged:Z

    .line 1419
    array-length v5, v0

    .line 1420
    array-length v6, v0

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    const-string v7, "copyOf(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/shilapi/xcertplay/airplay/BytesKt;->toHexString([B)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "audio AAC access unit bytes="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1417
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    :cond_6
    sget-object v3, Lcom/shilapi/xcertplay/media/MediaCodecSupport;->INSTANCE:Lcom/shilapi/xcertplay/media/MediaCodecSupport;

    iget-object v4, p1, Lcom/shilapi/xcertplay/media/AudioRenderer;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getSampleRate()I

    move-result v4

    iget-object v5, p1, Lcom/shilapi/xcertplay/media/AudioRenderer;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getChannels()I

    move-result v5

    invoke-virtual {v3, v0, v4, v5}, Lcom/shilapi/xcertplay/media/MediaCodecSupport;->adtsFrame([BII)[B

    move-result-object v0

    .line 1423
    invoke-direct {p0, v0, v1, v2}, Lcom/shilapi/xcertplay/media/AudioRenderer;->feedCodec([BJ)V

    :cond_7
    return-void
.end method

.method private final logStatsIfDue(Z)V
    .locals 43

    move-object/from16 v0, p0

    .line 1631
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 1632
    iget-wide v4, v0, Lcom/shilapi/xcertplay/media/AudioRenderer;->statsWindowStartNs:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    iput-wide v2, v0, Lcom/shilapi/xcertplay/media/AudioRenderer;->statsWindowStartNs:J

    :cond_0
    if-nez p1, :cond_1

    .line 1633
    iget-wide v4, v0, Lcom/shilapi/xcertplay/media/AudioRenderer;->statsWindowStartNs:J

    sub-long v4, v2, v4

    const-wide v8, 0x12a05f200L

    cmp-long v10, v4, v8

    if-gez v10, :cond_1

    return-void

    .line 1634
    :cond_1
    iget-object v4, v0, Lcom/shilapi/xcertplay/media/AudioRenderer;->track:Landroid/media/AudioTrack;

    if-eqz v4, :cond_2

    invoke-direct {v0, v4}, Lcom/shilapi/xcertplay/media/AudioRenderer;->underrunCount(Landroid/media/AudioTrack;)I

    move-result v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 1635
    :goto_0
    iget-object v8, v0, Lcom/shilapi/xcertplay/media/AudioRenderer;->lastArrivalNs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    .line 1636
    iget-object v10, v0, Lcom/shilapi/xcertplay/media/AudioRenderer;->track:Landroid/media/AudioTrack;

    const-wide v11, 0xffffffffL

    if-eqz v10, :cond_3

    .line 1637
    invoke-virtual {v10}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v14

    int-to-long v14, v14

    and-long/2addr v14, v11

    .line 1638
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    goto :goto_1

    :cond_3
    const/4 v14, 0x0

    :goto_1
    if-eqz v14, :cond_4

    .line 1639
    move-object v15, v14

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->longValue()J

    move-result-wide v15

    move-wide/from16 v17, v11

    .line 1640
    iget-object v11, v0, Lcom/shilapi/xcertplay/media/AudioRenderer;->lastPlaybackHeadFrames:Ljava/lang/Long;

    .line 1641
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iput-object v12, v0, Lcom/shilapi/xcertplay/media/AudioRenderer;->lastPlaybackHeadFrames:Ljava/lang/Long;

    if-eqz v11, :cond_4

    .line 1642
    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    sub-long/2addr v15, v11

    and-long v11, v15, v17

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    goto :goto_2

    :cond_4
    const/4 v11, 0x0

    :goto_2
    if-eqz v14, :cond_5

    .line 1644
    move-object v12, v14

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->longValue()J

    move-result-wide v15

    move-object/from16 v17, v14

    iget-wide v13, v0, Lcom/shilapi/xcertplay/media/AudioRenderer;->totalWrittenFrames:J

    sub-long/2addr v13, v15

    invoke-static {v13, v14, v6, v7}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    goto :goto_3

    :cond_5
    move-object/from16 v17, v14

    const/4 v13, 0x0

    .line 1645
    :goto_3
    iget-object v14, v0, Lcom/shilapi/xcertplay/media/AudioRenderer;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-virtual {v14}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getAudioType()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v0, Lcom/shilapi/xcertplay/media/AudioRenderer;->mappedChannel:Lcom/shilapi/xcertplay/media/AudioChannel;

    const/16 v16, -0x1

    if-eqz v10, :cond_6

    .line 1646
    invoke-direct {v0, v10}, Lcom/shilapi/xcertplay/media/AudioRenderer;->routedDeviceType(Landroid/media/AudioTrack;)Ljava/lang/Integer;

    move-result-object v18

    if-eqz v18, :cond_6

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v12, v18

    goto :goto_4

    :cond_6
    const/4 v12, -0x1

    :goto_4
    iget-object v6, v0, Lcom/shilapi/xcertplay/media/AudioRenderer;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getCodec()Lcom/shilapi/xcertplay/airplay/AudioCodecKind;

    move-result-object v6

    if-eqz v10, :cond_7

    .line 1647
    invoke-virtual {v10}, Landroid/media/AudioTrack;->getState()I

    move-result v7

    goto :goto_5

    :cond_7
    const/4 v7, -0x1

    :goto_5
    if-eqz v10, :cond_8

    invoke-virtual {v10}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v19

    move/from16 v20, v19

    goto :goto_6

    :cond_8
    const/16 v20, -0x1

    :goto_6
    if-eqz v10, :cond_9

    .line 1648
    invoke-virtual {v10}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v19

    move/from16 v5, v19

    goto :goto_7

    :cond_9
    iget-object v5, v0, Lcom/shilapi/xcertplay/media/AudioRenderer;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getSampleRate()I

    move-result v5

    :goto_7
    if-eqz v10, :cond_a

    .line 1649
    invoke-direct {v0, v10}, Lcom/shilapi/xcertplay/media/AudioRenderer;->trackBufferFrames(Landroid/media/AudioTrack;)Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_a

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v10, v16

    goto :goto_8

    :cond_a
    const/4 v10, -0x1

    :goto_8
    move-wide/from16 v21, v8

    .line 1650
    iget-object v8, v0, Lcom/shilapi/xcertplay/media/AudioRenderer;->packetsReceived:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v8

    move-object/from16 v16, v11

    .line 1651
    iget-object v11, v0, Lcom/shilapi/xcertplay/media/AudioRenderer;->packetsDropped:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v11, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v11

    iget v9, v0, Lcom/shilapi/xcertplay/media/AudioRenderer;->statsLastUnderruns:I

    sub-int v9, v4, v9

    move-object/from16 v23, v13

    iget-object v13, v0, Lcom/shilapi/xcertplay/media/AudioRenderer;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v13}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v13

    move-wide/from16 v24, v2

    .line 1652
    iget-boolean v2, v0, Lcom/shilapi/xcertplay/media/AudioRenderer;->playbackStarted:Z

    iget-object v3, v0, Lcom/shilapi/xcertplay/media/AudioRenderer;->maxArrivalGapMs:Ljava/util/concurrent/atomic/AtomicLong;

    move/from16 v26, v2

    move/from16 v27, v4

    const-wide/16 v1, 0x0

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    const-wide/16 v28, -0x1

    cmp-long v30, v21, v1

    if-nez v30, :cond_b

    move-wide/from16 v21, v28

    goto :goto_9

    :cond_b
    sub-long v1, v24, v21

    const-wide/32 v21, 0xf4240

    .line 1653
    div-long v1, v1, v21

    move-wide/from16 v21, v1

    :goto_9
    iget-wide v1, v0, Lcom/shilapi/xcertplay/media/AudioRenderer;->maxWriteMs:J

    move-wide/from16 v30, v1

    .line 1654
    iget-wide v1, v0, Lcom/shilapi/xcertplay/media/AudioRenderer;->writtenFramesThisWindow:J

    move-wide/from16 v32, v1

    iget-wide v1, v0, Lcom/shilapi/xcertplay/media/AudioRenderer;->totalWrittenFrames:J

    if-eqz v17, :cond_c

    .line 1655
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v34

    move-wide/from16 v36, v34

    goto :goto_a

    :cond_c
    move-wide/from16 v36, v28

    :goto_a
    if-eqz v16, :cond_d

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v38, v16

    goto :goto_b

    :cond_d
    move-wide/from16 v38, v28

    :goto_b
    if-eqz v23, :cond_e

    .line 1656
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    :cond_e
    move-wide/from16 v16, v1

    move-wide/from16 v40, v28

    iget v1, v0, Lcom/shilapi/xcertplay/media/AudioRenderer;->writeErrorsThisWindow:I

    .line 1657
    iget-object v2, v0, Lcom/shilapi/xcertplay/media/AudioRenderer;->lastWriteErrorCode:Ljava/lang/Integer;

    if-nez v2, :cond_f

    const-string v2, "none"

    :cond_f
    move-object/from16 v23, v2

    iget v2, v0, Lcom/shilapi/xcertplay/media/AudioRenderer;->zeroWritesThisWindow:I

    move/from16 v28, v2

    .line 1658
    iget v2, v0, Lcom/shilapi/xcertplay/media/AudioRenderer;->partialWritesThisWindow:I

    move/from16 v29, v2

    .line 1659
    iget v2, v0, Lcom/shilapi/xcertplay/media/AudioRenderer;->inputDropped:I

    move/from16 v34, v2

    iget v2, v0, Lcom/shilapi/xcertplay/media/AudioRenderer;->outputBuffers:I

    move/from16 v35, v2

    iget v2, v0, Lcom/shilapi/xcertplay/media/AudioRenderer;->rebufferCount:I

    new-instance v0, Ljava/lang/StringBuilder;

    move/from16 v42, v2

    const-string v2, "audio stats audioType="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " channel="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " routeType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " codec="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " trackState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " playState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sampleRate="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " trackBufferFrames="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " rx="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dropped="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " underruns=+"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " queue="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " playing="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " maxGapMs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " sinceRxMs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v21

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " maxWriteMs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v30

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " writtenFrames="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v32

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " totalWrittenFrames="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v16

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " playbackHeadFrames="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v36

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " playbackAdvanceFrames="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v38

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " estimatedQueuedFrames="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v40

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " writeErrors="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " lastWriteError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " zeroWrites="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " partialWrites="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " decoderDroppedTotal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " outputBuffersTotal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rebuffers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ended="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1660
    const-string v1, "DiPlay-AudioStats"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p0

    .line 1661
    iget-object v2, v1, Lcom/shilapi/xcertplay/media/AudioRenderer;->report:Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v4, v27

    .line 1662
    iput v4, v1, Lcom/shilapi/xcertplay/media/AudioRenderer;->statsLastUnderruns:I

    const-wide/16 v2, 0x0

    .line 1663
    iput-wide v2, v1, Lcom/shilapi/xcertplay/media/AudioRenderer;->maxWriteMs:J

    .line 1664
    iput-wide v2, v1, Lcom/shilapi/xcertplay/media/AudioRenderer;->writtenFramesThisWindow:J

    const/4 v9, 0x0

    .line 1665
    iput v9, v1, Lcom/shilapi/xcertplay/media/AudioRenderer;->writeErrorsThisWindow:I

    const/4 v12, 0x0

    .line 1666
    iput-object v12, v1, Lcom/shilapi/xcertplay/media/AudioRenderer;->lastWriteErrorCode:Ljava/lang/Integer;

    .line 1667
    iput v9, v1, Lcom/shilapi/xcertplay/media/AudioRenderer;->zeroWritesThisWindow:I

    .line 1668
    iput v9, v1, Lcom/shilapi/xcertplay/media/AudioRenderer;->partialWritesThisWindow:I

    move-wide/from16 v2, v24

    .line 1669
    iput-wide v2, v1, Lcom/shilapi/xcertplay/media/AudioRenderer;->statsWindowStartNs:J

    return-void
.end method

.method static synthetic logStatsIfDue$default(Lcom/shilapi/xcertplay/media/AudioRenderer;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1630
    :cond_0
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/media/AudioRenderer;->logStatsIfDue(Z)V

    return-void
.end method

.method private final maintainPlaybackBuffer()V
    .locals 9

    .line 1607
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->track:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 1608
    :cond_0
    invoke-static {v0}, Lcom/shilapi/xcertplay/E01AudioScene;->tick(Landroid/media/AudioTrack;)V

    iget-object v1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->bufferProgress:Lcom/shilapi/xcertplay/media/AudioBufferProgress;

    sget-object v2, Lcom/shilapi/xcertplay/media/AudioBufferProgress;->Companion:Lcom/shilapi/xcertplay/media/AudioBufferProgress$Companion;

    iget-object v3, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->mappedChannel:Lcom/shilapi/xcertplay/media/AudioChannel;

    invoke-virtual {v2, v3}, Lcom/shilapi/xcertplay/media/AudioBufferProgress$Companion;->rebuffersAfterUnderrun(Lcom/shilapi/xcertplay/media/AudioChannel;)Z

    move-result v2

    iget-boolean v3, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->playbackStarted:Z

    .line 1609
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/media/AudioRenderer;->underranSinceStart(Landroid/media/AudioTrack;)Z

    move-result v4

    iget-object v5, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v5

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v6

    .line 1608
    invoke-virtual/range {v1 .. v6}, Lcom/shilapi/xcertplay/media/AudioBufferProgress;->shouldRebuffer(ZZZZI)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1612
    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    const/4 v1, 0x0

    .line 1613
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->playbackStarted:Z

    .line 1614
    iput v1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->prebufferBytes:I

    .line 1615
    iget v1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->rebufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->rebufferCount:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    .line 1617
    rem-int/lit8 v1, v1, 0x32

    if-nez v1, :cond_2

    .line 1618
    :cond_1
    iget-object v1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->report:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getAudioType()Ljava/lang/String;

    move-result-object v2

    .line 1619
    iget-object v3, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->mappedChannel:Lcom/shilapi/xcertplay/media/AudioChannel;

    iget v4, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->rebufferCount:I

    iget v5, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->startThresholdBytes:I

    int-to-long v5, v5

    const-wide/16 v7, 0x3e8

    mul-long v5, v5, v7

    iget v7, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->bytesPerSecond:I

    int-to-long v7, v7

    div-long/2addr v5, v7

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Audio: refilling after the track ran dry audioType="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " channel="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " count="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " startMs="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1618
    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1623
    :cond_2
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->playbackStarted:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->prebufferBytes:I

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1624
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->lastPcmWriteNs:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x1dcd6500

    cmp-long v5, v1, v3

    if-ltz v5, :cond_3

    .line 1625
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/media/AudioRenderer;->startPlayback(Landroid/media/AudioTrack;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private final mappedSelection()Lcom/shilapi/xcertplay/media/AudioChannelSelection;
    .locals 8

    .line 1303
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->advancedAudioChannelMapping:Z

    if-eqz v0, :cond_0

    .line 1304
    sget-object v0, Lcom/shilapi/xcertplay/media/AudioChannelMappingMode;->AUTOMOTIVE_BUS:Lcom/shilapi/xcertplay/media/AudioChannelMappingMode;

    goto :goto_0

    .line 1306
    :cond_0
    sget-object v0, Lcom/shilapi/xcertplay/media/AudioChannelMappingMode;->MOBILE_COMPATIBLE:Lcom/shilapi/xcertplay/media/AudioChannelMappingMode;

    :goto_0
    move-object v4, v0

    .line 1308
    sget-object v1, Lcom/shilapi/xcertplay/media/AudioChannelMapper;->INSTANCE:Lcom/shilapi/xcertplay/media/AudioChannelMapper;

    .line 1309
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getAudioType()Ljava/lang/String;

    move-result-object v2

    .line 1310
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getPayloadType()I

    move-result v3

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 1308
    invoke-static/range {v1 .. v7}, Lcom/shilapi/xcertplay/media/AudioChannelMapper;->map$default(Lcom/shilapi/xcertplay/media/AudioChannelMapper;Ljava/lang/String;ILcom/shilapi/xcertplay/media/AudioChannelMappingMode;IILjava/lang/Object;)Lcom/shilapi/xcertplay/media/AudioChannelSelection;

    move-result-object v0

    return-object v0
.end method

.method private final opusCodecDelay()[B
    .locals 3

    const/16 v0, 0x8

    .line 1396
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1397
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-wide/32 v1, 0x632ea0

    .line 1398
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1399
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const-string v1, "array(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final opusHead()[B
    .locals 8

    const/16 v0, 0x13

    .line 1382
    new-array v2, v0, [B

    .line 1383
    const-string v0, "OpusHead"

    sget-object v1, Lkotlin/text/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v0, "getBytes(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    const/16 v0, 0x8

    const/4 v1, 0x1

    .line 1384
    aput-byte v1, v2, v0

    .line 1385
    iget-object v3, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getChannels()I

    move-result v3

    int-to-byte v3, v3

    const/16 v4, 0x9

    aput-byte v3, v2, v4

    const/16 v3, 0xa

    const/16 v4, 0x38

    .line 1386
    aput-byte v4, v2, v3

    const/16 v3, 0xb

    .line 1387
    aput-byte v1, v2, v3

    .line 1388
    iget-object v1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getSampleRate()I

    move-result v1

    int-to-byte v1, v1

    const/16 v3, 0xc

    aput-byte v1, v2, v3

    .line 1389
    iget-object v1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getSampleRate()I

    move-result v1

    ushr-int/lit8 v0, v1, 0x8

    int-to-byte v0, v0

    const/16 v1, 0xd

    aput-byte v0, v2, v1

    .line 1390
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getSampleRate()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    const/16 v1, 0xe

    aput-byte v0, v2, v1

    .line 1391
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getSampleRate()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    const/16 v1, 0xf

    aput-byte v0, v2, v1

    return-object v2
.end method

.method private final opusSeekPreRoll()[B
    .locals 3

    const/16 v0, 0x8

    .line 1402
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1403
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-wide/32 v1, 0x4c4b400

    .line 1404
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1405
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const-string v1, "array(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final pcmFormat(II)Landroid/media/AudioFormat;
    .locals 2

    .line 1340
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 1341
    invoke-direct {p0}, Lcom/shilapi/xcertplay/media/AudioRenderer;->getPlaybackRate()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/media/AudioFormat$Builder;I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 1342
    invoke-static {v0, p2}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m$2(Landroid/media/AudioFormat$Builder;I)Landroid/media/AudioFormat$Builder;

    move-result-object p2

    .line 1343
    invoke-static {p2, p1}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioFormat$Builder;I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    .line 1344
    invoke-static {p1}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioFormat$Builder;)Landroid/media/AudioFormat;

    move-result-object p1

    return-object p1
.end method

.method private final declared-synchronized release()V
    .locals 2

    monitor-enter p0

    .line 1695
    :try_start_0
    invoke-direct {p0}, Lcom/shilapi/xcertplay/media/AudioRenderer;->abandonAudioFocus()V

    .line 1696
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->codec:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    .line 1697
    iput-object v1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->codec:Landroid/media/MediaCodec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1700
    :try_start_1
    invoke-static {v0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/media/MediaCodec;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1705
    :catch_0
    :try_start_2
    invoke-static {v0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m$2(Landroid/media/MediaCodec;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1710
    :catch_1
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->track:Landroid/media/AudioTrack;

    .line 1711
    iput-object v1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->track:Landroid/media/AudioTrack;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_1

    .line 1714
    :try_start_4
    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1719
    :catch_2
    :try_start_5
    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1724
    :catch_3
    :try_start_6
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1729
    :catch_4
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0
.end method

.method private final requestAudioFocus()V
    .locals 5

    .line 1326
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->mappedChannel:Lcom/shilapi/xcertplay/media/AudioChannel;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1327
    :cond_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->trackAttributes:Landroid/media/AudioAttributes;

    if-nez v1, :cond_1

    .line 1328
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    goto :goto_0

    .line 1329
    :cond_1
    invoke-static {}, Lcom/shilapi/xcertplay/E01AudioRoute;->supported()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/shilapi/xcertplay/media/AudioChannel;->NAVIGATION:Lcom/shilapi/xcertplay/media/AudioChannel;

    if-ne v0, v2, :cond_2

    .line 1330
    const-string/jumbo v0, "xcertplay-usb"

    const-string v1, "audio focus skipped channel=NAVIGATION; overlays without ducking"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1333
    :cond_2
    iget-object v2, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->track:Landroid/media/AudioTrack;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->audioFocusCoordinator:Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;

    iget v4, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->trackStreamType:I

    invoke-virtual {v3, v2, v0, v1, v4}, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->acquire(Landroid/media/AudioTrack;Lcom/shilapi/xcertplay/media/AudioChannel;Landroid/media/AudioAttributes;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private final routedDeviceType(Landroid/media/AudioTrack;)Ljava/lang/Integer;
    .locals 3

    .line 1598
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    invoke-static {p1}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/media/AudioTrack;)Landroid/media/AudioDeviceInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/media/AudioDeviceInfo;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v2
.end method

.method private final run()V
    .locals 7

    const-string v0, "Audio: software Opus decoder audioType="

    .line 1068
    sget-object v1, Lcom/shilapi/xcertplay/media/AudioThreadPriority;->INSTANCE:Lcom/shilapi/xcertplay/media/AudioThreadPriority;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Lcom/shilapi/xcertplay/media/AudioThreadPriority;->raise$default(Lcom/shilapi/xcertplay/media/AudioThreadPriority;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->threadPriority:Ljava/lang/String;

    .line 1069
    sget-object v1, Lcom/shilapi/xcertplay/media/AudioThreadPriority;->INSTANCE:Lcom/shilapi/xcertplay/media/AudioThreadPriority;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/media/AudioThreadPriority;->current()Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->threadNice:Ljava/lang/Integer;

    .line 1071
    :try_start_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getCodec()Lcom/shilapi/xcertplay/airplay/AudioCodecKind;

    move-result-object v1

    sget-object v4, Lcom/shilapi/xcertplay/media/AudioRenderer$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/airplay/AudioCodecKind;->ordinal()I

    move-result v1

    aget v1, v4, v1

    if-eq v1, v3, :cond_4

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    const/4 v0, 0x3

    if-ne v1, v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 1075
    :cond_1
    sget-object v1, Lcom/shilapi/xcertplay/media/OpusDecoderChoice;->INSTANCE:Lcom/shilapi/xcertplay/media/OpusDecoderChoice;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v5, Lcom/shilapi/xcertplay/compat/CodecAvailability;->INSTANCE:Lcom/shilapi/xcertplay/compat/CodecAvailability;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/compat/CodecAvailability;->getOpusDecoder()Z

    move-result v5

    iget-boolean v6, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->forceSoftwareOpus:Z

    invoke-virtual {v1, v4, v5, v6}, Lcom/shilapi/xcertplay/media/OpusDecoderChoice;->useMediaCodec(IZZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1076
    const-string v1, "audio/opus"

    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/media/AudioRenderer;->configureCodec(Ljava/lang/String;)V

    .line 1078
    :cond_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->codec:Landroid/media/MediaCodec;

    if-nez v1, :cond_5

    sget-object v1, Lcom/shilapi/xcertplay/media/SoftwareOpusDecoder;->Companion:Lcom/shilapi/xcertplay/media/SoftwareOpusDecoder$Companion;

    iget-object v4, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getChannels()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/shilapi/xcertplay/media/SoftwareOpusDecoder$Companion;->open(I)Lcom/shilapi/xcertplay/media/SoftwareOpusDecoder;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1079
    iget-object v4, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->report:Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getAudioType()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (no MediaCodec Opus)"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    move-object v1, v2

    .line 1078
    :goto_0
    iput-object v1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->softwareOpus:Lcom/shilapi/xcertplay/media/SoftwareOpusDecoder;

    goto :goto_1

    .line 1072
    :cond_4
    const-string v0, "audio/mp4a-latm"

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/media/AudioRenderer;->configureCodec(Ljava/lang/String;)V

    .line 1083
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/shilapi/xcertplay/media/AudioRenderer;->createTrack()V

    .line 1084
    invoke-direct {p0}, Lcom/shilapi/xcertplay/media/AudioRenderer;->requestAudioFocus()V

    .line 1085
    :goto_2
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->running:Z

    if-eqz v0, :cond_8

    .line 1086
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xa

    invoke-virtual {v0, v4, v5, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/media/AudioRenderer$AudioPacket;

    if-eqz v0, :cond_6

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/media/AudioRenderer;->handle(Lcom/shilapi/xcertplay/media/AudioRenderer$AudioPacket;)V

    .line 1089
    :cond_6
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->codec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_7

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/media/AudioRenderer;->drainCodec(Landroid/media/MediaCodec;)V

    .line 1090
    :cond_7
    invoke-direct {p0}, Lcom/shilapi/xcertplay/media/AudioRenderer;->maintainPlaybackBuffer()V

    const/4 v0, 0x0

    .line 1091
    invoke-static {p0, v0, v3, v2}, Lcom/shilapi/xcertplay/media/AudioRenderer;->logStatsIfDue$default(Lcom/shilapi/xcertplay/media/AudioRenderer;ZILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_2

    .line 1101
    :cond_8
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/media/AudioRenderer;

    invoke-direct {p0, v3}, Lcom/shilapi/xcertplay/media/AudioRenderer;->logStatsIfDue(Z)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 1096
    :try_start_2
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->running:Z

    if-eqz v1, :cond_9

    .line 1097
    const-string/jumbo v1, "xcertplay-usb"

    const-string v2, "audio renderer worker failed"

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v1, v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1098
    iget-object v1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->report:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getAudioType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Audio: renderer failed audioType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " error="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1101
    :cond_9
    :try_start_3
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-direct {p0, v3}, Lcom/shilapi/xcertplay/media/AudioRenderer;->logStatsIfDue(Z)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_5

    :goto_3
    :try_start_4
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-direct {p0, v3}, Lcom/shilapi/xcertplay/media/AudioRenderer;->logStatsIfDue(Z)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    :goto_4
    invoke-direct {p0}, Lcom/shilapi/xcertplay/media/AudioRenderer;->release()V

    throw v0

    .line 1101
    :catch_1
    :try_start_5
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-direct {p0, v3}, Lcom/shilapi/xcertplay/media/AudioRenderer;->logStatsIfDue(Z)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception v0

    :goto_5
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    :goto_6
    invoke-direct {p0}, Lcom/shilapi/xcertplay/media/AudioRenderer;->release()V

    return-void
.end method

.method private final sampleTimestampUs(I)J
    .locals 4

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    .line 1453
    iget-object p1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getRtpClockRate()I

    move-result p1

    int-to-long v2, p1

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private final startPlayback(Landroid/media/AudioTrack;)V
    .locals 1

    .line 1601
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/media/AudioRenderer;->underrunCount(Landroid/media/AudioTrack;)I

    move-result v0

    iput v0, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->underrunsAtPlaybackStart:I

    .line 1602
    invoke-virtual {p1}, Landroid/media/AudioTrack;->play()V

    const/4 p1, 0x1

    .line 1603
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->playbackStarted:Z

    return-void
.end method

.method private final streamType()I
    .locals 5

    .line 1347
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->advancedAudioChannelMapping:Z

    if-eqz v0, :cond_0

    .line 1348
    sget-object v0, Lcom/shilapi/xcertplay/media/AudioChannelMappingMode;->AUTOMOTIVE_BUS:Lcom/shilapi/xcertplay/media/AudioChannelMappingMode;

    goto :goto_0

    .line 1350
    :cond_0
    sget-object v0, Lcom/shilapi/xcertplay/media/AudioChannelMappingMode;->MOBILE_COMPATIBLE:Lcom/shilapi/xcertplay/media/AudioChannelMappingMode;

    .line 1352
    :goto_0
    sget-object v1, Lcom/shilapi/xcertplay/media/AudioChannelMapper;->INSTANCE:Lcom/shilapi/xcertplay/media/AudioChannelMapper;

    .line 1353
    iget-object v2, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getAudioType()Ljava/lang/String;

    move-result-object v2

    .line 1354
    iget-object v3, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getPayloadType()I

    move-result v3

    .line 1356
    iget v4, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->navigationStreamType:I

    .line 1352
    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/shilapi/xcertplay/media/AudioChannelMapper;->map(Ljava/lang/String;ILcom/shilapi/xcertplay/media/AudioChannelMappingMode;I)Lcom/shilapi/xcertplay/media/AudioChannelSelection;

    move-result-object v0

    .line 1357
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/media/AudioChannelSelection;->getStreamType()I

    move-result v0

    return v0
.end method

.method private static final submit$maxOf__proxy(JJ)J
    .locals 0

    .line 1049
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private final trackBufferFrames(Landroid/media/AudioTrack;)Ljava/lang/Integer;
    .locals 2

    .line 1595
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-static {p1}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/media/AudioTrack;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final underranSinceStart(Landroid/media/AudioTrack;)Z
    .locals 4

    .line 1589
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_1

    invoke-static {p1}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m$1(Landroid/media/AudioTrack;)I

    move-result p1

    iget v0, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->underrunsAtPlaybackStart:I

    if-le p1, v0, :cond_0

    return v2

    :cond_0
    return v3

    .line 1592
    :cond_1
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->playbackStarted:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->bufferProgress:Lcom/shilapi/xcertplay/media/AudioBufferProgress;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/media/AudioBufferProgress;->drained(I)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v3
.end method

.method private final underrunCount(Landroid/media/AudioTrack;)I
    .locals 2

    .line 1585
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-static {p1}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m$1(Landroid/media/AudioTrack;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final usageFor(Lcom/shilapi/xcertplay/media/AudioChannel;)I
    .locals 3

    .line 1368
    sget-object v0, Lcom/shilapi/xcertplay/media/AudioRenderer$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/media/AudioChannel;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/16 p1, 0x10

    return p1

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 1370
    :cond_1
    iget-boolean p1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->phoneAsMedia:Z

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v1

    :cond_3
    const/16 p1, 0xc

    return p1

    :cond_4
    return v0
.end method

.method private final writePcm([BII)V
    .locals 12

    .line 1529
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->track:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1530
    :cond_0
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->firstPcmLogged:Z

    const-string/jumbo v2, "xcertplay-usb"

    const/4 v3, 0x1

    if-nez v1, :cond_1

    if-lez p3, :cond_1

    .line 1531
    iput-boolean v3, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->firstPcmLogged:Z

    .line 1532
    array-length v1, p1

    const/16 v4, 0x10

    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/2addr v4, p2

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1535
    iget-object v4, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getPayloadType()I

    move-result v4

    .line 1536
    invoke-static {p1, p2, v1}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Lcom/shilapi/xcertplay/airplay/BytesKt;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "audio first PCM type="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " bytes="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " head="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1533
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    :cond_1
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->fadeApplied:Z

    if-nez v1, :cond_2

    .line 1540
    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/media/AudioRenderer;->applyFadeIn([BII)V

    .line 1541
    iput-boolean v3, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->fadeApplied:Z

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    if-ge v1, p3, :cond_9

    .line 1544
    iget-boolean v4, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->running:Z

    if-eqz v4, :cond_9

    .line 1545
    iget-boolean v4, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->playbackStarted:Z

    if-eqz v4, :cond_4

    sub-int v4, p3, v1

    goto :goto_1

    :cond_4
    sub-int v4, p3, v1

    const/16 v5, 0x800

    .line 1548
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1550
    :goto_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 1551
    sget-object v7, Lcom/shilapi/xcertplay/compat/AudioCompat;->INSTANCE:Lcom/shilapi/xcertplay/compat/AudioCompat;

    add-int v8, p2, v1

    invoke-static {v0, p1, v8, v4}, Lcom/shilapi/xcertplay/E01AudioScene;->beforeWrite(Landroid/media/AudioTrack;[BII)V

    invoke-virtual {v7, v0, p1, v8, v4}, Lcom/shilapi/xcertplay/compat/AudioCompat;->writeBlocking(Landroid/media/AudioTrack;[BII)I

    move-result v7

    invoke-static {v0, p1, v8, v7}, Lcom/shilapi/xcertplay/E01AudioScene;->afterWrite(Landroid/media/AudioTrack;[BII)V

    .line 1552
    iget-wide v8, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->maxWriteMs:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    sub-long/2addr v10, v5

    const-wide/32 v5, 0xf4240

    div-long/2addr v10, v5

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->maxWriteMs:J

    if-gez v7, :cond_6

    .line 1554
    iget p1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->writeErrorsThisWindow:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->writeErrorsThisWindow:I

    .line 1555
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->lastWriteErrorCode:Ljava/lang/Integer;

    const/4 p1, -0x6

    if-eq v7, p1, :cond_5

    const/4 p1, -0x3

    if-eq v7, p1, :cond_5

    goto :goto_2

    .line 1558
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "AudioTrack write failed "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    if-nez v7, :cond_7

    .line 1563
    iget p1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->zeroWritesThisWindow:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->zeroWritesThisWindow:I

    return-void

    :cond_7
    if-ge v7, v4, :cond_8

    .line 1566
    iget v4, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->partialWritesThisWindow:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->partialWritesThisWindow:I

    :cond_8
    add-int/2addr v1, v7

    .line 1568
    iget v4, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->frameBytes:I

    div-int v4, v7, v4

    .line 1569
    iget-wide v5, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->totalWrittenFrames:J

    int-to-long v8, v4

    add-long/2addr v5, v8

    iput-wide v5, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->totalWrittenFrames:J

    .line 1570
    iget-wide v4, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->writtenFramesThisWindow:J

    add-long/2addr v4, v8

    iput-wide v4, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->writtenFramesThisWindow:J

    .line 1571
    iget-object v4, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->bufferProgress:Lcom/shilapi/xcertplay/media/AudioBufferProgress;

    invoke-virtual {v4, v7}, Lcom/shilapi/xcertplay/media/AudioBufferProgress;->written(I)V

    .line 1572
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->lastPcmWriteNs:J

    .line 1573
    iget-boolean v4, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->playbackStarted:Z

    if-nez v4, :cond_3

    .line 1574
    iget v4, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->prebufferBytes:I

    add-int/2addr v4, v7

    iput v4, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->prebufferBytes:I

    .line 1575
    iget v5, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->startThresholdBytes:I

    if-lt v4, v5, :cond_3

    .line 1576
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/media/AudioRenderer;->startPlayback(Landroid/media/AudioTrack;)V

    .line 1577
    iget-object v4, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getPayloadType()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "audio playback started type="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    :goto_2
    return-void
.end method

.method static synthetic writePcm$default(Lcom/shilapi/xcertplay/media/AudioRenderer;[BIIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 1528
    array-length p3, p1

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/media/AudioRenderer;->writePcm([BII)V

    return-void
.end method


# virtual methods
.method public final audioInputRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->running:Z

    return v0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 1062
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->running:Z

    .line 1063
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public final dequeueAudioInput(J)I
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->codec:Landroid/media/MediaCodec;

    invoke-static {v0, p1, p2}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodec;J)I

    move-result v0

    return v0
.end method

.method public final drainAudioOutput()V
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->codec:Landroid/media/MediaCodec;

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/media/AudioRenderer;->drainCodec(Landroid/media/MediaCodec;)V

    return-void
.end method

.method public final getFormat()Lcom/shilapi/xcertplay/airplay/AudioFormat;
    .locals 1

    .line 973
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    return-object v0
.end method

.method public final isAlive()Z
    .locals 1

    .line 1042
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->started:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final start()V
    .locals 1

    .line 1036
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->started:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1037
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->started:Z

    .line 1038
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final submit([BI)V
    .locals 7

    const-string v0, "rtp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1045
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->started:Z

    if-eqz v0, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->packetsReceived:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1047
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 1048
    iget-object v2, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->lastArrivalNs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    .line 1049
    iget-object v4, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->maxArrivalGapMs:Ljava/util/concurrent/atomic/AtomicLong;

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    new-instance v2, Lcom/shilapi/xcertplay/media/AudioRenderer$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Lcom/shilapi/xcertplay/media/AudioRenderer$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {v4, v0, v1, v2}, Lj$/util/concurrent/atomic/DesugarAtomicLong;->accumulateAndGet(Ljava/util/concurrent/atomic/AtomicLong;JLjava/util/function/LongBinaryOperator;)J

    .line 1051
    :cond_0
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->started:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v1, Lcom/shilapi/xcertplay/media/AudioRenderer$AudioPacket;

    invoke-direct {v1, p1, p2}, Lcom/shilapi/xcertplay/media/AudioRenderer$AudioPacket;-><init>([BI)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1052
    :cond_1
    iget-boolean p1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->started:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->packetsDropped:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1053
    :cond_2
    iget-boolean p1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->started:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->droppedPacketsLogged:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 1054
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->droppedPacketsLogged:Z

    .line 1055
    const-string/jumbo p1, "xcertplay-usb"

    const-string p2, "audio queue full; dropping newest packets to bound latency"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    iget-object p1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->report:Lkotlin/jvm/functions/Function1;

    iget-object p2, p0, Lcom/shilapi/xcertplay/media/AudioRenderer;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getAudioType()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Audio: queue full audioType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method
