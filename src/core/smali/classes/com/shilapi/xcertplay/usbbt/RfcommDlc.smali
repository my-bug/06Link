.class public final Lcom/shilapi/xcertplay/usbbt/RfcommDlc;
.super Ljava/lang/Object;
.source "Rfcomm.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/usbbt/RfcommDlc$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRfcomm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Rfcomm.kt\ncom/shilapi/xcertplay/usbbt/RfcommDlc\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,645:1\n1#2:646\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0016\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\t\n\u0002\u0008\u0004\u0018\u0000 Q2\u00020\u0001:\u0001QB\u0019\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J%\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020\u00052\u0006\u0010>\u001a\u00020\u0015H\u0000\u00a2\u0006\u0002\u0008?J\r\u0010@\u001a\u00020:H\u0000\u00a2\u0006\u0002\u0008AJ\u0017\u0010B\u001a\u0004\u0018\u00010/2\u0006\u0010C\u001a\u00020/H\u0000\u00a2\u0006\u0002\u0008DJ\n\u0010E\u001a\u0004\u0018\u00010/H\u0002J\u0015\u0010F\u001a\u00020:2\u0006\u0010G\u001a\u00020,H\u0000\u00a2\u0006\u0002\u0008HJ\u0015\u0010*\u001a\u00020:2\u0006\u0010G\u001a\u00020,H\u0000\u00a2\u0006\u0002\u0008IJ\u0010\u0010J\u001a\u00020:2\u0006\u0010C\u001a\u00020/H\u0016J\u001a\u0010K\u001a\u0004\u0018\u00010/2\u0006\u0010L\u001a\u00020\u00052\u0006\u0010M\u001a\u00020NH\u0016J\u0008\u0010O\u001a\u00020:H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u00020\u000b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u000e\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\tR\u001a\u0010\u0010\u001a\u00020\u0005X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\t\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0015X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u0005X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\t\"\u0004\u0008\u001c\u0010\u0013R\u000e\u0010\u001d\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001e\u001a\u00020\u0015X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u0017\"\u0004\u0008 \u0010\u0019R\u001a\u0010!\u001a\u00020\u0015X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u0017\"\u0004\u0008#\u0010\u0019R\u001a\u0010$\u001a\u00020\u0015X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u0017\"\u0004\u0008&\u0010\u0019R\u001a\u0010\'\u001a\u00020\u0015X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u0017\"\u0004\u0008)\u0010\u0019R\u000e\u0010*\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010+\u001a\u0004\u0018\u00010,X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010-\u001a\u0008\u0012\u0004\u0012\u00020/0.X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00101\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u00102\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u00083\u0010\tR\u0011\u00104\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u00085\u0010\tR\u0011\u00106\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u00087\u0010\tR\u0011\u00108\u001a\u00020\u00158F\u00a2\u0006\u0006\u001a\u0004\u00088\u0010\u0017R\u0011\u0010P\u001a\u00020\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008P\u0010\u0017\u00a8\u0006R"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/RfcommDlc;",
        "Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;",
        "session",
        "Lcom/shilapi/xcertplay/usbbt/RfcommSession;",
        "dlci",
        "",
        "<init>",
        "(Lcom/shilapi/xcertplay/usbbt/RfcommSession;I)V",
        "getDlci",
        "()I",
        "lock",
        "Ljava/lang/Object;",
        "getLock",
        "()Ljava/lang/Object;",
        "serverChannel",
        "getServerChannel",
        "frameSize",
        "getFrameSize$shared_release",
        "setFrameSize$shared_release",
        "(I)V",
        "creditBased",
        "",
        "getCreditBased$shared_release",
        "()Z",
        "setCreditBased$shared_release",
        "(Z)V",
        "txCredits",
        "getTxCredits$shared_release",
        "setTxCredits$shared_release",
        "rxCredits",
        "peerFlowStopped",
        "getPeerFlowStopped$shared_release",
        "setPeerFlowStopped$shared_release",
        "aggregateFlowStopped",
        "getAggregateFlowStopped$shared_release",
        "setAggregateFlowStopped$shared_release",
        "mscSent",
        "getMscSent$shared_release",
        "setMscSent$shared_release",
        "closing",
        "getClosing$shared_release",
        "setClosing$shared_release",
        "ended",
        "endReason",
        "",
        "pending",
        "Ljava/util/ArrayDeque;",
        "",
        "pendingBytes",
        "sendLock",
        "receiveCredits",
        "getReceiveCredits",
        "transmitCredits",
        "getTransmitCredits",
        "maxFrameSize",
        "getMaxFrameSize",
        "isCreditBased",
        "applyPnLocked",
        "",
        "pn",
        "Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;",
        "maxFrame",
        "asResponder",
        "applyPnLocked$shared_release",
        "notifyLocked",
        "notifyLocked$shared_release",
        "receivedLocked",
        "data",
        "receivedLocked$shared_release",
        "creditTopUpLocked",
        "endedLocked",
        "reason",
        "endedLocked$shared_release",
        "ended$shared_release",
        "send",
        "recv",
        "maxBytes",
        "timeoutMillis",
        "",
        "close",
        "isOpen",
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
.field private static final Companion:Lcom/shilapi/xcertplay/usbbt/RfcommDlc$Companion;

