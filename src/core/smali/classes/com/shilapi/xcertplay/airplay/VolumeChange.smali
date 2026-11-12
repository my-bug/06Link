.class public final Lcom/shilapi/xcertplay/airplay/VolumeChange;
.super Ljava/lang/Object;
.source "WheelKeyVerdict.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\'\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\t\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/VolumeChange;",
        "",
        "stream",
        "",
        "from",
        "to",
        "<init>",
        "(III)V",
        "getStream",
        "()I",
        "getFrom",
        "getTo",
        "component1",
        "component2",
        "component3",
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
.field private final from:I

.field private final stream:I

.field private final to:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/shilapi/xcertplay/airplay/VolumeChange;->stream:I

    iput p2, p0, Lcom/shilapi/xcertplay/airplay/VolumeChange;->from:I

    iput p3, p0, Lcom/shilapi/xcertplay/airplay/VolumeChange;->to:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/airplay/VolumeChange;IIIILjava/lang/Object;)Lcom/shilapi/xcertplay/airplay/VolumeChange;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/shilapi/xcertplay/airplay/VolumeChange;->stream:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/shilapi/xcertplay/airplay/VolumeChange;->from:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lcom/shilapi/xcertplay/airplay/VolumeChange;->to:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/airplay/VolumeChange;->copy(III)Lcom/shilapi/xcertplay/airplay/VolumeChange;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/airplay/VolumeChange;->stream:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/airplay/VolumeChange;->from:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/airplay/VolumeChange;->to:I

    return v0
.end method

.method public final copy(III)Lcom/shilapi/xcertplay/airplay/VolumeChange;
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/airplay/VolumeChange;

    invoke-direct {v0, p1, p2, p3}, Lcom/shilapi/xcertplay/airplay/VolumeChange;-><init>(III)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/airplay/VolumeChange;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/airplay/VolumeChange;

    iget v1, p0, Lcom/shilapi/xcertplay/airplay/VolumeChange;->stream:I

    iget v3, p1, Lcom/shilapi/xcertplay/airplay/VolumeChange;->stream:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/shilapi/xcertplay/airplay/VolumeChange;->from:I

    iget v3, p1, Lcom/shilapi/xcertplay/airplay/VolumeChange;->from:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/shilapi/xcertplay/airplay/VolumeChange;->to:I

    iget p1, p1, Lcom/shilapi/xcertplay/airplay/VolumeChange;->to:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getFrom()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/shilapi/xcertplay/airplay/VolumeChange;->from:I

    return v0
.end method

.method public final getStream()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/shilapi/xcertplay/airplay/VolumeChange;->stream:I

    return v0
.end method

.method public final getTo()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/shilapi/xcertplay/airplay/VolumeChange;->to:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/shilapi/xcertplay/airplay/VolumeChange;->stream:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/airplay/VolumeChange;->from:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/airplay/VolumeChange;->to:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/shilapi/xcertplay/airplay/VolumeChange;->stream:I

    iget v1, p0, Lcom/shilapi/xcertplay/airplay/VolumeChange;->from:I

    iget v2, p0, Lcom/shilapi/xcertplay/airplay/VolumeChange;->to:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "VolumeChange(stream="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", from="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", to="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
