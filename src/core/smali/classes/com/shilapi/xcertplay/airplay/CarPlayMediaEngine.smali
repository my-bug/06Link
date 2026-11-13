.class public final Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;
.super Ljava/lang/Object;
.source "CarPlayMediaEngine.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;,
        Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$Companion;,
        Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$PendingIapTunnel;,
        Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$StreamKey;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCarPlayMediaEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CarPlayMediaEngine.kt\ncom/shilapi/xcertplay/airplay/CarPlayMediaEngine\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,477:1\n1#2:478\n1563#3:479\n1634#3,3:480\n774#3:483\n865#3,2:484\n1869#3,2:486\n774#3:488\n865#3,2:489\n774#3:491\n865#3,2:492\n1869#3,2:494\n1869#3,2:496\n774#3:498\n865#3,2:499\n1869#3,2:501\n774#3:503\n865#3,2:504\n1869#3,2:506\n774#3:508\n865#3,2:509\n1869#3,2:511\n1869#3,2:513\n*S KotlinDebug\n*F\n+ 1 CarPlayMediaEngine.kt\ncom/shilapi/xcertplay/airplay/CarPlayMediaEngine\n*L\n302#1:479\n302#1:480,3\n331#1:483\n331#1:484,2\n332#1:486,2\n347#1:488\n347#1:489,2\n349#1:491\n349#1:492,2\n350#1:494,2\n351#1:496,2\n354#1:498\n354#1:499,2\n354#1:501,2\n355#1:503\n355#1:504,2\n355#1:506,2\n356#1:508\n356#1:509,2\n356#1:511,2\n377#1:513,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\t\u0018\u0000 W2\u00020\u0001:\u0004XYZWB%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJE\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0018\u00010\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0014\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000eH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J9\u0010\u0017\u001a\u00020\u0004\"\u0004\u0008\u0000\u0010\u00132\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\n0\u00142\u0006\u0010\u0016\u001a\u00028\u00002\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u001f\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u001b\u0010\u001e\u001a\u00020\u001b2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ/\u0010!\u001a\u0004\u0018\u00010 2\u0006\u0010\u000b\u001a\u00020\n2\u0014\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000eH\u0002\u00a2\u0006\u0004\u0008!\u0010\"J?\u0010(\u001a\u0004\u0018\u00010\'2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010$\u001a\u00020#2\u0014\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000e2\u0006\u0010&\u001a\u00020%H\u0002\u00a2\u0006\u0004\u0008(\u0010)J7\u0010+\u001a\u0004\u0018\u00010 2\u0006\u0010\u000b\u001a\u00020\n2\u0014\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000e2\u0006\u0010*\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008+\u0010,J\u0017\u0010-\u001a\u00020\u00042\u0006\u0010$\u001a\u00020#H\u0002\u00a2\u0006\u0004\u0008-\u0010.J%\u00102\u001a\u00020\u001b2\u0014\u00101\u001a\u0010\u0012\u0004\u0012\u000200\u0012\u0004\u0012\u00020\u0004\u0018\u00010/H\u0016\u00a2\u0006\u0004\u00082\u00103J7\u00104\u001a\u0004\u0018\u00010#2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010$\u001a\u00020#2\u0014\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000eH\u0016\u00a2\u0006\u0004\u00084\u00105JE\u00106\u001a\u0012\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0018\u00010\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010$\u001a\u00020#2\u0014\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000eH\u0016\u00a2\u0006\u0004\u00086\u00107J=\u00108\u001a\u0012\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0018\u00010\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0014\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000eH\u0016\u00a2\u0006\u0004\u00088\u00109J\u0017\u0010:\u001a\u00020\u001b2\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008:\u0010\u001fJ\'\u0010;\u001a\u0012\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0018\u00010\u000e2\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008;\u0010<J\u001f\u0010=\u001a\u00020\u001b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010$\u001a\u00020#H\u0016\u00a2\u0006\u0004\u0008=\u0010>J\u0017\u0010?\u001a\u00020\u001b2\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008?\u0010\u001fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010@R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010AR\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010BR \u0010E\u001a\u000e\u0012\u0004\u0012\u00020C\u0012\u0004\u0012\u00020D0\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008E\u0010FR \u0010H\u001a\u000e\u0012\u0004\u0012\u00020C\u0012\u0004\u0012\u00020G0\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008H\u0010FR \u0010I\u001a\u000e\u0012\u0004\u0012\u00020C\u0012\u0004\u0012\u00020\'0\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008I\u0010FR \u0010K\u001a\u000e\u0012\u0004\u0012\u00020C\u0012\u0004\u0012\u00020J0\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008K\u0010FR \u0010L\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00190\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008L\u0010FR \u0010N\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020M0\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008N\u0010FR \u0010P\u001a\u000e\u0012\u0004\u0012\u00020O\u0012\u0004\u0012\u00020\n0\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008P\u0010FR \u0010Q\u001a\u000e\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\n0\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008Q\u0010FR\u0016\u0010S\u001a\u00020R8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008S\u0010TR$\u0010U\u001a\u0010\u0012\u0004\u0012\u000200\u0012\u0004\u0012\u00020\u0004\u0018\u00010/8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008U\u0010V\u00a8\u0006["
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;",
        "Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;",
        "Lcom/shilapi/xcertplay/airplay/MediaSink;",
        "sink",
        "",
        "microphoneEnabled",
        "Ljava/io/File;",
        "audioCaptureDirectory",
        "<init>",
        "(Lcom/shilapi/xcertplay/airplay/MediaSink;ZLjava/io/File;)V",
        "Lcom/shilapi/xcertplay/airplay/AirPlaySession;",
        "session",
        "",
        "uuid",
        "",
        "",
        "stream",
        "videoDataStream",
        "(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;",
        "K",
        "j$/util/concurrent/ConcurrentHashMap",
        "owners",
        "key",
        "releaseOwner",
        "(Lj$/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)Z",
        "Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$PendingIapTunnel;",
        "next",
        "",
        "replacePendingIapTunnel",
        "(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$PendingIapTunnel;)V",
        "clearPendingIapTunnel",
        "(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V",
        "",
        "outputKey",
        "(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/util/Map;)[B",
        "",
        "type",
        "Lcom/shilapi/xcertplay/airplay/AudioFormat;",
        "format",
        "Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;",
        "microphoneConfig",
        "(Lcom/shilapi/xcertplay/airplay/AirPlaySession;ILjava/util/Map;Lcom/shilapi/xcertplay/airplay/AudioFormat;)Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;",
        "label",
        "dataStreamKey",
        "(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/util/Map;Ljava/lang/String;)[B",
        "isScreenStreamType",
        "(I)Z",
        "Lkotlin/Function1;",
        "Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;",
        "handler",
        "setIapTunnelHandler",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onScreen",
        "(Lcom/shilapi/xcertplay/airplay/AirPlaySession;ILjava/util/Map;)Ljava/lang/Integer;",
        "onAudio",
        "(Lcom/shilapi/xcertplay/airplay/AirPlaySession;ILjava/util/Map;)Ljava/util/Map;",
        "onDataStream",
        "(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/util/Map;)Ljava/util/Map;",
        "onSetupResponseSent",
        "onFeedback",
        "(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)Ljava/util/Map;",
        "onTeardown",
        "(Lcom/shilapi/xcertplay/airplay/AirPlaySession;I)V",
        "onSessionClosed",
        "Lcom/shilapi/xcertplay/airplay/MediaSink;",
        "Z",
        "Ljava/io/File;",
        "Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$StreamKey;",
        "Ljava/io/Closeable;",
        "streams",
        "Lj$/util/concurrent/ConcurrentHashMap;",
        "Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;",
        "audioMeta",
        "pendingMicrophone",
        "Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;",
        "audioCaptures",
        "pendingIapTunnels",
        "Lcom/shilapi/xcertplay/airplay/VideoSettingsChannel;",
        "videoSettingsChannels",
        "Lcom/shilapi/xcertplay/airplay/AudioStreamId;",
        "audioOwners",
        "screenOwners",
        "",
        "nextRemoteControlStreamId",
        "J",
        "iapTunnelHandler",
        "Lkotlin/jvm/functions/Function1;",
        "Companion",
        "StreamKey",
        "AudioMeta",
        "PendingIapTunnel",
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
.field private static final Companion:Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$Companion;

