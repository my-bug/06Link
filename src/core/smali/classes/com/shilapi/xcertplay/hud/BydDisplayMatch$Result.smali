.class public final Lcom/shilapi/xcertplay/hud/BydDisplayMatch$Result;
.super Ljava/lang/Object;
.source "BydDisplayMatch.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/hud/BydDisplayMatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0015\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\'\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0016\u001a\u00020\u00032\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\tR\u0011\u0010\u000c\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\tR\u0011\u0010\u000e\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\tR\u0011\u0010\u0010\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\t\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/hud/BydDisplayMatch$Result;",
        "",
        "hudStandalone",
        "",
        "hudSomeip",
        "clusterAmap",
        "<init>",
        "(ZZZ)V",
        "getHudStandalone",
        "()Z",
        "getHudSomeip",
        "getClusterAmap",
        "hudMatched",
        "getHudMatched",
        "clusterMatched",
        "getClusterMatched",
        "anyMatched",
        "getAnyMatched",
        "component1",
        "component2",
        "component3",
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
.field private final clusterAmap:Z

.field private final hudSomeip:Z

.field private final hudStandalone:Z


# direct methods
.method public constructor <init>(ZZZ)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/hud/BydDisplayMatch$Result;->hudStandalone:Z

    .line 13
    iput-boolean p2, p0, Lcom/shilapi/xcertplay/hud/BydDisplayMatch$Result;->hudSomeip:Z

    .line 14
    iput-boolean p3, p0, Lcom/shilapi/xcertplay/hud/BydDisplayMatch$Result;->clusterAmap:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/hud/BydDisplayMatch$Result;ZZZILjava/lang/Object;)Lcom/shilapi/xcertplay/hud/BydDisplayMatch$Result;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-boolean p1, p0, Lcom/shilapi/xcertplay/hud/BydDisplayMatch$Result;->hudStandalone:Z

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-boolean p2, p0, Lcom/shilapi/xcertplay/hud/BydDisplayMatch$Result;->hudSomeip:Z

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Lcom/shilapi/xcertplay/hud/BydDisplayMatch$Result;->clusterAmap:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/hud/BydDisplayMatch$Result;->copy(ZZZ)Lcom/shilapi/xcertplay/hud/BydDisplayMatch$Result;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/hud/BydDisplayMatch$Result;->hudStandalone:Z

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/hud/BydDisplayMatch$Result;->hudSomeip:Z

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/hud/BydDisplayMatch$Result;->clusterAmap:Z

    return v0
.end method

.method public final copy(ZZZ)Lcom/shilapi/xcertplay/hud/BydDisplayMatch$Result;
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/hud/BydDisplayMatch$Result;

    invoke-direct {v0, p1, p2, p3}, Lcom/shilapi/xcertplay/hud/BydDisplayMatch$Result;-><init>(ZZZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/hud/BydDisplayMatch$Result;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/hud/BydDisplayMatch$Result;

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/hud/BydDisplayMatch$Result;->hudStandalone:Z

    iget-boolean v3, p1, Lcom/shilapi/xcertplay/hud/BydDisplayMatch$Result;->hudStandalone:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/hud/BydDisplayMatch$Result;->hudSomeip:Z

    iget-boolean v3, p1, Lcom/shilapi/xcertplay/hud/BydDisplayMatch$Result;->hudSomeip:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/hud/BydDisplayMatch$Result;->clusterAmap:Z

    iget-boolean p1, p1, Lcom/shilapi/xcertplay/hud/BydDisplayMatch$Result;->clusterAmap:Z

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getAnyMatched()Z
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/hud/BydDisplayMatch$Result;->getHudMatched()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/hud/BydDisplayMatch$Result;->getClusterMatched()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final getClusterAmap()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/hud/BydDisplayMatch$Result;->clusterAmap:Z

    return v0
.end method

.method public final getClusterMatched()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/hud/BydDisplayMatch$Result;->clusterAmap:Z

    return v0
.end method

.method public final getHudMatched()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/hud/BydDisplayMatch$Result;->hudStandalone:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/hud/BydDisplayMatch$Result;->hudSomeip:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final getHudSomeip()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/hud/BydDisplayMatch$Result;->hudSomeip:Z

    return v0
.end method

.method public final getHudStandalone()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/hud/BydDisplayMatch$Result;->hudStandalone:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/hud/BydDisplayMatch$Result;->hudStandalone:Z

    invoke-static {v0}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/hud/BydDisplayMatch$Result;->hudSomeip:Z

    invoke-static {v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/hud/BydDisplayMatch$Result;->clusterAmap:Z

    invoke-static {v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/hud/BydDisplayMatch$Result;->hudStandalone:Z

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/hud/BydDisplayMatch$Result;->hudSomeip:Z

    iget-boolean v2, p0, Lcom/shilapi/xcertplay/hud/BydDisplayMatch$Result;->clusterAmap:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Result(hudStandalone="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", hudSomeip="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", clusterAmap="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
