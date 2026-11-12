.class public final Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;
.super Ljava/lang/Object;
.source "Iap2LinkChannel.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/transport/Iap2LinkChannel$Command;,
        Lcom/shilapi/xcertplay/transport/Iap2LinkChannel$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIap2LinkChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Iap2LinkChannel.kt\ncom/shilapi/xcertplay/transport/Iap2LinkChannel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,376:1\n1#2:377\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0007\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 ?2\u00020\u0001:\u0002>?B!\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000e\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020 J\r\u0010\u0015\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0002\u0010!J\u000e\u0010\"\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\u0012J\u001d\u0010$\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\u00122\u0006\u0010\u001f\u001a\u00020 H\u0000\u00a2\u0006\u0002\u0008%J\u0010\u0010&\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u001f\u001a\u00020 J\u0008\u0010\'\u001a\u00020(H\u0016J\u0008\u0010)\u001a\u00020(H\u0002J\u0010\u0010*\u001a\u00020(2\u0006\u0010+\u001a\u00020,H\u0002J\u0010\u0010-\u001a\u00020(2\u0006\u0010+\u001a\u00020,H\u0002J\u0010\u0010.\u001a\u00020\u00072\u0006\u0010+\u001a\u00020,H\u0002J\u0012\u0010/\u001a\u00020(2\u0008\u00100\u001a\u0004\u0018\u00010\u001aH\u0002J\u0012\u00101\u001a\u00020(2\u0008\u00100\u001a\u0004\u0018\u00010\u001aH\u0002J\u0012\u00102\u001a\u00020(2\u0008\u00100\u001a\u0004\u0018\u00010\u001aH\u0002J\u0008\u00103\u001a\u00020(H\u0002J\u0008\u00104\u001a\u00020\u0007H\u0002J\n\u00105\u001a\u0004\u0018\u00010\u001aH\u0002J\u0010\u00106\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\u0010H\u0002J\u0010\u00107\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\u0012H\u0002J\u001e\u00108\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020 2\u000c\u00109\u001a\u0008\u0012\u0004\u0012\u00020\u00070:H\u0002J\u001e\u0010;\u001a\u0004\u0018\u00010\u001a2\u0008\u0010<\u001a\u0004\u0018\u00010\u001a2\u0008\u0010=\u001a\u0004\u0018\u00010\u001aH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00120\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0016R\u000e\u0010\u0017\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006@"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;",
        "Ljava/io/Closeable;",
        "underlying",
        "Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;",
        "linkConfig",
        "Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;",
        "initiateNegotiation",
        "",
        "<init>",
        "(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;Z)V",
        "lock",
        "Ljava/lang/Object;",
        "commands",
        "Ljava/util/ArrayDeque;",
        "Lcom/shilapi/xcertplay/transport/Iap2LinkChannel$Command;",
        "commandBytes",
        "",
        "controls",
        "",
        "controlBytes",
        "ready",
        "peerMaxControlPayloadBytes",
        "Ljava/lang/Integer;",
        "closing",
        "terminated",
        "terminalFailure",
        "",
        "streamCloseStarted",
        "worker",
        "Ljava/lang/Thread;",
        "awaitReady",
        "timeoutMillis",
        "",
        "()Ljava/lang/Integer;",
        "sendControl",
        "bytes",
        "sendControlAwaitCapacity",
        "sendControlAwaitCapacity$shared_release",
        "recvControl",
        "close",
        "",
        "runPump",
        "drainCommands",
        "engine",
        "Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;",
        "flush",
        "drainEvents",
        "finish",
        "failure",
        "finishLocked",
        "terminalLocked",
        "throwTerminalFailureLocked",
        "isClosing",
        "closeUnderlyingOnce",
        "hasCommandCapacityLocked",
        "enqueueCommandLocked",
        "waitFor",
        "readyPredicate",
        "Lkotlin/Function0;",
        "combineFailures",
        "first",
        "second",
        "Command",
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
.field private static final CLOSE_JOIN_MILLIS:J = 0x3e8L

