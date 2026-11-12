.class public final Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;
.super Ljava/lang/Object;
.source "AutoFrameRate.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/media/AutoFrameRate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Probe"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u0015\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J\u0010\u0010\u0019\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0013JD\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\tH\u00c6\u0001\u00a2\u0006\u0002\u0010\u001bJ\u0013\u0010\u001c\u001a\u00020\u00032\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001e\u001a\u00020\u001fH\u00d6\u0001J\t\u0010 \u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\rR\u0015\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\n\n\u0002\u0010\u0014\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006!"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;",
        "",
        "queryAvailable",
        "",
        "codecName",
        "",
        "hardware",
        "supports60",
        "measuredLow",
        "",
        "<init>",
        "(ZLjava/lang/String;ZZLjava/lang/Double;)V",
        "getQueryAvailable",
        "()Z",
        "getCodecName",
        "()Ljava/lang/String;",
        "getHardware",
        "getSupports60",
        "getMeasuredLow",
        "()Ljava/lang/Double;",
        "Ljava/lang/Double;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "(ZLjava/lang/String;ZZLjava/lang/Double;)Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;",
        "equals",
        "other",
        "hashCode",
        "",
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
.field private final codecName:Ljava/lang/String;

.field private final hardware:Z

.field private final measuredLow:Ljava/lang/Double;

.field private final queryAvailable:Z

.field private final supports60:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;ZZLjava/lang/Double;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;->queryAvailable:Z

    .line 33
    iput-object p2, p0, Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;->codecName:Ljava/lang/String;

    .line 34
    iput-boolean p3, p0, Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;->hardware:Z

    .line 36
    iput-boolean p4, p0, Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;->supports60:Z

    .line 41
    iput-object p5, p0, Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;->measuredLow:Ljava/lang/Double;

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/String;ZZLjava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 29
    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;-><init>(ZLjava/lang/String;ZZLjava/lang/Double;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;ZLjava/lang/String;ZZLjava/lang/Double;ILjava/lang/Object;)Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-boolean p1, p0, Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;->queryAvailable:Z

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;->codecName:Ljava/lang/String;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget-boolean p3, p0, Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;->hardware:Z

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    iget-boolean p4, p0, Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;->supports60:Z

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget-object p5, p0, Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;->measuredLow:Ljava/lang/Double;

    :cond_4
    move p6, p4

    move-object p7, p5

    move-object p4, p2

    move p5, p3

    move-object p2, p0

    move p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;->copy(ZLjava/lang/String;ZZLjava/lang/Double;)Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;->queryAvailable:Z

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;->codecName:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;->hardware:Z

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;->supports60:Z

    return v0
.end method

.method public final component5()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;->measuredLow:Ljava/lang/Double;

    return-object v0
.end method

.method public final copy(ZLjava/lang/String;ZZLjava/lang/Double;)Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;
    .locals 6

    new-instance v0, Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;-><init>(ZLjava/lang/String;ZZLjava/lang/Double;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;->queryAvailable:Z

    iget-boolean v3, p1, Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;->queryAvailable:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;->codecName:Ljava/lang/String;

    iget-object v3, p1, Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;->codecName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;->hardware:Z

    iget-boolean v3, p1, Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;->hardware:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;->supports60:Z

    iget-boolean v3, p1, Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;->supports60:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;->measuredLow:Ljava/lang/Double;

    iget-object p1, p1, Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;->measuredLow:Ljava/lang/Double;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getCodecName()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;->codecName:Ljava/lang/String;

    return-object v0
.end method

.method public final getHardware()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;->hardware:Z

    return v0
.end method

.method public final getMeasuredLow()Ljava/lang/Double;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;->measuredLow:Ljava/lang/Double;

    return-object v0
.end method

.method public final getQueryAvailable()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;->queryAvailable:Z

    return v0
.end method

.method public final getSupports60()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;->supports60:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;->queryAvailable:Z

    invoke-static {v0}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;->codecName:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;->hardware:Z

    invoke-static {v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;->supports60:Z

    invoke-static {v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;->measuredLow:Ljava/lang/Double;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;->queryAvailable:Z

    iget-object v1, p0, Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;->codecName:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;->hardware:Z

    iget-boolean v3, p0, Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;->supports60:Z

    iget-object v4, p0, Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;->measuredLow:Ljava/lang/Double;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Probe(queryAvailable="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", codecName="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", hardware="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", supports60="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", measuredLow="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