.field public static final DATASTREAM_INPUT_KEY:Ljava/lang/String; = "DataStream-Input-Encryption-Key"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATASTREAM_OUTPUT_KEY:Ljava/lang/String; = "DataStream-Output-Encryption-Key"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FIRST_REMOTE_CONTROL_STREAM_ID:J = 0x3L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final IAP_DATASTREAM_UUID:Ljava/lang/String; = "E9459FD0-BCAD-4C45-820F-1E72447EF2F2"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OPUS_24K:J = 0x20000000L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OPUS_48K:J = 0x40000000L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STREAM_TYPE_ALT_SCREEN:I = 0x6f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STREAM_TYPE_DATA:I = 0x82
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STREAM_TYPE_MAIN_AUDIO:I = 0x64
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STREAM_TYPE_MAIN_SCREEN:I = 0x6e
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "xcertplay-usb"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VIDEO_SETTINGS_STREAM_ID:J = 0x2L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final audioCaptureDirectory:Ljava/io/File;

.field private final audioCaptures:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$StreamKey;",
            "Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;",
            ">;"
        }
    .end annotation
.end field

.field private final audioMeta:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$StreamKey;",
            "Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;",
            ">;"
        }
    .end annotation
.end field

.field private final audioOwners:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Lcom/shilapi/xcertplay/airplay/AudioStreamId;",
            "Lcom/shilapi/xcertplay/airplay/AirPlaySession;",
            ">;"
        }
    .end annotation
.end field

.field private volatile iapTunnelHandler:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final microphoneEnabled:Z

.field private volatile nextRemoteControlStreamId:J

.field private final pendingIapTunnels:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Lcom/shilapi/xcertplay/airplay/AirPlaySession;",
            "Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$PendingIapTunnel;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingMicrophone:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$StreamKey;",
            "Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final screenOwners:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/shilapi/xcertplay/airplay/AirPlaySession;",
            ">;"
        }
    .end annotation
.end field

.field private final sink:Lcom/shilapi/xcertplay/airplay/MediaSink;

.field private final streams:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$StreamKey;",
            "Ljava/io/Closeable;",
            ">;"
        }
    .end annotation
.end field

.field private final videoSettingsChannels:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Lcom/shilapi/xcertplay/airplay/AirPlaySession;",
            "Lcom/shilapi/xcertplay/airplay/VideoSettingsChannel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$2qTAFBNY1DdzmfzaNnw9Saqsma0(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->videoDataStream$lambda$8(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BENXXNrOFbY4OBxTsFjBaeQyw64(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->onScreen$lambda$1(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$CrqxDTYiJKLZjmZeXk4GVRQe68c(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->onSessionClosed$lambda$24(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$mbjzS2y4VSJwu_gKJAfVGmxhXUU(Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$StreamKey;Lcom/shilapi/xcertplay/airplay/ScreenStream;ILcom/shilapi/xcertplay/airplay/AirPlaySession;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->onScreen$lambda$2(Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$StreamKey;Lcom/shilapi/xcertplay/airplay/ScreenStream;ILcom/shilapi/xcertplay/airplay/AirPlaySession;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->Companion:Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/shilapi/xcertplay/airplay/MediaSink;ZLjava/io/File;)V
    .locals 1

    const-string/jumbo v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->sink:Lcom/shilapi/xcertplay/airplay/MediaSink;

    .line 39
    iput-boolean p2, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->microphoneEnabled:Z

    .line 40
    iput-object p3, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->audioCaptureDirectory:Ljava/io/File;

    .line 62
    new-instance p1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->streams:Lj$/util/concurrent/ConcurrentHashMap;

    .line 63
    new-instance p1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->audioMeta:Lj$/util/concurrent/ConcurrentHashMap;

    .line 64
    new-instance p1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->pendingMicrophone:Lj$/util/concurrent/ConcurrentHashMap;

    .line 65
    new-instance p1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->audioCaptures:Lj$/util/concurrent/ConcurrentHashMap;

    .line 66
    new-instance p1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->pendingIapTunnels:Lj$/util/concurrent/ConcurrentHashMap;

    .line 67
    new-instance p1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->videoSettingsChannels:Lj$/util/concurrent/ConcurrentHashMap;

    .line 74
    new-instance p1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->audioOwners:Lj$/util/concurrent/ConcurrentHashMap;

    .line 75
    new-instance p1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->screenOwners:Lj$/util/concurrent/ConcurrentHashMap;

    const-wide/16 p1, 0x3

    .line 76
    iput-wide p1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->nextRemoteControlStreamId:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/airplay/MediaSink;ZLjava/io/File;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 37
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;-><init>(Lcom/shilapi/xcertplay/airplay/MediaSink;ZLjava/io/File;)V

    return-void
.end method

.method public static final synthetic access$getScreenOwners$p(Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;)Lj$/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->screenOwners:Lj$/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static final synthetic access$getSink$p(Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;)Lcom/shilapi/xcertplay/airplay/MediaSink;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->sink:Lcom/shilapi/xcertplay/airplay/MediaSink;

    return-object p0
