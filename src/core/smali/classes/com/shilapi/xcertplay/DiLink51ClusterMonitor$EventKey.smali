.class final Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;
.super Ljava/lang/Object;
.source "DiLink51ClusterMonitor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EventKey"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0011\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0082\u0008\u0018\u00002\u00020\u0001B3\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\tH\u00c6\u0003J?\u0010\u0019\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u00c6\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u0006H\u00d6\u0001J\t\u0010\u001e\u001a\u00020\u0003H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0010R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;",
        "",
        "pkg",
        "",
        "name",
        "id",
        "",
        "type",
        "time",
        "",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;IIJ)V",
        "getPkg",
        "()Ljava/lang/String;",
        "getName",
        "getId",
        "()I",
        "getType",
        "getTime",
        "()J",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
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

.field private final name:Ljava/lang/String;

.field private final pkg:Ljava/lang/String;

.field private final time:J

.field private final type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;->pkg:Ljava/lang/String;

    iput-object p2, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;->name:Ljava/lang/String;

    iput p3, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;->id:I

    iput p4, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;->type:I

    iput-wide p5, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;->time:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;Ljava/lang/String;Ljava/lang/String;IIJILjava/lang/Object;)Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;->pkg:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;->name:Ljava/lang/String;

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    iget p3, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;->id:I

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    iget p4, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;->type:I

    :cond_3
    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_4

    iget-wide p5, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;->time:J

    :cond_4
    move-wide p7, p5

    move p5, p3

    move p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p8}, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;->copy(Ljava/lang/String;Ljava/lang/String;IIJ)Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;->pkg:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;->id:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;->type:I

    return v0
.end method

.method public final component5()J
    .locals 2

    iget-wide v0, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;->time:J

    return-wide v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;IIJ)Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;
    .locals 7

    new-instance v0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;-><init>(Ljava/lang/String;Ljava/lang/String;IIJ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;

    iget-object v1, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;->pkg:Ljava/lang/String;

    iget-object v3, p1, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;->pkg:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;->id:I

    iget v3, p1, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;->id:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;->type:I

    iget v3, p1, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;->type:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;->time:J

    iget-wide v5, p1, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;->time:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getId()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;->id:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPkg()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;->pkg:Ljava/lang/String;

    return-object v0
.end method

.method public final getTime()J
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;->time:J

    return-wide v0
.end method

.method public final getType()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;->pkg:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;->name:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;->id:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;->type:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;->time:J

    invoke-static {v1, v2}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;->pkg:Ljava/lang/String;

    iget-object v1, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;->name:Ljava/lang/String;

    iget v2, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;->id:I

    iget v3, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;->type:I

    iget-wide v4, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;->time:J

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "EventKey(pkg="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", name="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", id="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", type="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", time="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
