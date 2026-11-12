.class final Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;
.super Ljava/lang/Object;
.source "Iap2LinkEngine.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Packet"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0016\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0008\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\tH\u00c6\u0003J;\u0010\u001e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u00c6\u0001J\u0013\u0010\u001f\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\"\u001a\u00020\u0003H\u00d6\u0001J\t\u0010#\u001a\u00020$H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\r\"\u0004\u0008\u0014\u0010\u000fR\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006%"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;",
        "",
        "sequence",
        "",
        "sessionId",
        "payload",
        "",
        "retransmissions",
        "deadlineMillis",
        "",
        "<init>",
        "(II[BIJ)V",
        "getSequence",
        "()I",
        "setSequence",
        "(I)V",
        "getSessionId",
        "getPayload",
        "()[B",
        "getRetransmissions",
        "setRetransmissions",
        "getDeadlineMillis",
        "()J",
        "setDeadlineMillis",
        "(J)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
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
.field private deadlineMillis:J

.field private final payload:[B

.field private retransmissions:I

.field private sequence:I

.field private final sessionId:I


# direct methods
.method public constructor <init>(II[BIJ)V
    .locals 1

    const-string v0, "payload"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->sequence:I

    .line 116
    iput p2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->sessionId:I

    .line 117
    iput-object p3, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->payload:[B

    .line 118
    iput p4, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->retransmissions:I

    .line 119
    iput-wide p5, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->deadlineMillis:J

    return-void
.end method

.method public synthetic constructor <init>(II[BIJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_0

    const/4 p4, 0x0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    move v4, p4

    :goto_0
    and-int/lit8 p4, p7, 0x10

    if-eqz p4, :cond_1

    const-wide/16 p5, 0x0

    :cond_1
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v5, p5

    .line 114
    invoke-direct/range {v0 .. v6}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;-><init>(II[BIJ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;II[BIJILjava/lang/Object;)Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->sequence:I

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget p2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->sessionId:I

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    iget-object p3, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->payload:[B

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    iget p4, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->retransmissions:I

    :cond_3
    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_4

    iget-wide p5, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->deadlineMillis:J

    :cond_4
    move-wide p7, p5

    move-object p5, p3

    move p6, p4

    move p3, p1

    move p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p8}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->copy(II[BIJ)Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->sequence:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->sessionId:I

    return v0
.end method

.method public final component3()[B
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->payload:[B

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->retransmissions:I

    return v0
.end method

.method public final component5()J
    .locals 2

    iget-wide v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->deadlineMillis:J

    return-wide v0
.end method

.method public final copy(II[BIJ)Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;
    .locals 8

    const-string v0, "payload"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;-><init>(II[BIJ)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;

    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->sequence:I

    iget v3, p1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->sequence:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->sessionId:I

    iget v3, p1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->sessionId:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->payload:[B

    iget-object v3, p1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->payload:[B

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->retransmissions:I

    iget v3, p1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->retransmissions:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->deadlineMillis:J

    iget-wide v5, p1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->deadlineMillis:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getDeadlineMillis()J
    .locals 2

    .line 119
    iget-wide v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->deadlineMillis:J

    return-wide v0
.end method

.method public final getPayload()[B
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->payload:[B

    return-object v0
.end method

.method public final getRetransmissions()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->retransmissions:I

    return v0
.end method

.method public final getSequence()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->sequence:I

    return v0
.end method

.method public final getSessionId()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->sessionId:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->sequence:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->sessionId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->payload:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->retransmissions:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->deadlineMillis:J

    invoke-static {v1, v2}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setDeadlineMillis(J)V
    .locals 0

    .line 119
    iput-wide p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->deadlineMillis:J

    return-void
.end method

.method public final setRetransmissions(I)V
    .locals 0

    .line 118
    iput p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->retransmissions:I

    return-void
.end method

.method public final setSequence(I)V
    .locals 0

    .line 115
    iput p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->sequence:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->sequence:I

    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->sessionId:I

    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->payload:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->retransmissions:I

    iget-wide v4, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->deadlineMillis:J

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Packet(sequence="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", sessionId="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", payload="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", retransmissions="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", deadlineMillis="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