.field public static final Companion:Lcom/shilapi/xcertplay/transport/Iap2LinkChannel$Companion;

.field private static final MAX_PENDING_COMMANDS:I = 0x40

.field private static final MAX_PENDING_COMMAND_BYTES:I = 0x100000

.field private static final MAX_PENDING_CONTROLS:I = 0x40

.field private static final MAX_PENDING_CONTROL_BYTES:I = 0x100000

.field private static final MAX_WAIT_MILLIS:J = 0x8637bd05af6L

.field private static final MINIMUM_RECEIVE_POLL_MILLIS:J = 0x1L

.field private static final NANOS_PER_MILLISECOND:J = 0xf4240L

.field private static final RECEIVE_CHUNK_BYTES:I = 0x2000

.field private static final RECEIVE_POLL_MILLIS:J = 0x64L

.field private static final WIRED_LINK_CONFIG:Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;

.field private static final WIRELESS_LINK_CONFIG:Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;


# instance fields
.field private closing:Z

.field private commandBytes:I

.field private final commands:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/shilapi/xcertplay/transport/Iap2LinkChannel$Command;",
            ">;"
        }
    .end annotation
.end field

.field private controlBytes:I

.field private final controls:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "[B>;"
        }
    .end annotation
.end field

.field private final initiateNegotiation:Z

.field private final linkConfig:Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;

.field private final lock:Ljava/lang/Object;

.field private peerMaxControlPayloadBytes:Ljava/lang/Integer;

.field private ready:Z

.field private streamCloseStarted:Z

.field private terminalFailure:Ljava/lang/Throwable;

.field private terminated:Z

.field private final underlying:Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;

.field private final worker:Ljava/lang/Thread;


