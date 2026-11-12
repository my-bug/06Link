.class final Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;
.super Ljava/lang/Object;
.source "CarPlayMediaEngine.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AudioMeta"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u001c\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0008\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0001\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\t\u0010\u001e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0001H\u00c6\u0003J\t\u0010!\u001a\u00020\u0003H\u00c6\u0003J\u0010\u0010\"\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0015J\u0010\u0010#\u001a\u0004\u0018\u00010\nH\u00c6\u0003\u00a2\u0006\u0002\u0010\u001aJP\u0010$\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\nH\u00c6\u0001\u00a2\u0006\u0002\u0010%J\u0013\u0010&\u001a\u00020\'2\u0008\u0010(\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010)\u001a\u00020\u0003H\u00d6\u0001J\t\u0010*\u001a\u00020+H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u000eR\u001e\u0010\u0008\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0018\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001e\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001d\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001c\u00a8\u0006,"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;",
        "",
        "type",
        "",
        "format",
        "Lcom/shilapi/xcertplay/airplay/AudioFormat;",
        "connectionId",
        "playoutLatencyMs",
        "firstSample",
        "originNs",
        "",
        "<init>",
        "(ILcom/shilapi/xcertplay/airplay/AudioFormat;Ljava/lang/Object;ILjava/lang/Integer;Ljava/lang/Long;)V",
        "getType",
        "()I",
        "getFormat",
        "()Lcom/shilapi/xcertplay/airplay/AudioFormat;",
        "getConnectionId",
        "()Ljava/lang/Object;",
        "getPlayoutLatencyMs",
        "getFirstSample",
        "()Ljava/lang/Integer;",
        "setFirstSample",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getOriginNs",
        "()Ljava/lang/Long;",
        "setOriginNs",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "(ILcom/shilapi/xcertplay/airplay/AudioFormat;Ljava/lang/Object;ILjava/lang/Integer;Ljava/lang/Long;)Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;",
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
.field private final connectionId:Ljava/lang/Object;

.field private volatile firstSample:Ljava/lang/Integer;

.field private final format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

.field private volatile originNs:Ljava/lang/Long;

.field private final playoutLatencyMs:I

.field private final type:I


# direct methods
.method public constructor <init>(ILcom/shilapi/xcertplay/airplay/AudioFormat;Ljava/lang/Object;ILjava/lang/Integer;Ljava/lang/Long;)V
    .locals 1

    const-string v0, "format"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->type:I

    .line 50
    iput-object p2, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    .line 51
    iput-object p3, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->connectionId:Ljava/lang/Object;

    .line 52
    iput p4, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->playoutLatencyMs:I

    .line 53
    iput-object p5, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->firstSample:Ljava/lang/Integer;

    .line 54
    iput-object p6, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->originNs:Ljava/lang/Long;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/shilapi/xcertplay/airplay/AudioFormat;Ljava/lang/Object;ILjava/lang/Integer;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x10

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p5, v0

    :cond_0
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_1

    move-object p7, v0

    goto :goto_0

    :cond_1
    move-object p7, p6

    :goto_0
    move-object p6, p5

    move p5, p4

    move-object p4, p3

    move-object p3, p2

    move p2, p1

    move-object p1, p0

    .line 48
    invoke-direct/range {p1 .. p7}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;-><init>(ILcom/shilapi/xcertplay/airplay/AudioFormat;Ljava/lang/Object;ILjava/lang/Integer;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;ILcom/shilapi/xcertplay/airplay/AudioFormat;Ljava/lang/Object;ILjava/lang/Integer;Ljava/lang/Long;ILjava/lang/Object;)Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget p1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->type:I

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    iget-object p3, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->connectionId:Ljava/lang/Object;

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    iget p4, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->playoutLatencyMs:I

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    iget-object p5, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->firstSample:Ljava/lang/Integer;

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    iget-object p6, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->originNs:Ljava/lang/Long;

    :cond_5
    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move p6, p4

    move p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p8}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->copy(ILcom/shilapi/xcertplay/airplay/AudioFormat;Ljava/lang/Object;ILjava/lang/Integer;Ljava/lang/Long;)Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->type:I

    return v0
.end method

.method public final component2()Lcom/shilapi/xcertplay/airplay/AudioFormat;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    return-object v0
.end method

.method public final component3()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->connectionId:Ljava/lang/Object;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->playoutLatencyMs:I

    return v0
.end method

.method public final component5()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->firstSample:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component6()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->originNs:Ljava/lang/Long;

    return-object v0
.end method

.method public final copy(ILcom/shilapi/xcertplay/airplay/AudioFormat;Ljava/lang/Object;ILjava/lang/Integer;Ljava/lang/Long;)Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;
    .locals 8

    const-string v0, "format"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;-><init>(ILcom/shilapi/xcertplay/airplay/AudioFormat;Ljava/lang/Object;ILjava/lang/Integer;Ljava/lang/Long;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;

    iget v1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->type:I

    iget v3, p1, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->type:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    iget-object v3, p1, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->connectionId:Ljava/lang/Object;

    iget-object v3, p1, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->connectionId:Ljava/lang/Object;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->playoutLatencyMs:I

    iget v3, p1, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->playoutLatencyMs:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->firstSample:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->firstSample:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->originNs:Ljava/lang/Long;

    iget-object p1, p1, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->originNs:Ljava/lang/Long;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getConnectionId()Ljava/lang/Object;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->connectionId:Ljava/lang/Object;

    return-object v0
.end method

.method public final getFirstSample()Ljava/lang/Integer;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->firstSample:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getFormat()Lcom/shilapi/xcertplay/airplay/AudioFormat;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    return-object v0
.end method

.method public final getOriginNs()Ljava/lang/Long;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->originNs:Ljava/lang/Long;

    return-object v0
.end method

.method public final getPlayoutLatencyMs()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->playoutLatencyMs:I

    return v0
.end method

.method public final getType()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->type:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->connectionId:Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->playoutLatencyMs:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->firstSample:Ljava/lang/Integer;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->firstSample:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->originNs:Ljava/lang/Long;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->originNs:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public final setFirstSample(Ljava/lang/Integer;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->firstSample:Ljava/lang/Integer;

    return-void
.end method

.method public final setOriginNs(Ljava/lang/Long;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->originNs:Ljava/lang/Long;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget v0, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->type:I

    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->format:Lcom/shilapi/xcertplay/airplay/AudioFormat;

    iget-object v2, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->connectionId:Ljava/lang/Object;

    iget v3, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->playoutLatencyMs:I

    iget-object v4, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->firstSample:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$AudioMeta;->originNs:Ljava/lang/Long;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "AudioMeta(type="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", format="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", connectionId="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", playoutLatencyMs="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", firstSample="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", originNs="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
