.class final Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;
.super Ljava/lang/Object;
.source "Iap2UsbMuxHost.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MuxFrame"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0007H\u00c6\u0003J1\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;",
        "",
        "protocol",
        "",
        "length",
        "word8",
        "payload",
        "",
        "<init>",
        "(III[B)V",
        "getProtocol",
        "()I",
        "getLength",
        "getWord8",
        "getPayload",
        "()[B",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
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
.field private final length:I

.field private final payload:[B

.field private final protocol:I

.field private final word8:I


# direct methods
.method public constructor <init>(III[B)V
    .locals 1

    const-string v0, "payload"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;->protocol:I

    .line 31
    iput p2, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;->length:I

    .line 32
    iput p3, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;->word8:I

    .line 33
    iput-object p4, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;->payload:[B

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;III[BILjava/lang/Object;)Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;->protocol:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;->length:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;->word8:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;->payload:[B

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;->copy(III[B)Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;->protocol:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;->length:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;->word8:I

    return v0
.end method

.method public final component4()[B
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;->payload:[B

    return-object v0
.end method

.method public final copy(III[B)Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;
    .locals 1

    const-string v0, "payload"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;-><init>(III[B)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;

    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;->protocol:I

    iget v3, p1, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;->protocol:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;->length:I

    iget v3, p1, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;->length:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;->word8:I

    iget v3, p1, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;->word8:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;->payload:[B

    iget-object p1, p1, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;->payload:[B

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getLength()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;->length:I

    return v0
.end method

.method public final getPayload()[B
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;->payload:[B

    return-object v0
.end method

.method public final getProtocol()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;->protocol:I

    return v0
.end method

.method public final getWord8()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;->word8:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;->protocol:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;->length:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;->word8:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;->payload:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;->protocol:I

    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;->length:I

    iget v2, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;->word8:I

    iget-object v3, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$MuxFrame;->payload:[B

    invoke-static {v3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "MuxFrame(protocol="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", length="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", word8="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", payload="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
