.class public final Lcom/shilapi/xcertplay/media/VideoJob$SurfaceChanged;
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
    name = "SurfaceChanged"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000b\u0010\u0008\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0015\u0010\t\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\u0013\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u00d6\u0003J\t\u0010\u000e\u001a\u00020\u000fH\u00d6\u0001J\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/media/VideoJob$SurfaceChanged;",
        "Lcom/shilapi/xcertplay/media/VideoJob;",
        "surface",
        "Landroid/view/Surface;",
        "<init>",
        "(Landroid/view/Surface;)V",
        "getSurface",
        "()Landroid/view/Surface;",
        "component1",
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
.field private final surface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/view/Surface;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/media/VideoJob$SurfaceChanged;->surface:Landroid/view/Surface;

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/media/VideoJob$SurfaceChanged;Landroid/view/Surface;ILjava/lang/Object;)Lcom/shilapi/xcertplay/media/VideoJob$SurfaceChanged;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/shilapi/xcertplay/media/VideoJob$SurfaceChanged;->surface:Landroid/view/Surface;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/media/VideoJob$SurfaceChanged;->copy(Landroid/view/Surface;)Lcom/shilapi/xcertplay/media/VideoJob$SurfaceChanged;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/media/VideoJob$SurfaceChanged;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method public final copy(Landroid/view/Surface;)Lcom/shilapi/xcertplay/media/VideoJob$SurfaceChanged;
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/media/VideoJob$SurfaceChanged;

    invoke-direct {v0, p1}, Lcom/shilapi/xcertplay/media/VideoJob$SurfaceChanged;-><init>(Landroid/view/Surface;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/media/VideoJob$SurfaceChanged;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/media/VideoJob$SurfaceChanged;

    iget-object v1, p0, Lcom/shilapi/xcertplay/media/VideoJob$SurfaceChanged;->surface:Landroid/view/Surface;

    iget-object p1, p1, Lcom/shilapi/xcertplay/media/VideoJob$SurfaceChanged;->surface:Landroid/view/Surface;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getSurface()Landroid/view/Surface;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/VideoJob$SurfaceChanged;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/media/VideoJob$SurfaceChanged;->surface:Landroid/view/Surface;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/Surface;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/shilapi/xcertplay/media/VideoJob$SurfaceChanged;->surface:Landroid/view/Surface;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SurfaceChanged(surface="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
