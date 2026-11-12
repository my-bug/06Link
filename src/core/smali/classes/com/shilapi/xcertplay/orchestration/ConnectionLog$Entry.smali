.class public final Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;
.super Ljava/lang/Object;
.source "ConnectionLog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/orchestration/ConnectionLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0019\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001BC\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0006\u0010\u001c\u001a\u00020\tJ\t\u0010\u001d\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0007H\u00c6\u0003J\t\u0010 \u001a\u00020\tH\u00c6\u0003J\t\u0010!\u001a\u00020\tH\u00c6\u0003J\t\u0010\"\u001a\u00020\u000cH\u00c6\u0003J\t\u0010#\u001a\u00020\u0003H\u00c6\u0003JO\u0010$\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010%\u001a\u00020&2\u0008\u0010\'\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010(\u001a\u00020\u000cH\u00d6\u0001J\t\u0010)\u001a\u00020\tH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\n\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0017R\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0011\u0010\r\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0011\u00a8\u0006*"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;",
        "",
        "elapsedMs",
        "",
        "layer",
        "Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;",
        "dir",
        "Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Dir;",
        "name",
        "",
        "result",
        "size",
        "",
        "durationMs",
        "<init>",
        "(JLcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Dir;Ljava/lang/String;Ljava/lang/String;IJ)V",
        "getElapsedMs",
        "()J",
        "getLayer",
        "()Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;",
        "getDir",
        "()Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Dir;",
        "getName",
        "()Ljava/lang/String;",
        "getResult",
        "getSize",
        "()I",
        "getDurationMs",
        "line",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
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
.field private final dir:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Dir;

.field private final durationMs:J

.field private final elapsedMs:J

.field private final layer:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;

.field private final name:Ljava/lang/String;

.field private final result:Ljava/lang/String;

.field private final size:I


# direct methods
.method public constructor <init>(JLcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Dir;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 1

    const-string v0, "layer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dir"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-wide p1, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->elapsedMs:J

    .line 21
    iput-object p3, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->layer:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;

    .line 22
    iput-object p4, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->dir:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Dir;

    .line 23
    iput-object p5, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->name:Ljava/lang/String;

    .line 24
    iput-object p6, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->result:Ljava/lang/String;

    .line 25
    iput p7, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->size:I

    .line 26
    iput-wide p8, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->durationMs:J

    return-void
.end method

.method public synthetic constructor <init>(JLcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Dir;Ljava/lang/String;Ljava/lang/String;IJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    and-int/lit8 v0, p10, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v8, 0x0

    goto :goto_0

    :cond_0
    move/from16 v8, p7

    :goto_0
    and-int/lit8 v0, p10, 0x40

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    move-wide v9, v0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object v1, p0

    goto :goto_1

    :cond_1
    move-wide/from16 v9, p8

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    .line 19
    :goto_1
    invoke-direct/range {v1 .. v10}, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;-><init>(JLcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Dir;Ljava/lang/String;Ljava/lang/String;IJ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;JLcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Dir;Ljava/lang/String;Ljava/lang/String;IJILjava/lang/Object;)Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;
    .locals 10

    and-int/lit8 v0, p10, 0x1

    if-eqz v0, :cond_0

    iget-wide p1, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->elapsedMs:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p10, 0x2

    if-eqz p1, :cond_1

    iget-object p3, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->layer:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;

    :cond_1
    move-object v3, p3

    and-int/lit8 p1, p10, 0x4

    if-eqz p1, :cond_2

    iget-object p4, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->dir:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Dir;

    :cond_2
    move-object v4, p4

    and-int/lit8 p1, p10, 0x8

    if-eqz p1, :cond_3

    iget-object p5, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->name:Ljava/lang/String;

    :cond_3
    move-object v5, p5

    and-int/lit8 p1, p10, 0x10

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->result:Ljava/lang/String;

    move-object v6, p1

    goto :goto_0

    :cond_4
    move-object/from16 v6, p6

    :goto_0
    and-int/lit8 p1, p10, 0x20

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->size:I

    move v7, p1

    goto :goto_1

    :cond_5
    move/from16 v7, p7

    :goto_1
    and-int/lit8 p1, p10, 0x40

    if-eqz p1, :cond_6

    iget-wide p1, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->durationMs:J

    move-wide v8, p1

    goto :goto_2

    :cond_6
    move-wide/from16 v8, p8

    :goto_2
    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->copy(JLcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Dir;Ljava/lang/String;Ljava/lang/String;IJ)Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->elapsedMs:J

    return-wide v0
.end method

.method public final component2()Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->layer:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;

    return-object v0
.end method

.method public final component3()Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Dir;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->dir:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Dir;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->result:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->size:I

    return v0
.end method

.method public final component7()J
    .locals 2

    iget-wide v0, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->durationMs:J

    return-wide v0
.end method

.method public final copy(JLcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Dir;Ljava/lang/String;Ljava/lang/String;IJ)Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;
    .locals 11

    const-string v0, "layer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dir"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move/from16 v8, p7

    move-wide/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;-><init>(JLcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Dir;Ljava/lang/String;Ljava/lang/String;IJ)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;

    iget-wide v3, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->elapsedMs:J

    iget-wide v5, p1, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->elapsedMs:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->layer:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;

    iget-object v3, p1, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->layer:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->dir:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Dir;

    iget-object v3, p1, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->dir:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Dir;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->result:Ljava/lang/String;

    iget-object v3, p1, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->result:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->size:I

    iget v3, p1, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->size:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->durationMs:J

    iget-wide v5, p1, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->durationMs:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getDir()Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Dir;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->dir:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Dir;

    return-object v0
.end method

.method public final getDurationMs()J
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->durationMs:J

    return-wide v0
.end method

.method public final getElapsedMs()J
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->elapsedMs:J

    return-wide v0
.end method

.method public final getLayer()Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->layer:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getResult()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->result:Ljava/lang/String;

    return-object v0
.end method

.method public final getSize()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->size:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->elapsedMs:J

    invoke-static {v0, v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->layer:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->dir:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Dir;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Dir;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->result:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->size:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->durationMs:J

    invoke-static {v1, v2}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final line()Ljava/lang/String;
    .locals 6

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    iget-wide v1, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->elapsedMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->layer:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "toLowerCase(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    iget-object v3, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->dir:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Dir;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Dir;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    iget-object v2, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget-object v2, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->result:Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    :cond_0
    iget v1, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->size:I

    if-lez v1, :cond_1

    const-string v1, " size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    :cond_1
    iget-wide v1, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->durationMs:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    const-string v1, " tookMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->durationMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 28
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    iget-wide v0, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->elapsedMs:J

    iget-object v2, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->layer:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;

    iget-object v3, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->dir:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Dir;

    iget-object v4, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->name:Ljava/lang/String;

    iget-object v5, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->result:Ljava/lang/String;

    iget v6, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->size:I

    iget-wide v7, p0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->durationMs:J

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Entry(elapsedMs="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", layer="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", dir="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", name="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", result="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", size="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", durationMs="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
