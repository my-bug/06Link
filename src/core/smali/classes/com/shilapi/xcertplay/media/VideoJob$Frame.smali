.class public final Lcom/shilapi/xcertplay/media/VideoJob$Frame;
.super Ljava/lang/Object;
.source "VideoDecodeQueue.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/media/VideoJob;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/media/VideoJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Frame"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\t\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/media/VideoJob$Frame;",
        "Lcom/shilapi/xcertplay/media/VideoJob;",
        "nalus",
        "",
        "receivedNs",
        "",
        "<init>",
        "([BJ)V",
        "getNalus",
        "()[B",
        "getReceivedNs",
        "()J",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
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
.field private final nalus:[B

.field private final receivedNs:J


# direct methods
.method public constructor <init>([BJ)V
    .locals 1

    const-string v0, "nalus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/media/VideoJob$Frame;->nalus:[B

    iput-wide p2, p0, Lcom/shilapi/xcertplay/media/VideoJob$Frame;->receivedNs:J

    return-void
.end method

.method public synthetic constructor <init>([BJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 10
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p2

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/media/VideoJob$Frame;-><init>([BJ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/media/VideoJob$Frame;[BJILjava/lang/Object;)Lcom/shilapi/xcertplay/media/VideoJob$Frame;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/shilapi/xcertplay/media/VideoJob$Frame;->nalus:[B

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget-wide p2, p0, Lcom/shilapi/xcertplay/media/VideoJob$Frame;->receivedNs:J

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/media/VideoJob$Frame;->copy([BJ)Lcom/shilapi/xcertplay/media/VideoJob$Frame;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()[B
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/media/VideoJob$Frame;->nalus:[B

    return-object v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/shilapi/xcertplay/media/VideoJob$Frame;->receivedNs:J

    return-wide v0
.end method

.method public final copy([BJ)Lcom/shilapi/xcertplay/media/VideoJob$Frame;
    .locals 1

    const-string v0, "nalus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/shilapi/xcertplay/media/VideoJob$Frame;

    invoke-direct {v0, p1, p2, p3}, Lcom/shilapi/xcertplay/media/VideoJob$Frame;-><init>([BJ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/media/VideoJob$Frame;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/media/VideoJob$Frame;

    iget-object v1, p0, Lcom/shilapi/xcertplay/media/VideoJob$Frame;->nalus:[B

    iget-object v3, p1, Lcom/shilapi/xcertplay/media/VideoJob$Frame;->nalus:[B

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/shilapi/xcertplay/media/VideoJob$Frame;->receivedNs:J

    iget-wide v5, p1, Lcom/shilapi/xcertplay/media/VideoJob$Frame;->receivedNs:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getNalus()[B
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/VideoJob$Frame;->nalus:[B

    return-object v0
.end method

.method public final getReceivedNs()J
    .locals 2

    .line 10
    iget-wide v0, p0, Lcom/shilapi/xcertplay/media/VideoJob$Frame;->receivedNs:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/shilapi/xcertplay/media/VideoJob$Frame;->nalus:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/shilapi/xcertplay/media/VideoJob$Frame;->receivedNs:J

    invoke-static {v1, v2}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/shilapi/xcertplay/media/VideoJob$Frame;->nalus:[B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/shilapi/xcertplay/media/VideoJob$Frame;->receivedNs:J

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Frame(nalus="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", receivedNs="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