# direct methods
.method public static synthetic $r8$lambda$-LjQ5J-apz8Fj4gfh24az_RCsoc(Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->runPump()V

    return-void
.end method

.method public static synthetic $r8$lambda$2F0Hmv-x4U-Oc2s_cU9twuD3WXM(Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;[B)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->sendControlAwaitCapacity$lambda$10$lambda$9(Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;[B)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$dBetLtBPXHX2DMHlBEpxMTu5kgY(Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;)Z
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->recvControl$lambda$13$lambda$12(Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$upA7c-t0wA9SqMGqPJKhMFJ-KWg(Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;)Z
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->awaitReady$lambda$3$lambda$2(Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->Companion:Lcom/shilapi/xcertplay/transport/Iap2LinkChannel$Companion;

    .line 342
    new-instance v2, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;

    const/16 v12, 0x1e6

    const/4 v13, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v13}, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;-><init>(IIIZIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->WIRED_LINK_CONFIG:Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;

    .line 347
    new-instance v3, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;

    const/16 v13, 0x1ee

    const/4 v14, 0x0

    const/4 v4, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v14}, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;-><init>(IIIZIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v3, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->WIRELESS_LINK_CONFIG:Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;

    return-void
.end method

.method private constructor <init>(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;Z)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->underlying:Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/E01GpsLinkProbe;->channel(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    iput-object p2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->linkConfig:Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;

    .line 21
    iput-boolean p3, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->initiateNegotiation:Z

    .line 25
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->lock:Ljava/lang/Object;

    .line 26
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->commands:Ljava/util/ArrayDeque;

    .line 28
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->controls:Ljava/util/ArrayDeque;

    .line 38
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel$$ExternalSyntheticLambda1;-><init>(Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;)V

    const-string/jumbo p3, "xcertplay-iap2-link"

    invoke-direct {p1, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 39
    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 38
    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->worker:Ljava/lang/Thread;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;-><init>(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;Z)V

    return-void
.end method

.method public static final synthetic access$getWIRED_LINK_CONFIG$cp()Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;
    .locals 1

    .line 18
    sget-object v0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->WIRED_LINK_CONFIG:Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;

    return-object v0
.end method

.method public static final synthetic access$getWIRELESS_LINK_CONFIG$cp()Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;
    .locals 1

    .line 18
    sget-object v0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->WIRELESS_LINK_CONFIG:Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;

    return-object v0
.end method

.method public static final synthetic access$getWorker$p(Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;)Ljava/lang/Thread;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->worker:Ljava/lang/Thread;

    return-object p0
.end method

.method private static final awaitReady$lambda$3$lambda$2(Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;)Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->ready:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->terminated:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean p0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->terminated:Z

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private final closeUnderlyingOnce()Ljava/lang/Throwable;
    .locals 3

    .line 276
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 277
    :try_start_0
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->streamCloseStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    const/4 v1, 0x1

    .line 278
    :try_start_1
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->streamCloseStarted:Z

    .line 279
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 276
    monitor-exit v0

    .line 281
    :try_start_2
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->underlying:Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;

    invoke-interface {v0}, Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v2

    :catchall_0
    move-exception v0

    return-object v0

    :catchall_1
    move-exception v1

    .line 276
    monitor-exit v0

    throw v1
.end method

.method private final combineFailures(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    if-eqz p2, :cond_1

    if-eq p2, p1, :cond_1

    .line 326
    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_1
    return-object p1
.end method

.method private final drainCommands(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;)V
    .locals 4

    .line 177
    :cond_0
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->writable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 178
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 179
    :try_start_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->commands:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->commands:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel$Command;

    .line 183
    iget v3, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->commandBytes:I

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel$Command;->getControl()[B

    move-result-object v2

    array-length v2, v2

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->commandBytes:I

    .line 184
    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->lock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 182
    check-cast v1, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel$Command;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :goto_0
    monitor-exit v0

    if-nez v1, :cond_2

    goto :goto_1

    .line 188
    :cond_2
    invoke-static {p1, v1}, Lcom/shilapi/xcertplay/E01GpsLinkProbe;->drain(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel$Command;->getControl()[B

    move-result-object v0

    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->Companion:Lcom/shilapi/xcertplay/transport/Iap2LinkChannel$Companion;

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2LinkChannel$Companion;->nowMillis()J
    invoke-static {v1}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel$Companion;->access$nowMillis(Lcom/shilapi/xcertplay/transport/Iap2LinkChannel$Companion;)J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->sendControl([BJ)V

    invoke-static {}, Lcom/shilapi/xcertplay/E01GpsLinkProbe;->drained()V

    .line 189
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 178
    monitor-exit v0

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method private final drainEvents(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;)Z
    .locals 7

    .line 201
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->pollEvent()Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    return v1

    .line 202
    :cond_1
    instance-of v2, v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Writable;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 203
    :try_start_0
    move-object v4, v0

    check-cast v4, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Writable;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Writable;->getValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 205
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->peerSynchronization()Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->getMaxLength()I

    move-result v4

    add-int/lit8 v4, v4, -0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->peerMaxControlPayloadBytes:Ljava/lang/Integer;

    .line 207
    :cond_2
    check-cast v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Writable;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Writable;->getValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->terminated:Z

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->ready:Z

    .line 208
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 209
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2

    throw p1

    .line 211
    :cond_4
    instance-of v2, v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Control;

    if-eqz v2, :cond_7

    .line 212
    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 213
    :try_start_1
    iget-object v4, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->controls:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->size()I

    move-result v4

    const/16 v5, 0x40

    if-ge v4, v5, :cond_6

    .line 214
    move-object v4, v0

    check-cast v4, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Control;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Control;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    iget v5, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->controlBytes:I

    const/high16 v6, 0x100000

    sub-int/2addr v6, v5

    if-le v4, v6, :cond_5

    goto :goto_2

    .line 218
    :cond_5
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->controls:Ljava/util/ArrayDeque;

    check-cast v1, Ljava/util/Collection;

    move-object v4, v0

    check-cast v4, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Control;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Control;->getBytes()[B

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 219
    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->controlBytes:I

    check-cast v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Control;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Control;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->controlBytes:I

    .line 220
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x0

    .line 212
    :cond_6
    :goto_2
    monitor-exit v2

    if-eqz v1, :cond_0

    .line 225
    new-instance p1, Ljava/io/IOException;

    const-string v0, "iAP2 received-control queue limit exceeded"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->finish(Ljava/lang/Throwable;)V

    return v3

    :catchall_1
    move-exception p1

    .line 212
    monitor-exit v2

    throw p1

    .line 230
    :cond_7
    instance-of p1, v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Dead;

    if-eqz p1, :cond_9

    .line 231
    new-instance p1, Ljava/io/IOException;

    check-cast v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Dead;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Dead;->getReason()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const-string v0, "iAP2 link ended"

    :cond_8
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->finish(Ljava/lang/Throwable;)V

    return v3

    .line 201
    :cond_9
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private final enqueueCommandLocked([B)Z
    .locals 2

    .line 294
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->hasCommandCapacityLocked(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->commands:Ljava/util/ArrayDeque;

    check-cast v0, Ljava/util/Collection;

    new-instance v1, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel$Command;

    invoke-direct {v1, p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel$Command;-><init>([B)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v1}, Lcom/shilapi/xcertplay/E01GpsLinkProbe;->queued(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 296
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->commandBytes:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->commandBytes:I

    .line 297
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->lock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    const/4 p1, 0x1

    return p1
.end method

.method private final finish(Ljava/lang/Throwable;)V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    :try_start_0
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->finishLocked(Ljava/lang/Throwable;)V

    .line 241
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 239
    monitor-exit v0

    .line 242
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->closeUnderlyingOnce()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 243
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 244
    :try_start_1
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->terminalFailure:Ljava/lang/Throwable;

    invoke-direct {p0, v1, p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->combineFailures(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->terminalFailure:Ljava/lang/Throwable;

    .line 245
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->lock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 246
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_0
    return-void

    :catchall_1
    move-exception p1

    .line 239
    monitor-exit v0

    throw p1
.end method

.method private final finishLocked(Ljava/lang/Throwable;)V
    .locals 1

    .line 251
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->terminated:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->terminalLocked(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 252
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->terminalFailure:Ljava/lang/Throwable;

    invoke-direct {p0, v0, p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->combineFailures(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->terminalFailure:Ljava/lang/Throwable;

    .line 253
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->lock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    :cond_1
    return-void
.end method

.method private final flush(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;)V
    .locals 1

    .line 194
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->takeOutput()[B

    move-result-object p1

    .line 195
    array-length v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->underlying:Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;

    invoke-interface {v0, p1}, Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;->send([B)V

    :cond_1
    return-void
.end method

.method private final hasCommandCapacityLocked(I)Z
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->commands:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v1, 0x40

    if-ge v0, v1, :cond_0

    const/high16 v0, 0x100000

    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->commandBytes:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final isClosing()Z
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->closing:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->terminated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static final recvControl$lambda$13$lambda$12(Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;)Z
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->controls:Ljava/util/ArrayDeque;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->terminated:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private final runPump()V
    .locals 10

    .line 143
    new-instance v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->linkConfig:Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;-><init>(Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;)V

    const/4 v1, 0x0

    .line 145
    :try_start_0
    iget-boolean v2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->initiateNegotiation:Z

    sget-object v3, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->Companion:Lcom/shilapi/xcertplay/transport/Iap2LinkChannel$Companion;

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2LinkChannel$Companion;->nowMillis()J
    invoke-static {v3}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel$Companion;->access$nowMillis(Lcom/shilapi/xcertplay/transport/Iap2LinkChannel$Companion;)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->start(ZJ)V

    .line 146
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->isClosing()Z

    move-result v2

    if-nez v2, :cond_6

    .line 147
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->drainCommands(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;)V

    .line 148
    sget-object v2, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->Companion:Lcom/shilapi/xcertplay/transport/Iap2LinkChannel$Companion;

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2LinkChannel$Companion;->nowMillis()J
    invoke-static {v2}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel$Companion;->access$nowMillis(Lcom/shilapi/xcertplay/transport/Iap2LinkChannel$Companion;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->advanceTime(J)V

    .line 149
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->flush(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;)V

    .line 150
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->drainEvents(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    .line 151
    :cond_1
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->isClosing()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    .line 153
    :cond_2
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->nextDeadlineMillis()Ljava/lang/Long;

    move-result-object v3

    const-wide/16 v4, 0x64

    if-eqz v3, :cond_3

    .line 156
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2LinkChannel$Companion;->nowMillis()J
    invoke-static {v2}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel$Companion;->access$nowMillis(Lcom/shilapi/xcertplay/transport/Iap2LinkChannel$Companion;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x0

    invoke-static {v6, v7, v8, v9}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v6

    goto :goto_1

    :cond_3
    move-wide v6, v4

    .line 154
    :goto_1
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    const-wide/16 v5, 0x1

    .line 157
    invoke-static {v3, v4, v5, v6}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v3

    .line 158
    iget-object v5, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->underlying:Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;

    const/16 v6, 0x2000

    invoke-interface {v5, v6, v3, v4}, Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;->recv(IJ)[B

    move-result-object v3

    .line 159
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->isClosing()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_0

    .line 162
    array-length v4, v3

    if-nez v4, :cond_5

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->feedEof()V

    goto :goto_0

    .line 163
    :cond_5
    # invokes: Lcom/shilapi/xcertplay/transport/Iap2LinkChannel$Companion;->nowMillis()J
    invoke-static {v2}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel$Companion;->access$nowMillis(Lcom/shilapi/xcertplay/transport/Iap2LinkChannel$Companion;)J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->feed([BJ)V

    goto :goto_0

    .line 166
    :cond_6
    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->finish(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 168
    instance-of v2, v0, Ljava/lang/Error;

    if-nez v2, :cond_8

    .line 172
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->isClosing()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->finish(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_7
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->finish(Ljava/lang/Throwable;)V

    :goto_2
    return-void

    .line 169
    :cond_8
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->finish(Ljava/lang/Throwable;)V

    .line 170
    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method private static final sendControlAwaitCapacity$lambda$10$lambda$9(Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;[B)Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->terminated:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->closing:Z

    if-nez v0, :cond_1

    array-length p1, p1

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->hasCommandCapacityLocked(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private final terminalLocked(Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {p0}, Lcom/shilapi/xcertplay/E01GpsLinkProbe;->close(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 258
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->terminated:Z

    const/4 v0, 0x0

    .line 259
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->ready:Z

    .line 260
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->commands:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    .line 261
    iput v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->commandBytes:I

    .line 262
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->controls:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    .line 263
    iput v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->controlBytes:I

    .line 264
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->terminalFailure:Ljava/lang/Throwable;

    invoke-direct {p0, v0, p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->combineFailures(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->terminalFailure:Ljava/lang/Throwable;

    .line 265
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->lock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method private final throwTerminalFailureLocked()V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->terminalFailure:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    throw v0
.end method

.method private final waitFor(JLkotlin/jvm/functions/Function0;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 303
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    cmp-long v4, p1, v2

    if-nez v4, :cond_1

    return v0

    :cond_1
    const-wide v2, 0x8637bd05af6L

    .line 305
    invoke-static {p1, p2, v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide p1

    const-wide/32 v2, 0xf4240

    mul-long p1, p1, v2

    .line 306
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 307
    :goto_0
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_3

    .line 308
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    cmp-long v8, v6, p1

    if-ltz v8, :cond_2

    return v0

    :cond_2
    sub-long v6, p1, v6

    .line 312
    :try_start_0
    iget-object v8, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->lock:Ljava/lang/Object;

    .line 313
    div-long v9, v6, v2

    .line 314
    rem-long/2addr v6, v2

    long-to-int v7, v6

    .line 312
    invoke-virtual {v8, v9, v10, v7}, Ljava/lang/Object;->wait(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 317
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    return v0

    :cond_3
    return v1
.end method


# virtual methods
.method public final awaitReady(J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 45
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 46
    :try_start_0
    new-instance v1, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel$$ExternalSyntheticLambda3;-><init>(Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;)V

    invoke-direct {p0, p1, p2, v1}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->waitFor(JLkotlin/jvm/functions/Function0;)Z

    .line 47
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->throwTerminalFailureLocked()V

    .line 48
    iget-boolean p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->ready:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->terminated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .line 44
    :cond_1
    const-string/jumbo p1, "timeoutMillis must not be negative"

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public close()V
    .locals 4

    .line 113
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_0
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->closing:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 115
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->closing:Z

    const/4 v1, 0x0

    .line 116
    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->terminalLocked(Ljava/lang/Throwable;)V

    .line 118
    :cond_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 113
    monitor-exit v0

    .line 120
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->closeUnderlyingOnce()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 123
    :try_start_1
    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->terminalFailure:Ljava/lang/Throwable;

    invoke-direct {p0, v2, v0}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->combineFailures(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    iput-object v2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->terminalFailure:Ljava/lang/Throwable;

    .line 124
    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->lock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 125
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 128
    :cond_1
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->worker:Ljava/lang/Thread;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 130
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 131
    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {p0, v0, v1}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->combineFailures(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 133
    :goto_1
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->worker:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 134
    new-instance v1, Ljava/io/IOException;

    const-string v2, "iAP2 link worker did not stop after close"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {p0, v0, v1}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->combineFailures(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 136
    :cond_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 137
    :try_start_3
    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->terminalFailure:Ljava/lang/Throwable;

    invoke-direct {p0, v0, v2}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->combineFailures(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 138
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 136
    monitor-exit v1

    if-nez v0, :cond_3

    return-void

    .line 139
    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    .line 136
    monitor-exit v1

    throw v0

    :catchall_2
    move-exception v1

    .line 113
    monitor-exit v0

    throw v1
.end method

.method public final peerMaxControlPayloadBytes()Ljava/lang/Integer;
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->peerMaxControlPayloadBytes:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final recvControl(J)[B
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 97
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 98
    :try_start_0
    new-instance v1, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel$$ExternalSyntheticLambda0;-><init>(Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;)V

    invoke-direct {p0, p1, p2, v1}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->waitFor(JLkotlin/jvm/functions/Function0;)Z

    .line 99
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->throwTerminalFailureLocked()V

    .line 100
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->controls:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    .line 101
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->controls:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 102
    iget p2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->controlBytes:I

    array-length v1, p1

    sub-int/2addr p2, v1

    iput p2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->controlBytes:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .line 96
    :cond_1
    const-string/jumbo p1, "timeoutMillis must not be negative"

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final sendControl([B)Z
    .locals 2

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    array-length v0, p1

    const v1, 0xfff5

    if-gt v0, v1, :cond_2

    .line 67
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const-string v0, "copyOf(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_0
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->terminated:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->closing:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->enqueueCommandLocked([B)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p1

    .line 69
    :cond_1
    :goto_0
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    .line 70
    monitor-exit v0

    throw p1

    .line 65
    :cond_2
    const-string p1, "iAP2 control payload exceeds 65525 bytes"

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final sendControlAwaitCapacity$shared_release([BJ)Z
    .locals 3

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    array-length v0, p1

    const v1, 0xfff5

    if-gt v0, v1, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    .line 83
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const-string v0, "copyOf(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_0
    new-instance v1, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel$$ExternalSyntheticLambda2;-><init>(Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;[B)V

    invoke-direct {p0, p2, p3, v1}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->waitFor(JLkotlin/jvm/functions/Function0;)Z

    .line 88
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->throwTerminalFailureLocked()V

    .line 89
    iget-boolean p2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->terminated:Z

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->closing:Z

    if-eqz p2, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->enqueueCommandLocked([B)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p1

    .line 89
    :cond_1
    :goto_0
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    .line 90
    monitor-exit v0

    throw p1

    .line 82
    :cond_2
    const-string/jumbo p1, "timeoutMillis must not be negative"

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 80
    :cond_3
    const-string p1, "iAP2 control payload exceeds 65525 bytes"

    .line 79
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
