.class public final Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;
.super Ljava/lang/Object;
.source "AirPlayHid.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0017\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001BC\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0007H\u00c6\u0003JE\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u001b\u001a\u00020\u00032\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u0007H\u00d6\u0001J\t\u0010\u001e\u001a\u00020\u001fH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0011R\u0011\u0010\t\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0011\u00a8\u0006 "
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;",
        "",
        "select",
        "",
        "home",
        "back",
        "x",
        "",
        "y",
        "wheel",
        "<init>",
        "(ZZZIII)V",
        "getSelect",
        "()Z",
        "getHome",
        "getBack",
        "getX",
        "()I",
        "getY",
        "getWheel",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
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
.field private final back:Z

.field private final home:Z

.field private final select:Z

.field private final wheel:I

.field private final x:I

.field private final y:I


# direct methods
.method public constructor <init>()V
    .locals 9

    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;-><init>(ZZZIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZZIII)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->select:Z

    .line 14
    iput-boolean p2, p0, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->home:Z

    .line 15
    iput-boolean p3, p0, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->back:Z

    .line 16
    iput p4, p0, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->x:I

    .line 17
    iput p5, p0, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->y:I

    .line 18
    iput p6, p0, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->wheel:I

    return-void
.end method

.method public synthetic constructor <init>(ZZZIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    const/4 p3, 0x0

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    const/4 p4, 0x0

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    const/4 p5, 0x0

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    const/4 p7, 0x0

    goto :goto_0

    :cond_5
    move p7, p6

    :goto_0
    move p6, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .line 12
    invoke-direct/range {p1 .. p7}, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;-><init>(ZZZIII)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;ZZZIIIILjava/lang/Object;)Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-boolean p1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->select:Z

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-boolean p2, p0, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->home:Z

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    iget-boolean p3, p0, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->back:Z

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    iget p4, p0, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->x:I

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    iget p5, p0, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->y:I

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    iget p6, p0, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->wheel:I

    :cond_5
    move p7, p5

    move p8, p6

    move p5, p3

    move p6, p4

    move p3, p1

    move p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p8}, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->copy(ZZZIII)Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->select:Z

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->home:Z

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->back:Z

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->x:I

    return v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->y:I

    return v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->wheel:I

    return v0
.end method

.method public final copy(ZZZIII)Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;
    .locals 7

    new-instance v0, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;-><init>(ZZZIII)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->select:Z

    iget-boolean v3, p1, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->select:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->home:Z

    iget-boolean v3, p1, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->home:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->back:Z

    iget-boolean v3, p1, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->back:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->x:I

    iget v3, p1, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->x:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->y:I

    iget v3, p1, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->y:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->wheel:I

    iget p1, p1, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->wheel:I

    if-eq v1, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getBack()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->back:Z

    return v0
.end method

.method public final getHome()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->home:Z

    return v0
.end method

.method public final getSelect()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->select:Z

    return v0
.end method

.method public final getWheel()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->wheel:I

    return v0
.end method

.method public final getX()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->x:I

    return v0
.end method

.method public final getY()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->y:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->select:Z

    invoke-static {v0}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->home:Z

    invoke-static {v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->back:Z

    invoke-static {v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->x:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->y:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->wheel:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->select:Z

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->home:Z

    iget-boolean v2, p0, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->back:Z

    iget v3, p0, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->x:I

    iget v4, p0, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->y:I

    iget v5, p0, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->wheel:I

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "AirPlayKnobState(select="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", home="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", back="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", x="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", y="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", wheel="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
