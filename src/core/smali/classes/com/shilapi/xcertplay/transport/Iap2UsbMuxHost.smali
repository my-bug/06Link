.class public final Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;
.super Ljava/lang/Object;
.source "Iap2UsbMuxHost.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;,
        Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIap2UsbMuxHost.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Iap2UsbMuxHost.kt\ncom/shilapi/xcertplay/transport/Iap2UsbMuxHost\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,559:1\n1#2:560\n1869#3,2:561\n1869#3,2:563\n*S KotlinDebug\n*F\n+ 1 Iap2UsbMuxHost.kt\ncom/shilapi/xcertplay/transport/Iap2UsbMuxHost\n*L\n70#1:561,2\n259#1:563,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u0000 62\u00020\u0001:\u000256B\u0019\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001a\u0010\u001a\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\r2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0005J\u0008\u0010\u001d\u001a\u00020\u001eH\u0016J=\u0010\u001f\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\r2\u0006\u0010!\u001a\u00020\r2\u0006\u0010\"\u001a\u00020\r2\u0006\u0010#\u001a\u00020\r2\u0006\u0010$\u001a\u00020\u0019H\u0000\u00a2\u0006\u0002\u0008%J\u0015\u0010&\u001a\u00020\u001e2\u0006\u0010\'\u001a\u00020\u000eH\u0000\u00a2\u0006\u0002\u0008(J\u0008\u0010)\u001a\u00020\u001eH\u0002J\u0012\u0010*\u001a\u0004\u0018\u00010+2\u0006\u0010\u001c\u001a\u00020\u0005H\u0002J\u0018\u0010,\u001a\u00020\u001e2\u0006\u0010-\u001a\u00020\r2\u0006\u0010$\u001a\u00020\u0019H\u0002J\u0008\u0010.\u001a\u00020\u001eH\u0002J\u0010\u0010/\u001a\u00020\u001e2\u0006\u00100\u001a\u00020\u0019H\u0002J\u0010\u00101\u001a\u00020\u001e2\u0006\u00102\u001a\u00020\u0012H\u0002J\u0008\u00103\u001a\u00020\rH\u0002J\u0008\u00104\u001a\u00020\u001eH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00067"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;",
        "Ljava/io/Closeable;",
        "pipe",
        "Lcom/shilapi/xcertplay/transport/Iap2UsbSession;",
        "readTimeoutMillis",
        "",
        "<init>",
        "(Lcom/shilapi/xcertplay/transport/Iap2UsbSession;J)V",
        "stateLock",
        "",
        "writeLock",
        "connections",
        "",
        "",
        "Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;",
        "closed",
        "",
        "failure",
        "Lcom/shilapi/xcertplay/transport/IphoneUsbException;",
        "nextMuxSequence",
        "nextMuxAcknowledgement",
        "nextSourcePort",
        "readerThread",
        "Ljava/lang/Thread;",
        "receiveBuffer",
        "",
        "connect",
        "destinationPort",
        "timeoutMillis",
        "close",
        "",
        "sendTcp",
        "sourcePort",
        "sequence",
        "acknowledgement",
        "flags",
        "payload",
        "sendTcp$shared_release",
        "removeConnection",
        "connection",
        "removeConnection$shared_release",
        "begin",
        "takeFrame",
        "Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;",
        "sendFrame",
        "protocol",
        "readerLoop",
        "dispatchTcp",
        "frame",
        "fail",
        "error",
        "allocateSourcePortLocked",
        "checkOpenLocked",
        "MuxFrame",
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
.field private static final CLOSE_JOIN_MARGIN_MILLIS:J = 0x64L

.field private static final CONNECT_TIMEOUT_MILLIS:J = 0x1388L

.field public static final Companion:Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;

.field private static final FIRST_SOURCE_PORT:I = 0x1

.field private static final HANDSHAKE_TIMEOUT_MILLIS:J = 0xea60L

