.class public final Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;
.super Ljava/lang/Object;
.source "Iap2VehicleStatus.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u001c\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\t\u0010\u001a\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\tH\u00c6\u0003J\t\u0010\u001e\u001a\u00020\tH\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010 \u001a\u00020\u0005H\u00c6\u0003JO\u0010!\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\"\u001a\u00020\u00052\u0008\u0010#\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010$\u001a\u00020\u0003H\u00d6\u0001J\t\u0010%\u001a\u00020&H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\n\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0016R\u0011\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0010R\u0011\u0010\u000c\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0012\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;",
        "",
        "rangeKm",
        "",
        "rangeWarning",
        "",
        "batteryPercent",
        "",
        "currentChargeWh",
        "",
        "maxChargeWh",
        "maxRangeKm",
        "charging",
        "<init>",
        "(IZDJJIZ)V",
        "getRangeKm",
        "()I",
        "getRangeWarning",
        "()Z",
        "getBatteryPercent",
        "()D",
        "getCurrentChargeWh",
        "()J",
        "getMaxChargeWh",
        "getMaxRangeKm",
        "getCharging",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
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
.field private final batteryPercent:D

.field private final charging:Z

.field private final currentChargeWh:J

.field private final maxChargeWh:J

.field private final maxRangeKm:I

.field private final rangeKm:I

.field private final rangeWarning:Z


# direct methods
.method public constructor <init>(IZDJJIZ)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->rangeKm:I

    .line 12
    iput-boolean p2, p0, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->rangeWarning:Z

    .line 13
    iput-wide p3, p0, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->batteryPercent:D

    .line 14
    iput-wide p5, p0, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->currentChargeWh:J

    .line 15
    iput-wide p7, p0, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->maxChargeWh:J

    .line 16
    iput p9, p0, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->maxRangeKm:I

    .line 17
    iput-boolean p10, p0, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->charging:Z

    return-void
.end method

.method public synthetic constructor <init>(IZDJJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    and-int/lit8 v0, p11, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v11, 0x0

    goto :goto_0

    :cond_0
    move/from16 v11, p10

    :goto_0
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    .line 10
    invoke-direct/range {v1 .. v11}, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;-><init>(IZDJJIZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;IZDJJIZILjava/lang/Object;)Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;
    .locals 0

    and-int/lit8 p12, p11, 0x1

    if-eqz p12, :cond_0

    iget p1, p0, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->rangeKm:I

    :cond_0
    and-int/lit8 p12, p11, 0x2

    if-eqz p12, :cond_1

    iget-boolean p2, p0, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->rangeWarning:Z

    :cond_1
    and-int/lit8 p12, p11, 0x4

    if-eqz p12, :cond_2

    iget-wide p3, p0, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->batteryPercent:D

    :cond_2
    and-int/lit8 p12, p11, 0x8

    if-eqz p12, :cond_3

    iget-wide p5, p0, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->currentChargeWh:J

    :cond_3
    and-int/lit8 p12, p11, 0x10

    if-eqz p12, :cond_4

    iget-wide p7, p0, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->maxChargeWh:J

    :cond_4
    and-int/lit8 p12, p11, 0x20

    if-eqz p12, :cond_5

    iget p9, p0, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->maxRangeKm:I

    :cond_5
    and-int/lit8 p11, p11, 0x40

    if-eqz p11, :cond_6

    iget-boolean p10, p0, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->charging:Z

    :cond_6
    move p11, p9

    move p12, p10

    move-wide p9, p7

    move-wide p7, p5

    move-wide p5, p3

    move p3, p1

    move p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p12}, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->copy(IZDJJIZ)Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->rangeKm:I

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->rangeWarning:Z

    return v0
.end method

.method public final component3()D
    .locals 2

    iget-wide v0, p0, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->batteryPercent:D

    return-wide v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->currentChargeWh:J

    return-wide v0
.end method

.method public final component5()J
    .locals 2

    iget-wide v0, p0, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->maxChargeWh:J

    return-wide v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->maxRangeKm:I

    return v0
.end method

.method public final component7()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->charging:Z

    return v0
.end method

.method public final copy(IZDJJIZ)Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;
    .locals 11

    new-instance v0, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;-><init>(IZDJJIZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;

    iget v1, p0, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->rangeKm:I

    iget v3, p1, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->rangeKm:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->rangeWarning:Z

    iget-boolean v3, p1, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->rangeWarning:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->batteryPercent:D

    iget-wide v5, p1, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->batteryPercent:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->currentChargeWh:J

    iget-wide v5, p1, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->currentChargeWh:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->maxChargeWh:J

    iget-wide v5, p1, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->maxChargeWh:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->maxRangeKm:I

    iget v3, p1, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->maxRangeKm:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->charging:Z

    iget-boolean p1, p1, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->charging:Z

    if-eq v1, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getBatteryPercent()D
    .locals 2

    .line 13
    iget-wide v0, p0, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->batteryPercent:D

    return-wide v0
.end method

.method public final getCharging()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->charging:Z

    return v0
.end method

.method public final getCurrentChargeWh()J
    .locals 2

    .line 14
    iget-wide v0, p0, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->currentChargeWh:J

    return-wide v0
.end method

.method public final getMaxChargeWh()J
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->maxChargeWh:J

    return-wide v0
.end method

.method public final getMaxRangeKm()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->maxRangeKm:I

    return v0
.end method

.method public final getRangeKm()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->rangeKm:I

    return v0
.end method

.method public final getRangeWarning()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->rangeWarning:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->rangeKm:I

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->rangeWarning:Z

    invoke-static {v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->batteryPercent:D

    invoke-static {v1, v2}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->currentChargeWh:J

    invoke-static {v1, v2}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->maxChargeWh:J

    invoke-static {v1, v2}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->maxRangeKm:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->charging:Z

    invoke-static {v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    iget v0, p0, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->rangeKm:I

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->rangeWarning:Z

    iget-wide v2, p0, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->batteryPercent:D

    iget-wide v4, p0, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->currentChargeWh:J

    iget-wide v6, p0, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->maxChargeWh:J

    iget v8, p0, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->maxRangeKm:I

    iget-boolean v9, p0, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->charging:Z

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "VehicleStatusSnapshot(rangeKm="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", rangeWarning="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", batteryPercent="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", currentChargeWh="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", maxChargeWh="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", maxRangeKm="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", charging="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