.end method

.method public static final synthetic access$getStreams$p(Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;)Lj$/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->streams:Lj$/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static final synthetic access$releaseOwner(Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;Lj$/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)Z
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->releaseOwner(Lj$/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)Z

    move-result p0

    return p0
.end method

.method private final clearPendingIapTunnel(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 1

    if-nez p1, :cond_0

    .line 375
    iget-object p1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->pendingIapTunnels:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    const-string v0, "<get-values>(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 376
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->pendingIapTunnels:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    .line 377
    check-cast p1, Ljava/lang/Iterable;

    .line 513
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$PendingIapTunnel;

    .line 377
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$PendingIapTunnel;->getBridge()Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->close()V

    goto :goto_0

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->pendingIapTunnels:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$PendingIapTunnel;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$PendingIapTunnel;->getBridge()Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->close()V

    :cond_1
    return-void
.end method

.method static synthetic clearPendingIapTunnel$default(Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;Lcom/shilapi/xcertplay/airplay/AirPlaySession;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 373
    :cond_0
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->clearPendingIapTunnel(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    return-void
.end method

.method private final dataStreamKey(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/util/Map;Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/airplay/AirPlaySession;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    .line 434
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->getSharedSecret()[B

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 435
    :cond_0
    const-string/jumbo v1, "streamConnectionID"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngineKt;->unsignedPlistDecimal(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    return-object v0

    .line 436
    :cond_1
    sget-object v0, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DataStream-Salt"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v1, Lkotlin/text/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    const-string v1, "getBytes(...)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 439
    sget-object v2, Lkotlin/text/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x20

    .line 436
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->hkdfSha512([B[B[BI)[B

    move-result-object p1

    return-object p1
.end method

.method private final isScreenStreamType(I)Z
    .locals 1

    const/16 v0, 0x6e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6f

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private final microphoneConfig(Lcom/shilapi/xcertplay/airplay/AirPlaySession;ILjava/util/Map;Lcom/shilapi/xcertplay/airplay/AudioFormat;)Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/airplay/AirPlaySession;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/shilapi/xcertplay/airplay/AudioFormat;",
            ")",
            "Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 393
    iget-boolean v2, v0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->microphoneEnabled:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_11

    const/16 v2, 0x64

    move/from16 v8, p2

    if-eq v8, v2, :cond_0

    goto/16 :goto_9

    .line 394
    :cond_0
    invoke-virtual/range {p4 .. p4}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getAudioType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "telephony"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual/range {p4 .. p4}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getAudioType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "speechrecognition"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v3

    .line 395
    :cond_1
    const-string v2, "dataPort"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Ljava/lang/Number;

    if-eqz v4, :cond_2

    check-cast v2, Ljava/lang/Number;

    goto :goto_0

    :cond_2
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v11

    const/4 v2, 0x1

    if-gt v2, v11, :cond_f

    const/high16 v2, 0x10000

    if-ge v11, v2, :cond_f

    .line 397
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->getRemoteAddress$shared_release()Ljava/net/InetAddress;

    move-result-object v10

    if-nez v10, :cond_3

    return-object v3

    .line 398
    :cond_3
    const-string v2, "DataStream-Input-Encryption-Key"

    move-object/from16 v4, p1

    invoke-direct {v0, v4, v1, v2}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->dataStreamKey(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v12

    if-nez v12, :cond_4

    return-object v3

    .line 399
    :cond_4
    const-string v2, "audioFormat"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v5, v2, Ljava/lang/Number;

    if-eqz v5, :cond_5

    check-cast v2, Ljava/lang/Number;

    goto :goto_1

    :cond_5
    move-object v2, v3

    :goto_1
    const-wide/16 v5, 0x0

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v13

    goto :goto_2

    :cond_6
    move-wide v13, v5

    .line 400
    :goto_2
    const-string v2, "framesPerPacket"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_7

    check-cast v1, Ljava/lang/Number;

    goto :goto_3

    :cond_7
    move-object v1, v3

    :goto_3
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    .line 401
    :goto_4
    invoke-virtual/range {p4 .. p4}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getCodec()Lcom/shilapi/xcertplay/airplay/AudioCodecKind;

    move-result-object v2

    sget-object v7, Lcom/shilapi/xcertplay/airplay/AudioCodecKind;->OPUS:Lcom/shilapi/xcertplay/airplay/AudioCodecKind;

    const/16 v9, 0x14

    if-ne v2, v7, :cond_9

    :goto_5
    move-object v15, v3

    goto :goto_6

    :cond_9
    if-gtz v1, :cond_a

    invoke-virtual/range {p4 .. p4}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getSampleRate()I

    move-result v2

    invoke-virtual/range {p4 .. p4}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getChannels()I

    move-result v7

    invoke-static {v2, v7}, Lcom/shilapi/xcertplay/airplay/AudioPacketSize;->pcmFrameMillis(II)I

    move-result v9

    goto :goto_5

    :cond_a
    int-to-double v1, v1

    const-wide v15, 0x408f400000000000L    # 1000.0

    .line 404
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v15

    invoke-virtual/range {p4 .. p4}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getSampleRate()I

    move-result v7

    move-object v15, v3

    int-to-double v3, v7

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v2, v1

    const/4 v1, 0x5

    const/16 v3, 0x3c

    invoke-static {v2, v1, v3}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v9

    :goto_6
    const-wide/32 v1, 0x40000000

    and-long/2addr v1, v13

    cmp-long v3, v1, v5

    if-eqz v3, :cond_b

    const v1, 0x17700

    goto :goto_7

    :cond_b
    const-wide/32 v1, 0x20000000

    and-long/2addr v1, v13

    cmp-long v3, v1, v5

    if-eqz v3, :cond_c

    const v1, 0xfa00

    goto :goto_7

    :cond_c
    const v1, 0xbb80

    .line 414
    :goto_7
    invoke-virtual/range {p4 .. p4}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getAudioType()Ljava/lang/String;

    move-result-object v5

    .line 415
    invoke-virtual/range {p4 .. p4}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getSampleRate()I

    move-result v6

    .line 416
    invoke-virtual/range {p4 .. p4}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getChannels()I

    move-result v7

    .line 422
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v16

    .line 423
    invoke-virtual/range {p4 .. p4}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getCodec()Lcom/shilapi/xcertplay/airplay/AudioCodecKind;

    move-result-object v2

    .line 424
    invoke-virtual/range {p4 .. p4}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getCodec()Lcom/shilapi/xcertplay/airplay/AudioCodecKind;

    move-result-object v3

    sget-object v4, Lcom/shilapi/xcertplay/airplay/AudioCodecKind;->OPUS:Lcom/shilapi/xcertplay/airplay/AudioCodecKind;

    if-ne v3, v4, :cond_d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_8

    :cond_d
    move-object v1, v15

    .line 425
    :goto_8
    invoke-virtual/range {p4 .. p4}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getCodec()Lcom/shilapi/xcertplay/airplay/AudioCodecKind;

    move-result-object v3

    sget-object v4, Lcom/shilapi/xcertplay/airplay/AudioCodecKind;->OPUS:Lcom/shilapi/xcertplay/airplay/AudioCodecKind;

    if-ne v3, v4, :cond_e

    sget-object v3, Lcom/shilapi/xcertplay/airplay/MicrophonePacketizer;->INSTANCE:Lcom/shilapi/xcertplay/airplay/MicrophonePacketizer;

    invoke-virtual {v3, v13, v14}, Lcom/shilapi/xcertplay/airplay/MicrophonePacketizer;->opusBandwidthRate(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v15, v3

    .line 413
    :cond_e
    new-instance v4, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;

    move-object v14, v1

    move-object v13, v2

    invoke-direct/range {v4 .. v16}, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;-><init>(Ljava/lang/String;IIIILjava/net/InetAddress;I[BLcom/shilapi/xcertplay/airplay/AudioCodecKind;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/net/InetAddress;)V

    return-object v4

    :cond_f
    move-object v15, v3

    return-object v15

    :cond_10
    move-object v15, v3

    return-object v15

    :cond_11
    :goto_9
    move-object v15, v3

    return-object v15
.end method

.method private static final onScreen$lambda$1(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    const-string v0, "first frame rendered"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->videoFrameRendered$shared_release()V

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Video: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->logDebug$shared_release(Ljava/lang/String;)V

    .line 93
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onScreen$lambda$2(Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$StreamKey;Lcom/shilapi/xcertplay/airplay/ScreenStream;ILcom/shilapi/xcertplay/airplay/AirPlaySession;)Lkotlin/Unit;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->streams:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p2, :cond_1

    const/16 p0, 0x6f

    .line 97
    const-string p1, "forceKeyFrame"

    const-string/jumbo p2, "type"

    if-ne p3, p0, :cond_0

    const/4 p0, 0x2

    .line 98
    new-array p0, p0, [Lkotlin/Pair;

    const/4 p3, 0x0

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, p0, p3

    const-string/jumbo p1, "uuid"

    const-string p2, "b7e6c5a0-2222-4000-8000-000000000002"

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "params"

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, p0, p2

    invoke-static {p0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    .line 100
    :cond_0
    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    .line 102
    :goto_0
    invoke-virtual {p4, p0}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->sendCommand(Ljava/util/Map;)Z

    move-result p0

    .line 103
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Video recovery: requested keyframe sent="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->logDebug$shared_release(Ljava/lang/String;)V

    .line 105
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onSessionClosed$lambda$24(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/util/Map$Entry;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final outputKey(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/util/Map;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/airplay/AirPlaySession;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .line 384
    const-string v0, "DataStream-Output-Encryption-Key"

    invoke-direct {p0, p1, p2, v0}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->dataStreamKey(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method private final releaseOwner(Lj$/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "TK;",
            "Lcom/shilapi/xcertplay/airplay/AirPlaySession;",
            ">;TK;",
            "Lcom/shilapi/xcertplay/airplay/AirPlaySession;",
            ")Z"
        }
    .end annotation

    .line 362
    invoke-virtual {p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eq v0, p3, :cond_1

    const/4 p1, 0x0

    return p1

    .line 364
    :cond_1
    invoke-virtual {p1, p2, v0}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    return v1
.end method

.method private final replacePendingIapTunnel(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$PendingIapTunnel;)V
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->pendingIapTunnels:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$PendingIapTunnel;

    if-eqz p1, :cond_0

    .line 370
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$PendingIapTunnel;->getBridge()Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->close()V

    :cond_0
    return-void
.end method

.method private final videoDataStream(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/airplay/AirPlaySession;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 264
    sget-object v0, Lcom/shilapi/xcertplay/airplay/VideoInCar;->INSTANCE:Lcom/shilapi/xcertplay/airplay/VideoInCar;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/VideoInCar;->getREMOTE_CONTROL_UUIDS()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "streamID"

    const/16 v2, 0x82

    .line 265
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 264
    const-string/jumbo v3, "type"

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_1

    const-string v0, "controlType"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v8, v0, Ljava/lang/Number;

    if-eqz v8, :cond_0

    check-cast v0, Ljava/lang/Number;

    goto :goto_0

    :cond_0
    move-object v0, v7

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-ne v0, v6, :cond_1

    .line 265
    new-array p1, v5, [Lkotlin/Pair;

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    aput-object p2, p1, v4

    iget-wide p2, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->nextRemoteControlStreamId:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, p2

    iput-wide v2, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->nextRemoteControlStreamId:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {v1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    aput-object p2, p1, v6

    invoke-static {p1}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1

    .line 267
    :cond_1
    const-string v0, "BB493F61-A6B8-4769-8D74-80C23A9F71C4"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    return-object v7

    .line 268
    :cond_2
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->getSharedSecret()[B

    move-result-object p2

    if-nez p2, :cond_3

    return-object v7

    .line 269
    :cond_3
    const-string v0, "seed"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngineKt;->unsignedPlistDecimal(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    return-object v7

    .line 273
    :cond_4
    new-instance v7, Lcom/shilapi/xcertplay/airplay/VideoSettingsChannel;

    const-string v8, "DataStream-Output-Encryption-Key"

    invoke-static {p2, v0, v8}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->videoDataStream$key([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v8

    const-string v9, "DataStream-Input-Encryption-Key"

    invoke-static {p2, v0, v9}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->videoDataStream$key([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object p2

    new-instance v0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$$ExternalSyntheticLambda3;-><init>(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    invoke-direct {v7, v8, p2, v0}, Lcom/shilapi/xcertplay/airplay/VideoSettingsChannel;-><init>([B[BLkotlin/jvm/functions/Function1;)V

    .line 274
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object p2

    invoke-virtual {v7, p2}, Lcom/shilapi/xcertplay/airplay/VideoSettingsChannel;->listen(Ljava/net/InetAddress;)I

    move-result p2

    .line 275
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->videoSettingsChannels:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, v7}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shilapi/xcertplay/airplay/VideoSettingsChannel;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/VideoSettingsChannel;->close()V

    :cond_5
    const/4 p1, 0x3

    .line 276
    new-array p1, p1, [Lkotlin/Pair;

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, p1, v4

    const-wide/16 v2, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, p1, v6

    const-string v0, "dataPort"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    aput-object p2, p1, v5

    invoke-static {p1}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object p1

    .line 278
    const-string/jumbo p2, "streamConnectionID"

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 279
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    invoke-static {p3}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngineKt;->unsignedPlistInteger(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    :cond_6
    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method private static final videoDataStream$key([BLjava/lang/String;Ljava/lang/String;)[B
    .locals 3

    .line 270
    sget-object v0, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DataStream-Salt"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lkotlin/text/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v1, "getBytes(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lkotlin/text/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x20

    .line 270
    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->hkdfSha512([B[B[BI)[B

    move-result-object p0

    return-object p0
.end method

.method private static final videoDataStream$lambda$8(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->logDebug$shared_release(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public onAudio(Lcom/shilapi/xcertplay/airplay/AirPlaySession;ILjava/util/Map;)Ljava/util/Map;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/airplay/AirPlaySession;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    move-object/from16 v2, p0

    move-object/from16 v0, p1

    move/from16 v4, p2

    move-object/from16 v1, p3

    const-string v3, "session"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "stream"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    const-string v3, "audioType"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "toLowerCase(...)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v3, :cond_1

    :cond_0
    const-string v3, "default"

    .line 133
    :cond_1
    new-instance v12, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$StreamKey;

    invoke-direct {v12, v0, v4, v3}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$StreamKey;-><init>(Lcom/shilapi/xcertplay/airplay/AirPlaySession;ILjava/lang/String;)V

    .line 134
    new-instance v13, Lcom/shilapi/xcertplay/airplay/AudioStreamId;

    invoke-direct {v13, v4, v3}, Lcom/shilapi/xcertplay/airplay/AudioStreamId;-><init>(ILjava/lang/String;)V

    .line 135
    iget-object v5, v2, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->streams:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v12}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/Closeable;

    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/io/Closeable;->close()V

    .line 136
    :cond_2
    iget-object v5, v2, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->audioMeta:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v12}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v5, v2, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->audioCaptures:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v12}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->close()V

    .line 138
    :cond_3
    iget-object v5, v2, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->pendingMicrophone:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v12}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, v2, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->sink:Lcom/shilapi/xcertplay/airplay/MediaSink;

    invoke-interface {v5, v13}, Lcom/shilapi/xcertplay/airplay/MediaSink;->onMicrophoneStopped(Lcom/shilapi/xcertplay/airplay/AudioStreamId;)V

    .line 141
    :cond_4
    iget-object v5, v2, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->sink:Lcom/shilapi/xcertplay/airplay/MediaSink;

    invoke-interface {v5, v13}, Lcom/shilapi/xcertplay/airplay/MediaSink;->onAudioStopped(Lcom/shilapi/xcertplay/airplay/AudioStreamId;)V

    .line 142
    iget-object v5, v2, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->audioOwners:Lj$/util/concurrent/ConcurrentHashMap;

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-direct {v2, v0, v1}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->outputKey(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/util/Map;)[B

    move-result-object v14

    const/4 v15, 0x0

    if-nez v14, :cond_5

    return-object v15

    .line 145
    :cond_5
    sget-object v5, Lcom/shilapi/xcertplay/airplay/AudioStreamCodec;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AudioStreamCodec;

    .line 146
    const-string v6, "audioFormat"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Ljava/lang/Number;

    if-eqz v7, :cond_6

    check-cast v6, Ljava/lang/Number;

    goto :goto_0

    :cond_6
    move-object v6, v15

    :goto_0
    const-wide/16 v16, 0x0

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    goto :goto_1

    :cond_7
    move-wide/from16 v6, v16

    .line 145
    :goto_1
    invoke-virtual {v5, v6, v7, v4, v3}, Lcom/shilapi/xcertplay/airplay/AudioStreamCodec;->fromFormatBits(JILjava/lang/String;)Lcom/shilapi/xcertplay/airplay/AudioFormat;

    move-result-object v5

    .line 152
    invoke-virtual {v5}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getCodec()Lcom/shilapi/xcertplay/airplay/AudioCodecKind;

    move-result-object v6

    .line 153
    invoke-virtual {v5}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getSampleRate()I

    move-result v7

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getChannels()I

    move-result v8

    .line 154
    const-string v9, "dataPort"

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    instance-of v11, v10, Ljava/lang/Number;

    if-eqz v11, :cond_8

    check-cast v10, Ljava/lang/Number;

    goto :goto_2

    :cond_8
    move-object v10, v15

    :goto_2
    const/16 v18, 0x0

    if-eqz v10, :cond_9

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    goto :goto_3

    :cond_9
    const/4 v10, 0x0

    :goto_3
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v15, "airplay audio format type="

    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " audioType="

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " codec="

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " rate="

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " channels="

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " micPort="

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 150
    const-string/jumbo v6, "xcertplay-usb"

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-string/jumbo v15, "streamConnectionID"

    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 157
    const-string v3, "audioLatencyMs"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v7, v3, Ljava/lang/Number;

    if-eqz v7, :cond_a

    check-cast v3, Ljava/lang/Number;

    goto :goto_4

    :cond_a
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    move v7, v3

    goto :goto_5

    :cond_b
    const/4 v7, 0x0

    .line 158
    :goto_5
    new-instance v3, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;

    const/16 v10, 0x30

    const/4 v11, 0x0

    const/4 v8, 0x0

    move-object/from16 v19, v9

    const/4 v9, 0x0

    move-object/from16 v20, v13

    move-object/from16 v13, v19

    invoke-direct/range {v3 .. v11}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;-><init>(ILcom/shilapi/xcertplay/airplay/AudioFormat;Ljava/lang/Object;ILjava/lang/Integer;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v19, v3

    move-object v3, v5

    move-object v11, v6

    .line 159
    invoke-direct {v2, v0, v4, v1, v3}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->microphoneConfig(Lcom/shilapi/xcertplay/airplay/AirPlaySession;ILjava/util/Map;Lcom/shilapi/xcertplay/airplay/AudioFormat;)Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 160
    iget-object v5, v2, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->pendingMicrophone:Lj$/util/concurrent/ConcurrentHashMap;

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_c
    iget-object v4, v2, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->audioCaptureDirectory:Ljava/io/File;

    if-eqz v4, :cond_d

    move-object v5, v3

    new-instance v3, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;

    const/16 v9, 0xc

    const/4 v10, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object/from16 v21, v5

    move/from16 v5, p2

    invoke-direct/range {v3 .. v10}, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;-><init>(Ljava/io/File;IIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move v7, v5

    move-object v6, v3

    goto :goto_6

    :cond_d
    move/from16 v7, p2

    move-object/from16 v21, v3

    const/4 v6, 0x0

    :goto_6
    if-eqz v6, :cond_e

    .line 163
    iget-object v3, v2, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->audioCaptures:Lj$/util/concurrent/ConcurrentHashMap;

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_e
    new-instance v8, Lcom/shilapi/xcertplay/airplay/AudioStream;

    new-instance v3, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onAudio$audio$1;

    invoke-direct {v3, v0}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onAudio$audio$1;-><init>(Ljava/lang/Object;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-direct {v8, v14, v7, v3, v0}, Lcom/shilapi/xcertplay/airplay/AudioStream;-><init>([BILkotlin/jvm/functions/Function1;Ljava/net/InetAddress;)V

    .line 166
    new-instance v0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onAudio$1;

    move-object v5, v1

    move-object/from16 v1, v19

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    invoke-direct/range {v0 .. v6}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onAudio$1;-><init>(Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;Lcom/shilapi/xcertplay/airplay/AudioStreamId;Lcom/shilapi/xcertplay/airplay/AudioFormat;Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;)V

    check-cast v0, Lcom/shilapi/xcertplay/airplay/AudioStream$Listener;

    .line 165
    invoke-virtual {v8, v0}, Lcom/shilapi/xcertplay/airplay/AudioStream;->listen(Lcom/shilapi/xcertplay/airplay/AudioStream$Listener;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 187
    iget-object v4, v2, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->streams:Lj$/util/concurrent/ConcurrentHashMap;

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v4, v2, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->audioMeta:Lj$/util/concurrent/ConcurrentHashMap;

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    .line 190
    new-array v1, v1, [Lkotlin/Pair;

    const-string/jumbo v4, "type"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v1, v18

    .line 191
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v13, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 192
    const-string v3, "controlPort"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v1, v3

    if-nez v11, :cond_f

    .line 193
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_7

    :cond_f
    move-object v6, v11

    :goto_7
    invoke-static {v6}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngineKt;->unsignedPlistInteger(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v15, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v3, 0x3

    aput-object v0, v1, v3

    .line 189
    invoke-static {v1}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public onDataStream(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/util/Map;)Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/airplay/AirPlaySession;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    move-object v0, p2

    const-string v7, "AirPlay iAP tunnel listening address="

    const-string v1, "session"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "stream"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    const-string v1, "clientTypeUUID"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v4

    :goto_0
    if-eqz v1, :cond_f

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "toUpperCase(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v1, :cond_1

    goto/16 :goto_5

    .line 199
    :cond_1
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->getVideoInCar()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p1, v1, p2}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->videoDataStream(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    .line 200
    :cond_2
    const-string v3, "E9459FD0-BCAD-4C45-820F-1E72447EF2F2"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return-object v4

    .line 201
    :cond_3
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->getSharedSecret()[B

    move-result-object v3

    if-nez v3, :cond_4

    return-object v4

    .line 202
    :cond_4
    const-string v5, "seed"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngineKt;->unsignedPlistDecimal(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    return-object v4

    .line 205
    :cond_5
    const-string/jumbo v8, "streamConnectionID"

    invoke-interface {p2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngineKt;->unsignedPlistDecimal(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_6

    const-string v6, "none"

    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "AirPlay iAP SETUP uuid="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " seed="

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " streamConnectionID="

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-virtual {p1, v1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->logDebug$shared_release(Ljava/lang/String;)V

    .line 207
    sget-object v1, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;

    .line 209
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "DataStream-Salt"

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lkotlin/text/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    const-string v6, "getBytes(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    const-string v9, "DataStream-Output-Encryption-Key"

    sget-object v10, Lkotlin/text/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x20

    .line 207
    invoke-virtual {v1, v3, v5, v9, v6}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->hkdfSha512([B[B[BI)[B

    move-result-object v1

    .line 217
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v3

    if-nez v3, :cond_8

    .line 218
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->getRemoteAddress$shared_release()Ljava/net/InetAddress;

    move-result-object v3

    instance-of v5, v3, Ljava/net/Inet6Address;

    if-eqz v5, :cond_7

    check-cast v3, Ljava/net/Inet6Address;

    goto :goto_1

    :cond_7
    move-object v3, v4

    :goto_1
    if-eqz v3, :cond_9

    sget-object v3, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->INSTANCE:Lcom/shilapi/xcertplay/compat/AnyLocalBind;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->inet6Any()Ljava/net/InetAddress;

    move-result-object v4

    goto :goto_2

    :cond_8
    move-object v4, v3

    .line 215
    :cond_9
    :goto_2
    new-instance v3, Lcom/shilapi/xcertplay/airplay/IapTunnel;

    invoke-direct {v3, v1, v4}, Lcom/shilapi/xcertplay/airplay/IapTunnel;-><init>([BLjava/net/InetAddress;)V

    .line 220
    new-instance v1, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;-><init>(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Lcom/shilapi/xcertplay/airplay/IapTunnel;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v10, v1

    move-object v9, v3

    .line 221
    iget-object v11, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->iapTunnelHandler:Lkotlin/jvm/functions/Function1;

    if-eqz v11, :cond_c

    .line 224
    :try_start_0
    invoke-virtual {v10}, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->listen()I

    move-result v1

    .line 227
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b

    :cond_a
    const-string/jumbo v3, "wildcard"

    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " port="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 225
    invoke-virtual {p1, v3}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->logDebug$shared_release(Ljava/lang/String;)V

    .line 229
    new-instance v3, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$PendingIapTunnel;

    invoke-direct {v3, v10, v11}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$PendingIapTunnel;-><init>(Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;Lkotlin/jvm/functions/Function1;)V

    invoke-direct {p0, p1, v3}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->replacePendingIapTunnel(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$PendingIapTunnel;)V

    goto :goto_3

    .line 233
    :cond_c
    new-instance v1, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onDataStream$port$1;

    invoke-direct {v1, p0, p1}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onDataStream$port$1;-><init>(Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    check-cast v1, Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;

    .line 232
    invoke-virtual {v9, v1}, Lcom/shilapi/xcertplay/airplay/IapTunnel;->listen(Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    move v7, v1

    .line 250
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->streams:Lj$/util/concurrent/ConcurrentHashMap;

    move-object v12, v1

    check-cast v12, Ljava/util/Map;

    new-instance v1, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$StreamKey;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v3, 0x82

    const/4 v4, 0x0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$StreamKey;-><init>(Lcom/shilapi/xcertplay/airplay/AirPlaySession;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-eqz v11, :cond_d

    move-object v2, v10

    check-cast v2, Ljava/io/Closeable;

    goto :goto_4

    :cond_d
    move-object v2, v9

    check-cast v2, Ljava/io/Closeable;

    :goto_4
    invoke-interface {v12, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    .line 251
    new-array v1, v1, [Lkotlin/Pair;

    const/16 v2, 0x82

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "type"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "streamID"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "dataPort"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v1}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 253
    invoke-interface {p2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 254
    move-object v2, v1

    check-cast v2, Ljava/util/Map;

    invoke-static {v0}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngineKt;->unsignedPlistInteger(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_e
    check-cast v1, Ljava/util/Map;

    return-object v1

    :catchall_0
    move-exception v0

    .line 247
    invoke-virtual {v10}, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->close()V

    .line 248
    throw v0

    :cond_f
    :goto_5
    return-object v4
.end method

.method public onFeedback(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/airplay/AirPlaySession;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->audioMeta:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "<get-values>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 301
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 302
    :cond_0
    check-cast v0, Ljava/lang/Iterable;

    .line 479
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 480
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 481
    check-cast v2, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;

    const/4 v5, 0x2

    .line 304
    new-array v5, v5, [Lkotlin/Pair;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->getType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v7, "type"

    invoke-static {v7, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    aput-object v6, v5, v3

    .line 305
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->getFormat()Lcom/shilapi/xcertplay/airplay/AudioFormat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getRtpClockRate()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v6, "sampleRate"

    invoke-static {v6, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v5, v4

    .line 303
    invoke-static {v5}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object v3

    .line 307
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->getFirstSample()Ljava/lang/Integer;

    move-result-object v4

    .line 308
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->getOriginNs()Ljava/lang/Long;

    move-result-object v5

    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    .line 310
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 313
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v8, v6, v8

    long-to-double v8, v8

    const-wide v10, 0x41cdcd6500000000L    # 1.0E9

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v8, v10

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->getPlayoutLatencyMs()I

    move-result v5

    int-to-double v10, v5

    const-wide v12, 0x408f400000000000L    # 1000.0

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v10, v12

    sub-double/2addr v8, v10

    const-wide/16 v10, 0x0

    .line 311
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    .line 315
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    const-wide v10, 0xffffffffL

    and-long/2addr v4, v10

    .line 316
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->getFormat()Lcom/shilapi/xcertplay/airplay/AudioFormat;

    move-result-object v12

    invoke-virtual {v12}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->getRtpClockRate()I

    move-result v12

    int-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    add-long/2addr v4, v8

    and-long/2addr v4, v10

    .line 318
    move-object v8, v3

    check-cast v8, Ljava/util/Map;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->getConnectionId()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :cond_1
    invoke-static {v2}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngineKt;->unsignedPlistInteger(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v9, "streamConnectionID"

    invoke-interface {v8, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string/jumbo v2, "timestamp"

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->syncedNtp()Ljava/math/BigInteger;

    move-result-object v9

    invoke-interface {v8, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string/jumbo v2, "timestampRawNs"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v8, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-string v2, "sampleTime"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v8, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 482
    :cond_3
    check-cast v1, Ljava/util/List;

    .line 325
    new-array p1, v4, [Lkotlin/Pair;

    const-string/jumbo v0, "streams"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, p1, v3

    invoke-static {p1}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public onScreen(Lcom/shilapi/xcertplay/airplay/AirPlaySession;ILjava/util/Map;)Ljava/lang/Integer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/airplay/AirPlaySession;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "stream"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-direct {p0, p1, p3}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->outputKey(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/util/Map;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 85
    :cond_0
    new-instance v1, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$StreamKey;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$StreamKey;-><init>(Lcom/shilapi/xcertplay/airplay/AirPlaySession;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v5, v2

    move v2, v3

    .line 86
    const-string/jumbo p1, "streamConnectionID"

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngineKt;->unsignedPlistDecimal(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "airplay screen key connectionID="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "xcertplay-usb"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v3, Lcom/shilapi/xcertplay/airplay/ScreenStream;

    new-instance p1, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onScreen$screen$1;

    invoke-direct {p1, v5}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onScreen$screen$1;-><init>(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object p2

    invoke-direct {v3, v0, p1, p2}, Lcom/shilapi/xcertplay/airplay/ScreenStream;-><init>([BLkotlin/jvm/functions/Function1;Ljava/net/InetAddress;)V

    const/16 p1, 0x6f

    if-ne v2, p1, :cond_1

    .line 89
    invoke-virtual {v5}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->getClusterDisplay$shared_release()Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->sink:Lcom/shilapi/xcertplay/airplay/MediaSink;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;->getWidthPixels()I

    move-result p3

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;->getHeightPixels()I

    move-result p1

    invoke-interface {p2, v2, p3, p1}, Lcom/shilapi/xcertplay/airplay/MediaSink;->onVideoSize(III)V

    .line 90
    :cond_1
    iget-object p1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->sink:Lcom/shilapi/xcertplay/airplay/MediaSink;

    new-instance p2, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$$ExternalSyntheticLambda1;

    invoke-direct {p2, v5}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$$ExternalSyntheticLambda1;-><init>(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    invoke-interface {p1, v2, p2}, Lcom/shilapi/xcertplay/airplay/MediaSink;->setVideoDiagnosticHandler(ILkotlin/jvm/functions/Function1;)V

    .line 94
    iget-object p1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->sink:Lcom/shilapi/xcertplay/airplay/MediaSink;

    new-instance v0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$$ExternalSyntheticLambda2;

    move v4, v2

    move-object v2, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$$ExternalSyntheticLambda2;-><init>(Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$StreamKey;Lcom/shilapi/xcertplay/airplay/ScreenStream;ILcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    move-object v1, v2

    move v2, v4

    invoke-interface {p1, v2, v0}, Lcom/shilapi/xcertplay/airplay/MediaSink;->setVideoRecoveryHandler(ILkotlin/jvm/functions/Function0;)V

    .line 107
    new-instance v0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onScreen$port$1;

    move-object v4, v3

    move-object v3, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onScreen$port$1;-><init>(Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;ILcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$StreamKey;Lcom/shilapi/xcertplay/airplay/ScreenStream;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    check-cast v0, Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;

    .line 106
    invoke-virtual {v4, v0}, Lcom/shilapi/xcertplay/airplay/ScreenStream;->listen(Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;)I

    move-result p1

    .line 123
    iget-object p2, v1, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->streams:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, v3, v4}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/Closeable;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/io/Closeable;->close()V

    .line 124
    :cond_2
    iget-object p2, v1, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->screenOwners:Lj$/util/concurrent/ConcurrentHashMap;

    check-cast p2, Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object p2, v1, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->sink:Lcom/shilapi/xcertplay/airplay/MediaSink;

    const/4 p3, 0x1

    invoke-interface {p2, v2, p3}, Lcom/shilapi/xcertplay/airplay/MediaSink;->onScreenStreamActive(IZ)V

    .line 126
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public onSessionClosed(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 7

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->clearPendingIapTunnel(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    .line 346
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->videoSettingsChannels:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/airplay/VideoSettingsChannel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/VideoSettingsChannel;->close()V

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->streams:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "<get-keys>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 488
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 489
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$StreamKey;

    .line 347
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$StreamKey;->getSession()Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    move-result-object v4

    if-ne v4, p1, :cond_1

    .line 489
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 490
    :cond_2
    check-cast v2, Ljava/util/List;

    .line 348
    check-cast v2, Ljava/lang/Iterable;

    .line 491
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 492
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$StreamKey;

    .line 349
    invoke-virtual {v5}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$StreamKey;->getType()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->isScreenStreamType(I)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->screenOwners:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$StreamKey;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v6, v5, p1}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->releaseOwner(Lj$/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 492
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 493
    :cond_4
    check-cast v0, Ljava/util/List;

    .line 491
    check-cast v0, Ljava/lang/Iterable;

    .line 494
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$StreamKey;

    .line 350
    iget-object v4, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->sink:Lcom/shilapi/xcertplay/airplay/MediaSink;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$StreamKey;->getType()I

    move-result v3

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Lcom/shilapi/xcertplay/airplay/MediaSink;->onScreenStreamActive(IZ)V

    goto :goto_2

    .line 496
    :cond_5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$StreamKey;

    .line 351
    iget-object v3, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->streams:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/Closeable;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    goto :goto_3

    .line 354
    :cond_7
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->audioMeta:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 498
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 499
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$StreamKey;

    .line 354
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$StreamKey;->getSession()Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    move-result-object v4

    if-ne v4, p1, :cond_8

    .line 499
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 500
    :cond_9
    check-cast v2, Ljava/util/List;

    .line 498
    check-cast v2, Ljava/lang/Iterable;

    .line 501
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$StreamKey;

    .line 354
    iget-object v3, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->audioMeta:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 355
    :cond_a
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->pendingMicrophone:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 503
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 504
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$StreamKey;

    .line 355
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$StreamKey;->getSession()Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    move-result-object v4

    if-ne v4, p1, :cond_b

    .line 504
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 505
    :cond_c
    check-cast v2, Ljava/util/List;

    .line 503
    check-cast v2, Ljava/lang/Iterable;

    .line 506
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$StreamKey;

    .line 355
    iget-object v3, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->pendingMicrophone:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 356
    :cond_d
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->audioCaptures:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 508
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 509
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$StreamKey;

    .line 356
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$StreamKey;->getSession()Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    move-result-object v3

    if-ne v3, p1, :cond_e

    .line 509
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 510
    :cond_f
    check-cast v1, Ljava/util/List;

    .line 508
    check-cast v1, Ljava/lang/Iterable;

    .line 511
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$StreamKey;

    .line 356
    iget-object v2, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->audioCaptures:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->close()V

    goto :goto_9

    .line 357
    :cond_11
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->audioOwners:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "<get-entries>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$$ExternalSyntheticLambda0;-><init>(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Z

    return-void
.end method

.method public onSetupResponseSent(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 4

    const-string/jumbo v0, "xcertplay-usb"

    const-string v1, "session"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->pendingIapTunnels:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$PendingIapTunnel;

    if-nez v1, :cond_0

    goto :goto_1

    .line 287
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$PendingIapTunnel;->getHandler()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$PendingIapTunnel;->getBridge()Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 289
    const-string v3, "iAP tunnel relay attachment failed"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    .line 293
    const-string v2, "iAP tunnel relay attachment was rejected after SETUP"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$PendingIapTunnel;->getBridge()Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->close()V

    .line 295
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->close()V

    :cond_1
    :goto_1
    return-void
.end method

.method public onTeardown(Lcom/shilapi/xcertplay/airplay/AirPlaySession;I)V
    .locals 6

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x82

    if-ne p2, v0, :cond_0

    .line 329
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->clearPendingIapTunnel(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->streams:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "<get-keys>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 483
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 484
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$StreamKey;

    .line 331
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$StreamKey;->getSession()Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    move-result-object v4

    if-ne v4, p1, :cond_1

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$StreamKey;->getType()I

    move-result v3

    if-ne v3, p2, :cond_1

    .line 484
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 485
    :cond_2
    check-cast v1, Ljava/util/List;

    .line 332
    check-cast v1, Ljava/lang/Iterable;

    .line 486
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$StreamKey;

    .line 333
    new-instance v3, Lcom/shilapi/xcertplay/airplay/AudioStreamId;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$StreamKey;->getType()I

    move-result v4

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$StreamKey;->getAudioType()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/shilapi/xcertplay/airplay/AudioStreamId;-><init>(ILjava/lang/String;)V

    .line 334
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$StreamKey;->getType()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->isScreenStreamType(I)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->audioOwners:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v4, v3, p1}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->releaseOwner(Lj$/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v2, 0x1

    .line 335
    :cond_4
    iget-object v4, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->pendingMicrophone:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    if-eqz v2, :cond_5

    iget-object v4, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->sink:Lcom/shilapi/xcertplay/airplay/MediaSink;

    invoke-interface {v4, v3}, Lcom/shilapi/xcertplay/airplay/MediaSink;->onMicrophoneStopped(Lcom/shilapi/xcertplay/airplay/AudioStreamId;)V

    .line 336
    :cond_5
    iget-object v4, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->audioMeta:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    iget-object v4, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->audioCaptures:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->close()V

    :cond_6
    if-eqz v2, :cond_7

    .line 338
    iget-object v2, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->sink:Lcom/shilapi/xcertplay/airplay/MediaSink;

    invoke-interface {v2, v3}, Lcom/shilapi/xcertplay/airplay/MediaSink;->onAudioStopped(Lcom/shilapi/xcertplay/airplay/AudioStreamId;)V

    .line 339
    :cond_7
    iget-object v2, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->streams:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    goto :goto_1

    .line 341
    :cond_8
    invoke-direct {p0, p2}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->isScreenStreamType(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->screenOwners:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->releaseOwner(Lj$/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->sink:Lcom/shilapi/xcertplay/airplay/MediaSink;

    invoke-interface {p1, p2, v2}, Lcom/shilapi/xcertplay/airplay/MediaSink;->onScreenStreamActive(IZ)V

    :cond_9
    return-void
.end method

.method public setIapTunnelHandler(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->iapTunnelHandler:Lkotlin/jvm/functions/Function1;

    return-void
.end method
