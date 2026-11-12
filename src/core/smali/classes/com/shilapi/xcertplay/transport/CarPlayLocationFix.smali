.class public final Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;
.super Ljava/lang/Object;
.source "Iap2LocationClient.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0018\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001BS\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0003H\u00c6\u0003J\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0011J\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0011J\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0011J\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0011J\u0010\u0010\u001f\u001a\u0004\u0018\u00010\nH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0017J^\u0010 \u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\nH\u00c6\u0001\u00a2\u0006\u0002\u0010!J\u0013\u0010\"\u001a\u00020#2\u0008\u0010$\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010%\u001a\u00020&H\u00d6\u0001J\t\u0010\'\u001a\u00020(H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u0012\u001a\u0004\u0008\u0010\u0010\u0011R\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0011R\u0015\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u0012\u001a\u0004\u0008\u0014\u0010\u0011R\u0015\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u0012\u001a\u0004\u0008\u0015\u0010\u0011R\u0015\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\n\n\u0002\u0010\u0018\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006)"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;",
        "",
        "latitudeDegrees",
        "",
        "longitudeDegrees",
        "altitudeMeters",
        "bearingDegrees",
        "speedMetersPerSecond",
        "accuracyMeters",
        "timestampMillis",
        "",
        "<init>",
        "(DDLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Long;)V",
        "getLatitudeDegrees",
        "()D",
        "getLongitudeDegrees",
        "getAltitudeMeters",
        "()Ljava/lang/Double;",
        "Ljava/lang/Double;",
        "getBearingDegrees",
        "getSpeedMetersPerSecond",
        "getAccuracyMeters",
        "getTimestampMillis",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "copy",
        "(DDLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Long;)Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;",
        "equals",
        "",
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
.field private final accuracyMeters:Ljava/lang/Double;

.field private final altitudeMeters:Ljava/lang/Double;

.field private final bearingDegrees:Ljava/lang/Double;

.field private final latitudeDegrees:D

.field private final longitudeDegrees:D

.field private final speedMetersPerSecond:Ljava/lang/Double;

.field private final timestampMillis:Ljava/lang/Long;


