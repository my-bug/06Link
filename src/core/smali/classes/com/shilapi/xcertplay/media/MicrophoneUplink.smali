.class public final Lcom/shilapi/xcertplay/media/MicrophoneUplink;
.super Ljava/lang/Object;
.source "MicrophoneUplink.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/media/MicrophoneUplink$Companion;,
        Lcom/shilapi/xcertplay/media/MicrophoneUplink$EchoEffects;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMicrophoneUplink.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MicrophoneUplink.kt\ncom/shilapi/xcertplay/media/MicrophoneUplink\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,329:1\n1#2:330\n1869#3,2:331\n*S KotlinDebug\n*F\n+ 1 MicrophoneUplink.kt\ncom/shilapi/xcertplay/media/MicrophoneUplink\n*L\n237#1:331,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0008\u0008\u0000\u0018\u0000 22\u00020\u0001:\u000212B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0014\u0008\u0002\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0006\u0010\u001e\u001a\u00020\u001fJ\u0010\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0002J\u0017\u0010$\u001a\u0004\u0018\u00010#2\u0006\u0010\u0016\u001a\u00020\u0017H\u0002\u00a2\u0006\u0002\u0010%J\u0018\u0010&\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J \u0010\'\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+H\u0002J(\u0010,\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010(\u001a\u00020)2\u0006\u0010-\u001a\u00020+2\u0006\u0010.\u001a\u00020#H\u0002J\u0008\u0010/\u001a\u00020\tH\u0016J\u0008\u00100\u001a\u00020\tH\u0002R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00063"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/media/MicrophoneUplink;",
        "Ljava/io/Closeable;",
        "config",
        "Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;",
        "tuning",
        "Lcom/shilapi/xcertplay/media/MicrophoneTuning$Settings;",
        "onDiagnostic",
        "Lkotlin/Function1;",
        "",
        "",
        "<init>",
        "(Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;Lcom/shilapi/xcertplay/media/MicrophoneTuning$Settings;Lkotlin/jvm/functions/Function1;)V",
        "getConfig$shared_release",
        "()Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;",
        "running",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "firstPacketLogged",
        "level",
        "Lcom/shilapi/xcertplay/media/MicrophoneLevel;",
        "sentLevel",
        "gain",
        "Lcom/shilapi/xcertplay/media/MicrophoneGain;",
        "recorder",
        "Landroid/media/AudioRecord;",
        "socket",
        "Ljava/net/DatagramSocket;",
        "opusEncoder",
        "Lcom/shilapi/xcertplay/media/MicrophoneOpusEncoder;",
        "thread",
        "Ljava/lang/Thread;",
        "start",
        "",
        "enableEchoEffects",
        "Lcom/shilapi/xcertplay/media/MicrophoneUplink$EchoEffects;",
        "sessionId",
        "",
        "routedDeviceType",
        "(Landroid/media/AudioRecord;)Ljava/lang/Integer;",
        "capture",
        "sendFrame",
        "counters",
        "Lcom/shilapi/xcertplay/airplay/MicrophoneCounters;",
        "frame",
        "",
        "sendPacket",
        "body",
        "samples",
        "close",
        "release",
        "EchoEffects",
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
.field public static final CLOSE_JOIN_MILLIS:J = 0x1f4L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final Companion:Lcom/shilapi/xcertplay/media/MicrophoneUplink$Companion;

.field public static final MIN_READ_BYTES:I = 0x800
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "xcertplay-usb"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final config:Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;

.field private final firstPacketLogged:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final gain:Lcom/shilapi/xcertplay/media/MicrophoneGain;

.field private final level:Lcom/shilapi/xcertplay/media/MicrophoneLevel;

.field private final onDiagnostic:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private volatile opusEncoder:Lcom/shilapi/xcertplay/media/MicrophoneOpusEncoder;

.field private volatile recorder:Landroid/media/AudioRecord;

.field private final running:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final sentLevel:Lcom/shilapi/xcertplay/media/MicrophoneLevel;

.field private volatile socket:Ljava/net/DatagramSocket;

.field private thread:Ljava/lang/Thread;

.field private final tuning:Lcom/shilapi/xcertplay/media/MicrophoneTuning$Settings;