.field private static final EMPTY:[B

.field public static final WAIT_SLICE_MILLIS:J = 0x1f4L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private aggregateFlowStopped:Z

.field private closing:Z

.field private creditBased:Z

.field private final dlci:I

.field private endReason:Ljava/lang/String;

.field private ended:Z

.field private frameSize:I

.field private mscSent:Z

.field private peerFlowStopped:Z

.field private final pending:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "[B>;"
        }
    .end annotation
.end field

.field private pendingBytes:I

.field private rxCredits:I

.field private final sendLock:Ljava/lang/Object;

.field private final session:Lcom/shilapi/xcertplay/usbbt/RfcommSession;

.field private txCredits:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->Companion:Lcom/shilapi/xcertplay/usbbt/RfcommDlc$Companion;

    const/4 v0, 0x0

    .line 605
    new-array v0, v0, [B

    sput-object v0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->EMPTY:[B

    return-void
.end method

.method public constructor <init>(Lcom/shilapi/xcertplay/usbbt/RfcommSession;I)V
    .locals 1

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->session:Lcom/shilapi/xcertplay/usbbt/RfcommSession;

    iput p2, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->dlci:I

    const/16 p1, 0x7f

    .line 478
    iput p1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->frameSize:I

    .line 488
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->pending:Ljava/util/ArrayDeque;

    .line 490
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->sendLock:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$getEMPTY$cp()[B
    .locals 1

    .line 474
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->EMPTY:[B

    return-object v0
.end method

.method private final creditTopUpLocked()[B
    .locals 4

    .line 520
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->creditBased:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->ended:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->closing:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 521
    :cond_0
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->rxCredits:I

    const/4 v2, 0x3

    if-le v0, v2, :cond_1

    return-object v1

    .line 522
    :cond_1
    iget v2, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->pendingBytes:I

    const/high16 v3, 0x10000

    if-lt v2, v3, :cond_2

    return-object v1

    :cond_2
    rsub-int/lit8 v2, v0, 0x7

    if-gtz v2, :cond_3

    return-object v1

    :cond_3
    add-int/2addr v0, v2

    .line 525
    iput v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->rxCredits:I

    .line 526
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->session:Lcom/shilapi/xcertplay/usbbt/RfcommSession;

    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->dlci:I

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->dataFrameLocked$shared_release(I[BLjava/lang/Integer;)[B

    move-result-object v0

    return-object v0

    :cond_4
    :goto_0
    return-object v1
.end method

.method private final getLock()Ljava/lang/Object;
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->session:Lcom/shilapi/xcertplay/usbbt/RfcommSession;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->getLock$shared_release()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final applyPnLocked$shared_release(Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;IZ)V
    .locals 2

    const-string v0, "pn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 499
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->getFrameSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    const/16 v0, 0x7f

    :goto_1
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->frameSize:I

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 500
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->getConvergence()I

    move-result p3

    const/16 v1, 0xf

    if-ne p3, v1, :cond_3

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->getConvergence()I

    move-result p3

    const/16 v1, 0xe

    if-ne p3, v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    :goto_2
    iput-boolean p2, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->creditBased:Z

    if-eqz p2, :cond_4

    .line 502
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->getCredits()I

    move-result p1

    iput p1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->txCredits:I

    const/4 p1, 0x7

    .line 503
    iput p1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->rxCredits:I

    :cond_4
    return-void
.end method

.method public close()V
    .locals 4

    .line 592
    invoke-direct {p0}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 593
    :try_start_0
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->ended:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->closing:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 594
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->closing:Z

    .line 595
    invoke-direct {p0}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->getLock()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 596
    iget-object v2, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->session:Lcom/shilapi/xcertplay/usbbt/RfcommSession;

    iget v3, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->dlci:I

    invoke-virtual {v2, v3}, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->discFrameLocked$shared_release(I)[B

    move-result-object v2

    if-nez v2, :cond_1

    iput-boolean v1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->ended:Z

    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->session:Lcom/shilapi/xcertplay/usbbt/RfcommSession;

    iget v3, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->dlci:I

    invoke-virtual {v1, v3}, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->forgetLocked$shared_release(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 592
    :cond_1
    monitor-exit v0

    if-eqz v2, :cond_2

    .line 598
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->session:Lcom/shilapi/xcertplay/usbbt/RfcommSession;

    invoke-virtual {v0, v2}, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->send$shared_release([B)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    :cond_2
    return-void

    .line 593
    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    .line 592
    monitor-exit v0

    throw v1
.end method

.method public final ended$shared_release(Ljava/lang/String;)V
    .locals 1

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 536
    invoke-direct {p0}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->endedLocked$shared_release(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final endedLocked$shared_release(Ljava/lang/String;)V
    .locals 1

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 530
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->ended:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 531
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->ended:Z

    .line 532
    iput-object p1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->endReason:Ljava/lang/String;

    .line 533
    invoke-direct {p0}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->getLock()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method public final getAggregateFlowStopped$shared_release()Z
    .locals 1

    .line 483
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->aggregateFlowStopped:Z

    return v0
.end method

.method public final getClosing$shared_release()Z
    .locals 1

    .line 485
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->closing:Z

    return v0
.end method

.method public final getCreditBased$shared_release()Z
    .locals 1

    .line 479
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->creditBased:Z

    return v0
.end method

.method public final getDlci()I
    .locals 1

    .line 474
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->dlci:I

    return v0
.end method

.method public final getFrameSize$shared_release()I
    .locals 1

    .line 478
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->frameSize:I

    return v0
.end method

.method public final getMaxFrameSize()I
    .locals 2

    .line 495
    invoke-direct {p0}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->frameSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final getMscSent$shared_release()Z
    .locals 1

    .line 484
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->mscSent:Z

    return v0
.end method

.method public final getPeerFlowStopped$shared_release()Z
    .locals 1

    .line 482
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->peerFlowStopped:Z

    return v0
.end method

.method public final getReceiveCredits()I
    .locals 2

    .line 493
    invoke-direct {p0}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->rxCredits:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final getServerChannel()I
    .locals 1

    .line 477
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->dlci:I

    ushr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final getTransmitCredits()I
    .locals 2

    .line 494
    invoke-direct {p0}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->txCredits:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final getTxCredits$shared_release()I
    .locals 1

    .line 480
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->txCredits:I

    return v0
.end method

.method public final isCreditBased()Z
    .locals 2

    .line 496
    invoke-direct {p0}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->creditBased:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final isOpen()Z
    .locals 2

    .line 601
    invoke-direct {p0}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->ended:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->closing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final notifyLocked$shared_release()V
    .locals 1

    .line 507
    invoke-direct {p0}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->getLock()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method public final receivedLocked$shared_release([B)[B
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 511
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->ended:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->pending:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 513
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->pendingBytes:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->pendingBytes:I

    .line 514
    iget-boolean p1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->creditBased:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->rxCredits:I

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    iput p1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->rxCredits:I

    .line 515
    :cond_1
    invoke-direct {p0}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->getLock()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 516
    invoke-direct {p0}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->creditTopUpLocked()[B

    move-result-object p1

    return-object p1
.end method

.method public recv(IJ)[B
    .locals 9

    if-lez p1, :cond_5

    .line 566
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long p2, p2, v2

    add-long/2addr v0, p2

    .line 568
    invoke-direct {p0}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->getLock()Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 569
    :goto_0
    :try_start_0
    iget-object p3, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->pending:Ljava/util/ArrayDeque;

    invoke-virtual {p3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-boolean p3, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->ended:Z

    if-nez p3, :cond_1

    iget-boolean p3, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->closing:Z

    if-nez p3, :cond_1

    .line 570
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long v4, v0, v4

    const-wide/16 v6, 0x0

    const/4 p3, 0x0

    cmp-long v8, v4, v6

    if-gtz v8, :cond_0

    .line 571
    monitor-exit p2

    return-object p3

    .line 572
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->getLock()Ljava/lang/Object;

    move-result-object v6

    div-long/2addr v4, v2

    const-wide/16 v7, 0x1

    invoke-static {v4, v5, v7, v8}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v4

    invoke-virtual {v6, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 573
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p2

    return-object p3

    .line 576
    :cond_1
    :try_start_3
    iget-object p3, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->pending:Ljava/util/ArrayDeque;

    invoke-virtual {p3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_2

    sget-object p1, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->EMPTY:[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p2

    return-object p1

    .line 577
    :cond_2
    :try_start_4
    iget-object p3, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->pending:Ljava/util/ArrayDeque;

    invoke-virtual {p3}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [B

    .line 578
    array-length v0, p3

    if-gt v0, p1, :cond_3

    goto :goto_1

    .line 579
    :cond_3
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->pending:Ljava/util/ArrayDeque;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v1, p3

    invoke-static {p3, p1, v1}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 580
    invoke-static {p3, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p3

    const-string p1, "copyOf(...)"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 582
    :goto_1
    iget p1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->pendingBytes:I

    array-length v0, p3

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->pendingBytes:I

    .line 583
    invoke-direct {p0}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->creditTopUpLocked()[B

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 568
    monitor-exit p2

    if-eqz p1, :cond_4

    .line 586
    iget-object p2, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->session:Lcom/shilapi/xcertplay/usbbt/RfcommSession;

    invoke-virtual {p2, p1}, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->send$shared_release([B)V

    :cond_4
    return-object p3

    :catchall_0
    move-exception p1

    .line 568
    monitor-exit p2

    throw p1

    .line 565
    :cond_5
    const-string p1, "maxBytes must be positive"

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2
.end method

.method public send([B)V
    .locals 8

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->sendLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 541
    :goto_0
    :try_start_0
    array-length v3, p1

    if-ge v2, v3, :cond_b

    .line 542
    invoke-direct {p0}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->getLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 543
    :goto_1
    :try_start_1
    iget-boolean v4, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->ended:Z

    if-nez v4, :cond_3

    iget-boolean v5, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->closing:Z

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->aggregateFlowStopped:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->creditBased:Z

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->txCredits:I

    if-gtz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_2

    :cond_0
    const/4 v5, 0x0

    goto :goto_2

    :cond_1
    iget-boolean v5, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->peerFlowStopped:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz v5, :cond_3

    .line 544
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->getLock()Ljava/lang/Object;

    move-result-object v4

    const-wide/16 v5, 0x1f4

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 545
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    new-instance v1, Ljava/io/IOException;

    const-string v2, "interrupted waiting for RFCOMM credits"

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v1, v2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    if-nez v4, :cond_9

    .line 548
    iget-boolean v4, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->closing:Z

    if-eqz v4, :cond_4

    goto :goto_5

    .line 549
    :cond_4
    array-length v4, p1

    iget v5, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->frameSize:I

    add-int/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 550
    invoke-static {p1, v2, v4}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v2

    .line 552
    iget-boolean v5, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->creditBased:Z

    if-eqz v5, :cond_5

    iget v6, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->txCredits:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->txCredits:I

    :cond_5
    if-eqz v5, :cond_6

    .line 554
    iget v5, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->rxCredits:I

    const/4 v6, 0x3

    if-gt v5, v6, :cond_6

    iget v6, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->pendingBytes:I

    const/high16 v7, 0x10000

    if-ge v6, v7, :cond_6

    rsub-int/lit8 v5, v5, 0x7

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    :goto_3
    if-lez v5, :cond_7

    .line 556
    iget v6, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->rxCredits:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->rxCredits:I

    .line 557
    :cond_7
    iget-object v6, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->session:Lcom/shilapi/xcertplay/usbbt/RfcommSession;

    iget v7, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->dlci:I

    if-lez v5, :cond_8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v6, v7, v2, v5}, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->dataFrameLocked$shared_release(I[BLjava/lang/Integer;)[B

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 542
    :try_start_4
    monitor-exit v3

    .line 559
    iget-object v3, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->session:Lcom/shilapi/xcertplay/usbbt/RfcommSession;

    invoke-virtual {v3, v2}, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->send$shared_release([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move v2, v4

    goto/16 :goto_0

    .line 548
    :cond_9
    :goto_5
    :try_start_5
    new-instance p1, Ljava/io/IOException;

    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->endReason:Ljava/lang/String;

    if-nez v1, :cond_a

    const-string v1, "closed here"

    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RFCOMM channel is closed ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception p1

    .line 542
    :try_start_6
    monitor-exit v3

    throw p1

    .line 561
    :cond_b
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 539
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method public final setAggregateFlowStopped$shared_release(Z)V
    .locals 0

    .line 483
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->aggregateFlowStopped:Z

    return-void
.end method

.method public final setClosing$shared_release(Z)V
    .locals 0

    .line 485
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->closing:Z

    return-void
.end method

.method public final setCreditBased$shared_release(Z)V
    .locals 0

    .line 479
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->creditBased:Z

    return-void
.end method

.method public final setFrameSize$shared_release(I)V
    .locals 0

    .line 478
    iput p1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->frameSize:I

    return-void
.end method

.method public final setMscSent$shared_release(Z)V
    .locals 0

    .line 484
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->mscSent:Z

    return-void
.end method

.method public final setPeerFlowStopped$shared_release(Z)V
    .locals 0

    .line 482
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->peerFlowStopped:Z

    return-void
.end method

.method public final setTxCredits$shared_release(I)V
    .locals 0

    .line 480
    iput p1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->txCredits:I

    return-void
.end method
