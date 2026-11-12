.class public final Lcom/shilapi/xcertplay/airplay/ScreenStream;
.super Ljava/lang/Object;
.source "ScreenStream.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/airplay/ScreenStream$Companion;,
        Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScreenStream.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScreenStream.kt\ncom/shilapi/xcertplay/airplay/ScreenStream\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,228:1\n1#2:229\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 (2\u00020\u0001:\u0002\'(B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0014\u0008\u0002\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000e\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\u0018J\u0008\u0010\u001b\u001a\u00020\u0007H\u0016J\u0010\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u0012H\u0002J\u0010\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u0014H\u0002J\u0018\u0010 \u001a\u00020\u00072\u0006\u0010!\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020\u0003H\u0002J\u001a\u0010#\u001a\u0004\u0018\u00010\u00032\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u001aH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/ScreenStream;",
        "Ljava/io/Closeable;",
        "key",
        "",
        "onDiagnostic",
        "Lkotlin/Function1;",
        "",
        "",
        "localAddress",
        "Ljava/net/InetAddress;",
        "<init>",
        "([BLkotlin/jvm/functions/Function1;Ljava/net/InetAddress;)V",
        "closed",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "frameCounter",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "firstFrameLogged",
        "server",
        "Ljava/net/ServerSocket;",
        "socket",
        "Ljava/net/Socket;",
        "thread",
        "Ljava/lang/Thread;",
        "listener",
        "Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;",
        "listen",
        "",
        "close",
        "accept",
        "bound",
        "run",
        "sock",
        "onMessage",
        "header",
        "body",
        "readFully",
        "input",
        "Ljava/io/InputStream;",
        "length",
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
.field private static final Companion:Lcom/shilapi/xcertplay/airplay/ScreenStream$Companion;

.field public static final HEADER_LEN:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAX_BODY:I = 0x800000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OPCODE_OFFSET:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OP_VIDEO_CONFIG:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OP_VIDEO_FRAME:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "xcertplay-usb"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final firstFrameLogged:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final frameCounter:Ljava/util/concurrent/atomic/AtomicLong;

