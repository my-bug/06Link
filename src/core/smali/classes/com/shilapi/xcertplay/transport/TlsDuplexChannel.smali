.class public final Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;
.super Ljava/lang/Object;
.source "TlsDuplexChannel.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;,
        Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$Companion;,
        Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$Deadline;,
        Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$EngineOutcome;,
        Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTlsDuplexChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TlsDuplexChannel.kt\ncom/shilapi/xcertplay/transport/TlsDuplexChannel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,438:1\n1#2:439\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 ;2\u00020\u0001:\u000489:;B\u0019\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u001a\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0008\u0010\u001d\u001a\u00020\u0015H\u0016J\u0010\u0010\u001e\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u001cH\u0002J\u001a\u0010\u001f\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020!H\u0002J\u0010\u0010\"\u001a\u00020\u00102\u0006\u0010#\u001a\u00020$H\u0002J\u0008\u0010%\u001a\u00020$H\u0002J\u0010\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020)H\u0002J\u0008\u0010*\u001a\u00020\'H\u0002J\u0010\u0010+\u001a\u00020\u00152\u0006\u0010,\u001a\u00020\u0017H\u0002J\u0008\u0010-\u001a\u00020\u0015H\u0002J\u0008\u0010.\u001a\u00020\u0015H\u0002J\u0018\u0010/\u001a\u00020\u001a2\u0006\u00100\u001a\u00020\'2\u0006\u00101\u001a\u00020\u001aH\u0002J\u0014\u00102\u001a\u00020\u00132\n\u00103\u001a\u000604j\u0002`5H\u0002J\u0010\u00106\u001a\u00020\u001a2\u0006\u00107\u001a\u00020\u001aH\u0002R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006<"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;",
        "Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;",
        "underlying",
        "engine",
        "Ljavax/net/ssl/SSLEngine;",
        "<init>",
        "(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;Ljavax/net/ssl/SSLEngine;)V",
        "stateLock",
        "",
        "engineLock",
        "readLock",
        "writeLock",
        "encryptedInput",
        "Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;",
        "plaintextInput",
        "closed",
        "",
        "inboundEnded",
        "failure",
        "Lcom/shilapi/xcertplay/transport/IphoneUsbException;",
        "send",
        "",
        "data",
        "",
        "recv",
        "maxBytes",
        "",
        "timeoutMillis",
        "",
        "close",
        "performHandshake",
        "receiveLocked",
        "deadline",
        "Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$Deadline;",
        "progressPostHandshake",
        "initialStatus",
        "Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;",
        "runDelegatedTasks",
        "wrap",
        "Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$EngineOutcome;",
        "source",
        "Ljava/nio/ByteBuffer;",
        "unwrap",
        "sendEncrypted",
        "bytes",
        "finishInbound",
        "checkWritable",
        "checkProgress",
        "outcome",
        "previous",
        "fail",
        "error",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "grow",
        "capacity",
        "EngineOutcome",
        "Deadline",
        "ByteQueue",
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
.field private static final ALLOWED_PROTOCOLS:[Ljava/lang/String;

.field public static final Companion:Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$Companion;

.field private static final MAXIMUM_CLOSE_WRAP_STEPS:I = 0x4

.field private static final MAXIMUM_CONTROL_STEPS:I = 0x20

.field private static final MAXIMUM_NO_PROGRESS_STEPS:I = 0x8

.field private static final MAXIMUM_TLS_BUFFER_BYTES:I = 0x100000

.field private static final NANOS_PER_MILLISECOND:J = 0xf4240L

.field private static final RECEIVE_CHUNK_BYTES:I = 0x4000


# instance fields
.field private closed:Z

.field private final encryptedInput:Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;

.field private final engine:Ljavax/net/ssl/SSLEngine;

.field private final engineLock:Ljava/lang/Object;

.field private failure:Lcom/shilapi/xcertplay/transport/IphoneUsbException;

.field private inboundEnded:Z

.field private final plaintextInput:Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;

.field private final readLock:Ljava/lang/Object;

.field private final stateLock:Ljava/lang/Object;

.field private final underlying:Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;

.field private final writeLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->Companion:Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$Companion;

    const/4 v0, 0x2

    .line 392
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "TLSv1.3"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "TLSv1.2"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->ALLOWED_PROTOCOLS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;Ljavax/net/ssl/SSLEngine;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->underlying:Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;

    .line 16
    iput-object p2, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->engine:Ljavax/net/ssl/SSLEngine;

    .line 18
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->stateLock:Ljava/lang/Object;

    .line 19
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->engineLock:Ljava/lang/Object;

    .line 20
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->readLock:Ljava/lang/Object;

    .line 21
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->writeLock:Ljava/lang/Object;

    .line 22
    new-instance p1, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;

    invoke-direct {p1}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->encryptedInput:Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;

    .line 23
    new-instance p1, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;

    invoke-direct {p1}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->plaintextInput:Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;Ljavax/net/ssl/SSLEngine;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;-><init>(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;Ljavax/net/ssl/SSLEngine;)V

    return-void
.end method

.method public static final synthetic access$getALLOWED_PROTOCOLS$cp()[Ljava/lang/String;
    .locals 1

    .line 14
    sget-object v0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->ALLOWED_PROTOCOLS:[Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$performHandshake(Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;J)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->performHandshake(J)V

    return-void
.end method

.method private final checkProgress(Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$EngineOutcome;I)I
    .locals 2

    .line 300
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$EngineOutcome;->getResult()Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$EngineOutcome;->getBytes()[B

    move-result-object p1

    array-length p1, p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    add-int/2addr p2, v0

    const/16 p1, 0x8

    if-ge p2, p1, :cond_2

    return p2

    .line 302
    :cond_2
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    const-string p2, "TLS engine made no progress"

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return v1
.end method

.method private final checkWritable()V
    .locals 5

    .line 294
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 295
    :try_start_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->failure:Lcom/shilapi/xcertplay/transport/IphoneUsbException;

    if-nez v1, :cond_1

    .line 296
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->closed:Z

    if-nez v1, :cond_0

    .line 297
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    monitor-exit v0

    return-void

    .line 296
    :cond_0
    :try_start_1
    new-instance v1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;

    const-string v2, "TLS channel is closed"

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3, v4}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1

    .line 295
    :cond_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    .line 294
    monitor-exit v0

    throw v1
.end method

.method private final fail(Ljava/lang/Exception;)Lcom/shilapi/xcertplay/transport/IphoneUsbException;
    .locals 3

    .line 309
    instance-of v0, p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException;

    goto :goto_0

    .line 310
    :cond_0
    new-instance v0, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TLS channel failed ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    check-cast p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException;

    .line 312
    :goto_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 313
    :try_start_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->failure:Lcom/shilapi/xcertplay/transport/IphoneUsbException;

    if-nez v1, :cond_1

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->failure:Lcom/shilapi/xcertplay/transport/IphoneUsbException;

    .line 314
    :cond_1
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->closed:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    .line 315
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 312
    :goto_1
    monitor-exit v0

    if-eqz v1, :cond_3

    .line 321
    :try_start_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->underlying:Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;

    invoke-interface {v0}, Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 326
    :catch_0
    :cond_3
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->failure:Lcom/shilapi/xcertplay/transport/IphoneUsbException;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    move-object p1, v1

    :goto_2
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :catchall_1
    move-exception p1

    .line 312
    monitor-exit v0

    throw p1
.end method

.method private final finishInbound()V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->inboundEnded:Z

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 291
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->close()V

    return-void

    :catchall_0
    move-exception v1

    .line 290
    monitor-exit v0

    throw v1
.end method

.method private final grow(I)I
    .locals 1

    const/high16 v0, 0x100000

    if-lt p1, v0, :cond_0

    const p1, 0x100001

    return p1

    :cond_0
    mul-int/lit8 p1, p1, 0x2

    .line 331
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public static final open(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;Lcom/shilapi/xcertplay/transport/LockdownPairRecord;J)Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shilapi/xcertplay/transport/IphoneUsbException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->Companion:Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$Companion;->open(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;Lcom/shilapi/xcertplay/transport/LockdownPairRecord;J)Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;

    move-result-object p0

    return-object p0
.end method

.method private final performHandshake(J)V
    .locals 6

    .line 103
    new-instance v0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$Deadline;

    invoke-direct {v0, p1, p2}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$Deadline;-><init>(J)V

    .line 104
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->engineLock:Ljava/lang/Object;

    monitor-enter p1

    .line 105
    :try_start_0
    iget-object p2, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngine;->beginHandshake()V

    .line 106
    iget-object p2, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 104
    monitor-exit p1

    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 109
    :goto_1
    sget-object v2, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->Companion:Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$Companion;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    # invokes: Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$Companion;->isHandshakeComplete(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Z
    invoke-static {v2, p2}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$Companion;->access$isHandshakeComplete(Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$Companion;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 110
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$Deadline;->requireRemainingMillis()J

    .line 112
    sget-object v3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p2, v3, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->runDelegatedTasks()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p2

    goto :goto_0

    .line 116
    :cond_0
    sget-object v3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p2, v3, :cond_2

    .line 117
    iget-object p2, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->writeLock:Ljava/lang/Object;

    monitor-enter p2

    .line 118
    :try_start_1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const-string v3, "allocate(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->wrap(Ljava/nio/ByteBuffer;)Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$EngineOutcome;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$EngineOutcome;->getBytes()[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->sendEncrypted([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    monitor-exit p2

    .line 120
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$EngineOutcome;->getResult()Ljavax/net/ssl/SSLEngineResult;

    move-result-object p2

    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object p2

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq p2, v3, :cond_1

    .line 123
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$EngineOutcome;->getResult()Ljavax/net/ssl/SSLEngineResult;

    move-result-object p2

    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p2

    .line 124
    invoke-direct {p0, v2, v1}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->checkProgress(Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$EngineOutcome;I)I

    move-result v1

    goto :goto_1

    .line 121
    :cond_1
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    const-string p2, "TLS handshake closed while wrapping"

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 117
    monitor-exit p2

    throw p1

    .line 126
    :cond_2
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    # invokes: Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$Companion;->isNeedUnwrap(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Z
    invoke-static {v2, p2}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$Companion;->access$isNeedUnwrap(Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$Companion;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 127
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->unwrap()Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$EngineOutcome;

    move-result-object v2

    .line 128
    iget-object v3, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->plaintextInput:Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$EngineOutcome;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;->append([B)V

    .line 129
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$EngineOutcome;->getResult()Ljavax/net/ssl/SSLEngineResult;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v3

    if-nez v3, :cond_3

    const/4 v3, -0x1

    goto :goto_2

    :cond_3
    sget-object v4, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v3

    aget v3, v4, v3

    :goto_2
    const/4 v4, 0x1

    if-eq v3, v4, :cond_9

    const/4 v1, 0x2

    if-eq v3, v1, :cond_6

    const/4 p1, 0x3

    if-eq v3, p1, :cond_5

    const/4 p1, 0x4

    if-eq v3, p1, :cond_4

    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 144
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 146
    const-string/jumbo p2, "unwrap handles overflow internally"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 144
    :cond_5
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    const-string p2, "TLS peer closed during handshake"

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw p1

    .line 135
    :cond_6
    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->underlying:Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;

    const/16 v3, 0x4000

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$Deadline;->requireRemainingMillis()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;->recv(IJ)[B

    move-result-object v2

    if-eqz v2, :cond_8

    .line 137
    array-length v1, v2

    if-eqz v1, :cond_7

    .line 140
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->encryptedInput:Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;

    invoke-virtual {v1, v2}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;->append([B)V

    goto/16 :goto_0

    .line 138
    :cond_7
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    const-string p2, "TLS transport ended during handshake"

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw p1

    .line 136
    :cond_8
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$TimedOut;

    const-string p2, "TLS handshake timed out"

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0, v1, v0}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$TimedOut;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1

    .line 131
    :cond_9
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$EngineOutcome;->getResult()Ljavax/net/ssl/SSLEngineResult;

    move-result-object p2

    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p2

    .line 132
    invoke-direct {p0, v2, v1}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->checkProgress(Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$EngineOutcome;I)I

    move-result v1

    goto/16 :goto_1

    .line 149
    :cond_a
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->name()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported TLS handshake state "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw p1

    .line 152
    :cond_b
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$Deadline;->requireRemainingMillis()J

    return-void

    :catchall_1
    move-exception p2

    .line 104
    monitor-exit p1

    goto :goto_4

    :goto_3
    throw p2

    :goto_4
    goto :goto_3
.end method

.method private final progressPostHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v3, 0x20

    if-gt v1, v3, :cond_7

    .line 210
    sget-object v3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v3, :cond_0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->runDelegatedTasks()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p1

    goto :goto_0

    .line 211
    :cond_0
    sget-object v3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v3, :cond_4

    .line 212
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->writeLock:Ljava/lang/Object;

    monitor-enter p1

    .line 213
    :try_start_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const-string v3, "allocate(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->wrap(Ljava/nio/ByteBuffer;)Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$EngineOutcome;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$EngineOutcome;->getBytes()[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->sendEncrypted([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    monitor-exit p1

    .line 215
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$EngineOutcome;->getResult()Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object p1

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq p1, v3, :cond_3

    .line 218
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$EngineOutcome;->getResult()Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$EngineOutcome;->getBytes()[B

    move-result-object p1

    array-length p1, p1

    if-nez p1, :cond_2

    .line 219
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$EngineOutcome;->getResult()Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p1

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq p1, v3, :cond_1

    goto :goto_1

    .line 221
    :cond_1
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    const-string v0, "TLS post-handshake wrap made no progress"

    invoke-direct {p1, v0}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw p1

    .line 223
    :cond_2
    :goto_1
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$EngineOutcome;->getResult()Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p1

    const-string v2, "getHandshakeStatus(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 216
    :cond_3
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    const-string v0, "TLS outbound stream closed during post-handshake processing"

    invoke-direct {p1, v0}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception v0

    .line 212
    monitor-exit p1

    throw v0

    .line 225
    :cond_4
    sget-object v1, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->Companion:Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$Companion;

    # invokes: Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$Companion;->isNeedUnwrap(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Z
    invoke-static {v1, p1}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$Companion;->access$isNeedUnwrap(Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$Companion;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Z

    move-result v3

    if-eqz v3, :cond_5

    return v2

    .line 226
    :cond_5
    # invokes: Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$Companion;->isHandshakeComplete(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Z
    invoke-static {v1, p1}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$Companion;->access$isHandshakeComplete(Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$Companion;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Z

    move-result v1

    if-eqz v1, :cond_6

    return v0

    .line 227
    :cond_6
    new-instance v0, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->name()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported TLS post-handshake state "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_7
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    const-string v0, "TLS post-handshake processing did not converge"

    invoke-direct {p1, v0}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private final receiveLocked(ILcom/shilapi/xcertplay/transport/TlsDuplexChannel$Deadline;)[B
    .locals 7

    .line 156
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->plaintextInput:Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;->take(I)[B

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 158
    :try_start_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->failure:Lcom/shilapi/xcertplay/transport/IphoneUsbException;

    if-nez v1, :cond_10

    .line 159
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->inboundEnded:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-array p1, v2, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p1

    .line 160
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->closed:Z

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez v1, :cond_f

    .line 161
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    monitor-exit v0

    :goto_0
    const/4 v0, 0x0

    .line 165
    :cond_2
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$Deadline;->remainingMillis()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_3

    return-object v4

    .line 166
    :cond_3
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->unwrap()Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$EngineOutcome;

    move-result-object v1

    .line 167
    iget-object v5, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->plaintextInput:Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$EngineOutcome;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;->append([B)V

    .line 168
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$EngineOutcome;->getResult()Ljavax/net/ssl/SSLEngineResult;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v5

    if-nez v5, :cond_4

    const/4 v5, -0x1

    goto :goto_1

    :cond_4
    sget-object v6, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v5

    aget v5, v6, v5

    :goto_1
    const/4 v6, 0x1

    if-eq v5, v6, :cond_e

    if-eq v5, v3, :cond_8

    const/4 p2, 0x3

    if-eq v5, p2, :cond_6

    const/4 p1, 0x4

    if-eq v5, p1, :cond_5

    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 193
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 195
    const-string/jumbo p2, "unwrap handles overflow internally"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 188
    :cond_6
    iget-object p2, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->plaintextInput:Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;

    invoke-virtual {p2, p1}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;->take(I)[B

    move-result-object p1

    if-eqz p1, :cond_7

    .line 189
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->finishInbound()V

    return-object p1

    .line 192
    :cond_7
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->finishInbound()V

    .line 193
    new-array p1, v2, [B

    return-object p1

    .line 174
    :cond_8
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->plaintextInput:Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;->take(I)[B

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    .line 175
    :cond_9
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$Deadline;->remainingMillis()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 176
    iget-object v5, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->underlying:Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;

    const/16 v6, 0x4000

    invoke-interface {v5, v6, v0, v1}, Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;->recv(IJ)[B

    move-result-object v0

    if-nez v0, :cond_a

    return-object v4

    .line 177
    :cond_a
    array-length v1, v0

    if-nez v1, :cond_c

    .line 178
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->encryptedInput:Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;->getSize()I

    move-result p1

    if-eqz p1, :cond_b

    .line 179
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    const-string p2, "TLS transport ended inside a record"

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw p1

    .line 181
    :cond_b
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    const-string p2, "TLS transport ended without close_notify"

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw p1

    .line 183
    :cond_c
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->encryptedInput:Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;

    invoke-virtual {v1, v0}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;->append([B)V

    goto/16 :goto_0

    :cond_d
    return-object v4

    .line 170
    :cond_e
    invoke-direct {p0, v1, v0}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->checkProgress(Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$EngineOutcome;I)I

    move-result v0

    .line 171
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$EngineOutcome;->getResult()Ljavax/net/ssl/SSLEngineResult;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1

    const-string v5, "getHandshakeStatus(...)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->progressPostHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Z

    .line 197
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->plaintextInput:Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;

    invoke-virtual {v1, p1}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;->take(I)[B

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    .line 160
    :cond_f
    :try_start_2
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;

    const-string p2, "TLS channel is closed"

    invoke-direct {p1, p2, v4, v3, v4}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1

    .line 158
    :cond_10
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 157
    monitor-exit v0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private final runDelegatedTasks()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->engineLock:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    move-result-object v1

    if-nez v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    monitor-exit v0

    const-string/jumbo v0, "synchronized(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 235
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 232
    monitor-exit v0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method private final sendEncrypted([B)V
    .locals 1

    .line 286
    array-length v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->underlying:Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;

    invoke-interface {v0, p1}, Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;->send([B)V

    :cond_1
    return-void
.end method

.method private final unwrap()Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$EngineOutcome;
    .locals 5

    .line 264
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->engineLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    :goto_0
    const/high16 v1, 0x100000

    if-gt v0, v1, :cond_2

    .line 269
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->encryptedInput:Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;->asByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 270
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 271
    iget-object v3, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->engineLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget-object v4, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v4, v1, v2}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 272
    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v3

    sget-object v4, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v3, v4, :cond_1

    .line 273
    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v1

    if-nez v1, :cond_0

    .line 276
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->grow(I)I

    move-result v0

    goto :goto_0

    .line 274
    :cond_0
    new-instance v0, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    const-string v1, "TLS unwrap overflow consumed data"

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->encryptedInput:Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;->discard(I)V

    .line 280
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 281
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v2, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$EngineOutcome;

    invoke-direct {v2, v1, v0}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$EngineOutcome;-><init>(Ljavax/net/ssl/SSLEngineResult;[B)V

    return-object v2

    :catchall_0
    move-exception v0

    .line 271
    monitor-exit v3

    throw v0

    .line 267
    :cond_2
    new-instance v0, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    const-string v1, "TLS application buffer exceeds the defensive limit"

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v1

    .line 264
    monitor-exit v0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method private final wrap(Ljava/nio/ByteBuffer;)Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$EngineOutcome;
    .locals 5

    .line 241
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->engineLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    :goto_0
    const/high16 v1, 0x100000

    if-gt v0, v1, :cond_3

    .line 246
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 247
    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->engineLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v3, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v3, p1, v1}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 248
    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v2

    sget-object v4, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v2, v4, :cond_1

    .line 249
    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v1

    if-nez v1, :cond_0

    .line 252
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->grow(I)I

    move-result v0

    goto :goto_0

    .line 250
    :cond_0
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    const-string v0, "TLS wrap overflow consumed data"

    invoke-direct {p1, v0}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw p1

    .line 255
    :cond_1
    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object p1

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq p1, v0, :cond_2

    .line 258
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 259
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    new-array p1, p1, [B

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$EngineOutcome;

    invoke-direct {v0, v3, p1}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$EngineOutcome;-><init>(Ljavax/net/ssl/SSLEngineResult;[B)V

    return-object v0

    .line 256
    :cond_2
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    const-string v0, "TLS wrap reported buffer underflow"

    invoke-direct {p1, v0}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 247
    monitor-exit v2

    throw p1

    .line 244
    :cond_3
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    const-string v0, "TLS packet buffer exceeds the defensive limit"

    invoke-direct {p1, v0}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 241
    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 6

    .line 62
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 63
    :try_start_0
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->closed:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 64
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 62
    :goto_0
    monitor-exit v0

    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 70
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->writeLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 71
    :try_start_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->engineLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 72
    :try_start_3
    iget-object v3, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 73
    :cond_2
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 71
    :try_start_4
    monitor-exit v1

    const/4 v1, 0x0

    :goto_1
    add-int/lit8 v3, v1, 0x1

    const/4 v4, 0x4

    if-ge v1, v4, :cond_5

    .line 76
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->engineLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    iget-object v4, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    move-result v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v1

    if-nez v4, :cond_5

    .line 78
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const-string v4, "allocate(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->wrap(Ljava/nio/ByteBuffer;)Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$EngineOutcome;

    move-result-object v1

    .line 79
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$EngineOutcome;->getBytes()[B

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->sendEncrypted([B)V

    .line 80
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$EngineOutcome;->getResult()Ljavax/net/ssl/SSLEngineResult;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v4

    .line 81
    sget-object v5, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v4, v5, :cond_3

    .line 82
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->runDelegatedTasks()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v4

    .line 84
    :cond_3
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$EngineOutcome;->getResult()Ljavax/net/ssl/SSLEngineResult;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq v1, v5, :cond_5

    .line 85
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v4, v1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v3

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 76
    monitor-exit v1

    throw v2

    .line 90
    :cond_5
    :goto_2
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 70
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 95
    :catch_0
    :try_start_8
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->underlying:Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;

    invoke-interface {v0}, Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_3

    :catchall_1
    move-exception v2

    .line 71
    :try_start_9
    monitor-exit v1

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v1

    .line 70
    :try_start_a
    monitor-exit v0

    throw v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    move-exception v0

    .line 95
    :try_start_b
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->underlying:Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;

    invoke-interface {v1}, Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 96
    :catch_1
    throw v0

    :catch_2
    :goto_3
    return-void

    :catchall_4
    move-exception v1

    .line 62
    monitor-exit v0

    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method

.method public recv(IJ)[B
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->readLock:Ljava/lang/Object;

    monitor-enter v0

    if-lez p1, :cond_1

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_0

    .line 55
    :try_start_0
    new-instance v1, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$Deadline;

    invoke-direct {v1, p2, p3}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$Deadline;-><init>(J)V

    invoke-direct {p0, p1, v1}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->receiveLocked(ILcom/shilapi/xcertplay/transport/TlsDuplexChannel$Deadline;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit v0

    return-object p1

    :catch_0
    move-exception p1

    .line 57
    :try_start_1
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->fail(Ljava/lang/Exception;)Lcom/shilapi/xcertplay/transport/IphoneUsbException;

    move-result-object p1

    throw p1

    .line 53
    :cond_0
    const-string/jumbo p1, "timeoutMillis must be positive"

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 52
    :cond_1
    const-string p1, "maxBytes must be positive"

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 51
    monitor-exit v0

    throw p1
.end method

.method public send([B)V
    .locals 4

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->writeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 29
    :try_start_0
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->checkWritable()V

    .line 30
    array-length v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 32
    :cond_0
    :try_start_1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 33
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 34
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->wrap(Ljava/nio/ByteBuffer;)Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$EngineOutcome;

    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$EngineOutcome;->getBytes()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->sendEncrypted([B)V

    .line 36
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$EngineOutcome;->getResult()Ljavax/net/ssl/SSLEngineResult;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v2

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq v2, v3, :cond_4

    .line 39
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$EngineOutcome;->getResult()Ljavax/net/ssl/SSLEngineResult;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v2

    const-string v3, "getHandshakeStatus(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->progressPostHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 42
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$EngineOutcome;->getResult()Ljavax/net/ssl/SSLEngineResult;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$EngineOutcome;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 43
    :cond_2
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    const-string v1, "TLS send made no progress"

    invoke-direct {p1, v1}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_3
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    const-string v1, "TLS send requires inbound post-handshake processing"

    invoke-direct {p1, v1}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_4
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    const-string v1, "TLS outbound stream closed during send"

    invoke-direct {p1, v1}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :cond_5
    :goto_1
    :try_start_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    monitor-exit v0

    return-void

    :catch_0
    move-exception p1

    .line 47
    :try_start_3
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->fail(Ljava/lang/Exception;)Lcom/shilapi/xcertplay/transport/IphoneUsbException;

    move-result-object p1

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    .line 28
    monitor-exit v0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
