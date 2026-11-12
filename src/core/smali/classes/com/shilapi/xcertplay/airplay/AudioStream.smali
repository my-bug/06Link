.class public final Lcom/shilapi/xcertplay/airplay/AudioStream;
.super Ljava/lang/Object;
.source "AudioStream.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/airplay/AudioStream$Companion;,
        Lcom/shilapi/xcertplay/airplay/AudioStream$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAudioStream.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AudioStream.kt\ncom/shilapi/xcertplay/airplay/AudioStream\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,255:1\n1#2:256\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u0000 *2\u00020\u0001:\u0002)*B;\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0014\u0008\u0002\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001a\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u001d2\u0006\u0010\u001e\u001a\u00020\u001fJ\u0008\u0010 \u001a\u00020\tH\u0016J\u0018\u0010!\u001a\u00020\t2\u0006\u0010\"\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u0010\u0010#\u001a\u00020\t2\u0006\u0010\"\u001a\u00020\u0015H\u0002J\u0008\u0010$\u001a\u00020\u0015H\u0002J\u0018\u0010%\u001a\u00020\u00052\u0006\u0010&\u001a\u00020\u00032\u0006\u0010\'\u001a\u00020\u0005H\u0002J\u000c\u0010(\u001a\u00020\u0008*\u00020\u0003H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006+"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/AudioStream;",
        "Ljava/io/Closeable;",
        "key",
        "",
        "streamType",
        "",
        "onDiagnostic",
        "Lkotlin/Function1;",
        "",
        "",
        "localAddress",
        "Ljava/net/InetAddress;",
        "<init>",
        "([BILkotlin/jvm/functions/Function1;Ljava/net/InetAddress;)V",
        "closed",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "receivedPackets",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "decryptedPackets",
        "authenticationFailures",
        "dataSocket",
        "Ljava/net/DatagramSocket;",
        "controlSocket",
        "dataThread",
        "Ljava/lang/Thread;",
        "controlThread",
        "started",
        "",
        "listen",
        "Lkotlin/Pair;",
        "listener",
        "Lcom/shilapi/xcertplay/airplay/AudioStream$Listener;",
        "close",
        "runData",
        "socket",
        "runControl",
        "bindAnyPort",
        "readU32Be",
        "source",
        "offset",
        "toHexString",
        "Listener",
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
.field public static final AUDIO_RECEIVE_BUFFER_BYTES:I = 0x80000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final Companion:Lcom/shilapi/xcertplay/airplay/AudioStream$Companion;

.field public static final DATAGRAM_BYTES:I = 0x1000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FIRST_PACKET_LOG_COUNT:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NONCE_LEN:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PACKET_LOG_INTERVAL:I = 0x64
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTP_HEADER_LEN:I = 0xc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "xcertplay-usb"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG_LEN:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAIL_LEN:I = 0x18
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final authenticationFailures:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private controlSocket:Ljava/net/DatagramSocket;

.field private controlThread:Ljava/lang/Thread;

.field private dataSocket:Ljava/net/DatagramSocket;

.field private dataThread:Ljava/lang/Thread;