.field public static final LOCKDOWN_PORT:I = 0xf27e

.field private static final MAX_FRAME_BYTES:I = 0x10000

.field private static final MAX_STALE_HANDSHAKE_FRAMES:I = 0x20

.field private static final MUX_HEADER_BYTES:I = 0x10

.field private static final MUX_MAGIC:I = -0x1120532

.field private static final NANOS_PER_MILLISECOND:J = 0xf4240L

.field private static final PROTOCOL_SETUP:I = 0x2

.field private static final PROTOCOL_TCP:I = 0x6

.field private static final PROTOCOL_VERSION:I = 0x0

.field private static final SETUP_VALUE:I = 0x7

.field private static final TCP_HEADER_BYTES:I = 0x14

.field private static final TCP_WINDOW_FIELD:I = 0x200

.field private static final USBMUX_VERSION:I = 0x2

.field private static final VERSION_MESSAGE_BYTES:I = 0x14

.field private static final WRITE_TIMEOUT_MILLIS:I = 0x7d0


# instance fields
.field private closed:Z

.field private final connections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;",
            ">;"
        }
    .end annotation
.end field

.field private failure:Lcom/shilapi/xcertplay/transport/IphoneUsbException;

.field private nextMuxAcknowledgement:I

.field private nextMuxSequence:I

.field private nextSourcePort:I

.field private final pipe:Lcom/shilapi/xcertplay/transport/Iap2UsbSession;

.field private final readTimeoutMillis:J

.field private readerThread:Ljava/lang/Thread;

