.class public final Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;
.super Ljava/lang/Object;
.source "LowMemoryGate.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/compat/LowMemoryGate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Snapshot"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0015\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0008H\u00c6\u0003J;\u0010\u0019\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010\u001a\u001a\u00020\u00082\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001c\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001d\u001a\u00020\u001eH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0012\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;",
        "",
        "heapClassMb",
        "",
        "availMb",
        "",
        "totalMb",
        "tight",
        "",
        "critical",
        "<init>",
        "(IJJZZ)V",
        "getHeapClassMb",
        "()I",
        "getAvailMb",
        "()J",
        "getTotalMb",
        "getTight",
        "()Z",
        "getCritical",
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
.field private final availMb:J

.field private final critical:Z

.field private final heapClassMb:I

.field private final tight:Z

.field private final totalMb:J


# direct methods
.method public constructor <init>(IJJZZ)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;->heapClassMb:I

    .line 24
    iput-wide p2, p0, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;->availMb:J

    .line 25
    iput-wide p4, p0, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;->totalMb:J

    .line 26
    iput-boolean p6, p0, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;->tight:Z

    .line 27
    iput-boolean p7, p0, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;->critical:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;IJJZZILjava/lang/Object;)Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;
    .locals 0

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget p1, p0, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;->heapClassMb:I

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-wide p2, p0, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;->availMb:J

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    iget-wide p4, p0, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;->totalMb:J

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    iget-boolean p6, p0, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;->tight:Z

    :cond_3
    and-int/lit8 p8, p8, 0x10

    if-eqz p8, :cond_4

    iget-boolean p7, p0, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;->critical:Z

    :cond_4
    move p8, p6

    move p9, p7

    move-wide p6, p4

    move-wide p4, p2

    move-object p2, p0

    move p3, p1

    invoke-virtual/range {p2 .. p9}, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;->copy(IJJZZ)Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;->heapClassMb:I

    return v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;->availMb:J

    return-wide v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;->totalMb:J

    return-wide v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;->tight:Z

    return v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;->critical:Z

    return v0
.end method

.method public final copy(IJJZZ)Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;
    .locals 8

    new-instance v0, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    move v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;-><init>(IJJZZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;

    iget v1, p0, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;->heapClassMb:I

    iget v3, p1, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;->heapClassMb:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;->availMb:J

    iget-wide v5, p1, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;->availMb:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;->totalMb:J

    iget-wide v5, p1, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;->totalMb:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;->tight:Z

    iget-boolean v3, p1, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;->tight:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;->critical:Z

    iget-boolean p1, p1, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;->critical:Z

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getAvailMb()J
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;->availMb:J

    return-wide v0
.end method

.method public final getCritical()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;->critical:Z

    return v0
.end method

.method public final getHeapClassMb()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;->heapClassMb:I

    return v0
.end method

.method public final getTight()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;->tight:Z

    return v0
.end method

.method public final getTotalMb()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;->totalMb:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;->heapClassMb:I

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;->availMb:J

    invoke-static {v1, v2}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;->totalMb:J

    invoke-static {v1, v2}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;->tight:Z

    invoke-static {v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;->critical:Z

    invoke-static {v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    iget v0, p0, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;->heapClassMb:I

    iget-wide v1, p0, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;->availMb:J

    iget-wide v3, p0, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;->totalMb:J

    iget-boolean v5, p0, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;->tight:Z

    iget-boolean v6, p0, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;->critical:Z

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Snapshot(heapClassMb="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", availMb="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", totalMb="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", tight="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", critical="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
