.class public final Lcom/shilapi/xcertplay/hud/BydHudGuidance;
.super Ljava/lang/Object;
.source "BydHudRouteState.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0013\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0080\u0008\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0007H\u00c6\u0003J\u0010\u0010\u0019\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0013JB\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\tH\u00c6\u0001\u00a2\u0006\u0002\u0010\u001bJ\u0013\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001f\u001a\u00020\u0003H\u00d6\u0001J\t\u0010 \u001a\u00020\u0007H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0015\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\n\n\u0002\u0010\u0014\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006!"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/hud/BydHudGuidance;",
        "",
        "distanceMeters",
        "",
        "maneuver",
        "gaode",
        "road",
        "",
        "arrivalEpochSeconds",
        "",
        "<init>",
        "(IIILjava/lang/String;Ljava/lang/Long;)V",
        "getDistanceMeters",
        "()I",
        "getManeuver",
        "getGaode",
        "getRoad",
        "()Ljava/lang/String;",
        "getArrivalEpochSeconds",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "(IIILjava/lang/String;Ljava/lang/Long;)Lcom/shilapi/xcertplay/hud/BydHudGuidance;",
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
.field private final arrivalEpochSeconds:Ljava/lang/Long;

.field private final distanceMeters:I

.field private final gaode:I

.field private final maneuver:I

.field private final road:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIILjava/lang/String;Ljava/lang/Long;)V
    .locals 1

    const-string v0, "road"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/shilapi/xcertplay/hud/BydHudGuidance;->distanceMeters:I

    .line 6
    iput p2, p0, Lcom/shilapi/xcertplay/hud/BydHudGuidance;->maneuver:I

    .line 8
    iput p3, p0, Lcom/shilapi/xcertplay/hud/BydHudGuidance;->gaode:I

    .line 9
    iput-object p4, p0, Lcom/shilapi/xcertplay/hud/BydHudGuidance;->road:Ljava/lang/String;

    .line 10
    iput-object p5, p0, Lcom/shilapi/xcertplay/hud/BydHudGuidance;->arrivalEpochSeconds:Ljava/lang/Long;

    return-void
.end method

.method public synthetic constructor <init>(IIILjava/lang/String;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const/4 p3, 0x0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    move v3, p3

    :goto_0
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    .line 9
    const-string p4, ""

    :cond_1
    move-object v4, p4

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    const/4 p5, 0x0

    :cond_2
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p5

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/hud/BydHudGuidance;-><init>(IIILjava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/hud/BydHudGuidance;IIILjava/lang/String;Ljava/lang/Long;ILjava/lang/Object;)Lcom/shilapi/xcertplay/hud/BydHudGuidance;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Lcom/shilapi/xcertplay/hud/BydHudGuidance;->distanceMeters:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget p2, p0, Lcom/shilapi/xcertplay/hud/BydHudGuidance;->maneuver:I

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget p3, p0, Lcom/shilapi/xcertplay/hud/BydHudGuidance;->gaode:I

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    iget-object p4, p0, Lcom/shilapi/xcertplay/hud/BydHudGuidance;->road:Ljava/lang/String;

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget-object p5, p0, Lcom/shilapi/xcertplay/hud/BydHudGuidance;->arrivalEpochSeconds:Ljava/lang/Long;

    :cond_4
    move-object p6, p4

    move-object p7, p5

    move p4, p2

    move p5, p3

    move-object p2, p0

    move p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/shilapi/xcertplay/hud/BydHudGuidance;->copy(IIILjava/lang/String;Ljava/lang/Long;)Lcom/shilapi/xcertplay/hud/BydHudGuidance;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/hud/BydHudGuidance;->distanceMeters:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/hud/BydHudGuidance;->maneuver:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/hud/BydHudGuidance;->gaode:I

    return v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/hud/BydHudGuidance;->road:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/hud/BydHudGuidance;->arrivalEpochSeconds:Ljava/lang/Long;

    return-object v0
.end method

.method public final copy(IIILjava/lang/String;Ljava/lang/Long;)Lcom/shilapi/xcertplay/hud/BydHudGuidance;
    .locals 7

    const-string v0, "road"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/shilapi/xcertplay/hud/BydHudGuidance;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/shilapi/xcertplay/hud/BydHudGuidance;-><init>(IIILjava/lang/String;Ljava/lang/Long;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/hud/BydHudGuidance;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/hud/BydHudGuidance;

    iget v1, p0, Lcom/shilapi/xcertplay/hud/BydHudGuidance;->distanceMeters:I

    iget v3, p1, Lcom/shilapi/xcertplay/hud/BydHudGuidance;->distanceMeters:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/shilapi/xcertplay/hud/BydHudGuidance;->maneuver:I

    iget v3, p1, Lcom/shilapi/xcertplay/hud/BydHudGuidance;->maneuver:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/shilapi/xcertplay/hud/BydHudGuidance;->gaode:I

    iget v3, p1, Lcom/shilapi/xcertplay/hud/BydHudGuidance;->gaode:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/shilapi/xcertplay/hud/BydHudGuidance;->road:Ljava/lang/String;

    iget-object v3, p1, Lcom/shilapi/xcertplay/hud/BydHudGuidance;->road:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/shilapi/xcertplay/hud/BydHudGuidance;->arrivalEpochSeconds:Ljava/lang/Long;

    iget-object p1, p1, Lcom/shilapi/xcertplay/hud/BydHudGuidance;->arrivalEpochSeconds:Ljava/lang/Long;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getArrivalEpochSeconds()Ljava/lang/Long;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/shilapi/xcertplay/hud/BydHudGuidance;->arrivalEpochSeconds:Ljava/lang/Long;

    return-object v0
.end method

.method public final getDistanceMeters()I
    .locals 1

    .line 4
    iget v0, p0, Lcom/shilapi/xcertplay/hud/BydHudGuidance;->distanceMeters:I

    return v0
.end method

.method public final getGaode()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/shilapi/xcertplay/hud/BydHudGuidance;->gaode:I

    return v0
.end method

.method public final getManeuver()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/shilapi/xcertplay/hud/BydHudGuidance;->maneuver:I

    return v0
.end method

.method public final getRoad()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/shilapi/xcertplay/hud/BydHudGuidance;->road:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/shilapi/xcertplay/hud/BydHudGuidance;->distanceMeters:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/hud/BydHudGuidance;->maneuver:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/hud/BydHudGuidance;->gaode:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/hud/BydHudGuidance;->road:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/hud/BydHudGuidance;->arrivalEpochSeconds:Ljava/lang/Long;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lcom/shilapi/xcertplay/hud/BydHudGuidance;->distanceMeters:I

    iget v1, p0, Lcom/shilapi/xcertplay/hud/BydHudGuidance;->maneuver:I

    iget v2, p0, Lcom/shilapi/xcertplay/hud/BydHudGuidance;->gaode:I

    iget-object v3, p0, Lcom/shilapi/xcertplay/hud/BydHudGuidance;->road:Ljava/lang/String;

    iget-object v4, p0, Lcom/shilapi/xcertplay/hud/BydHudGuidance;->arrivalEpochSeconds:Ljava/lang/Long;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "BydHudGuidance(distanceMeters="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", maneuver="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", gaode="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", road="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", arrivalEpochSeconds="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
