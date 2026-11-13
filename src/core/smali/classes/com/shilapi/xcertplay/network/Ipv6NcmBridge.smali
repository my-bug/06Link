.class public final Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;
.super Ljava/lang/Object;
.source "Ipv6NcmBridge.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/network/Ipv6NcmBridge$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIpv6NcmBridge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Ipv6NcmBridge.kt\ncom/shilapi/xcertplay/network/Ipv6NcmBridge\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,186:1\n1#2:187\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u0000 &2\u00020\u0001:\u0001&B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0006\u0010\u001b\u001a\u00020\u000bJ\u0008\u0010\u001c\u001a\u00020\u000bH\u0016J\u0008\u0010\u001d\u001a\u00020\u000bH\u0002J\u0008\u0010\u001e\u001a\u00020\u000bH\u0002J\u0010\u0010\u001f\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u0019H\u0002J\u000c\u0010!\u001a\u00020\"*\u00020\u0007H\u0002J\u0014\u0010#\u001a\u00020\"*\u00020\u00072\u0006\u0010$\u001a\u00020\u0014H\u0002J\u0014\u0010%\u001a\u00020\u0014*\u00020\u00072\u0006\u0010$\u001a\u00020\u0014H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0019X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;",
        "Ljava/io/Closeable;",
        "ncm",
        "Lcom/shilapi/xcertplay/transport/NcmUsbBridge;",
        "tun",
        "Landroid/os/ParcelFileDescriptor;",
        "hostMac",
        "",
        "onError",
        "Lkotlin/Function1;",
        "",
        "",
        "<init>",
        "(Lcom/shilapi/xcertplay/transport/NcmUsbBridge;Landroid/os/ParcelFileDescriptor;[BLkotlin/jvm/functions/Function1;)V",
        "peerMac",
        "loggedInbound",
        "",
        "loggedOutbound",
        "loggedWaitingForPeer",
        "inboundLogBudget",
        "",
        "outboundLogBudget",
        "running",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "ncmToTunThread",
        "Ljava/lang/Thread;",
        "tunToNcmThread",
        "start",
        "close",
        "runNcmToTun",
        "runTunToNcm",
        "join",
        "thread",
        "macString",
        "",
        "summary",
        "offset",
        "u16",
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
.field private static final Companion:Lcom/shilapi/xcertplay/network/Ipv6NcmBridge$Companion;

