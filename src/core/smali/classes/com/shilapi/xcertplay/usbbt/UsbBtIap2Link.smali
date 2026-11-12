.class public final Lcom/shilapi/xcertplay/usbbt/UsbBtIap2Link;
.super Ljava/lang/Object;
.source "UsbBtSession.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUsbBtSession.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UsbBtSession.kt\ncom/shilapi/xcertplay/usbbt/UsbBtIap2Link\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,309:1\n1#2:310\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0007J\u0006\u0010\u0013\u001a\u00020\u0014J\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0016\u001a\u00020\u0017J\u0006\u0010\u0018\u001a\u00020\u0011R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\"\u0010\r\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/UsbBtIap2Link;",
        "",
        "<init>",
        "()V",
        "lock",
        "Ljava/lang/Object;",
        "waiting",
        "Lcom/shilapi/xcertplay/usbbt/RfcommDlc;",
        "value",
        "",
        "opened",
        "getOpened",
        "()I",
        "current",
        "getCurrent",
        "()Lcom/shilapi/xcertplay/usbbt/RfcommDlc;",
        "offer",
        "",
        "dlc",
        "hasWaiting",
        "",
        "take",
        "timeoutMillis",
        "",
        "reset",
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


# instance fields
.field private volatile current:Lcom/shilapi/xcertplay/usbbt/RfcommDlc;

.field private final lock:Ljava/lang/Object;

.field private volatile opened:I

.field private waiting:Lcom/shilapi/xcertplay/usbbt/RfcommDlc;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtIap2Link;->lock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getCurrent()Lcom/shilapi/xcertplay/usbbt/RfcommDlc;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtIap2Link;->current:Lcom/shilapi/xcertplay/usbbt/RfcommDlc;

    return-object v0
.end method

.method public final getOpened()I
    .locals 1

    .line 251
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtIap2Link;->opened:I

    return v0
.end method

.method public final hasWaiting()Z
    .locals 4

    .line 276
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtIap2Link;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtIap2Link;->waiting:Lcom/shilapi/xcertplay/usbbt/RfcommDlc;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->isOpen()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final offer(Lcom/shilapi/xcertplay/usbbt/RfcommDlc;)V
    .locals 4

    const-string v0, "dlc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtIap2Link;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 258
    :try_start_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtIap2Link;->current:Lcom/shilapi/xcertplay/usbbt/RfcommDlc;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-eq v1, p1, :cond_0

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    .line 263
    :cond_1
    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtIap2Link;->waiting:Lcom/shilapi/xcertplay/usbbt/RfcommDlc;

    if-eqz v1, :cond_2

    if-eq v1, p1, :cond_2

    move-object v2, v1

    .line 264
    :cond_2
    iput-object p1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtIap2Link;->waiting:Lcom/shilapi/xcertplay/usbbt/RfcommDlc;

    .line 265
    iput-object p1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtIap2Link;->current:Lcom/shilapi/xcertplay/usbbt/RfcommDlc;

    .line 266
    iget p1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtIap2Link;->opened:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtIap2Link;->opened:I

    .line 267
    iget-object p1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtIap2Link;->lock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object p1, v2

    .line 257
    :goto_1
    monitor-exit v0

    if-eqz p1, :cond_3

    .line 272
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/usbbt/UsbBtIap2Link;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->close()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    :cond_3
    return-void

    :catchall_1
    move-exception p1

    .line 257
    monitor-exit v0

    throw p1
.end method

.method public final reset()V
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtIap2Link;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 298
    :try_start_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtIap2Link;->waiting:Lcom/shilapi/xcertplay/usbbt/RfcommDlc;

    iget-object v2, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtIap2Link;->current:Lcom/shilapi/xcertplay/usbbt/RfcommDlc;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    .line 299
    iput-object v2, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtIap2Link;->waiting:Lcom/shilapi/xcertplay/usbbt/RfcommDlc;

    .line 300
    iput-object v2, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtIap2Link;->current:Lcom/shilapi/xcertplay/usbbt/RfcommDlc;

    .line 301
    iget-object v2, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtIap2Link;->lock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 297
    monitor-exit v0

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;

    if-eqz v0, :cond_0

    .line 304
    :try_start_1
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v2, p0

    check-cast v2, Lcom/shilapi/xcertplay/usbbt/UsbBtIap2Link;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->close()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    :cond_0
    if-eqz v1, :cond_1

    .line 306
    const-string/jumbo v0, "usb bluetooth stopped"

    invoke-virtual {v1, v0}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->ended$shared_release(Ljava/lang/String;)V

    :cond_1
    return-void

    :catchall_1
    move-exception v1

    .line 297
    monitor-exit v0

    throw v1
.end method

.method public final take(J)Lcom/shilapi/xcertplay/usbbt/RfcommDlc;
    .locals 9

    .line 280
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long p1, p1, v2

    add-long/2addr v0, p1

    .line 281
    iget-object p1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtIap2Link;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 283
    :cond_0
    :goto_0
    :try_start_0
    iget-object p2, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtIap2Link;->waiting:Lcom/shilapi/xcertplay/usbbt/RfcommDlc;

    const/4 v4, 0x0

    if-eqz p2, :cond_1

    .line 285
    iput-object v4, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtIap2Link;->waiting:Lcom/shilapi/xcertplay/usbbt/RfcommDlc;

    .line 286
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->isOpen()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    monitor-exit p1

    return-object p2

    .line 289
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long v5, v0, v5

    const-wide/16 v7, 0x0

    cmp-long p2, v5, v7

    if-gtz p2, :cond_2

    .line 290
    monitor-exit p1

    return-object v4

    .line 291
    :cond_2
    :try_start_2
    iget-object p2, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtIap2Link;->lock:Ljava/lang/Object;

    div-long/2addr v5, v2

    const-wide/16 v7, 0x1

    invoke-static {v5, v6, v7, v8}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method
