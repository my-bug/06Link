.class public final Lcom/shilapi/xcertplay/iap2/session/Iap2Session;
.super Ljava/lang/Object;
.source "Iap2Session.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/iap2/session/Iap2Session$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIap2Session.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Iap2Session.kt\ncom/shilapi/xcertplay/iap2/session/Iap2Session\n+ 2 Iap2Messages.kt\ncom/shilapi/xcertplay/iap2/message/Iap2Messages\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,146:1\n16#2:147\n21#2:148\n1#3:149\n*S KotlinDebug\n*F\n+ 1 Iap2Session.kt\ncom/shilapi/xcertplay/iap2/session/Iap2Session\n*L\n55#1:147\n63#1:148\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 %2\u00020\u0001:\u0001%B-\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000e\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u0010J\u0018\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010J1\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0017\u0010\u0016\u001a\u0013\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0002\u0008\u0018J1\u0010\u0019\u001a\u00020\u00082\u0006\u0010\u001a\u001a\u00020\u001b2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0017\u0010\u0016\u001a\u0013\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0002\u0008\u0018J\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0012\u001a\u00020\u0013J\u0008\u0010\u001f\u001a\u00020\u0008H\u0016J\u0018\u0010 \u001a\u00020\u00082\u0006\u0010!\u001a\u00020\"2\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u0010\u0010#\u001a\u00020\u00082\u0006\u0010$\u001a\u00020\u0005H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000b\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\r\u00a8\u0006&"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/iap2/session/Iap2Session;",
        "Ljava/io/Closeable;",
        "channel",
        "Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;",
        "traceContext",
        "",
        "onTrace",
        "Lkotlin/Function1;",
        "",
        "<init>",
        "(Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V",
        "isClosed",
        "",
        "()Z",
        "awaitReady",
        "timeoutMillis",
        "",
        "send",
        "frame",
        "Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;",
        "endpoint",
        "Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;",
        "block",
        "Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;",
        "Lkotlin/ExtensionFunctionType;",
        "sendRaw",
        "messageId",
        "",
        "recv",
        "reader",
        "Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;",
        "close",
        "emitFrameTrace",
        "direction",
        "Lcom/shilapi/xcertplay/iap2/trace/Iap2TraceDirection;",
        "emitTrace",
        "message",
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
.field public static final Companion:Lcom/shilapi/xcertplay/iap2/session/Iap2Session$Companion;

.field private static final DEFAULT_SEND_TIMEOUT_MILLIS:J = 0x1388L


# instance fields
.field private final channel:Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;

