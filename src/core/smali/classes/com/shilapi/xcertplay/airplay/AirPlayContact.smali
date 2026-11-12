.class public final Lcom/shilapi/xcertplay/airplay/AirPlayContact;
.super Ljava/lang/Object;
.source "AirPlayHid.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0012\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0008H\u00c6\u0003J1\u0010\u0016\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010\u0017\u001a\u00020\u00082\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/AirPlayContact;",
        "",
        "id",
        "",
        "x",
        "",
        "y",
        "down",
        "",
        "<init>",
        "(IDDZ)V",
        "getId",
        "()I",
        "getX",
        "()D",
        "getY",
        "getDown",
        "()Z",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
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
.field private final down:Z

.field private final id:I

.field private final x:D

.field private final y:D


# direct methods
.method public constructor <init>(IDDZ)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayContact;->id:I

    .line 6
    iput-wide p2, p0, Lcom/shilapi/xcertplay/airplay/AirPlayContact;->x:D

    .line 7
    iput-wide p4, p0, Lcom/shilapi/xcertplay/airplay/AirPlayContact;->y:D

    .line 8
    iput-boolean p6, p0, Lcom/shilapi/xcertplay/airplay/AirPlayContact;->down:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/airplay/AirPlayContact;IDDZILjava/lang/Object;)Lcom/shilapi/xcertplay/airplay/AirPlayContact;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget p1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayContact;->id:I

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-wide p2, p0, Lcom/shilapi/xcertplay/airplay/AirPlayContact;->x:D

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    iget-wide p4, p0, Lcom/shilapi/xcertplay/airplay/AirPlayContact;->y:D

    :cond_2
    and-int/lit8 p7, p7, 0x8

    if-eqz p7, :cond_3

    iget-boolean p6, p0, Lcom/shilapi/xcertplay/airplay/AirPlayContact;->down:Z

    :cond_3
    move p8, p6

    move-wide p6, p4

    move-wide p4, p2

    move-object p2, p0

    move p3, p1

    invoke-virtual/range {p2 .. p8}, Lcom/shilapi/xcertplay/airplay/AirPlayContact;->copy(IDDZ)Lcom/shilapi/xcertplay/airplay/AirPlayContact;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayContact;->id:I

    return v0
.end method

.method public final component2()D
    .locals 2

    iget-wide v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayContact;->x:D

    return-wide v0
.end method

.method public final component3()D
    .locals 2

    iget-wide v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayContact;->y:D

    return-wide v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayContact;->down:Z

    return v0
.end method

.method public final copy(IDDZ)Lcom/shilapi/xcertplay/airplay/AirPlayContact;
    .locals 7

    new-instance v0, Lcom/shilapi/xcertplay/airplay/AirPlayContact;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/shilapi/xcertplay/airplay/AirPlayContact;-><init>(IDDZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/airplay/AirPlayContact;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/airplay/AirPlayContact;

    iget v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayContact;->id:I

    iget v3, p1, Lcom/shilapi/xcertplay/airplay/AirPlayContact;->id:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/shilapi/xcertplay/airplay/AirPlayContact;->x:D

    iget-wide v5, p1, Lcom/shilapi/xcertplay/airplay/AirPlayContact;->x:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/shilapi/xcertplay/airplay/AirPlayContact;->y:D

    iget-wide v5, p1, Lcom/shilapi/xcertplay/airplay/AirPlayContact;->y:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayContact;->down:Z

    iget-boolean p1, p1, Lcom/shilapi/xcertplay/airplay/AirPlayContact;->down:Z

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getDown()Z
    .locals 1

    .line 8
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayContact;->down:Z

    return v0
.end method

.method public final getId()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayContact;->id:I

    return v0
.end method

.method public final getX()D
    .locals 2

    .line 6
    iget-wide v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayContact;->x:D

    return-wide v0
.end method

.method public final getY()D
    .locals 2

    .line 7
    iget-wide v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayContact;->y:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayContact;->id:I

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayContact;->x:D

    invoke-static {v1, v2}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayContact;->y:D

    invoke-static {v1, v2}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayContact;->down:Z

    invoke-static {v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayContact;->id:I

    iget-wide v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayContact;->x:D

    iget-wide v3, p0, Lcom/shilapi/xcertplay/airplay/AirPlayContact;->y:D

    iget-boolean v5, p0, Lcom/shilapi/xcertplay/airplay/AirPlayContact;->down:Z

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "AirPlayContact(id="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", x="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", y="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", down="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
