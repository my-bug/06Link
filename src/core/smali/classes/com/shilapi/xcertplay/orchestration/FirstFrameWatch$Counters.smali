.class public final Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;
.super Ljava/lang/Object;
.source "FirstFrameWatch.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Counters"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0012\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B/\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0005H\u00c6\u0003J1\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\u00052\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\r\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;",
        "",
        "bytes",
        "",
        "decoded",
        "",
        "rendered",
        "hasSurface",
        "<init>",
        "(JZZZ)V",
        "getBytes",
        "()J",
        "getDecoded",
        "()Z",
        "getRendered",
        "getHasSurface",
        "component1",
        "component2",
        "component3",
        "component4",
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
.field private final bytes:J

.field private final decoded:Z

.field private final hasSurface:Z

.field private final rendered:Z


# direct methods
.method public constructor <init>()V
    .locals 8

    const/16 v6, 0xf

    const/4 v7, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;-><init>(JZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JZZZ)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-wide p1, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;->bytes:J

    .line 42
    iput-boolean p3, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;->decoded:Z

    .line 43
    iput-boolean p4, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;->rendered:Z

    .line 44
    iput-boolean p5, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;->hasSurface:Z

    return-void
.end method

.method public synthetic constructor <init>(JZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p6, 0x2

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    move v3, p3

    :goto_0
    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    move v4, p4

    :goto_1
    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    move v5, p5

    :goto_2
    move-object v0, p0

    .line 40
    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;-><init>(JZZZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;JZZZILjava/lang/Object;)Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-wide p1, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;->bytes:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    iget-boolean p3, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;->decoded:Z

    :cond_1
    move v3, p3

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    iget-boolean p4, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;->rendered:Z

    :cond_2
    move v4, p4

    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    iget-boolean p5, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;->hasSurface:Z

    :cond_3
    move-object v0, p0

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;->copy(JZZZ)Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;->bytes:J

    return-wide v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;->decoded:Z

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;->rendered:Z

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;->hasSurface:Z

    return v0
.end method

.method public final copy(JZZZ)Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;
    .locals 6

    new-instance v0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;-><init>(JZZZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;

    iget-wide v3, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;->bytes:J

    iget-wide v5, p1, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;->bytes:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;->decoded:Z

    iget-boolean v3, p1, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;->decoded:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;->rendered:Z

    iget-boolean v3, p1, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;->rendered:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;->hasSurface:Z

    iget-boolean p1, p1, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;->hasSurface:Z

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getBytes()J
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;->bytes:J

    return-wide v0
.end method

.method public final getDecoded()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;->decoded:Z

    return v0
.end method

.method public final getHasSurface()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;->hasSurface:Z

    return v0
.end method

.method public final getRendered()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;->rendered:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;->bytes:J

    invoke-static {v0, v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;->decoded:Z

    invoke-static {v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;->rendered:Z

    invoke-static {v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;->hasSurface:Z

    invoke-static {v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-wide v0, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;->bytes:J

    iget-boolean v2, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;->decoded:Z

    iget-boolean v3, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;->rendered:Z

    iget-boolean v4, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;->hasSurface:Z

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Counters(bytes="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", decoded="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", rendered="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", hasSurface="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
