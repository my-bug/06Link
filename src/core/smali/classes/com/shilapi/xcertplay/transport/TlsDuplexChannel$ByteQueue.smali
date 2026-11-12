.class final Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;
.super Ljava/lang/Object;
.source "TlsDuplexChannel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ByteQueue"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTlsDuplexChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TlsDuplexChannel.kt\ncom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,438:1\n1#2:439\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0005J\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u0007J\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0013\u001a\u00020\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0008\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;",
        "",
        "<init>",
        "()V",
        "bytes",
        "",
        "offset",
        "",
        "size",
        "getSize",
        "()I",
        "append",
        "",
        "value",
        "asByteBuffer",
        "Ljava/nio/ByteBuffer;",
        "discard",
        "count",
        "take",
        "maxBytes",
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
.field private bytes:[B

.field private offset:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 355
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;->bytes:[B

    return-void
.end method


# virtual methods
.method public final append([B)V
    .locals 8

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    .line 363
    :cond_0
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;->getSize()I

    move-result v0

    const/high16 v1, 0x100000

    array-length v2, p1

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1

    .line 366
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;->getSize()I

    move-result v0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v2, v0, [B

    .line 367
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;->bytes:[B

    iget v4, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;->offset:I

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    .line 368
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;->getSize()I

    move-result v3

    const/16 v6, 0xc

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    .line 369
    iput-object v2, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;->bytes:[B

    const/4 p1, 0x0

    .line 370
    iput p1, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;->offset:I

    return-void

    .line 364
    :cond_1
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    const-string v0, "TLS buffered data exceeds the defensive limit"

    invoke-direct {p1, v0}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final asByteBuffer()Ljava/nio/ByteBuffer;
    .locals 3

    .line 373
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;->bytes:[B

    iget v1, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;->offset:I

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;->getSize()I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    const-string/jumbo v1, "slice(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final discard(I)V
    .locals 1

    if-ltz p1, :cond_1

    .line 376
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;->getSize()I

    move-result v0

    if-gt p1, v0, :cond_1

    .line 377
    iget v0, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;->offset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;->offset:I

    .line 378
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;->bytes:[B

    array-length p1, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 379
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;->bytes:[B

    .line 380
    iput p1, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;->offset:I

    :cond_0
    return-void

    .line 376
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid TLS queue discard"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getSize()I
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;->bytes:[B

    array-length v0, v0

    iget v1, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;->offset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final take(I)[B
    .locals 3

    .line 385
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;->getSize()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 386
    :cond_0
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;->getSize()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 387
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;->bytes:[B

    iget v1, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;->offset:I

    add-int v2, v1, p1

    invoke-static {v0, v1, v2}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$ByteQueue;->discard(I)V

    return-object v0
.end method