# direct methods
.method public constructor <init>(DDLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Long;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-wide p1, p0, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->latitudeDegrees:D

    .line 13
    iput-wide p3, p0, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->longitudeDegrees:D

    .line 14
    iput-object p5, p0, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->altitudeMeters:Ljava/lang/Double;

    .line 15
    iput-object p6, p0, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->bearingDegrees:Ljava/lang/Double;

    .line 16
    iput-object p7, p0, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->speedMetersPerSecond:Ljava/lang/Double;

    .line 17
    iput-object p8, p0, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->accuracyMeters:Ljava/lang/Double;

    .line 18
    iput-object p9, p0, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->timestampMillis:Ljava/lang/Long;

    .line 21
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p5

    const-wide p7, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double p9, p5, p7

    if-gtz p9, :cond_1

    const-wide p5, -0x3fa9800000000000L    # -90.0

    cmpg-double p9, p5, p1

    if-gtz p9, :cond_1

    const-wide p5, 0x4056800000000000L    # 90.0

    cmpg-double p9, p1, p5

    if-gtz p9, :cond_1

    .line 24
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    cmpg-double p5, p1, p7

    if-gtz p5, :cond_0

    const-wide p1, -0x3f99800000000000L    # -180.0

    cmpg-double p5, p1, p3

    if-gtz p5, :cond_0

    const-wide p1, 0x4066800000000000L    # 180.0

    cmpg-double p5, p3, p1

    if-gtz p5, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "longitudeDegrees must be between -180 and 180"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "latitudeDegrees must be between -90 and 90"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(DDLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p11, p10, 0x4

    const/4 v0, 0x0

    if-eqz p11, :cond_0

    move-object p5, v0

    :cond_0
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_1

    move-object p6, v0

    :cond_1
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_2

    move-object p7, v0

    :cond_2
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_3

    move-object p8, v0

    :cond_3
    and-int/lit8 p10, p10, 0x40

    if-eqz p10, :cond_4

    move-object p10, v0

    goto :goto_0

    :cond_4
    move-object p10, p9

    :goto_0
    move-object p9, p8

    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-wide p4, p3

    move-wide p2, p1

    move-object p1, p0

    .line 11
    invoke-direct/range {p1 .. p10}, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;-><init>(DDLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;DDLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Long;ILjava/lang/Object;)Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;
    .locals 10

    and-int/lit8 v0, p10, 0x1

    if-eqz v0, :cond_0

    iget-wide p1, p0, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->latitudeDegrees:D

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p10, 0x2

    if-eqz p1, :cond_1

    iget-wide p3, p0, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->longitudeDegrees:D

    :cond_1
    move-wide v3, p3

    and-int/lit8 p1, p10, 0x4

    if-eqz p1, :cond_2

    iget-object p5, p0, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->altitudeMeters:Ljava/lang/Double;

    :cond_2
    move-object v5, p5

    and-int/lit8 p1, p10, 0x8

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->bearingDegrees:Ljava/lang/Double;

    move-object v6, p1

    goto :goto_0

    :cond_3
    move-object/from16 v6, p6

    :goto_0
    and-int/lit8 p1, p10, 0x10

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->speedMetersPerSecond:Ljava/lang/Double;

    move-object v7, p1

    goto :goto_1

    :cond_4
    move-object/from16 v7, p7

    :goto_1
    and-int/lit8 p1, p10, 0x20

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->accuracyMeters:Ljava/lang/Double;

    move-object v8, p1

    goto :goto_2

    :cond_5
    move-object/from16 v8, p8

    :goto_2
    and-int/lit8 p1, p10, 0x40

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->timestampMillis:Ljava/lang/Long;

    move-object v9, p1

    goto :goto_3

    :cond_6
    move-object/from16 v9, p9

    :goto_3
    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->copy(DDLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Long;)Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()D
    .locals 2

    iget-wide v0, p0, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->latitudeDegrees:D

    return-wide v0
.end method

.method public final component2()D
    .locals 2

    iget-wide v0, p0, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->longitudeDegrees:D

    return-wide v0
.end method

.method public final component3()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->altitudeMeters:Ljava/lang/Double;

    return-object v0
.end method

.method public final component4()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->bearingDegrees:Ljava/lang/Double;

    return-object v0
.end method

.method public final component5()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->speedMetersPerSecond:Ljava/lang/Double;

    return-object v0
.end method

.method public final component6()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->accuracyMeters:Ljava/lang/Double;

    return-object v0
.end method

.method public final component7()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->timestampMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public final copy(DDLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Long;)Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;
    .locals 10

    new-instance v0, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;-><init>(DDLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Long;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;

    iget-wide v3, p0, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->latitudeDegrees:D

    iget-wide v5, p1, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->latitudeDegrees:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->longitudeDegrees:D

    iget-wide v5, p1, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->longitudeDegrees:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->altitudeMeters:Ljava/lang/Double;

    iget-object v3, p1, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->altitudeMeters:Ljava/lang/Double;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->bearingDegrees:Ljava/lang/Double;

    iget-object v3, p1, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->bearingDegrees:Ljava/lang/Double;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->speedMetersPerSecond:Ljava/lang/Double;

    iget-object v3, p1, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->speedMetersPerSecond:Ljava/lang/Double;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->accuracyMeters:Ljava/lang/Double;

    iget-object v3, p1, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->accuracyMeters:Ljava/lang/Double;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->timestampMillis:Ljava/lang/Long;

    iget-object p1, p1, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->timestampMillis:Ljava/lang/Long;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getAccuracyMeters()Ljava/lang/Double;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->accuracyMeters:Ljava/lang/Double;

    return-object v0
.end method

.method public final getAltitudeMeters()Ljava/lang/Double;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->altitudeMeters:Ljava/lang/Double;

    return-object v0
.end method

.method public final getBearingDegrees()Ljava/lang/Double;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->bearingDegrees:Ljava/lang/Double;

    return-object v0
.end method

.method public final getLatitudeDegrees()D
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->latitudeDegrees:D

    return-wide v0
.end method

.method public final getLongitudeDegrees()D
    .locals 2

    .line 13
    iget-wide v0, p0, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->longitudeDegrees:D

    return-wide v0
.end method

.method public final getSpeedMetersPerSecond()Ljava/lang/Double;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->speedMetersPerSecond:Ljava/lang/Double;

    return-object v0
.end method

.method public final getTimestampMillis()Ljava/lang/Long;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->timestampMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->latitudeDegrees:D

    invoke-static {v0, v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->longitudeDegrees:D

    invoke-static {v1, v2}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->altitudeMeters:Ljava/lang/Double;

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

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->bearingDegrees:Ljava/lang/Double;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->speedMetersPerSecond:Ljava/lang/Double;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->accuracyMeters:Ljava/lang/Double;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->timestampMillis:Ljava/lang/Long;

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    iget-wide v0, p0, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->latitudeDegrees:D

    iget-wide v2, p0, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->longitudeDegrees:D

    iget-object v4, p0, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->altitudeMeters:Ljava/lang/Double;

    iget-object v5, p0, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->bearingDegrees:Ljava/lang/Double;

    iget-object v6, p0, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->speedMetersPerSecond:Ljava/lang/Double;

    iget-object v7, p0, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->accuracyMeters:Ljava/lang/Double;

    iget-object v8, p0, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->timestampMillis:Ljava/lang/Long;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "CarPlayLocationFix(latitudeDegrees="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", longitudeDegrees="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", altitudeMeters="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", bearingDegrees="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", speedMetersPerSecond="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", accuracyMeters="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", timestampMillis="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
