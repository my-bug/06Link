.class public final Lcom/shilapi/xcertplay/ClusterActivityState$Snapshot;
.super Ljava/lang/Object;
.source "ClusterActivityState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/ClusterActivityState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Snapshot"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000b\u0010\u000c\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0005H\u00c6\u0003J\u001f\u0010\u000e\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00052\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/ClusterActivityState$Snapshot;",
        "",
        "theme",
        "Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;",
        "mapVisible",
        "",
        "<init>",
        "(Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;Z)V",
        "getTheme",
        "()Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;",
        "getMapVisible",
        "()Z",
        "component1",
        "component2",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
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
.field private final mapVisible:Z

.field private final theme:Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;


# direct methods
.method public constructor <init>(Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;Z)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/ClusterActivityState$Snapshot;->theme:Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;

    iput-boolean p2, p0, Lcom/shilapi/xcertplay/ClusterActivityState$Snapshot;->mapVisible:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/ClusterActivityState$Snapshot;Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;ZILjava/lang/Object;)Lcom/shilapi/xcertplay/ClusterActivityState$Snapshot;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/shilapi/xcertplay/ClusterActivityState$Snapshot;->theme:Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Lcom/shilapi/xcertplay/ClusterActivityState$Snapshot;->mapVisible:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/ClusterActivityState$Snapshot;->copy(Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;Z)Lcom/shilapi/xcertplay/ClusterActivityState$Snapshot;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/ClusterActivityState$Snapshot;->theme:Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/ClusterActivityState$Snapshot;->mapVisible:Z

    return v0
.end method

.method public final copy(Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;Z)Lcom/shilapi/xcertplay/ClusterActivityState$Snapshot;
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/ClusterActivityState$Snapshot;

    invoke-direct {v0, p1, p2}, Lcom/shilapi/xcertplay/ClusterActivityState$Snapshot;-><init>(Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/ClusterActivityState$Snapshot;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/ClusterActivityState$Snapshot;

    iget-object v1, p0, Lcom/shilapi/xcertplay/ClusterActivityState$Snapshot;->theme:Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;

    iget-object v3, p1, Lcom/shilapi/xcertplay/ClusterActivityState$Snapshot;->theme:Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/ClusterActivityState$Snapshot;->mapVisible:Z

    iget-boolean p1, p1, Lcom/shilapi/xcertplay/ClusterActivityState$Snapshot;->mapVisible:Z

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getMapVisible()Z
    .locals 1

    .line 5
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/ClusterActivityState$Snapshot;->mapVisible:Z

    return v0
.end method

.method public final getTheme()Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/shilapi/xcertplay/ClusterActivityState$Snapshot;->theme:Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/shilapi/xcertplay/ClusterActivityState$Snapshot;->theme:Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/ClusterActivityState$Snapshot;->mapVisible:Z

    invoke-static {v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/shilapi/xcertplay/ClusterActivityState$Snapshot;->theme:Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/ClusterActivityState$Snapshot;->mapVisible:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Snapshot(theme="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mapVisible="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
