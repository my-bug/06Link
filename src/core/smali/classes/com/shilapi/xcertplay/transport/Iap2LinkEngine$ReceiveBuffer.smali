.class final Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;
.super Ljava/lang/Object;
.source "Iap2LinkEngine.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReceiveBuffer"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIap2LinkEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Iap2LinkEngine.kt\ncom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,715:1\n1#2:716\n1740#3,3:717\n*S KotlinDebug\n*F\n+ 1 Iap2LinkEngine.kt\ncom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer\n*L\n621#1:717,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0005\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u000c\u001a\u00020\u0007J\u0011\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0007H\u0086\u0002J\u001e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0007J\u000e\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0007J\u000e\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0007J\u000e\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0005J\u0008\u0010\u001a\u001a\u00020\u0011H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\t\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;",
        "",
        "<init>",
        "()V",
        "bytes",
        "",
        "head",
        "",
        "tail",
        "size",
        "getSize",
        "()I",
        "remainingCapacity",
        "get",
        "",
        "index",
        "append",
        "",
        "source",
        "offset",
        "count",
        "discard",
        "take",
        "matches",
        "",
        "expected",
        "compact",
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
.field private final bytes:[B

.field private head:I

.field private tail:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xffff

    .line 588
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;->bytes:[B

    return-void
.end method

.method private final compact()V
    .locals 4

    .line 624
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;->head:I

    if-nez v0, :cond_0

    return-void

    .line 625
    :cond_0
    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;->tail:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;->bytes:[B

    invoke-static {v3, v3, v2, v0, v1}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    .line 626
    :cond_1
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;->tail:I

    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;->head:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;->tail:I

    .line 627
    iput v2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;->head:I

    return-void
.end method


# virtual methods
.method public final append([BII)V
    .locals 3

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 602
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;->remainingCapacity()I

    move-result v0

    if-gt p3, v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;->bytes:[B

    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;->tail:I

    add-int v2, p2, p3

    invoke-static {p1, v0, v1, p2, v2}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    .line 604
    iget p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;->tail:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;->tail:I

    return-void

    .line 602
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed requirement."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final discard(I)V
    .locals 1

    if-ltz p1, :cond_1

    .line 608
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;->getSize()I

    move-result v0

    if-gt p1, v0, :cond_1

    .line 609
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;->head:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;->head:I

    .line 610
    iget p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;->tail:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 611
    iput p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;->head:I

    .line 612
    iput p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;->tail:I

    :cond_0
    return-void

    .line 608
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final get(I)B
    .locals 2

    .line 599
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;->bytes:[B

    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;->head:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method public final getSize()I
    .locals 2

    .line 592
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;->tail:I

    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;->head:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final matches([B)Z
    .locals 5

    const-string v0, "expected"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 621
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->getIndices([B)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 717
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 718
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lkotlin/collections/IntIterator;

    invoke-virtual {v1}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v1

    .line 621
    iget-object v3, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;->bytes:[B

    iget v4, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;->head:I

    add-int/2addr v4, v1

    aget-byte v3, v3, v4

    aget-byte v1, p1, v1

    if-ne v3, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    return v2
.end method

.method public final remainingCapacity()I
    .locals 2

    .line 595
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;->compact()V

    .line 596
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;->bytes:[B

    array-length v0, v0

    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;->tail:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final take(I)[B
    .locals 3

    if-ltz p1, :cond_0

    .line 617
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;->getSize()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;->bytes:[B

    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;->head:I

    add-int v2, v1, p1

    invoke-static {v0, v1, v2}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;->discard(I)V

    return-object v0

    .line 617
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