.field private final decryptedPackets:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final key:[B

.field private final localAddress:Ljava/net/InetAddress;

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

.field private final receivedPackets:Ljava/util/concurrent/atomic/AtomicInteger;

.field private started:Z

.field private final streamType:I


# direct methods
.method public static synthetic $r8$lambda$2zTDtdYqOgdf5RM5SYC0H63oRG4(Ljava/net/DatagramSocket;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/airplay/AudioStream;->bindAnyPort$lambda$10(Ljava/net/DatagramSocket;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$OcJ5sb7GuUHjwCpPNbQYciCWFuM(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/airplay/AudioStream;->_init_$lambda$0(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bYq0QcqZ6CqROgiHRieMJ74PwPw(B)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/airplay/AudioStream;->toHexString$lambda$11(B)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qNbIdgk4XE_iW8JePTiFHaacRGk(Lcom/shilapi/xcertplay/airplay/AudioStream;Ljava/net/DatagramSocket;Lcom/shilapi/xcertplay/airplay/AudioStream$Listener;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/airplay/AudioStream;->listen$lambda$4(Lcom/shilapi/xcertplay/airplay/AudioStream;Ljava/net/DatagramSocket;Lcom/shilapi/xcertplay/airplay/AudioStream$Listener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wogqqbc5SdtUCdbDJEKo-hjyJ44(Lcom/shilapi/xcertplay/airplay/AudioStream;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/AudioStream;->bindAnyPort$lambda$9(Lcom/shilapi/xcertplay/airplay/AudioStream;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yLwYSmpoginJVSbP1PqtARcwqCo(Lcom/shilapi/xcertplay/airplay/AudioStream;Ljava/net/DatagramSocket;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/AudioStream;->listen$lambda$6(Lcom/shilapi/xcertplay/airplay/AudioStream;Ljava/net/DatagramSocket;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/airplay/AudioStream$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/airplay/AudioStream$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/airplay/AudioStream;->Companion:Lcom/shilapi/xcertplay/airplay/AudioStream$Companion;

    return-void
.end method

.method public constructor <init>([BILkotlin/jvm/functions/Function1;Ljava/net/InetAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/net/InetAddress;",
            ")V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDiagnostic"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/AudioStream;->key:[B

    .line 31
    iput p2, p0, Lcom/shilapi/xcertplay/airplay/AudioStream;->streamType:I

    .line 32
    iput-object p3, p0, Lcom/shilapi/xcertplay/airplay/AudioStream;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    .line 34
    iput-object p4, p0, Lcom/shilapi/xcertplay/airplay/AudioStream;->localAddress:Ljava/net/InetAddress;

    .line 47
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/AudioStream;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/AudioStream;->receivedPackets:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 49
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/AudioStream;->decryptedPackets:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 50
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/AudioStream;->authenticationFailures:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public synthetic constructor <init>([BILkotlin/jvm/functions/Function1;Ljava/net/InetAddress;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, -0x1

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    .line 32
    new-instance p3, Lcom/shilapi/xcertplay/airplay/AudioStream$$ExternalSyntheticLambda1;

    invoke-direct {p3}, Lcom/shilapi/xcertplay/airplay/AudioStream$$ExternalSyntheticLambda1;-><init>()V

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    .line 29
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/airplay/AudioStream;-><init>([BILkotlin/jvm/functions/Function1;Ljava/net/InetAddress;)V

    return-void
.end method

.method private static final _init_$lambda$0(Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final bindAnyPort()Ljava/net/DatagramSocket;
    .locals 8

    .line 189
    sget-object v0, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->INSTANCE:Lcom/shilapi/xcertplay/compat/AnyLocalBind;

    .line 190
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/AudioStream;->localAddress:Ljava/net/InetAddress;

    .line 189
    new-instance v4, Lcom/shilapi/xcertplay/airplay/AudioStream$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/shilapi/xcertplay/airplay/AudioStream$$ExternalSyntheticLambda2;-><init>(Lcom/shilapi/xcertplay/airplay/AudioStream;)V

    new-instance v5, Lcom/shilapi/xcertplay/airplay/AudioStream$$ExternalSyntheticLambda3;

    invoke-direct {v5}, Lcom/shilapi/xcertplay/airplay/AudioStream$$ExternalSyntheticLambda3;-><init>()V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v7}, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->bindDatagram$default(Lcom/shilapi/xcertplay/compat/AnyLocalBind;Ljava/net/InetAddress;IZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/net/DatagramSocket;

    move-result-object v0

    return-object v0
.end method

.method private static final bindAnyPort$lambda$10(Ljava/net/DatagramSocket;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 192
    invoke-virtual {p0, v0}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final bindAnyPort$lambda$9(Lcom/shilapi/xcertplay/airplay/AudioStream;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    iget-object p0, p0, Lcom/shilapi/xcertplay/airplay/AudioStream;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "audio listener "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final listen$lambda$4(Lcom/shilapi/xcertplay/airplay/AudioStream;Ljava/net/DatagramSocket;Lcom/shilapi/xcertplay/airplay/AudioStream$Listener;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/airplay/AudioStream;->runData(Ljava/net/DatagramSocket;Lcom/shilapi/xcertplay/airplay/AudioStream$Listener;)V

    return-void
.end method

.method private static final listen$lambda$6(Lcom/shilapi/xcertplay/airplay/AudioStream;Ljava/net/DatagramSocket;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/airplay/AudioStream;->runControl(Ljava/net/DatagramSocket;)V

    return-void
.end method

.method private final readU32Be([BI)I
    .locals 2

    .line 195
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p2, 0x1

    .line 196
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    .line 197
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x3

    .line 198
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    return p1
.end method

.method private final runControl(Ljava/net/DatagramSocket;)V
    .locals 3

    const/16 v0, 0x1000

    .line 177
    new-array v1, v0, [B

    .line 178
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/shilapi/xcertplay/airplay/AudioStream;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_1

    .line 180
    :try_start_0
    new-instance v2, Ljava/net/DatagramPacket;

    invoke-direct {v2, v1, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    invoke-virtual {p1, v2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 182
    iget-object v2, p0, Lcom/shilapi/xcertplay/airplay/AudioStream;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    return-void
.end method

.method private final runData(Ljava/net/DatagramSocket;Lcom/shilapi/xcertplay/airplay/AudioStream$Listener;)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 89
    const-string v3, "copyOf(...)"

    new-instance v4, Lcom/shilapi/xcertplay/airplay/StreamReceiveStats;

    iget v0, v1, Lcom/shilapi/xcertplay/airplay/AudioStream;->streamType:I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "audio type="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/shilapi/xcertplay/airplay/AudioStream;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/shilapi/xcertplay/airplay/StreamReceiveStats;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v5, 0x1000

    .line 90
    new-array v6, v5, [B

    :goto_0
    const/4 v7, 0x1

    .line 92
    :try_start_0
    iget-object v0, v1, Lcom/shilapi/xcertplay/airplay/AudioStream;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_8

    .line 93
    new-instance v0, Ljava/net/DatagramPacket;

    invoke-direct {v0, v6, v5}, Ljava/net/DatagramPacket;-><init>([BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :try_start_1
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/airplay/StreamReceiveStats;->reading()V

    move-object/from16 v8, p1

    .line 96
    invoke-virtual {v8, v0}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    :try_start_2
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v9

    .line 102
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v10

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/16 v13, 0xc

    if-lt v10, v13, :cond_0

    const/4 v10, 0x2

    .line 103
    aget-byte v10, v6, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    aget-byte v14, v6, v11

    and-int/lit16 v14, v14, 0xff

    or-int/2addr v10, v14

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_1

    :cond_0
    move-object v10, v12

    .line 105
    :goto_1
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v14

    const/4 v15, 0x4

    if-lt v14, v13, :cond_1

    invoke-direct {v1, v6, v15}, Lcom/shilapi/xcertplay/airplay/AudioStream;->readU32Be([BI)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto :goto_2

    :cond_1
    move-object v14, v12

    .line 100
    :goto_2
    invoke-virtual {v4, v9, v10, v14}, Lcom/shilapi/xcertplay/airplay/StreamReceiveStats;->received(ILjava/lang/Integer;Ljava/lang/Integer;)V

    .line 107
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v9

    const-string v10, "getData(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    invoke-static {v9, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v9

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object v0, v1, Lcom/shilapi/xcertplay/airplay/AudioStream;->receivedPackets:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 109
    array-length v10, v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v14, 0x24

    const-string v5, "audio stream type="

    const-string/jumbo v11, "xcertplay-usb"

    if-ge v10, v14, :cond_3

    if-ne v0, v7, :cond_2

    .line 113
    :try_start_3
    iget v0, v1, Lcom/shilapi/xcertplay/airplay/AudioStream;->streamType:I

    array-length v10, v9

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " short packet bytes="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v5, "audio packet shorter than RTP header plus tail"

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    .line 116
    invoke-interface {v2, v9, v12, v12, v0}, Lcom/shilapi/xcertplay/airplay/AudioStream$Listener;->onPacket([B[BLjava/lang/Integer;Ljava/lang/Throwable;)V

    .line 122
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/airplay/StreamReceiveStats;->processed()V

    goto/16 :goto_5

    .line 126
    :cond_3
    invoke-static {v9, v15, v13}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v0

    .line 127
    array-length v10, v9

    add-int/lit8 v10, v10, -0x8

    .line 128
    invoke-static {v9, v13, v10}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v14

    .line 129
    array-length v7, v9

    invoke-static {v9, v10, v7}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v17

    .line 130
    new-array v7, v13, [B

    const/16 v22, 0xc

    const/16 v23, 0x0

    const/16 v19, 0x4

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v18, v7

    invoke-static/range {v17 .. v23}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    .line 131
    invoke-direct {v1, v9, v15}, Lcom/shilapi/xcertplay/airplay/AudioStream;->readU32Be([BI)I

    move-result v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 134
    :try_start_4
    sget-object v15, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;

    iget-object v12, v1, Lcom/shilapi/xcertplay/airplay/AudioStream;->key:[B

    invoke-virtual {v15, v12, v7, v14, v0}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->chachaOpen([B[B[B[B)[B

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 149
    :try_start_5
    invoke-static {v9, v13}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v7

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v0}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v7

    .line 150
    iget-object v12, v1, Lcom/shilapi/xcertplay/airplay/AudioStream;->decryptedPackets:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v12

    const/4 v13, 0x3

    if-gt v12, v13, :cond_4

    .line 154
    iget v13, v1, Lcom/shilapi/xcertplay/airplay/AudioStream;->streamType:I

    .line 155
    array-length v14, v9

    array-length v15, v0

    move-object/from16 v16, v6

    .line 156
    array-length v6, v0

    const/16 v8, 0x10

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/airplay/AudioStream;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " packet="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " sample="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " wireBytes="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " payloadBytes="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " payloadHead="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    move-object/from16 v16, v6

    .line 158
    rem-int/lit8 v0, v12, 0x64

    if-nez v0, :cond_5

    .line 161
    iget v0, v1, Lcom/shilapi/xcertplay/airplay/AudioStream;->streamType:I

    .line 162
    iget-object v6, v1, Lcom/shilapi/xcertplay/airplay/AudioStream;->authenticationFailures:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " decrypted="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " authFailures="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_5
    :goto_3
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v5, 0x0

    invoke-interface {v2, v9, v7, v0, v5}, Lcom/shilapi/xcertplay/airplay/AudioStream$Listener;->onPacket([B[BLjava/lang/Integer;Ljava/lang/Throwable;)V

    .line 166
    iget-boolean v0, v1, Lcom/shilapi/xcertplay/airplay/AudioStream;->started:Z

    if-nez v0, :cond_6

    const/4 v5, 0x1

    .line 167
    iput-boolean v5, v1, Lcom/shilapi/xcertplay/airplay/AudioStream;->started:Z

    .line 168
    invoke-interface {v2, v10}, Lcom/shilapi/xcertplay/airplay/AudioStream$Listener;->onStarted(I)V

    .line 170
    :cond_6
    invoke-interface {v2, v7, v10}, Lcom/shilapi/xcertplay/airplay/AudioStream$Listener;->onRtp([BI)V

    .line 171
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/airplay/StreamReceiveStats;->processed()V

    goto :goto_4

    :catch_0
    move-exception v0

    move-object/from16 v16, v6

    .line 136
    iget-object v6, v1, Lcom/shilapi/xcertplay/airplay/AudioStream;->authenticationFailures:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    .line 140
    iget v6, v1, Lcom/shilapi/xcertplay/airplay/AudioStream;->streamType:I

    .line 141
    invoke-direct {v1, v9}, Lcom/shilapi/xcertplay/airplay/AudioStream;->toHexString([B)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " first decrypt failure wire="

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 142
    move-object v6, v0

    check-cast v6, Ljava/lang/Throwable;

    .line 138
    invoke-static {v11, v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    :cond_7
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v0, Ljava/lang/Throwable;

    const/4 v6, 0x0

    invoke-interface {v2, v9, v6, v5, v0}, Lcom/shilapi/xcertplay/airplay/AudioStream$Listener;->onPacket([B[BLjava/lang/Integer;Ljava/lang/Throwable;)V

    .line 146
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/airplay/StreamReceiveStats;->processed()V

    goto :goto_4

    :catch_1
    move-object/from16 v16, v6

    .line 98
    iget-object v0, v1, Lcom/shilapi/xcertplay/airplay/AudioStream;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_9

    :cond_8
    const/4 v5, 0x1

    .line 173
    invoke-virtual {v4, v5}, Lcom/shilapi/xcertplay/airplay/StreamReceiveStats;->flush(Z)V

    return-void

    :cond_9
    :goto_4
    move-object/from16 v6, v16

    :goto_5
    const/16 v5, 0x1000

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/shilapi/xcertplay/airplay/StreamReceiveStats;->flush(Z)V

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method private final toHexString([B)Ljava/lang/String;
    .locals 10

    .line 201
    const-string v0, ""

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v7, Lcom/shilapi/xcertplay/airplay/AudioStream$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/shilapi/xcertplay/airplay/AudioStream$$ExternalSyntheticLambda0;-><init>()V

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v9}, Lkotlin/collections/ArraysKt;->joinToString$default([BLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static final toHexString$lambda$11(B)Ljava/lang/CharSequence;
    .locals 3

    and-int/lit16 p0, p0, 0xff

    .line 201
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%02x"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "format(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AudioStream;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AudioStream;->dataSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AudioStream;->controlSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AudioStream;->dataThread:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 85
    :cond_3
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AudioStream;->controlThread:Ljava/lang/Thread;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_4
    :goto_0
    return-void
.end method

.method public final listen(Lcom/shilapi/xcertplay/airplay/AudioStream$Listener;)Lkotlin/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/airplay/AudioStream$Listener;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Lcom/shilapi/xcertplay/airplay/AudioStream;->bindAnyPort()Ljava/net/DatagramSocket;

    move-result-object v0

    .line 61
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/airplay/AudioStream;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getReceiveBufferSize()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v3

    :cond_0
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/high16 v3, 0x80000

    if-ge v1, v3, :cond_1

    .line 63
    :try_start_1
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v4, p0

    check-cast v4, Lcom/shilapi/xcertplay/airplay/AudioStream;

    invoke-virtual {v0, v3}, Ljava/net/DatagramSocket;->setReceiveBufferSize(I)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v3}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/shilapi/xcertplay/airplay/AudioStream;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    iget v4, p0, Lcom/shilapi/xcertplay/airplay/AudioStream;->streamType:I

    :try_start_2
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v5, p0

    check-cast v5, Lcom/shilapi/xcertplay/airplay/AudioStream;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getReceiveBufferSize()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v5

    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v5}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v5, v2

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Audio UDP receive buffer type="

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " original="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requested=524288 actual="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-direct {p0}, Lcom/shilapi/xcertplay/airplay/AudioStream;->bindAnyPort()Ljava/net/DatagramSocket;

    move-result-object v1

    .line 67
    iput-object v0, p0, Lcom/shilapi/xcertplay/airplay/AudioStream;->dataSocket:Ljava/net/DatagramSocket;

    .line 68
    iput-object v1, p0, Lcom/shilapi/xcertplay/airplay/AudioStream;->controlSocket:Ljava/net/DatagramSocket;

    .line 69
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/shilapi/xcertplay/airplay/AudioStream$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v0, p1}, Lcom/shilapi/xcertplay/airplay/AudioStream$$ExternalSyntheticLambda4;-><init>(Lcom/shilapi/xcertplay/airplay/AudioStream;Ljava/net/DatagramSocket;Lcom/shilapi/xcertplay/airplay/AudioStream$Listener;)V

    const-string p1, "airplay-audio-rx"

    invoke-direct {v2, v3, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 70
    invoke-virtual {v2, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 71
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 69
    iput-object v2, p0, Lcom/shilapi/xcertplay/airplay/AudioStream;->dataThread:Ljava/lang/Thread;

    .line 73
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/shilapi/xcertplay/airplay/AudioStream$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, v1}, Lcom/shilapi/xcertplay/airplay/AudioStream$$ExternalSyntheticLambda5;-><init>(Lcom/shilapi/xcertplay/airplay/AudioStream;Ljava/net/DatagramSocket;)V

    const-string v4, "airplay-rtcp-rx"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v2, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 75
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 73
    iput-object v2, p0, Lcom/shilapi/xcertplay/airplay/AudioStream;->controlThread:Ljava/lang/Thread;

    .line 77
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method