.field private final key:[B

.field private volatile listener:Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;

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

.field private server:Ljava/net/ServerSocket;

.field private socket:Ljava/net/Socket;

.field private thread:Ljava/lang/Thread;


# direct methods
.method public static synthetic $r8$lambda$7H9jWpaQCgUibmMZRkG-PaoEGvw(Lcom/shilapi/xcertplay/airplay/ScreenStream;Ljava/net/ServerSocket;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/ScreenStream;->listen$lambda$3(Lcom/shilapi/xcertplay/airplay/ScreenStream;Ljava/net/ServerSocket;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OUpD2gSwTfmQ3epjs9mBLYEoltk(Ljava/net/ServerSocket;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/airplay/ScreenStream;->listen$lambda$2(Ljava/net/ServerSocket;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_ZoQB9MBwyGFbSHrNs5JmybYbdc(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/airplay/ScreenStream;->_init_$lambda$0(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xuWPDWTsH1ECnzGtklsslDVltL4(Lcom/shilapi/xcertplay/airplay/ScreenStream;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/ScreenStream;->listen$lambda$1(Lcom/shilapi/xcertplay/airplay/ScreenStream;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/airplay/ScreenStream$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/airplay/ScreenStream$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/airplay/ScreenStream;->Companion:Lcom/shilapi/xcertplay/airplay/ScreenStream$Companion;

    return-void
.end method

.method public constructor <init>([BLkotlin/jvm/functions/Function1;Ljava/net/InetAddress;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
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

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/ScreenStream;->key:[B

    .line 24
    iput-object p2, p0, Lcom/shilapi/xcertplay/airplay/ScreenStream;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    .line 26
    iput-object p3, p0, Lcom/shilapi/xcertplay/airplay/ScreenStream;->localAddress:Ljava/net/InetAddress;

    .line 35
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/ScreenStream;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/ScreenStream;->frameCounter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 37
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/ScreenStream;->firstFrameLogged:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    new-instance p1, Lcom/shilapi/xcertplay/airplay/ScreenStream$listener$1;

    invoke-direct {p1}, Lcom/shilapi/xcertplay/airplay/ScreenStream$listener$1;-><init>()V

    check-cast p1, Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;

    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/ScreenStream;->listener:Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;

    return-void
.end method

.method public synthetic constructor <init>([BLkotlin/jvm/functions/Function1;Ljava/net/InetAddress;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 24
    new-instance p2, Lcom/shilapi/xcertplay/airplay/ScreenStream$$ExternalSyntheticLambda3;

    invoke-direct {p2}, Lcom/shilapi/xcertplay/airplay/ScreenStream$$ExternalSyntheticLambda3;-><init>()V

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 22
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/airplay/ScreenStream;-><init>([BLkotlin/jvm/functions/Function1;Ljava/net/InetAddress;)V

    return-void
.end method

.method private static final _init_$lambda$0(Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final accept(Ljava/net/ServerSocket;)V
    .locals 1

    .line 64
    :try_start_0
    invoke-virtual {p1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object p1

    .line 65
    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/ScreenStream;->socket:Ljava/net/Socket;

    .line 66
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/airplay/ScreenStream;->run(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 68
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/ScreenStream;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/ScreenStream;->listener:Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {v0, p1}, Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;->onClosed(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private static final listen$lambda$1(Lcom/shilapi/xcertplay/airplay/ScreenStream;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object p0, p0, Lcom/shilapi/xcertplay/airplay/ScreenStream;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "screen listener "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final listen$lambda$2(Ljava/net/ServerSocket;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 49
    invoke-virtual {p0, v0}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final listen$lambda$3(Lcom/shilapi/xcertplay/airplay/ScreenStream;Ljava/net/ServerSocket;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/airplay/ScreenStream;->accept(Ljava/net/ServerSocket;)V

    return-void
.end method

.method private final onMessage([B[B)V
    .locals 10

    const/4 v0, 0x4

    .line 98
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const-string/jumbo v1, "xcertplay-usb"

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_0

    return-void

    .line 116
    :cond_0
    sget-object p1, Lcom/shilapi/xcertplay/airplay/ScreenCodec;->INSTANCE:Lcom/shilapi/xcertplay/airplay/ScreenCodec;

    invoke-virtual {p1, p2}, Lcom/shilapi/xcertplay/airplay/ScreenCodec;->detectConfig([B)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/airplay/VideoCodec;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 117
    array-length p2, p2

    array-length v2, p1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "video codec config codec="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " body="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " data="

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object p2, p0, Lcom/shilapi/xcertplay/airplay/ScreenStream;->listener:Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;

    invoke-interface {p2, v0}, Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;->onCodec(Lcom/shilapi/xcertplay/airplay/VideoCodec;)V

    .line 119
    iget-object p2, p0, Lcom/shilapi/xcertplay/airplay/ScreenStream;->listener:Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;

    invoke-interface {p2, p1}, Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;->onConfig([B)V

    return-void

    .line 100
    :cond_1
    array-length v0, p2

    const/16 v3, 0x10

    if-lt v0, v3, :cond_2

    .line 101
    sget-object v4, Lcom/shilapi/xcertplay/airplay/ScreenCodec;->INSTANCE:Lcom/shilapi/xcertplay/airplay/ScreenCodec;

    iget-object v5, p0, Lcom/shilapi/xcertplay/airplay/ScreenStream;->key:[B

    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/ScreenStream;->frameCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    move-object v8, p1

    move-object v9, p2

    invoke-virtual/range {v4 .. v9}, Lcom/shilapi/xcertplay/airplay/ScreenCodec;->decryptFrame([BJ[B[B)[B

    move-result-object p1

    .line 102
    iget-object p2, p0, Lcom/shilapi/xcertplay/airplay/ScreenStream;->frameCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    goto :goto_0

    :cond_2
    move-object v9, p2

    move-object p1, v9

    .line 106
    :goto_0
    iget-object p2, p0, Lcom/shilapi/xcertplay/airplay/ScreenStream;->firstFrameLogged:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 109
    array-length p2, v9

    array-length v0, p1

    .line 110
    # invokes: Lcom/shilapi/xcertplay/airplay/ScreenStreamKt;->hexPrefix([BI)Ljava/lang/String;
    invoke-static {p1, v3}, Lcom/shilapi/xcertplay/airplay/ScreenStreamKt;->access$hexPrefix([BI)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "video first decrypted frame sealed="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " plain="

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " head="

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 107
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_3
    iget-object p2, p0, Lcom/shilapi/xcertplay/airplay/ScreenStream;->listener:Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;

    sget-object v0, Lcom/shilapi/xcertplay/airplay/ScreenCodec;->INSTANCE:Lcom/shilapi/xcertplay/airplay/ScreenCodec;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/airplay/ScreenCodec;->lengthPrefixedToAnnexB([B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/shilapi/xcertplay/E01SmoothVideo;->stamp([B)V

    invoke-interface {p2, p1}, Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;->onFrame([B)V

    return-void
.end method

.method private final readFully(Ljava/io/InputStream;I)[B
    .locals 4

    const/4 v0, 0x0

    if-gez p2, :cond_0

    return-object v0

    .line 126
    :cond_0
    new-array v1, p2, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_2

    sub-int v3, p2, v2

    .line 129
    invoke-virtual {p1, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-gez v3, :cond_1

    return-object v0

    :cond_1
    add-int/2addr v2, v3

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private final run(Ljava/net/Socket;)V
    .locals 11

    invoke-static {}, Lcom/shilapi/xcertplay/E01Realtime;->videoThread()V

    .line 74
    new-instance v1, Lcom/shilapi/xcertplay/airplay/StreamReceiveStats;

    iget-object v3, p0, Lcom/shilapi/xcertplay/airplay/ScreenStream;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string/jumbo v2, "video"

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/shilapi/xcertplay/airplay/StreamReceiveStats;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 76
    :try_start_0
    invoke-static {p1}, Lcom/shilapi/xcertplay/E01VideoIngress;->wrap(Ljava/net/Socket;)Ljava/io/InputStream;

    move-result-object v0

    .line 77
    :goto_0
    iget-object v2, p0, Lcom/shilapi/xcertplay/airplay/ScreenStream;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_2

    .line 78
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/airplay/StreamReceiveStats;->reading()V

    .line 79
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v2, 0x80

    invoke-direct {p0, v0, v2}, Lcom/shilapi/xcertplay/airplay/ScreenStream;->readFully(Ljava/io/InputStream;I)[B

    move-result-object v9

    if-nez v9, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 80
    # invokes: Lcom/shilapi/xcertplay/airplay/ScreenStreamKt;->readU32Le([BI)I
    invoke-static {v9, v2}, Lcom/shilapi/xcertplay/airplay/ScreenStreamKt;->access$readU32Le([BI)I

    move-result v2

    const/high16 v3, 0x800000

    if-gt v2, v3, :cond_2

    .line 82
    invoke-direct {p0, v0, v2}, Lcom/shilapi/xcertplay/airplay/ScreenStream;->readFully(Ljava/io/InputStream;I)[B

    move-result-object v10

    if-nez v10, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit16 v2, v2, 0x80

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 83
    invoke-static/range {v1 .. v6}, Lcom/shilapi/xcertplay/airplay/StreamReceiveStats;->received$default(Lcom/shilapi/xcertplay/airplay/StreamReceiveStats;ILjava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 84
    array-length v2, v10

    const/4 v3, 0x4

    aget-byte v3, v9, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {v9}, Lcom/shilapi/xcertplay/E01PacingClock;->senderNanos([B)J

    move-result-wide v4

    invoke-static {v0, v3, v4, v5, v2}, Lcom/shilapi/xcertplay/E01VideoIngress;->message(Ljava/io/InputStream;IJI)V

    invoke-static {v9}, Lcom/shilapi/xcertplay/E01SmoothVideo;->packet([B)V

    invoke-direct {p0, v9, v10}, Lcom/shilapi/xcertplay/airplay/ScreenStream;->onMessage([B[B)V

    .line 85
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/airplay/StreamReceiveStats;->processed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 90
    :cond_2
    :goto_1
    invoke-virtual {v1, v7}, Lcom/shilapi/xcertplay/airplay/StreamReceiveStats;->flush(Z)V

    .line 91
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/ScreenStream;->socket:Ljava/net/Socket;

    if-ne v0, p1, :cond_3

    iput-object v8, p0, Lcom/shilapi/xcertplay/airplay/ScreenStream;->socket:Ljava/net/Socket;

    .line 92
    :cond_3
    check-cast p1, Ljava/io/Closeable;

    invoke-static {p1}, Lcom/shilapi/xcertplay/E01VideoIngress;->close(Ljava/io/Closeable;)V

    .line 93
    iget-object p1, p0, Lcom/shilapi/xcertplay/airplay/ScreenStream;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/shilapi/xcertplay/airplay/ScreenStream;->listener:Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;

    invoke-interface {p1, v8}, Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;->onClosed(Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 88
    :try_start_1
    check-cast v0, Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    invoke-virtual {v1, v7}, Lcom/shilapi/xcertplay/airplay/StreamReceiveStats;->flush(Z)V

    .line 91
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/ScreenStream;->socket:Ljava/net/Socket;

    if-ne v1, p1, :cond_4

    iput-object v8, p0, Lcom/shilapi/xcertplay/airplay/ScreenStream;->socket:Ljava/net/Socket;

    .line 92
    :cond_4
    check-cast p1, Ljava/io/Closeable;

    invoke-static {p1}, Lcom/shilapi/xcertplay/E01VideoIngress;->close(Ljava/io/Closeable;)V

    .line 93
    iget-object p1, p0, Lcom/shilapi/xcertplay/airplay/ScreenStream;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/shilapi/xcertplay/airplay/ScreenStream;->listener:Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;

    invoke-interface {p1, v0}, Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;->onClosed(Ljava/lang/Throwable;)V

    :cond_5
    return-void

    .line 90
    :goto_2
    invoke-virtual {v1, v7}, Lcom/shilapi/xcertplay/airplay/StreamReceiveStats;->flush(Z)V

    .line 91
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/ScreenStream;->socket:Ljava/net/Socket;

    if-ne v1, p1, :cond_6

    iput-object v8, p0, Lcom/shilapi/xcertplay/airplay/ScreenStream;->socket:Ljava/net/Socket;

    .line 92
    :cond_6
    check-cast p1, Ljava/io/Closeable;

    invoke-static {p1}, Lcom/shilapi/xcertplay/E01VideoIngress;->close(Ljava/io/Closeable;)V

    .line 93
    iget-object p1, p0, Lcom/shilapi/xcertplay/airplay/ScreenStream;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/shilapi/xcertplay/airplay/ScreenStream;->listener:Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;

    invoke-interface {p1, v8}, Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;->onClosed(Ljava/lang/Throwable;)V

    :cond_7
    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/ScreenStream;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/ScreenStream;->socket:Ljava/net/Socket;

    check-cast v0, Ljava/io/Closeable;

    invoke-static {v0}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->safeClose(Ljava/io/Closeable;)V

    .line 58
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/ScreenStream;->server:Ljava/net/ServerSocket;

    check-cast v0, Ljava/io/Closeable;

    invoke-static {v0}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->safeClose(Ljava/io/Closeable;)V

    .line 59
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/ScreenStream;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final listen(Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;)I
    .locals 10

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/ScreenStream;->listener:Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;

    .line 46
    sget-object v1, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->INSTANCE:Lcom/shilapi/xcertplay/compat/AnyLocalBind;

    .line 47
    iget-object v2, p0, Lcom/shilapi/xcertplay/airplay/ScreenStream;->localAddress:Ljava/net/InetAddress;

    .line 46
    new-instance v6, Lcom/shilapi/xcertplay/airplay/ScreenStream$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/shilapi/xcertplay/airplay/ScreenStream$$ExternalSyntheticLambda0;-><init>(Lcom/shilapi/xcertplay/airplay/ScreenStream;)V

    new-instance v7, Lcom/shilapi/xcertplay/airplay/ScreenStream$$ExternalSyntheticLambda1;

    invoke-direct {v7}, Lcom/shilapi/xcertplay/airplay/ScreenStream$$ExternalSyntheticLambda1;-><init>()V

    const/16 v8, 0xe

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v9}, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->bindServer$default(Lcom/shilapi/xcertplay/compat/AnyLocalBind;Ljava/net/InetAddress;IIZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/net/ServerSocket;

    move-result-object p1

    .line 50
    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/ScreenStream;->server:Ljava/net/ServerSocket;

    .line 51
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/shilapi/xcertplay/airplay/ScreenStream$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/shilapi/xcertplay/airplay/ScreenStream$$ExternalSyntheticLambda2;-><init>(Lcom/shilapi/xcertplay/airplay/ScreenStream;Ljava/net/ServerSocket;)V

    const-string v2, "airplay-screen"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iput-object v0, p0, Lcom/shilapi/xcertplay/airplay/ScreenStream;->thread:Ljava/lang/Thread;

    .line 52
    invoke-virtual {p1}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result p1

    return p1
.end method
