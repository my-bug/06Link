.class final Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;
.super Ljava/lang/Object;
.source "Iap2CsmFramer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReceiveBuffer"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\r\u001a\u00020\u0003J\u001e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0003J\u000e\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0003J\u0006\u0010\u0014\u001a\u00020\u0015J\u000e\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0003J\u0016\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0003J\u0008\u0010\u001a\u001a\u00020\u000fH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\n\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;",
        "",
        "maximumSize",
        "",
        "<init>",
        "(I)V",
        "bytes",
        "",
        "head",
        "tail",
        "size",
        "getSize",
        "()I",
        "remainingCapacity",
        "append",
        "",
        "source",
        "offset",
        "count",
        "discard",
        "hasStart",
        "",
        "u16",
        "copyOfRange",
        "from",
        "to",
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

.field private final maximumSize:I

.field private tail:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;->maximumSize:I

    .line 55
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;->bytes:[B

    return-void
.end method

.method private final compact()V
    .locals 4

    .line 90
    iget v0, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;->head:I

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    iget v1, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;->tail:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;->bytes:[B

    invoke-static {v3, v3, v2, v0, v1}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    .line 92
    :cond_1
    iget v0, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;->tail:I

    iget v1, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;->head:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;->tail:I

    .line 93
    iput v2, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;->head:I

    return-void
.end method


# virtual methods
.method public final append([BII)V
    .locals 3

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p3, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;->remainingCapacity()I

    move-result v0

    if-gt p3, v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;->bytes:[B

    iget v1, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;->tail:I

    add-int v2, p2, p3

    invoke-static {p1, v0, v1, p2, v2}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    .line 69
    iget p1, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;->tail:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;->tail:I

    return-void

    .line 67
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed requirement."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final copyOfRange(II)[B
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;->bytes:[B

    iget v1, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;->head:I

    add-int/2addr p1, v1

    add-int/2addr v1, p2

    invoke-static {v0, p1, v1}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public final discard(I)V
    .locals 1

    if-ltz p1, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;->getSize()I

    move-result v0

    if-gt p1, v0, :cond_1

    .line 74
    iget v0, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;->head:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;->head:I

    .line 75
    iget p1, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;->tail:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 76
    iput p1, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;->head:I

    .line 77
    iput p1, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;->tail:I

    :cond_0
    return-void

    .line 73
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getSize()I
    .locals 2

    .line 59
    iget v0, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;->tail:I

    iget v1, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;->head:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final hasStart()Z
    .locals 4

    .line 81
    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;->bytes:[B

    iget v1, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;->head:I

    aget-byte v2, v0, v1

    const/16 v3, 0x40

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    aget-byte v0, v0, v1

    if-ne v0, v3, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final remainingCapacity()I
    .locals 2

    .line 62
    invoke-direct {p0}, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;->compact()V

    .line 63
    iget v0, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;->maximumSize:I

    iget v1, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;->tail:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final u16(I)I
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;->bytes:[B

    iget v1, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;->head:I

    add-int v2, v1, p1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    .line 85
    aget-byte p1, v0, v1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v2

    return p1
.end method