# direct methods
.method public static synthetic $r8$lambda$47lgVryO60IdZNdwB-R7wKOy0q0(Lcom/shilapi/xcertplay/media/MicrophoneUplink;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->start$lambda$4(Lcom/shilapi/xcertplay/media/MicrophoneUplink;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7hCvq23Y4AU8_Urb2U6PvXc7cN0(Ljava/net/DatagramSocket;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->start$lambda$5(Ljava/net/DatagramSocket;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wQREYDNJxRNxgTmdcxUBpqya0BI(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->_init_$lambda$0(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wcTS7skOn-A446rKwPkViCyYX_0(Lcom/shilapi/xcertplay/media/MicrophoneUplink;Landroid/media/AudioRecord;Ljava/net/DatagramSocket;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->start$lambda$6(Lcom/shilapi/xcertplay/media/MicrophoneUplink;Landroid/media/AudioRecord;Ljava/net/DatagramSocket;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/media/MicrophoneUplink$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/media/MicrophoneUplink$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->Companion:Lcom/shilapi/xcertplay/media/MicrophoneUplink$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;Lcom/shilapi/xcertplay/media/MicrophoneTuning$Settings;Lkotlin/jvm/functions/Function1;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;",
            "Lcom/shilapi/xcertplay/media/MicrophoneTuning$Settings;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tuning"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDiagnostic"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->config:Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;

    .line 28
    iput-object p2, p0, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->tuning:Lcom/shilapi/xcertplay/media/MicrophoneTuning$Settings;

    .line 30
    iput-object p3, p0, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    .line 32
    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p3, p0, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p3, p0, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->firstPacketLogged:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    new-instance p3, Lcom/shilapi/xcertplay/media/MicrophoneLevel;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p3, v0, v1, v2}, Lcom/shilapi/xcertplay/media/MicrophoneLevel;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p3, p0, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->level:Lcom/shilapi/xcertplay/media/MicrophoneLevel;

    .line 35
    new-instance p3, Lcom/shilapi/xcertplay/media/MicrophoneLevel;

    invoke-direct {p3, v0, v1, v2}, Lcom/shilapi/xcertplay/media/MicrophoneLevel;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p3, p0, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->sentLevel:Lcom/shilapi/xcertplay/media/MicrophoneLevel;

    .line 36
    sget-object p3, Lcom/shilapi/xcertplay/media/MicrophoneTuning;->INSTANCE:Lcom/shilapi/xcertplay/media/MicrophoneTuning;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->getAudioType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Lcom/shilapi/xcertplay/media/MicrophoneTuning;->maxGainFor(Ljava/lang/String;Lcom/shilapi/xcertplay/media/MicrophoneTuning$Settings;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmpl-double v3, p2, v0

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    new-instance v0, Lcom/shilapi/xcertplay/media/MicrophoneGain;

    const/4 v7, 0x6

    const/4 v8, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/shilapi/xcertplay/media/MicrophoneGain;-><init>(DDDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v2, v0

    :cond_1
    iput-object v2, p0, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->gain:Lcom/shilapi/xcertplay/media/MicrophoneGain;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;Lcom/shilapi/xcertplay/media/MicrophoneTuning$Settings;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    .line 28
    new-instance v1, Lcom/shilapi/xcertplay/media/MicrophoneTuning$Settings;

    const/16 v10, 0x7f

    const/4 v11, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v11}, Lcom/shilapi/xcertplay/media/MicrophoneTuning$Settings;-><init>(Ljava/lang/String;DILjava/lang/String;ILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p2, v1

    :cond_0
    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_1

    .line 30
    new-instance p3, Lcom/shilapi/xcertplay/media/MicrophoneUplink$$ExternalSyntheticLambda13;

    invoke-direct {p3}, Lcom/shilapi/xcertplay/media/MicrophoneUplink$$ExternalSyntheticLambda13;-><init>()V

    .line 25
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/media/MicrophoneUplink;-><init>(Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;Lcom/shilapi/xcertplay/media/MicrophoneTuning$Settings;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final _init_$lambda$0(Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final capture(Landroid/media/AudioRecord;Ljava/net/DatagramSocket;)V
    .locals 12

    .line 185
    const-string/jumbo v1, "xcertplay-usb"

    iget-object v0, p0, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->config:Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->getFrameBytes()I

    move-result v0

    new-array v2, v0, [B

    const/16 v3, 0x800

    .line 186
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v4, v3, [B

    .line 187
    new-instance v5, Lcom/shilapi/xcertplay/airplay/MicrophoneCounters;

    const/4 v10, 0x7

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-direct/range {v5 .. v11}, Lcom/shilapi/xcertplay/airplay/MicrophoneCounters;-><init>(IIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v7, 0x0

    .line 190
    :cond_0
    :goto_0
    :try_start_0
    iget-object v8, p0, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 192
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x17

    if-lt v8, v9, :cond_1

    .line 193
    invoke-static {p1, v4, v6, v3, v6}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/media/AudioRecord;[BIII)I

    move-result v8

    goto :goto_1

    .line 195
    :cond_1
    invoke-virtual {p1, v4, v6, v3}, Landroid/media/AudioRecord;->read([BII)I

    move-result v8

    :goto_1
    if-gez v8, :cond_3

    .line 198
    iget-object p1, p0, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "microphone read failed code="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 220
    invoke-direct {p0}, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->release()V

    return-void

    :cond_3
    if-nez v8, :cond_4

    goto :goto_0

    :cond_4
    const/4 v9, 0x0

    :goto_3
    if-ge v9, v8, :cond_0

    .line 205
    :try_start_1
    iget-object v10, p0, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v10

    if-eqz v10, :cond_0

    sub-int v10, v0, v7

    sub-int v11, v8, v9

    .line 206
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int v11, v9, v10

    .line 207
    invoke-static {v4, v2, v7, v9, v11}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    add-int/2addr v7, v10

    if-ne v7, v0, :cond_5

    .line 211
    invoke-direct {p0, p2, v5, v2}, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->sendFrame(Ljava/net/DatagramSocket;Lcom/shilapi/xcertplay/airplay/MicrophoneCounters;[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v9, v11

    const/4 v7, 0x0

    goto :goto_3

    :cond_5
    move v9, v11

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 217
    :try_start_2
    iget-object p2, p0, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "microphone capture failed"

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 219
    :goto_4
    iget-object p2, p0, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 220
    invoke-direct {p0}, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->release()V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method private final enableEchoEffects(I)Lcom/shilapi/xcertplay/media/MicrophoneUplink$EchoEffects;
    .locals 7

    .line 161
    const-string v0, "on"

    const-string v1, "create-failed"

    const-string/jumbo v2, "unavailable"

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-ge v3, v4, :cond_0

    new-instance p1, Lcom/shilapi/xcertplay/media/MicrophoneUplink$EchoEffects;

    const-string v0, "api-too-low"

    invoke-direct {p1, v0, v0}, Lcom/shilapi/xcertplay/media/MicrophoneUplink$EchoEffects;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const/4 v3, 0x1

    .line 162
    :try_start_0
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v4, p0

    check-cast v4, Lcom/shilapi/xcertplay/media/MicrophoneUplink;

    .line 163
    invoke-static {p1}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(I)Landroid/media/audiofx/AcousticEchoCanceler;

    move-result-object v4

    if-nez v4, :cond_1

    move-object v4, v2

    goto :goto_0

    .line 166
    :cond_1
    invoke-static {v4, v3}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/audiofx/AcousticEchoCanceler;Z)I

    .line 167
    invoke-static {v4}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/audiofx/AcousticEchoCanceler;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v0

    goto :goto_0

    :cond_2
    move-object v4, v1

    .line 162
    :goto_0
    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v4}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 169
    :goto_1
    invoke-static {v4}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    const-string v6, "error:"

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    check-cast v4, Ljava/lang/String;

    .line 170
    :try_start_1
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v5, p0

    check-cast v5, Lcom/shilapi/xcertplay/media/MicrophoneUplink;

    .line 171
    invoke-static {p1}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(I)Landroid/media/audiofx/NoiseSuppressor;

    move-result-object p1

    if-nez p1, :cond_4

    move-object v0, v2

    goto :goto_3

    .line 174
    :cond_4
    invoke-static {p1, v3}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/audiofx/NoiseSuppressor;Z)I

    .line 175
    invoke-static {p1}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/media/audiofx/NoiseSuppressor;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    move-object v0, v1

    .line 170
    :goto_3
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 177
    :goto_4
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_5
    check-cast p1, Ljava/lang/String;

    .line 178
    new-instance v0, Lcom/shilapi/xcertplay/media/MicrophoneUplink$EchoEffects;

    invoke-direct {v0, v4, p1}, Lcom/shilapi/xcertplay/media/MicrophoneUplink$EchoEffects;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final declared-synchronized release()V
    .locals 2

    monitor-enter p0

    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 304
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->recorder:Landroid/media/AudioRecord;

    const/4 v1, 0x0

    .line 305
    iput-object v1, p0, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->recorder:Landroid/media/AudioRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 307
    :try_start_1
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 311
    :catch_0
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->socket:Ljava/net/DatagramSocket;

    .line 312
    iput-object v1, p0, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->socket:Ljava/net/DatagramSocket;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    .line 314
    :try_start_3
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 318
    :catch_1
    :cond_1
    :try_start_4
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->opusEncoder:Lcom/shilapi/xcertplay/media/MicrophoneOpusEncoder;

    .line 319
    iput-object v1, p0, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->opusEncoder:Lcom/shilapi/xcertplay/media/MicrophoneOpusEncoder;

    if-eqz v0, :cond_2

    .line 320
    invoke-interface {v0}, Lcom/shilapi/xcertplay/media/MicrophoneOpusEncoder;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 321
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method private final routedDeviceType(Landroid/media/AudioRecord;)Ljava/lang/Integer;
    .locals 3

    .line 182
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/media/MicrophoneUplink;

    invoke-static {p1}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/media/AudioRecord;)Landroid/media/AudioDeviceInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/media/AudioDeviceInfo;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    move-object v2, p1

    :goto_2
    check-cast v2, Ljava/lang/Integer;

    :cond_2
    return-object v2
.end method

.method private final sendFrame(Ljava/net/DatagramSocket;Lcom/shilapi/xcertplay/airplay/MicrophoneCounters;[B)V
    .locals 9

    .line 225
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->level:Lcom/shilapi/xcertplay/media/MicrophoneLevel;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p3, v1, v2, v3}, Lcom/shilapi/xcertplay/media/MicrophoneLevel;->add$default(Lcom/shilapi/xcertplay/media/MicrophoneLevel;[BIILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 226
    iget-object v4, p0, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->gain:Lcom/shilapi/xcertplay/media/MicrophoneGain;

    if-eqz v4, :cond_0

    invoke-static {v4, p3, v1, v2, v3}, Lcom/shilapi/xcertplay/media/MicrophoneGain;->process$default(Lcom/shilapi/xcertplay/media/MicrophoneGain;[BIILjava/lang/Object;)V

    .line 227
    :cond_0
    iget-object v4, p0, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->sentLevel:Lcom/shilapi/xcertplay/media/MicrophoneLevel;

    invoke-static {v4, p3, v1, v2, v3}, Lcom/shilapi/xcertplay/media/MicrophoneLevel;->add$default(Lcom/shilapi/xcertplay/media/MicrophoneLevel;[BIILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_2

    .line 229
    iget-object v4, p0, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->config:Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->getAudioType()Ljava/lang/String;

    move-result-object v4

    .line 230
    iget-object v5, p0, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->gain:Lcom/shilapi/xcertplay/media/MicrophoneGain;

    if-eqz v5, :cond_1

    sget-object v5, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v6, p0, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->gain:Lcom/shilapi/xcertplay/media/MicrophoneGain;

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/media/MicrophoneGain;->getGainDb()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v6, v8, v1

    invoke-static {v8, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v6, "%.1f"

    invoke-static {v5, v6, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "format(...)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " sent["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] gainDb="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "microphone level type="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    const-string/jumbo v1, "xcertplay-usb"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_2
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->config:Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->getCodec()Lcom/shilapi/xcertplay/airplay/AudioCodecKind;

    move-result-object v0

    sget-object v1, Lcom/shilapi/xcertplay/airplay/AudioCodecKind;->OPUS:Lcom/shilapi/xcertplay/airplay/AudioCodecKind;

    if-ne v0, v1, :cond_4

    .line 233
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->opusEncoder:Lcom/shilapi/xcertplay/media/MicrophoneOpusEncoder;

    if-eqz v0, :cond_3

    invoke-interface {v0, p3}, Lcom/shilapi/xcertplay/media/MicrophoneOpusEncoder;->encode([B)Ljava/util/List;

    move-result-object v3

    :cond_3
    if-nez v3, :cond_5

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_1

    .line 235
    :cond_4
    sget-object v0, Lcom/shilapi/xcertplay/airplay/MicrophonePacketizer;->INSTANCE:Lcom/shilapi/xcertplay/airplay/MicrophonePacketizer;

    invoke-virtual {v0, p3}, Lcom/shilapi/xcertplay/airplay/MicrophonePacketizer;->toWirePcm([B)[B

    move-result-object p3

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 237
    :cond_5
    :goto_1
    check-cast v3, Ljava/lang/Iterable;

    .line 331
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 242
    iget-object v1, p0, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->config:Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->getSamplesPerPacket()I

    move-result v1

    .line 238
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->sendPacket(Ljava/net/DatagramSocket;Lcom/shilapi/xcertplay/airplay/MicrophoneCounters;[BI)V

    goto :goto_2

    :cond_6
    return-void
.end method

.method private final sendPacket(Ljava/net/DatagramSocket;Lcom/shilapi/xcertplay/airplay/MicrophoneCounters;[BI)V
    .locals 7

    const-string v0, "microphone first packet bytes="

    .line 253
    sget-object v1, Lcom/shilapi/xcertplay/airplay/MicrophonePacketizer;->INSTANCE:Lcom/shilapi/xcertplay/airplay/MicrophonePacketizer;

    .line 254
    iget-object v2, p0, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->config:Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->getKey()[B

    move-result-object v2

    .line 255
    iget-object v3, p0, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->config:Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->getPayloadType()I

    move-result v3

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    .line 253
    invoke-virtual/range {v1 .. v6}, Lcom/shilapi/xcertplay/airplay/MicrophonePacketizer;->sealPacket([BILcom/shilapi/xcertplay/airplay/MicrophoneCounters;[BI)[B

    move-result-object p2

    .line 261
    :try_start_0
    new-instance p3, Ljava/net/DatagramPacket;

    array-length p4, p2

    iget-object v1, p0, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->config:Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->getHost()Ljava/net/InetAddress;

    move-result-object v1

    iget-object v2, p0, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->config:Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->getPort()I

    move-result v2

    invoke-direct {p3, p2, p4, v1, v2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    invoke-virtual {p1, p3}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 262
    iget-object p1, p0, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->firstPacketLogged:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-virtual {p1, p3, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 264
    const-string/jumbo p1, "xcertplay-usb"

    .line 265
    array-length p3, p2

    array-length p4, v5

    .line 266
    array-length v1, p2

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    const-string v1, "copyOf(...)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/shilapi/xcertplay/airplay/BytesKt;->toHexString([B)Ljava/lang/String;

    move-result-object p2

    .line 267
    iget-object v1, p0, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->config:Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->getPort()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " body="

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " head="

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " port="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 263
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 271
    iget-object p2, p0, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    throw p1
.end method

.method private static final start$lambda$4(Lcom/shilapi/xcertplay/media/MicrophoneUplink;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object p0, p0, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Audio: microphone socket "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final start$lambda$5(Ljava/net/DatagramSocket;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 117
    invoke-virtual {p0, v0}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final start$lambda$6(Lcom/shilapi/xcertplay/media/MicrophoneUplink;Landroid/media/AudioRecord;Ljava/net/DatagramSocket;)V
    .locals 0

    .line 135
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->capture(Landroid/media/AudioRecord;Ljava/net/DatagramSocket;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 276
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    invoke-direct {p0}, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->release()V

    return-void

    .line 281
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->recorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :catch_0
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->socket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    nop

    .line 290
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    const-wide/16 v1, 0x1f4

    .line 292
    :try_start_2
    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 294
    :catch_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 296
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 298
    :cond_3
    invoke-direct {p0}, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->release()V

    return-void
.end method

.method public final getConfig$shared_release()Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->config:Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;

    return-object v0
.end method

.method public final start()Z
    .locals 26

    move-object/from16 v1, p0

    const-string v0, "microphone uplink started type="

    const-string v2, " encoder="

    .line 43
    iget-object v3, v1, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-nez v3, :cond_0

    return v5

    .line 45
    :cond_0
    iget-object v3, v1, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->config:Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->getChannels()I

    move-result v3

    const/4 v6, 0x2

    if-lt v3, v6, :cond_1

    const/16 v3, 0xc

    const/16 v10, 0xc

    goto :goto_0

    :cond_1
    const/16 v3, 0x10

    const/16 v10, 0x10

    .line 51
    :goto_0
    iget-object v3, v1, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->config:Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->getSampleRate()I

    move-result v3

    .line 50
    invoke-static {v3, v10, v6}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v3

    .line 55
    const-string v13, " channels="

    const-string/jumbo v14, "xcertplay-usb"

    if-gtz v3, :cond_2

    .line 56
    iget-object v0, v1, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->config:Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->getSampleRate()I

    move-result v0

    iget-object v2, v1, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->config:Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->getChannels()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "microphone unavailable rate="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, v1, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v4

    .line 61
    :cond_2
    sget-object v7, Lcom/shilapi/xcertplay/media/MicrophoneTuning;->INSTANCE:Lcom/shilapi/xcertplay/media/MicrophoneTuning;

    iget-object v8, v1, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->config:Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;

    invoke-virtual {v8}, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->getAudioType()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->tuning:Lcom/shilapi/xcertplay/media/MicrophoneTuning$Settings;

    invoke-virtual {v7, v8, v9}, Lcom/shilapi/xcertplay/media/MicrophoneTuning;->sourceFor(Ljava/lang/String;Lcom/shilapi/xcertplay/media/MicrophoneTuning$Settings;)I

    move-result v8

    .line 64
    iget-object v7, v1, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->config:Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;

    invoke-virtual {v7}, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->getCodec()Lcom/shilapi/xcertplay/airplay/AudioCodecKind;

    move-result-object v7

    sget-object v9, Lcom/shilapi/xcertplay/airplay/AudioCodecKind;->OPUS:Lcom/shilapi/xcertplay/airplay/AudioCodecKind;

    if-ne v7, v9, :cond_4

    .line 66
    sget-object v7, Lcom/shilapi/xcertplay/media/MicrophoneOpusEncoders;->INSTANCE:Lcom/shilapi/xcertplay/media/MicrophoneOpusEncoders;

    .line 67
    sget-object v9, Lcom/shilapi/xcertplay/media/MicrophoneTuning;->INSTANCE:Lcom/shilapi/xcertplay/media/MicrophoneTuning;

    iget-object v12, v1, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->config:Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;

    invoke-virtual {v12}, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->getAudioType()Ljava/lang/String;

    move-result-object v12

    iget-object v15, v1, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->tuning:Lcom/shilapi/xcertplay/media/MicrophoneTuning$Settings;

    iget-object v11, v1, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->config:Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;

    invoke-virtual {v11}, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->getBitrate()Ljava/lang/Integer;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    goto :goto_1

    :cond_3
    const v11, 0xbb80

    :goto_1
    invoke-virtual {v9, v12, v15, v11}, Lcom/shilapi/xcertplay/media/MicrophoneTuning;->bitrateFor(Ljava/lang/String;Lcom/shilapi/xcertplay/media/MicrophoneTuning$Settings;I)I

    move-result v9

    .line 68
    iget-object v11, v1, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->config:Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;

    invoke-virtual {v11}, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->getOpusBandwidthRate()Ljava/lang/Integer;

    move-result-object v11

    .line 69
    sget-object v12, Lcom/shilapi/xcertplay/media/MicrophoneTuning;->INSTANCE:Lcom/shilapi/xcertplay/media/MicrophoneTuning;

    iget-object v15, v1, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->config:Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;

    invoke-virtual {v15}, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->getAudioType()Ljava/lang/String;

    move-result-object v15

    iget-object v5, v1, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->tuning:Lcom/shilapi/xcertplay/media/MicrophoneTuning$Settings;

    invoke-virtual {v12, v15, v5}, Lcom/shilapi/xcertplay/media/MicrophoneTuning;->complexityFor(Ljava/lang/String;Lcom/shilapi/xcertplay/media/MicrophoneTuning$Settings;)I

    move-result v5

    .line 70
    sget-object v12, Lcom/shilapi/xcertplay/media/MicrophoneTuning;->INSTANCE:Lcom/shilapi/xcertplay/media/MicrophoneTuning;

    iget-object v15, v1, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->config:Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;

    invoke-virtual {v15}, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->getAudioType()Ljava/lang/String;

    move-result-object v15

    const/16 v18, 0x2

    iget-object v6, v1, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->tuning:Lcom/shilapi/xcertplay/media/MicrophoneTuning$Settings;

    invoke-virtual {v12, v15, v6}, Lcom/shilapi/xcertplay/media/MicrophoneTuning;->opusModeFor(Ljava/lang/String;Lcom/shilapi/xcertplay/media/MicrophoneTuning$Settings;)Lio/github/jaredmdobson/concentus/OpusMode;

    move-result-object v6

    .line 66
    invoke-virtual {v7, v9, v11, v5, v6}, Lcom/shilapi/xcertplay/media/MicrophoneOpusEncoders;->open(ILjava/lang/Integer;ILio/github/jaredmdobson/concentus/OpusMode;)Lcom/shilapi/xcertplay/media/MicrophoneOpusEncoder;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 72
    invoke-interface {v5}, Lcom/shilapi/xcertplay/media/MicrophoneOpusEncoder;->getAvailable()Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_4
    const/16 v18, 0x2

    :cond_5
    const/4 v5, 0x0

    .line 76
    :goto_2
    iget-object v6, v1, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->config:Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->getCodec()Lcom/shilapi/xcertplay/airplay/AudioCodecKind;

    move-result-object v6

    sget-object v7, Lcom/shilapi/xcertplay/airplay/AudioCodecKind;->OPUS:Lcom/shilapi/xcertplay/airplay/AudioCodecKind;

    if-ne v6, v7, :cond_6

    if-nez v5, :cond_6

    .line 77
    const-string v0, "microphone Opus encoder is unavailable"

    invoke-static {v14, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, v1, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v4

    :cond_6
    mul-int/lit8 v3, v3, 0x2

    .line 81
    iget-object v6, v1, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->config:Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->getFrameBytes()I

    move-result v6

    mul-int/lit8 v6, v6, 0x4

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 84
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-ge v3, v6, :cond_7

    new-instance v7, Landroid/media/AudioRecord;

    iget-object v3, v1, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->config:Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->getSampleRate()I

    move-result v9

    const/4 v11, 0x2

    invoke-direct/range {v7 .. v12}, Landroid/media/AudioRecord;-><init>(IIIII)V

    goto :goto_3

    .line 86
    :cond_7
    new-instance v3, Landroid/media/AudioRecord$Builder;

    invoke-direct {v3}, Landroid/media/AudioRecord$Builder;-><init>()V

    .line 87
    invoke-static {v3, v8}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/media/AudioRecord$Builder;I)Landroid/media/AudioRecord$Builder;

    move-result-object v3

    .line 89
    new-instance v6, Landroid/media/AudioFormat$Builder;

    invoke-direct {v6}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/4 v7, 0x2

    .line 90
    invoke-static {v6, v7}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioFormat$Builder;I)Landroid/media/AudioFormat$Builder;

    move-result-object v6

    .line 91
    iget-object v7, v1, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->config:Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;

    invoke-virtual {v7}, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->getSampleRate()I

    move-result v7

    invoke-static {v6, v7}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/media/AudioFormat$Builder;I)Landroid/media/AudioFormat$Builder;

    move-result-object v6

    .line 92
    invoke-static {v6, v10}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m$2(Landroid/media/AudioFormat$Builder;I)Landroid/media/AudioFormat$Builder;

    move-result-object v6

    .line 93
    invoke-static {v6}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioFormat$Builder;)Landroid/media/AudioFormat;

    move-result-object v6

    .line 88
    invoke-static {v3, v6}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/media/AudioRecord$Builder;Landroid/media/AudioFormat;)Landroid/media/AudioRecord$Builder;

    move-result-object v3

    .line 95
    invoke-static {v3, v12}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m$1(Landroid/media/AudioRecord$Builder;I)Landroid/media/AudioRecord$Builder;

    move-result-object v3

    .line 96
    invoke-static {v3}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/media/AudioRecord$Builder;)Landroid/media/AudioRecord;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 103
    :goto_3
    invoke-virtual {v7}, Landroid/media/AudioRecord;->getState()I

    move-result v3

    const/4 v6, 0x1

    if-eq v3, v6, :cond_9

    .line 104
    const-string v0, "microphone recorder failed to initialize"

    invoke-static {v14, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {v7}, Landroid/media/AudioRecord;->release()V

    if-eqz v5, :cond_8

    .line 106
    invoke-interface {v5}, Lcom/shilapi/xcertplay/media/MicrophoneOpusEncoder;->close()V

    .line 107
    :cond_8
    iget-object v0, v1, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v4

    .line 114
    :cond_9
    :try_start_1
    sget-object v18, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->INSTANCE:Lcom/shilapi/xcertplay/compat/AnyLocalBind;

    .line 115
    iget-object v3, v1, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->config:Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v19

    .line 114
    new-instance v3, Lcom/shilapi/xcertplay/media/MicrophoneUplink$$ExternalSyntheticLambda15;

    invoke-direct {v3, v1}, Lcom/shilapi/xcertplay/media/MicrophoneUplink$$ExternalSyntheticLambda15;-><init>(Lcom/shilapi/xcertplay/media/MicrophoneUplink;)V

    new-instance v23, Lcom/shilapi/xcertplay/media/MicrophoneUplink$$ExternalSyntheticLambda16;

    invoke-direct/range {v23 .. v23}, Lcom/shilapi/xcertplay/media/MicrophoneUplink$$ExternalSyntheticLambda16;-><init>()V

    const/16 v24, 0x6

    const/16 v25, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v22, v3

    invoke-static/range {v18 .. v25}, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->bindDatagram$default(Lcom/shilapi/xcertplay/compat/AnyLocalBind;Ljava/net/InetAddress;IZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/net/DatagramSocket;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 127
    iput-object v7, v1, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->recorder:Landroid/media/AudioRecord;

    .line 128
    iput-object v3, v1, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->socket:Ljava/net/DatagramSocket;

    .line 129
    iput-object v5, v1, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->opusEncoder:Lcom/shilapi/xcertplay/media/MicrophoneOpusEncoder;

    .line 131
    :try_start_2
    invoke-virtual {v7}, Landroid/media/AudioRecord;->startRecording()V

    .line 134
    invoke-static {v7}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/media/AudioRecord;)I

    move-result v6

    invoke-direct {v1, v6}, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->enableEchoEffects(I)Lcom/shilapi/xcertplay/media/MicrophoneUplink$EchoEffects;

    move-result-object v6

    .line 135
    new-instance v9, Ljava/lang/Thread;

    new-instance v10, Lcom/shilapi/xcertplay/media/MicrophoneUplink$$ExternalSyntheticLambda14;

    invoke-direct {v10, v1, v7, v3}, Lcom/shilapi/xcertplay/media/MicrophoneUplink$$ExternalSyntheticLambda14;-><init>(Lcom/shilapi/xcertplay/media/MicrophoneUplink;Landroid/media/AudioRecord;Ljava/net/DatagramSocket;)V

    const-string v3, "carplay-mic"

    invoke-direct {v9, v10, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 136
    invoke-virtual {v9, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 137
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 135
    iput-object v9, v1, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->thread:Ljava/lang/Thread;

    .line 141
    iget-object v3, v1, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->config:Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->getAudioType()Ljava/lang/String;

    move-result-object v3

    .line 142
    iget-object v9, v1, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->config:Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;

    invoke-virtual {v9}, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->getSampleRate()I

    move-result v9

    iget-object v10, v1, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->config:Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;

    invoke-virtual {v10}, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->getChannels()I

    move-result v10

    .line 143
    iget-object v11, v1, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->config:Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;

    invoke-virtual {v11}, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->getCodec()Lcom/shilapi/xcertplay/airplay/AudioCodecKind;

    move-result-object v11

    if-eqz v5, :cond_a

    invoke-interface {v5}, Lcom/shilapi/xcertplay/media/MicrophoneOpusEncoder;->getLabel()Ljava/lang/String;

    move-result-object v5

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    :cond_a
    const-string v2, ""

    .line 144
    :cond_b
    iget-object v5, v1, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->config:Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->getFrameMillis()I

    move-result v5

    iget-object v12, v1, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->config:Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;

    invoke-virtual {v12}, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->getPort()I

    move-result v12

    .line 146
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v7}, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->routedDeviceType(Landroid/media/AudioRecord;)Ljava/lang/Integer;

    move-result-object v7

    if-nez v7, :cond_c

    const-string/jumbo v7, "unknown"

    .line 147
    :cond_c
    invoke-virtual {v6}, Lcom/shilapi/xcertplay/media/MicrophoneUplink$EchoEffects;->getAec()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/media/MicrophoneUplink$EchoEffects;->getNs()Ljava/lang/String;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    const/16 v16, 0x0

    .line 148
    :try_start_3
    iget-object v4, v1, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->config:Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->getAudioType()Ljava/lang/String;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object/from16 v18, v14

    :try_start_4
    const-string/jumbo v14, "telephony"

    invoke-static {v4, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, v1, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->tuning:Lcom/shilapi/xcertplay/media/MicrophoneTuning$Settings;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/media/MicrophoneTuning$Settings;->summary()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_d
    const-string v4, "defaults"

    :goto_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " rate="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " codec="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " frameMs="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " port="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " source="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " device="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " aec="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ns="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " tuning=["

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object/from16 v2, v18

    .line 139
    :try_start_5
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const/16 v17, 0x1

    return v17

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v2, v18

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v2, v14

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v2, v14

    const/16 v16, 0x0

    .line 152
    :goto_5
    const-string v3, "microphone recording failed"

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    invoke-direct {v1}, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->release()V

    return v16

    :catch_4
    move-exception v0

    move-object v2, v14

    const/16 v16, 0x0

    .line 119
    const-string v3, "microphone socket creation failed"

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    iget-object v2, v1, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Audio: microphone socket creation failed: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-virtual {v7}, Landroid/media/AudioRecord;->release()V

    if-eqz v5, :cond_e

    .line 122
    invoke-interface {v5}, Lcom/shilapi/xcertplay/media/MicrophoneOpusEncoder;->close()V

    .line 123
    :cond_e
    iget-object v0, v1, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v2

    :catch_5
    move-exception v0

    move-object v2, v14

    .line 98
    const-string v3, "microphone recorder creation failed"

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v5, :cond_f

    .line 99
    invoke-interface {v5}, Lcom/shilapi/xcertplay/media/MicrophoneOpusEncoder;->close()V

    .line 100
    :cond_f
    iget-object v0, v1, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v2
.end method