.field private receiveBuffer:[B

.field private final stateLock:Ljava/lang/Object;

.field private final writeLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$DRlsxlNGSXWsE3dVQMeOJT8EdB4(Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->readerLoop()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->Companion:Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/shilapi/xcertplay/transport/Iap2UsbSession;J)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->pipe:Lcom/shilapi/xcertplay/transport/Iap2UsbSession;

    .line 16
    iput-wide p2, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->readTimeoutMillis:J

    .line 18
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->stateLock:Ljava/lang/Object;

    .line 19
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->writeLock:Ljava/lang/Object;

    .line 20
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->connections:Ljava/util/Map;

    const/4 p1, 0x1

    .line 25
    iput p1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->nextSourcePort:I

    const/4 p1, 0x0

    .line 27
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->receiveBuffer:[B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/transport/Iap2UsbSession;JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;-><init>(Lcom/shilapi/xcertplay/transport/Iap2UsbSession;J)V

    return-void
.end method

.method public static final synthetic access$begin(Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->begin()V

    return-void
.end method

.method private final allocateSourcePortLocked()I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const v1, 0xffff

    if-ge v0, v1, :cond_2

    .line 265
    iget v2, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->nextSourcePort:I

    if-ne v2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v2, 0x1

    .line 266
    :goto_1
    iput v1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->nextSourcePort:I

    .line 267
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->connections:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 269
    :cond_2
    new-instance v0, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;

    const-string v1, "USBMUX has no free TCP source ports"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private final begin()V
    .locals 13

    const/16 v0, 0x14

    .line 111
    new-array v1, v0, [B

    .line 112
    sget-object v2, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->Companion:Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;

    const/4 v3, 0x0

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;->putU32([BII)V
    invoke-static {v2, v1, v3, v3}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;->access$putU32(Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;[BII)V

    const/4 v4, 0x4

    .line 113
    # invokes: Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;->putU32([BII)V
    invoke-static {v2, v1, v4, v0}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;->access$putU32(Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;[BII)V

    const/16 v4, 0x8

    const/4 v5, 0x2

    .line 114
    # invokes: Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;->putU32([BII)V
    invoke-static {v2, v1, v4, v5}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;->access$putU32(Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;[BII)V

    .line 115
    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->pipe:Lcom/shilapi/xcertplay/transport/Iap2UsbSession;

    const v4, 0xea60

    invoke-virtual {v2, v1, v4}, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->write([BI)V

    .line 118
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide v6, 0xdf8475800L

    add-long/2addr v1, v6

    const/4 v4, 0x0

    .line 122
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v6, v1, v6

    const-wide/16 v8, 0x0

    .line 123
    const-string v10, "Timed out waiting for the USBMUX version reply"

    const/4 v11, 0x0

    cmp-long v12, v6, v8

    if-lez v12, :cond_3

    const-wide/32 v8, 0xf423f

    add-long/2addr v6, v8

    const-wide/32 v8, 0xf4240

    .line 126
    div-long/2addr v6, v8

    .line 127
    invoke-direct {p0, v6, v7}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->takeFrame(J)Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 130
    invoke-virtual {v6}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;->getProtocol()I

    move-result v7

    const-string/jumbo v8, "xcertplay-usb"

    const/4 v9, 0x1

    if-nez v7, :cond_0

    .line 131
    invoke-virtual {v6}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;->getLength()I

    move-result v7

    if-ne v7, v0, :cond_0

    .line 132
    invoke-virtual {v6}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;->getWord8()I

    move-result v7

    if-ne v7, v5, :cond_0

    .line 147
    invoke-virtual {v6}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;->getWord8()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "usbmux version accepted: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-array v0, v9, [B

    const/4 v1, 0x7

    aput-byte v1, v0, v3

    invoke-direct {p0, v5, v0}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->sendFrame(I[B)V

    .line 149
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$$ExternalSyntheticLambda0;-><init>(Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;)V

    const-string v2, "iap2-usbmux-reader"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0, v9}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 151
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 149
    iput-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->readerThread:Ljava/lang/Thread;

    return-void

    .line 139
    :cond_0
    invoke-virtual {v6}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;->getProtocol()I

    move-result v7

    const/4 v10, 0x6

    if-ne v7, v10, :cond_1

    add-int/2addr v4, v9

    const/16 v7, 0x20

    if-gt v4, v7, :cond_1

    .line 145
    const-string v6, "discarding stale usbmux TCP frame before version reply"

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 140
    :cond_1
    new-instance v0, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    .line 141
    invoke-virtual {v6}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;->getProtocol()I

    move-result v1

    .line 142
    invoke-virtual {v6}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;->getLength()I

    move-result v2

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;->getWord8()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid USBMUX version reply: proto="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " length="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " version="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_2
    new-instance v0, Lcom/shilapi/xcertplay/transport/IphoneUsbException$TimedOut;

    invoke-direct {v0, v10, v11, v5, v11}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$TimedOut;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 124
    :cond_3
    new-instance v0, Lcom/shilapi/xcertplay/transport/IphoneUsbException$TimedOut;

    invoke-direct {v0, v10, v11, v5, v11}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$TimedOut;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private final checkOpenLocked()V
    .locals 4

    .line 273
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->failure:Lcom/shilapi/xcertplay/transport/IphoneUsbException;

    if-nez v0, :cond_1

    .line 274
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->closed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;

    const-string v1, "USBMUX host is closed"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 273
    :cond_1
    throw v0
.end method

.method public static synthetic connect$default(Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;IJILjava/lang/Object;)Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const p1, 0xf27e

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const-wide/16 p2, 0x1388

    .line 37
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->connect(IJ)Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;

    move-result-object p0

    return-object p0
.end method

.method private final dispatchTcp([B)V
    .locals 12

    .line 234
    array-length v0, p1

    const/16 v1, 0x14

    if-lt v0, v1, :cond_3

    const/16 v2, 0xc

    .line 238
    aget-byte v2, p1, v2

    const/4 v3, 0x4

    ushr-int/2addr v2, v3

    and-int/lit8 v2, v2, 0xf

    mul-int/lit8 v2, v2, 0x4

    if-lt v2, v1, :cond_2

    if-gt v2, v0, :cond_2

    .line 242
    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->Companion:Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;

    const/4 v4, 0x2

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;->readU16([BI)I
    invoke-static {v1, p1, v4}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;->access$readU16(Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;[BI)I

    move-result v4

    const/16 v5, 0xd

    if-ne v0, v2, :cond_0

    .line 243
    const-string/jumbo v6, "xcertplay-usb"

    aget-byte v7, p1, v5

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0x8

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;->readU32([BI)I
    invoke-static {v1, p1, v8}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;->access$readU32(Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;[BI)I

    move-result v8

    const/16 v9, 0xe

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;->readU16([BI)I
    invoke-static {v1, p1, v9}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;->access$readU16(Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;[BI)I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "usbmux TCP control destination="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " flags="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " ack="

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " window="

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_0
    iget-object v6, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->stateLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v7, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->connections:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    if-nez v4, :cond_1

    return-void

    .line 246
    :cond_1
    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    .line 247
    # invokes: Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;->readU32([BI)I
    invoke-static {v1, p1, v3}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;->access$readU32(Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;[BI)I

    move-result v1

    .line 248
    invoke-static {p1, v2, v0}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object p1

    .line 245
    invoke-virtual {v4, v5, v1, p1}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->onPacket$shared_release(II[B)V

    return-void

    :catchall_0
    move-exception p1

    .line 244
    monitor-exit v6

    throw p1

    .line 240
    :cond_2
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    const-string v0, "Invalid USBMUX TCP header length"

    invoke-direct {p1, v0}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw p1

    .line 236
    :cond_3
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    const-string v0, "USBMUX TCP frame is shorter than its header"

    invoke-direct {p1, v0}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final fail(Lcom/shilapi/xcertplay/transport/IphoneUsbException;)V
    .locals 3

    .line 253
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 254
    :try_start_0
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 255
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->failure:Lcom/shilapi/xcertplay/transport/IphoneUsbException;

    if-nez v1, :cond_1

    move-object v1, p1

    :cond_1
    iput-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->failure:Lcom/shilapi/xcertplay/transport/IphoneUsbException;

    const/4 v1, 0x1

    .line 256
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->closed:Z

    .line 257
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->connections:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->connections:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    monitor-exit v0

    .line 259
    check-cast v1, Ljava/lang/Iterable;

    .line 563
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;

    .line 259
    invoke-virtual {v1, p1}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->closeFromHost$shared_release(Lcom/shilapi/xcertplay/transport/IphoneUsbException;)V

    goto :goto_0

    .line 260
    :cond_2
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->pipe:Lcom/shilapi/xcertplay/transport/Iap2UsbSession;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 253
    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private final readerLoop()V
    .locals 3

    .line 219
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->stateLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Lcom/shilapi/xcertplay/transport/IphoneUsbException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :try_start_1
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->closed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catch Lcom/shilapi/xcertplay/transport/IphoneUsbException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    .line 221
    :cond_1
    :try_start_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 219
    :try_start_4
    monitor-exit v0

    .line 222
    iget-wide v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->readTimeoutMillis:J

    invoke-direct {p0, v0, v1}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->takeFrame(J)Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 223
    :cond_2
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;->getProtocol()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;->getPayload()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->dispatchTcp([B)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 219
    monitor-exit v0

    throw v1
    :try_end_4
    .catch Lcom/shilapi/xcertplay/transport/IphoneUsbException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 228
    new-instance v1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;

    const-string v2, "USBMUX reader failed"

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v1, v2, v0}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v1, Lcom/shilapi/xcertplay/transport/IphoneUsbException;

    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->fail(Lcom/shilapi/xcertplay/transport/IphoneUsbException;)V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 226
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->fail(Lcom/shilapi/xcertplay/transport/IphoneUsbException;)V

    :goto_1
    return-void
.end method

.method private final sendFrame(I[B)V
    .locals 10

    .line 193
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->writeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 194
    :try_start_0
    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->stateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 195
    :try_start_1
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->checkOpenLocked()V

    .line 196
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->nextMuxSequence:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v3, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->nextMuxAcknowledgement:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 194
    :try_start_2
    monitor-exit v2

    .line 198
    array-length v2, p2

    add-int/lit8 v2, v2, 0x10

    new-array v4, v2, [B

    .line 199
    sget-object v3, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->Companion:Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;

    const/4 v5, 0x0

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;->putU32([BII)V
    invoke-static {v3, v4, v5, p1}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;->access$putU32(Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;[BII)V

    const/4 p1, 0x4

    .line 200
    # invokes: Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;->putU32([BII)V
    invoke-static {v3, v4, p1, v2}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;->access$putU32(Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;[BII)V

    const/16 p1, 0x8

    const v2, -0x1120532

    .line 201
    # invokes: Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;->putU32([BII)V
    invoke-static {v3, v4, p1, v2}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;->access$putU32(Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;[BII)V

    .line 202
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const/16 v2, 0xc

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;->putU16([BII)V
    invoke-static {v3, v4, v2, p1}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;->access$putU16(Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;[BII)V

    .line 203
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const/16 v0, 0xe

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;->putU16([BII)V
    invoke-static {v3, v4, v0, p1}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;->access$putU16(Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;[BII)V

    const/16 v8, 0xc

    const/4 v9, 0x0

    const/16 v5, 0x10

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    .line 204
    invoke-static/range {v3 .. v9}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 206
    :try_start_3
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->pipe:Lcom/shilapi/xcertplay/transport/Iap2UsbSession;

    const/16 p2, 0x7d0

    invoke-virtual {p1, v4, p2}, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->write([BI)V
    :try_end_3
    .catch Lcom/shilapi/xcertplay/transport/IphoneUsbException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 211
    :try_start_4
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->stateLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 212
    :try_start_5
    iget p2, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->nextMuxSequence:I

    add-int/lit8 p2, p2, 0x1

    const v0, 0xffff

    and-int/2addr p2, v0

    iput p2, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->nextMuxSequence:I

    .line 213
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 211
    :try_start_6
    monitor-exit p1

    .line 214
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 193
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p2, v0

    .line 211
    :try_start_7
    monitor-exit p1

    throw p2

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 208
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->fail(Lcom/shilapi/xcertplay/transport/IphoneUsbException;)V

    .line 209
    throw p1

    :catchall_1
    move-exception v0

    move-object p1, v0

    .line 194
    monitor-exit v2

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    move-object p1, v0

    .line 193
    monitor-exit v1

    throw p1
.end method

.method private final takeFrame(J)Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;
    .locals 9

    .line 157
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long p1, p1, v2

    add-long/2addr v0, p1

    .line 159
    :goto_0
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->stateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 160
    :try_start_0
    iget-boolean p2, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->closed:Z

    const/4 v4, 0x0

    if-nez p2, :cond_4

    .line 161
    iget-object p2, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->receiveBuffer:[B

    array-length v5, p2

    const/16 v6, 0x10

    if-lt v5, v6, :cond_1

    .line 162
    sget-object v5, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->Companion:Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;

    const/4 v7, 0x4

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;->readU32([BI)I
    invoke-static {v5, p2, v7}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;->access$readU32(Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;[BI)I

    move-result p2

    if-lt p2, v6, :cond_0

    const/high16 v7, 0x10000

    if-gt p2, v7, :cond_0

    .line 166
    iget-object v7, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->receiveBuffer:[B

    array-length v8, v7

    if-lt v8, p2, :cond_1

    .line 170
    const-string/jumbo v0, "xcertplay-usb"

    const/4 v1, 0x0

    .line 171
    # invokes: Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;->readU32([BI)I
    invoke-static {v5, v7, v1}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;->access$readU32(Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;[BI)I

    move-result v2

    .line 172
    iget-object v3, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->receiveBuffer:[B

    const/16 v4, 0x8

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;->readU32([BI)I
    invoke-static {v5, v3, v4}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;->access$readU32(Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;[BI)I

    move-result v3

    invoke-static {v3}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v3

    invoke-static {v3, v6}, Lkotlin/text/UStringsKt;->toString-V7xB4Y4(II)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "usbmux rx proto="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " length="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " word8=0x"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 169
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->receiveBuffer:[B

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;->readU32([BI)I
    invoke-static {v5, v0, v1}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;->access$readU32(Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;[BI)I

    move-result v0

    .line 175
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->receiveBuffer:[B

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;->readU32([BI)I
    invoke-static {v5, v1, v4}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;->access$readU32(Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;[BI)I

    move-result v1

    .line 176
    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->receiveBuffer:[B

    const/16 v3, 0xc

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;->readU16([BI)I
    invoke-static {v5, v2, v3}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;->access$readU16(Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;[BI)I

    move-result v2

    iput v2, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->nextMuxAcknowledgement:I

    .line 177
    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->receiveBuffer:[B

    invoke-static {v2, v6, p2}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v2

    .line 178
    iget-object v3, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->receiveBuffer:[B

    array-length v4, v3

    invoke-static {v3, p2, v4}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v3

    iput-object v3, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->receiveBuffer:[B

    .line 179
    new-instance v3, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;

    invoke-direct {v3, v0, p2, v1, v2}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;-><init>(III[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p1

    return-object v3

    .line 164
    :cond_0
    :try_start_1
    new-instance v0, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid USBMUX frame length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_1
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 159
    monitor-exit p1

    .line 183
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    sub-long p1, v0, p1

    const-wide/16 v5, 0x0

    cmp-long v7, p1, v5

    if-gtz v7, :cond_2

    return-object v4

    :cond_2
    const-wide/32 v4, 0xf423f

    add-long/2addr p1, v4

    .line 185
    div-long/2addr p1, v2

    .line 186
    iget-object v4, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->pipe:Lcom/shilapi/xcertplay/transport/Iap2UsbSession;

    invoke-virtual {v4, p1, p2}, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->read(J)[B

    move-result-object p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    .line 187
    :cond_3
    iget-object p2, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->stateLock:Ljava/lang/Object;

    monitor-enter p2

    .line 188
    :try_start_2
    iget-object v4, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->receiveBuffer:[B

    invoke-static {v4, p1}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->receiveBuffer:[B

    .line 189
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    monitor-exit p2

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2

    throw p1

    .line 160
    :cond_4
    :try_start_3
    new-instance p2, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;

    const-string v0, "USBMUX host is closed"

    const/4 v1, 0x2

    invoke-direct {p2, v0, v4, v1, v4}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    .line 159
    monitor-exit p1

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 6

    .line 65
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 66
    :try_start_0
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 67
    :try_start_1
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->closed:Z

    .line 68
    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->connections:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->connections:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    monitor-exit v0

    .line 70
    check-cast v2, Ljava/lang/Iterable;

    .line 561
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;

    .line 70
    invoke-static {v2, v3, v1, v3}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->closeFromHost$shared_release$default(Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;Lcom/shilapi/xcertplay/transport/IphoneUsbException;ILjava/lang/Object;)V

    goto :goto_0

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->pipe:Lcom/shilapi/xcertplay/transport/Iap2UsbSession;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->close()V

    .line 72
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->readerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->readerThread:Ljava/lang/Thread;

    if-nez v1, :cond_2

    const-string v1, "readerThread"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_2
    if-eq v0, v1, :cond_4

    .line 74
    :try_start_2
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->readerThread:Ljava/lang/Thread;

    if-nez v0, :cond_3

    const-string v0, "readerThread"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v3, v0

    :goto_1
    iget-wide v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->readTimeoutMillis:J

    const-wide/16 v4, 0x64

    add-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/Thread;->join(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    .line 76
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_4
    return-void

    :catchall_0
    move-exception v1

    .line 65
    monitor-exit v0

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public final connect(IJ)Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;
    .locals 5

    const-string v0, "USBMUX TCP connection to port "

    const/4 v1, 0x1

    if-gt v1, p1, :cond_2

    const/high16 v1, 0x10000

    if-ge p1, v1, :cond_2

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_1

    .line 44
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 45
    :try_start_0
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->checkOpenLocked()V

    .line 46
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->allocateSourcePortLocked()I

    move-result v2

    .line 47
    new-instance v3, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;

    invoke-direct {v3, p0, v2, p1}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;-><init>(Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;II)V

    .line 48
    iget-object v4, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->connections:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit v1

    .line 52
    :try_start_1
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->beginConnect$shared_release()V

    .line 53
    invoke-virtual {v3, p2, p3}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->awaitConnected$shared_release(J)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object v3

    .line 54
    :cond_0
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->abort$shared_release()V

    .line 55
    new-instance p2, Lcom/shilapi/xcertplay/transport/IphoneUsbException$TimedOut;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " timed out"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x2

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0, p3, v0}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$TimedOut;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p2
    :try_end_1
    .catch Lcom/shilapi/xcertplay/transport/IphoneUsbException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 59
    invoke-virtual {p0, v3}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->removeConnection$shared_release(Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;)V

    .line 60
    throw p1

    :catchall_0
    move-exception p1

    .line 44
    monitor-exit v1

    throw p1

    .line 42
    :cond_1
    const-string/jumbo p1, "timeoutMillis must be positive"

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 41
    :cond_2
    const-string p1, "destinationPort must be a valid TCP port"

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final removeConnection$shared_release(Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;)V
    .locals 3

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->connections:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->getSourcePort$shared_release()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->connections:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->getSourcePort$shared_release()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final sendTcp$shared_release(IIIII[B)V
    .locals 9

    const-string v0, "payload"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    array-length v0, p6

    const/16 v1, 0x200

    if-le v0, v1, :cond_0

    array-length v0, p6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "usbmux TX source="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " destination="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " seq="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ack="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "xcertplay-usb"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    array-length v0, p6

    add-int/lit8 v0, v0, 0x14

    new-array v3, v0, [B

    .line 91
    sget-object v0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->Companion:Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;

    const/4 v2, 0x0

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;->putU16([BII)V
    invoke-static {v0, v3, v2, p1}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;->access$putU16(Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;[BII)V

    const/4 p1, 0x2

    .line 92
    # invokes: Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;->putU16([BII)V
    invoke-static {v0, v3, p1, p2}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;->access$putU16(Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;[BII)V

    const/4 p1, 0x4

    .line 93
    # invokes: Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;->putU32([BII)V
    invoke-static {v0, v3, p1, p3}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;->access$putU32(Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;[BII)V

    const/16 p1, 0x8

    .line 94
    # invokes: Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;->putU32([BII)V
    invoke-static {v0, v3, p1, p4}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;->access$putU32(Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;[BII)V

    const/16 p1, 0xc

    const/16 p2, 0x50

    .line 95
    aput-byte p2, v3, p1

    const/16 p1, 0xd

    int-to-byte p2, p5

    .line 96
    aput-byte p2, v3, p1

    const/16 p1, 0xe

    .line 97
    # invokes: Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;->putU16([BII)V
    invoke-static {v0, v3, p1, v1}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;->access$putU16(Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;[BII)V

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/16 v4, 0x14

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p6

    .line 98
    invoke-static/range {v2 .. v8}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    const/4 p1, 0x6

    .line 99
    invoke-direct {p0, p1, v3}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->sendFrame(I[B)V

    return-void
.end method