.field private final onTrace:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final traceContext:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/iap2/session/Iap2Session$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;->Companion:Lcom/shilapi/xcertplay/iap2/session/Iap2Session$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;->channel:Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;

    .line 22
    iput-object p2, p0, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;->traceContext:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;->onTrace:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;-><init>(Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final emitFrameTrace(Lcom/shilapi/xcertplay/iap2/trace/Iap2TraceDirection;Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)V
    .locals 3

    .line 94
    :try_start_0
    sget-object v0, Lcom/shilapi/xcertplay/iap2/trace/Iap2FrameFormatter;->INSTANCE:Lcom/shilapi/xcertplay/iap2/trace/Iap2FrameFormatter;

    iget-object v1, p0, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;->traceContext:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lcom/shilapi/xcertplay/iap2/trace/Iap2FrameFormatter;->format(Lcom/shilapi/xcertplay/iap2/trace/Iap2TraceDirection;Ljava/lang/String;Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;->emitTrace(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 97
    sget-object v1, Lcom/shilapi/xcertplay/iap2/trace/Iap2FrameFormatter;->INSTANCE:Lcom/shilapi/xcertplay/iap2/trace/Iap2FrameFormatter;

    .line 99
    iget-object v2, p0, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;->traceContext:Ljava/lang/String;

    .line 100
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;->getMessageId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 101
    check-cast v0, Ljava/lang/Throwable;

    .line 97
    invoke-virtual {v1, p1, v2, p2, v0}, Lcom/shilapi/xcertplay/iap2/trace/Iap2FrameFormatter;->formatFailure(Lcom/shilapi/xcertplay/iap2/trace/Iap2TraceDirection;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    .line 96
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;->emitTrace(Ljava/lang/String;)V

    return-void
.end method

.method private final emitTrace(Ljava/lang/String;)V
    .locals 1

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;->onTrace:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static synthetic send$default(Lcom/shilapi/xcertplay/iap2/session/Iap2Session;Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const-wide/16 p2, 0x1388

    .line 50
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;->send(Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;JLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic send$default(Lcom/shilapi/xcertplay/iap2/session/Iap2Session;Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;JILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0x1388

    .line 33
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;->send(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;J)V

    return-void
.end method

.method public static synthetic sendRaw$default(Lcom/shilapi/xcertplay/iap2/session/Iap2Session;IJLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const-wide/16 p2, 0x1388

    .line 58
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;->sendRaw(IJLkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final awaitReady(J)Z
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;->channel:Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;

    invoke-virtual {v0, p1, p2}, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->awaitReady(J)Z

    move-result p1

    .line 29
    iget-object p2, p0, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;->traceContext:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IAP2 READY ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] ready="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;->emitTrace(Ljava/lang/String;)V

    return p1
.end method

.method public close()V
    .locals 5

    .line 85
    const-string v0, "]"

    const-string v1, "IAP2 CLOSE ["

    .line 86
    :try_start_0
    iget-object v2, p0, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;->channel:Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    iget-object v2, p0, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;->traceContext:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;->emitTrace(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;->traceContext:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;->emitTrace(Ljava/lang/String;)V

    throw v2
.end method

.method public final isClosed()Z
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;->channel:Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->isClosed()Z

    move-result v0

    return v0
.end method

.method public final reader(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;
    .locals 1

    const-string v0, "frame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    sget-object v0, Lcom/shilapi/xcertplay/iap2/message/Iap2Messages;->INSTANCE:Lcom/shilapi/xcertplay/iap2/message/Iap2Messages;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/iap2/message/Iap2Messages;->reader(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;

    move-result-object p1

    return-object p1
.end method

.method public final recv(J)Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;
    .locals 3

    const/4 v0, 0x0

    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;->channel:Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;

    invoke-virtual {v1, p1, p2}, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->recv(J)Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object p2, Lcom/shilapi/xcertplay/iap2/trace/Iap2TraceDirection;->RX:Lcom/shilapi/xcertplay/iap2/trace/Iap2TraceDirection;

    invoke-direct {p0, p2, p1}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;->emitFrameTrace(Lcom/shilapi/xcertplay/iap2/trace/Iap2TraceDirection;Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :cond_0
    return-object v0

    :catchall_0
    move-exception p1

    .line 71
    sget-object p2, Lcom/shilapi/xcertplay/iap2/trace/Iap2FrameFormatter;->INSTANCE:Lcom/shilapi/xcertplay/iap2/trace/Iap2FrameFormatter;

    .line 72
    sget-object v1, Lcom/shilapi/xcertplay/iap2/trace/Iap2TraceDirection;->RX:Lcom/shilapi/xcertplay/iap2/trace/Iap2TraceDirection;

    .line 73
    iget-object v2, p0, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;->traceContext:Ljava/lang/String;

    .line 71
    invoke-virtual {p2, v1, v2, v0, p1}, Lcom/shilapi/xcertplay/iap2/trace/Iap2FrameFormatter;->formatFailure(Lcom/shilapi/xcertplay/iap2/trace/Iap2TraceDirection;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 70
    invoke-direct {p0, p2}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;->emitTrace(Ljava/lang/String;)V

    .line 78
    throw p1
.end method

.method public final send(Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;JLkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;",
            "J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "endpoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    sget-object v0, Lcom/shilapi/xcertplay/iap2/message/Iap2Messages;->INSTANCE:Lcom/shilapi/xcertplay/iap2/message/Iap2Messages;

    .line 147
    sget-object v0, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->Companion:Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Companion;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Companion;->of(Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    move-result-object p1

    invoke-interface {p4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->build()Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;

    move-result-object p1

    .line 55
    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;->send(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;J)V

    return-void
.end method

.method public final send(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;J)V
    .locals 2

    const-string v0, "frame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;->channel:Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;

    invoke-virtual {v0, p1, p2, p3}, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->send(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;J)V

    .line 36
    sget-object p2, Lcom/shilapi/xcertplay/iap2/trace/Iap2TraceDirection;->TX:Lcom/shilapi/xcertplay/iap2/trace/Iap2TraceDirection;

    invoke-direct {p0, p2, p1}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;->emitFrameTrace(Lcom/shilapi/xcertplay/iap2/trace/Iap2TraceDirection;Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    .line 39
    sget-object p3, Lcom/shilapi/xcertplay/iap2/trace/Iap2FrameFormatter;->INSTANCE:Lcom/shilapi/xcertplay/iap2/trace/Iap2FrameFormatter;

    .line 40
    sget-object v0, Lcom/shilapi/xcertplay/iap2/trace/Iap2TraceDirection;->TX:Lcom/shilapi/xcertplay/iap2/trace/Iap2TraceDirection;

    .line 41
    iget-object v1, p0, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;->traceContext:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;->getMessageId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 39
    invoke-virtual {p3, v0, v1, p1, p2}, Lcom/shilapi/xcertplay/iap2/trace/Iap2FrameFormatter;->formatFailure(Lcom/shilapi/xcertplay/iap2/trace/Iap2TraceDirection;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    .line 38
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;->emitTrace(Ljava/lang/String;)V

    .line 46
    throw p2
.end method

.method public final sendRaw(IJLkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    sget-object v0, Lcom/shilapi/xcertplay/iap2/message/Iap2Messages;->INSTANCE:Lcom/shilapi/xcertplay/iap2/message/Iap2Messages;

    .line 148
    sget-object v0, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->Companion:Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Companion;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Companion;->opaque(I)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    move-result-object p1

    invoke-interface {p4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->build()Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;

    move-result-object p1

    .line 63
    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;->send(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;J)V

    return-void
.end method
