.class public final Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;
.super Ljava/lang/Object;
.source "VideoInCar.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/airplay/VideoInCar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlayerState"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0014\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0006H\u00c6\u0003J;\u0010\u0017\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u0018\u001a\u00020\u00032\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001J\t\u0010\u001c\u001a\u00020\u001dH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000fR\u0011\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000f\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;",
        "",
        "prepared",
        "",
        "playing",
        "positionSeconds",
        "",
        "durationSeconds",
        "bufferedSeconds",
        "<init>",
        "(ZZDDD)V",
        "getPrepared",
        "()Z",
        "getPlaying",
        "getPositionSeconds",
        "()D",
        "getDurationSeconds",
        "getBufferedSeconds",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "other",
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
.field private final bufferedSeconds:D

.field private final durationSeconds:D

.field private final playing:Z

.field private final positionSeconds:D

.field private final prepared:Z


# direct methods
.method public constructor <init>(ZZDDD)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;->prepared:Z

    .line 90
    iput-boolean p2, p0, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;->playing:Z

    .line 91
    iput-wide p3, p0, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;->positionSeconds:D

    .line 92
    iput-wide p5, p0, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;->durationSeconds:D

    .line 93
    iput-wide p7, p0, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;->bufferedSeconds:D

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;ZZDDDILjava/lang/Object;)Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;
    .locals 0

    and-int/lit8 p10, p9, 0x1

    if-eqz p10, :cond_0

    iget-boolean p1, p0, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;->prepared:Z

    :cond_0
    and-int/lit8 p10, p9, 0x2

    if-eqz p10, :cond_1

    iget-boolean p2, p0, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;->playing:Z

    :cond_1
    and-int/lit8 p10, p9, 0x4

    if-eqz p10, :cond_2

    iget-wide p3, p0, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;->positionSeconds:D

    :cond_2
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_3

    iget-wide p5, p0, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;->durationSeconds:D

    :cond_3
    and-int/lit8 p9, p9, 0x10

    if-eqz p9, :cond_4

    iget-wide p7, p0, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;->bufferedSeconds:D

    :cond_4
    move-wide p9, p7

    move-wide p7, p5

    move-wide p5, p3

    move p3, p1

    move p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p10}, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;->copy(ZZDDD)Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;->prepared:Z

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;->playing:Z

    return v0
.end method

.method public final component3()D
    .locals 2

    iget-wide v0, p0, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;->positionSeconds:D

    return-wide v0
.end method

.method public final component4()D
    .locals 2

    iget-wide v0, p0, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;->durationSeconds:D

    return-wide v0
.end method

.method public final component5()D
    .locals 2

    iget-wide v0, p0, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;->bufferedSeconds:D

    return-wide v0
.end method

.method public final copy(ZZDDD)Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;
    .locals 9

    new-instance v0, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;-><init>(ZZDDD)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;->prepared:Z

    iget-boolean v3, p1, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;->prepared:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;->playing:Z

    iget-boolean v3, p1, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;->playing:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;->positionSeconds:D

    iget-wide v5, p1, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;->positionSeconds:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;->durationSeconds:D

    iget-wide v5, p1, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;->durationSeconds:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;->bufferedSeconds:D

    iget-wide v5, p1, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;->bufferedSeconds:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-eqz p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getBufferedSeconds()D
    .locals 2

    .line 93
    iget-wide v0, p0, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;->bufferedSeconds:D

    return-wide v0
.end method

.method public final getDurationSeconds()D
    .locals 2

    .line 92
    iget-wide v0, p0, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;->durationSeconds:D

    return-wide v0
.end method

.method public final getPlaying()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;->playing:Z

    return v0
.end method

.method public final getPositionSeconds()D
    .locals 2

    .line 91
    iget-wide v0, p0, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;->positionSeconds:D

    return-wide v0
.end method

.method public final getPrepared()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;->prepared:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;->prepared:Z

    invoke-static {v0}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;->playing:Z

    invoke-static {v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;->positionSeconds:D

    invoke-static {v1, v2}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;->durationSeconds:D

    invoke-static {v1, v2}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;->bufferedSeconds:D

    invoke-static {v1, v2}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;->prepared:Z

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;->playing:Z

    iget-wide v2, p0, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;->positionSeconds:D

    iget-wide v4, p0, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;->durationSeconds:D

    iget-wide v6, p0, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;->bufferedSeconds:D

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "PlayerState(prepared="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", playing="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", positionSeconds="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", durationSeconds="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", bufferedSeconds="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
