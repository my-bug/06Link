.class public final Lcom/shilapi/xcertplay/CarPlayBackgroundSession$Snapshot;
.super Ljava/lang/Object;
.source "CarPlayHostActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/CarPlayBackgroundSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Snapshot"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0007H\u00c6\u0003J1\u0010\u0016\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u0007H\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u001cH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0010\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/CarPlayBackgroundSession$Snapshot;",
        "",
        "controller",
        "Lcom/shilapi/xcertplay/orchestration/CarPlayController;",
        "sink",
        "Lcom/shilapi/xcertplay/media/AndroidMediaSink;",
        "width",
        "",
        "height",
        "<init>",
        "(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/media/AndroidMediaSink;II)V",
        "getController",
        "()Lcom/shilapi/xcertplay/orchestration/CarPlayController;",
        "getSink",
        "()Lcom/shilapi/xcertplay/media/AndroidMediaSink;",
        "getWidth",
        "()I",
        "getHeight",
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
.field private final controller:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

.field private final height:I

.field private final sink:Lcom/shilapi/xcertplay/media/AndroidMediaSink;

.field private final width:I


# direct methods
.method public constructor <init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/media/AndroidMediaSink;II)V
    .locals 1

    const-string v0, "controller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sink"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5817
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5818
    iput-object p1, p0, Lcom/shilapi/xcertplay/CarPlayBackgroundSession$Snapshot;->controller:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    .line 5819
    iput-object p2, p0, Lcom/shilapi/xcertplay/CarPlayBackgroundSession$Snapshot;->sink:Lcom/shilapi/xcertplay/media/AndroidMediaSink;

    .line 5820
    iput p3, p0, Lcom/shilapi/xcertplay/CarPlayBackgroundSession$Snapshot;->width:I

    .line 5821
    iput p4, p0, Lcom/shilapi/xcertplay/CarPlayBackgroundSession$Snapshot;->height:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/CarPlayBackgroundSession$Snapshot;Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/media/AndroidMediaSink;IIILjava/lang/Object;)Lcom/shilapi/xcertplay/CarPlayBackgroundSession$Snapshot;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/shilapi/xcertplay/CarPlayBackgroundSession$Snapshot;->controller:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/shilapi/xcertplay/CarPlayBackgroundSession$Snapshot;->sink:Lcom/shilapi/xcertplay/media/AndroidMediaSink;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/shilapi/xcertplay/CarPlayBackgroundSession$Snapshot;->width:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/shilapi/xcertplay/CarPlayBackgroundSession$Snapshot;->height:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/CarPlayBackgroundSession$Snapshot;->copy(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/media/AndroidMediaSink;II)Lcom/shilapi/xcertplay/CarPlayBackgroundSession$Snapshot;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/shilapi/xcertplay/orchestration/CarPlayController;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayBackgroundSession$Snapshot;->controller:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    return-object v0
.end method

.method public final component2()Lcom/shilapi/xcertplay/media/AndroidMediaSink;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayBackgroundSession$Snapshot;->sink:Lcom/shilapi/xcertplay/media/AndroidMediaSink;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/CarPlayBackgroundSession$Snapshot;->width:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/CarPlayBackgroundSession$Snapshot;->height:I

    return v0
.end method

.method public final copy(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/media/AndroidMediaSink;II)Lcom/shilapi/xcertplay/CarPlayBackgroundSession$Snapshot;
    .locals 1

    const-string v0, "controller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sink"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/shilapi/xcertplay/CarPlayBackgroundSession$Snapshot;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/CarPlayBackgroundSession$Snapshot;-><init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/media/AndroidMediaSink;II)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/CarPlayBackgroundSession$Snapshot;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/CarPlayBackgroundSession$Snapshot;

    iget-object v1, p0, Lcom/shilapi/xcertplay/CarPlayBackgroundSession$Snapshot;->controller:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    iget-object v3, p1, Lcom/shilapi/xcertplay/CarPlayBackgroundSession$Snapshot;->controller:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/CarPlayBackgroundSession$Snapshot;->sink:Lcom/shilapi/xcertplay/media/AndroidMediaSink;

    iget-object v3, p1, Lcom/shilapi/xcertplay/CarPlayBackgroundSession$Snapshot;->sink:Lcom/shilapi/xcertplay/media/AndroidMediaSink;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/shilapi/xcertplay/CarPlayBackgroundSession$Snapshot;->width:I

    iget v3, p1, Lcom/shilapi/xcertplay/CarPlayBackgroundSession$Snapshot;->width:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/shilapi/xcertplay/CarPlayBackgroundSession$Snapshot;->height:I

    iget p1, p1, Lcom/shilapi/xcertplay/CarPlayBackgroundSession$Snapshot;->height:I

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getController()Lcom/shilapi/xcertplay/orchestration/CarPlayController;
    .locals 1

    .line 5818
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayBackgroundSession$Snapshot;->controller:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    return-object v0
.end method

.method public final getHeight()I
    .locals 1

    .line 5821
    iget v0, p0, Lcom/shilapi/xcertplay/CarPlayBackgroundSession$Snapshot;->height:I

    return v0
.end method

.method public final getSink()Lcom/shilapi/xcertplay/media/AndroidMediaSink;
    .locals 1

    .line 5819
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayBackgroundSession$Snapshot;->sink:Lcom/shilapi/xcertplay/media/AndroidMediaSink;

    return-object v0
.end method

.method public final getWidth()I
    .locals 1

    .line 5820
    iget v0, p0, Lcom/shilapi/xcertplay/CarPlayBackgroundSession$Snapshot;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayBackgroundSession$Snapshot;->controller:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/CarPlayBackgroundSession$Snapshot;->sink:Lcom/shilapi/xcertplay/media/AndroidMediaSink;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/CarPlayBackgroundSession$Snapshot;->width:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/CarPlayBackgroundSession$Snapshot;->height:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayBackgroundSession$Snapshot;->controller:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    iget-object v1, p0, Lcom/shilapi/xcertplay/CarPlayBackgroundSession$Snapshot;->sink:Lcom/shilapi/xcertplay/media/AndroidMediaSink;

    iget v2, p0, Lcom/shilapi/xcertplay/CarPlayBackgroundSession$Snapshot;->width:I

    iget v3, p0, Lcom/shilapi/xcertplay/CarPlayBackgroundSession$Snapshot;->height:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Snapshot(controller="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", sink="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", width="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", height="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