.field public static final JOIN_TIMEOUT_MILLIS:J = 0x7d0L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final READ_TIMEOUT_MILLIS:J = 0x3e8L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "xcertplay-usb"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TUN_READ_BYTES:I = 0x1000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WRITE_TIMEOUT_MILLIS:I = 0x7d0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ZERO_READ_BACKOFF_NANOS:J = 0xf4240L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final hostMac:[B

.field private inboundLogBudget:I

.field private loggedInbound:Z

.field private loggedOutbound:Z

.field private loggedWaitingForPeer:Z

.field private final ncm:Lcom/shilapi/xcertplay/transport/NcmUsbBridge;

.field private ncmToTunThread:Ljava/lang/Thread;

.field private final onError:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private outboundLogBudget:I

.field private volatile peerMac:[B

.field private final running:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final tun:Landroid/os/ParcelFileDescriptor;

.field private tunToNcmThread:Ljava/lang/Thread;


# direct methods
.method public static synthetic $r8$lambda$262nv_BwOQPz2i0EZAhri9ak-TM(Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->runTunToNcm()V

    return-void
.end method

.method public static synthetic $r8$lambda$GbwjNXA0mPhP92VdS2tXS3_-g24(Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->runNcmToTun()V

    return-void
.end method

.method public static synthetic $r8$lambda$mXyYcJiAogYtnWzCkyu9x24EIV8(B)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->macString$lambda$4(B)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->Companion:Lcom/shilapi/xcertplay/network/Ipv6NcmBridge$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/shilapi/xcertplay/transport/NcmUsbBridge;Landroid/os/ParcelFileDescriptor;[BLkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/transport/NcmUsbBridge;",
            "Landroid/os/ParcelFileDescriptor;",
            "[B",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ncm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tun"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hostMac"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->ncm:Lcom/shilapi/xcertplay/transport/NcmUsbBridge;

    .line 25
    iput-object p2, p0, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->tun:Landroid/os/ParcelFileDescriptor;

    .line 26
    iput-object p3, p0, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->hostMac:[B

    .line 27
    iput-object p4, p0, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->onError:Lkotlin/jvm/functions/Function1;

    .line 30
    array-length p1, p3

    const/4 p2, 0x6

    if-ne p1, p2, :cond_0

    const/16 p1, 0x10

    .line 38
    iput p1, p0, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->inboundLogBudget:I

    const/16 p1, 0x18

    .line 39
    iput p1, p0, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->outboundLogBudget:I

    .line 40
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "hostMac must be 6 bytes"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final join(Ljava/lang/Thread;)V
    .locals 2

    .line 147
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x7d0

    .line 149
    :try_start_0
    invoke-virtual {p1, v0, v1}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 153
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    :goto_1
    return-void
.end method

.method private final macString([B)Ljava/lang/String;
    .locals 10

    .line 157
    const-string v0, ":"

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v7, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge$$ExternalSyntheticLambda2;

    invoke-direct {v7}, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge$$ExternalSyntheticLambda2;-><init>()V

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

.method private static final macString$lambda$4(B)Ljava/lang/CharSequence;
    .locals 3

    and-int/lit16 p0, p0, 0xff

    .line 157
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

.method private final runNcmToTun()V
    .locals 9

    .line 65
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->tun:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 67
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 68
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->ncm:Lcom/shilapi/xcertplay/transport/NcmUsbBridge;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->recv(J)[B

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    sget-object v2, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec;->INSTANCE:Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec;

    invoke-virtual {v2, v1}, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec;->parseIpv6View([B)Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec$Ipv6FrameView;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec$Ipv6FrameView;->getSourceMac()[B

    move-result-object v3

    iput-object v3, p0, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->peerMac:[B

    .line 71
    iget-boolean v3, p0, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->loggedInbound:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v4, "xcertplay-usb"

    if-nez v3, :cond_2

    const/4 v3, 0x1

    .line 72
    :try_start_1
    iput-boolean v3, p0, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->loggedInbound:Z

    .line 76
    sget-object v3, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->INSTANCE:Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec$Ipv6FrameView;->getPayloadLength()I

    move-result v5

    .line 77
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec$Ipv6FrameView;->getSourceMac()[B

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->macString([B)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ncm first inbound ipv6 bytes="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " peer="

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 76
    invoke-virtual {v3, v5}, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->mask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_2
    iget v3, p0, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->inboundLogBudget:I

    if-lez v3, :cond_3

    add-int/lit8 v3, v3, -0x1

    .line 81
    iput v3, p0, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->inboundLogBudget:I

    .line 82
    sget-object v3, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->INSTANCE:Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec$Ipv6FrameView;->getPayloadOffset()I

    move-result v5

    invoke-direct {p0, v1, v5}, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->summary([BI)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ncm inbound "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->mask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_3
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec$Ipv6FrameView;->getPayloadOffset()I

    move-result v3

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec$Ipv6FrameView;->getPayloadLength()I

    move-result v2

    iget-object v4, p0, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->ncm:Lcom/shilapi/xcertplay/transport/NcmUsbBridge;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->getStartup()Lcom/shilapi/xcertplay/transport/WiredStartRecovery;

    move-result-object v4

    invoke-virtual {v4, v1, v3, v2}, Lcom/shilapi/xcertplay/transport/WiredStartRecovery;->observeIpv6([BII)V

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 89
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->onError:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_1
    move-exception v0

    .line 87
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->onError:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    return-void
.end method

.method private final runTunToNcm()V
    .locals 11

    .line 94
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->tun:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    const/16 v1, 0x1000

    .line 95
    new-array v1, v1, [B

    .line 97
    :cond_0
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 98
    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 100
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->onError:Lkotlin/jvm/functions/Function1;

    new-instance v1, Ljava/io/IOException;

    const-string v2, "NCM IPv6 tunnel closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    if-nez v2, :cond_2

    const-wide/32 v2, 0xf4240

    .line 106
    invoke-static {v2, v3}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    goto :goto_0

    .line 109
    :cond_2
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    const-string v4, "copyOf(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    sget-object v4, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec;->INSTANCE:Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec;

    iget-object v5, p0, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->hostMac:[B

    invoke-virtual {v4, v3, v5}, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec;->addNeighborAdvertisementTargetMac([B[B)[B

    move-result-object v4

    .line 111
    array-length v5, v4

    array-length v3, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v6, "xcertplay-usb"

    if-eq v5, v3, :cond_3

    .line 112
    :try_start_1
    const-string v3, "ncm added target-link-layer option to neighbor advertisement"

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_3
    iget v3, p0, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->outboundLogBudget:I

    const/4 v5, 0x0

    if-lez v3, :cond_4

    add-int/lit8 v3, v3, -0x1

    .line 115
    iput v3, p0, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->outboundLogBudget:I

    .line 116
    sget-object v3, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->INSTANCE:Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;

    invoke-direct {p0, v4, v5}, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->summary([BI)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ncm outbound "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->mask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_4
    sget-object v3, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec;->INSTANCE:Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec;

    invoke-virtual {v3, v4}, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec;->multicastDestinationMac([B)[B

    move-result-object v3

    if-nez v3, :cond_5

    .line 119
    iget-object v7, p0, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->peerMac:[B

    goto :goto_1

    :cond_5
    move-object v7, v3

    :goto_1
    const/4 v8, 0x1

    if-nez v7, :cond_6

    .line 121
    iget-boolean v3, p0, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->loggedWaitingForPeer:Z

    if-nez v3, :cond_0

    .line 122
    iput-boolean v8, p0, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->loggedWaitingForPeer:Z

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ncm deferred outbound unicast bytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " until peer MAC is learned"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 127
    :cond_6
    iget-boolean v9, p0, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->loggedOutbound:Z

    if-nez v9, :cond_8

    .line 128
    iput-boolean v8, p0, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->loggedOutbound:Z

    .line 131
    sget-object v9, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->INSTANCE:Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;

    .line 132
    invoke-direct {p0, v7}, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->macString([B)Ljava/lang/String;

    move-result-object v10

    if-eqz v3, :cond_7

    const/4 v5, 0x1

    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ncm first outbound ipv6 bytes="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " destination="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " multicast="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 131
    invoke-virtual {v9, v2}, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->mask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_8
    sget-object v2, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec;->INSTANCE:Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec;

    iget-object v3, p0, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->hostMac:[B

    invoke-virtual {v2, v3, v7, v4}, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec;->build([B[B[B)[B

    move-result-object v2

    .line 137
    iget-object v3, p0, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->ncm:Lcom/shilapi/xcertplay/transport/NcmUsbBridge;

    const/16 v4, 0x7d0

    invoke-virtual {v3, v2, v4}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->send([BI)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 142
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->onError:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catch_1
    move-exception v0

    .line 140
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->onError:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    :goto_2
    return-void
.end method

.method private final summary([BI)Ljava/lang/String;
    .locals 8

    .line 160
    array-length v0, p1

    sub-int/2addr v0, p2

    const/16 v1, 0x28

    if-ge v0, v1, :cond_0

    .line 161
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "truncated bytes="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v1, p2, 0x8

    add-int/lit8 v2, p2, 0x18

    .line 162
    invoke-static {p1, v1, v2}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, p2, 0x28

    .line 163
    invoke-static {p1, v2, v3}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v4, p2, 0x6

    .line 164
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    .line 166
    const-string v5, "->"

    const/16 v6, 0x2c

    const/4 v7, 0x6

    if-ne v4, v7, :cond_1

    if-lt v0, v6, :cond_1

    invoke-direct {p0, p1, v3}, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->u16([BI)I

    move-result v3

    add-int/lit8 p2, p2, 0x2a

    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->u16([BI)I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v6, " tcp="

    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/16 v7, 0x11

    if-ne v4, v7, :cond_2

    if-lt v0, v6, :cond_2

    .line 167
    invoke-direct {p0, p1, v3}, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->u16([BI)I

    move-result v3

    add-int/lit8 p2, p2, 0x2a

    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->u16([BI)I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v6, " udp="

    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/16 p2, 0x3a

    if-ne v4, p2, :cond_3

    const/16 p2, 0x29

    if-lt v0, p2, :cond_3

    .line 168
    aget-byte p1, p1, v3

    and-int/lit16 p1, p1, 0xff

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v3, " icmp6="

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 169
    :cond_3
    const-string p1, ""

    .line 171
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v3, "bytes="

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " src="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " dst="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " next="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final u16([BI)I
    .locals 1

    .line 175
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p2, p2, 0x1

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->ncm:Lcom/shilapi/xcertplay/transport/NcmUsbBridge;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->close()V

    .line 59
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->tun:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Lcom/shilapi/xcertplay/E01TunClose;->close(Landroid/os/ParcelFileDescriptor;)V

    .line 60
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->ncmToTunThread:Ljava/lang/Thread;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "ncmToTunThread"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->join(Ljava/lang/Thread;)V

    .line 61
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->tunToNcmThread:Ljava/lang/Thread;

    if-nez v0, :cond_2

    const-string/jumbo v0, "tunToNcmThread"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->join(Ljava/lang/Thread;)V

    iget-object v0, p0, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->ncmToTunThread:Ljava/lang/Thread;

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->tunToNcmThread:Ljava/lang/Thread;

    invoke-static {v0, v1}, Lcom/shilapi/xcertplay/E01TunClose;->noteThreads(Ljava/lang/Thread;Ljava/lang/Thread;)V

    return-void
.end method

.method public final start()V
    .locals 4

    .line 45
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge$$ExternalSyntheticLambda0;-><init>(Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;)V

    const-string v3, "ncm-ipv6-in"

    invoke-direct {v0, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 48
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 46
    iput-object v0, p0, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->ncmToTunThread:Ljava/lang/Thread;

    .line 50
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge$$ExternalSyntheticLambda1;-><init>(Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;)V

    const-string v3, "ncm-ipv6-out"

    invoke-direct {v0, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 52
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 50
    iput-object v0, p0, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->tunToNcmThread:Ljava/lang/Thread;

    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "bridge is already started"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
