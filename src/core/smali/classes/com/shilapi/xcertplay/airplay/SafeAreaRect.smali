.class public final Lcom/shilapi/xcertplay/airplay/SafeAreaRect;
.super Ljava/lang/Object;
.source "SafeArea.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSafeArea.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeArea.kt\ncom/shilapi/xcertplay/airplay/SafeAreaRect\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,173:1\n1#2:174\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0017\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0016\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J1\u0010\u0019\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001e\u001a\u00020\u001fH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\nR\u0011\u0010\u000e\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\nR\u0011\u0010\u0010\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\n\u00a8\u0006 "
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/SafeAreaRect;",
        "",
        "left",
        "",
        "top",
        "right",
        "bottom",
        "<init>",
        "(IIII)V",
        "getLeft",
        "()I",
        "getTop",
        "getRight",
        "getBottom",
        "width",
        "getWidth",
        "height",
        "getHeight",
        "clampTo",
        "widthPixels",
        "heightPixels",
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
.field private final bottom:I

.field private final left:I

.field private final right:I

.field private final top:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->left:I

    .line 6
    iput p2, p0, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->top:I

    .line 7
    iput p3, p0, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->right:I

    .line 8
    iput p4, p0, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->bottom:I

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-le p3, p1, :cond_0

    if-le p4, p2, :cond_0

    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Safe area coordinates must describe a non-empty rectangle"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/airplay/SafeAreaRect;IIIIILjava/lang/Object;)Lcom/shilapi/xcertplay/airplay/SafeAreaRect;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->left:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->top:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->right:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->bottom:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->copy(IIII)Lcom/shilapi/xcertplay/airplay/SafeAreaRect;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final clampTo(II)Lcom/shilapi/xcertplay/airplay/SafeAreaRect;
    .locals 4

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 21
    iget v0, p0, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->left:I

    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v0

    .line 22
    iget v1, p0, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->top:I

    add-int/lit8 v3, p2, -0x1

    invoke-static {v1, v2, v3}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v1

    .line 23
    iget v2, p0, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->right:I

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3, p1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p1

    .line 24
    iget v2, p0, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->bottom:I

    add-int/lit8 v3, v1, 0x1

    invoke-static {v2, v3, p2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p2

    .line 25
    new-instance v2, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;

    invoke-direct {v2, v0, v1, p1, p2}, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;-><init>(IIII)V

    return-object v2

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Activity dimensions must be positive"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->left:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->top:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->right:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->bottom:I

    return v0
.end method

.method public final copy(IIII)Lcom/shilapi/xcertplay/airplay/SafeAreaRect;
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;-><init>(IIII)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;

    iget v1, p0, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->left:I

    iget v3, p1, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->left:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->top:I

    iget v3, p1, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->top:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->right:I

    iget v3, p1, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->right:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->bottom:I

    iget p1, p1, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->bottom:I

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getBottom()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->bottom:I

    return v0
.end method

.method public final getHeight()I
    .locals 2

    .line 17
    iget v0, p0, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->bottom:I

    iget v1, p0, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLeft()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->left:I

    return v0
.end method

.method public final getRight()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->right:I

    return v0
.end method

.method public final getTop()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->top:I

    return v0
.end method

.method public final getWidth()I
    .locals 2

    .line 16
    iget v0, p0, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->right:I

    iget v1, p0, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->left:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->left:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->top:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->right:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->bottom:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->left:I

    iget v1, p0, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->top:I

    iget v2, p0, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->right:I

    iget v3, p0, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->bottom:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SafeAreaRect(left="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", top="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", right="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", bottom="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
