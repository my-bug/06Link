.class public final Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;
.super Ljava/lang/Object;
.source "DiLink51ClusterLayout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/DiLink51ClusterLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Plan"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0017\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0008H\u00c6\u0003J;\u0010\u001b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010\u001c\u001a\u00020\u00082\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001e\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001f\u001a\u00020 H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000cR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u000cR\u0011\u0010\u0014\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u000c\u00a8\u0006!"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;",
        "",
        "left",
        "",
        "top",
        "width",
        "height",
        "fullMap",
        "",
        "<init>",
        "(IIIIZ)V",
        "getLeft",
        "()I",
        "getTop",
        "getWidth",
        "getHeight",
        "getFullMap",
        "()Z",
        "sourceLeft",
        "getSourceLeft",
        "sourceTop",
        "getSourceTop",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
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
.field private final fullMap:Z

.field private final height:I

.field private final left:I

.field private final top:I

.field private final width:I


# direct methods
.method public constructor <init>(IIIIZ)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->left:I

    iput p2, p0, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->top:I

    iput p3, p0, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->width:I

    iput p4, p0, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->height:I

    iput-boolean p5, p0, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->fullMap:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;IIIIZILjava/lang/Object;)Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->left:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget p2, p0, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->top:I

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget p3, p0, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->width:I

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    iget p4, p0, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->height:I

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget-boolean p5, p0, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->fullMap:Z

    :cond_4
    move p6, p4

    move p7, p5

    move p4, p2

    move p5, p3

    move-object p2, p0

    move p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->copy(IIIIZ)Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->left:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->top:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->width:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->height:I

    return v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->fullMap:Z

    return v0
.end method

.method public final copy(IIIIZ)Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;
    .locals 6

    new-instance v0, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;-><init>(IIIIZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;

    iget v1, p0, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->left:I

    iget v3, p1, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->left:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->top:I

    iget v3, p1, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->top:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->width:I

    iget v3, p1, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->width:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->height:I

    iget v3, p1, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->height:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->fullMap:Z

    iget-boolean p1, p1, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->fullMap:Z

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getFullMap()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->fullMap:Z

    return v0
.end method

.method public final getHeight()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->height:I

    return v0
.end method

.method public final getLeft()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->left:I

    return v0
.end method

.method public final getSourceLeft()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->width:I

    rsub-int v0, v0, 0x780

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public final getSourceTop()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->height:I

    rsub-int v0, v0, 0x2d0

    return v0
.end method

.method public final getTop()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->top:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->left:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->top:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->width:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->height:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->fullMap:Z

    invoke-static {v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->left:I

    iget v1, p0, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->top:I

    iget v2, p0, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->width:I

    iget v3, p0, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->height:I

    iget-boolean v4, p0, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->fullMap:Z

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Plan(left="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", top="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", width="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", height="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", fullMap="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
