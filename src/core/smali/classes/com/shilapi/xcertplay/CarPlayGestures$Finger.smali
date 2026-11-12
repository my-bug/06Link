.class public final Lcom/shilapi/xcertplay/CarPlayGestures$Finger;
.super Ljava/lang/Object;
.source "CarPlayGestures.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/CarPlayGestures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Finger"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\'\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000c\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/CarPlayGestures$Finger;",
        "",
        "id",
        "",
        "x",
        "",
        "y",
        "<init>",
        "(IFF)V",
        "getId",
        "()I",
        "getX",
        "()F",
        "getY",
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
        "common_release"
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
.field private final id:I

.field private final x:F

.field private final y:F


# direct methods
.method public constructor <init>(IFF)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;->id:I

    iput p2, p0, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;->x:F

    iput p3, p0, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;->y:F

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/CarPlayGestures$Finger;IFFILjava/lang/Object;)Lcom/shilapi/xcertplay/CarPlayGestures$Finger;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;->id:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;->x:F

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;->y:F

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;->copy(IFF)Lcom/shilapi/xcertplay/CarPlayGestures$Finger;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;->id:I

    return v0
.end method

.method public final component2()F
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;->x:F

    return v0
.end method

.method public final component3()F
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;->y:F

    return v0
.end method

.method public final copy(IFF)Lcom/shilapi/xcertplay/CarPlayGestures$Finger;
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;

    invoke-direct {v0, p1, p2, p3}, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;-><init>(IFF)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;

    iget v1, p0, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;->id:I

    iget v3, p1, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;->id:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;->x:F

    iget v3, p1, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;->x:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;->y:F

    iget p1, p1, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;->y:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getId()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;->id:I

    return v0
.end method

.method public final getX()F
    .locals 1

    .line 33
    iget v0, p0, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;->x:F

    return v0
.end method

.method public final getY()F
    .locals 1

    .line 33
    iget v0, p0, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;->y:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;->id:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;->x:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;->y:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;->id:I

    iget v1, p0, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;->x:F

    iget v2, p0, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;->y:F

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Finger(id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", x="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", y="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
