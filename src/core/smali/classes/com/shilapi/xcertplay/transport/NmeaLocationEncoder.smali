.class public final Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder;
.super Ljava/lang/Object;
.source "Iap2LocationClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder$NmeaCoordinate;,
        Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder$Timestamp;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIap2LocationClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Iap2LocationClient.kt\ncom/shilapi/xcertplay/transport/NmeaLocationEncoder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,283:1\n1#2:284\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\u001b\u001cB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0002J\u0010\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0005H\u0002J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J)\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00052\u0012\u0010\u0015\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\u0016\"\u00020\u0001H\u0002\u00a2\u0006\u0002\u0010\u0017R\u000e\u0010\u0018\u001a\u00020\u000bX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u000bX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u000bX\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder;",
        "",
        "<init>",
        "()V",
        "encode",
        "",
        "fix",
        "Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;",
        "degreesToNmea",
        "Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder$NmeaCoordinate;",
        "value",
        "",
        "latitude",
        "",
        "checksum",
        "body",
        "ofEpochMilli",
        "Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder$Timestamp;",
        "millis",
        "",
        "format",
        "arguments",
        "",
        "(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;",
        "KNOTS_PER_METER_PER_SECOND",
        "MINUTES_PER_DEGREE",
        "MINUTE_ROUNDING_TOLERANCE",
        "NmeaCoordinate",
        "Timestamp",
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


# static fields
.field public static final INSTANCE:Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder;

.field private static final KNOTS_PER_METER_PER_SECOND:D = 1.94384449

.field private static final MINUTES_PER_DEGREE:D = 60.0

.field private static final MINUTE_ROUNDING_TOLERANCE:D = 5.0E-5


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder;->INSTANCE:Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final checksum(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    xor-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "%02X"

    invoke-direct {p0, p1, v0}, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final degreesToNmea(DZ)Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder$NmeaCoordinate;
    .locals 8

    .line 91
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-int v2, v0

    int-to-double v3, v2

    .line 93
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v3

    const-wide/high16 v3, 0x404e000000000000L    # 60.0

    mul-double v0, v0, v3

    const-wide v3, 0x404dfffe5c91d14eL    # 59.99995

    const-wide/16 v5, 0x0

    cmpl-double v7, v0, v3

    if-ltz v7, :cond_0

    add-int/lit8 v2, v2, 0x1

    move-wide v0, v5

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 98
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v7, v4, [Ljava/lang/Object;

    if-eqz p3, :cond_1

    aput-object v2, v7, v3

    const-string v2, "%02d"

    invoke-direct {p0, v2, v7}, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    aput-object v2, v7, v3

    const-string v2, "%03d"

    invoke-direct {p0, v2, v7}, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-eqz p3, :cond_3

    cmpl-double p3, p1, v5

    if-ltz p3, :cond_2

    .line 100
    const-string p1, "N"

    goto :goto_1

    :cond_2
    const-string p1, "S"

    goto :goto_1

    :cond_3
    cmpl-double p3, p1, v5

    if-ltz p3, :cond_4

    .line 102
    const-string p1, "E"

    goto :goto_1

    :cond_4
    const-string p1, "W"

    .line 104
    :goto_1
    new-instance p2, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder$NmeaCoordinate;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p3, v0, v3

    const-string p3, "%07.4f"

    invoke-direct {p0, p3, v0}, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder$NmeaCoordinate;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method private final varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 116
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "format(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final ofEpochMilli(J)Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder$Timestamp;
    .locals 1

    .line 113
    new-instance v0, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder$Timestamp;

    invoke-direct {v0, p1, p2}, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder$Timestamp;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public final encode(Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;)Ljava/lang/String;
    .locals 23

    move-object/from16 v0, p0

    const-string v1, "fix"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->getTimestampMillis()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 51
    move-object v4, v1

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 52
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder;->ofEpochMilli(J)Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder$Timestamp;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 53
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder;->ofEpochMilli(J)Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder$Timestamp;

    move-result-object v1

    .line 54
    :goto_1
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder$Timestamp;->getHour()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder$Timestamp;->getMinute()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder$Timestamp;->getSecond()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    const/4 v4, 0x1

    aput-object v5, v8, v4

    const/4 v5, 0x2

    aput-object v6, v8, v5

    const-string v6, "%02d%02d%02d.00"

    invoke-direct {v0, v6, v8}, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 57
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder$Timestamp;->getDay()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 58
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder$Timestamp;->getMonth()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 59
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder$Timestamp;->getYear()I

    move-result v1

    rem-int/lit8 v1, v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v8, v7, v9

    aput-object v10, v7, v4

    aput-object v1, v7, v5

    .line 55
    const-string v1, "%02d%02d%02d"

    invoke-direct {v0, v1, v7}, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->getLatitudeDegrees()D

    move-result-wide v7

    invoke-direct {v0, v7, v8, v4}, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder;->degreesToNmea(DZ)Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder$NmeaCoordinate;

    move-result-object v5

    .line 63
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->getLongitudeDegrees()D

    move-result-wide v7

    invoke-direct {v0, v7, v8, v9}, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder;->degreesToNmea(DZ)Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder$NmeaCoordinate;

    move-result-object v7

    .line 64
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->getAccuracyMeters()Ljava/lang/Double;

    move-result-object v8

    const-wide/16 v10, 0x0

    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    if-eqz v8, :cond_3

    .line 65
    move-object v14, v8

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    cmpg-double v18, v16, v12

    if-gtz v18, :cond_2

    cmpl-double v16, v14, v10

    if-lez v16, :cond_2

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    if-eqz v8, :cond_3

    .line 66
    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v14

    const-wide/high16 v16, 0x4014000000000000L    # 5.0

    div-double v14, v14, v16

    move-wide/from16 v16, v10

    const/4 v8, 0x0

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    invoke-static {v9, v10, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    const-wide/high16 v14, 0x4049000000000000L    # 50.0

    invoke-static {v14, v15, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v9

    goto :goto_3

    :cond_3
    move-wide/from16 v16, v10

    const/4 v8, 0x0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .line 68
    :goto_3
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->getAltitudeMeters()Ljava/lang/Double;

    move-result-object v11

    .line 69
    const-string v14, "%.1f"

    if-eqz v11, :cond_5

    move-object v15, v11

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    cmpg-double v15, v18, v12

    if-gtz v15, :cond_4

    goto :goto_4

    :cond_4
    const/4 v11, 0x0

    :goto_4
    if-eqz v11, :cond_5

    .line 70
    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v18

    sget-object v11, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder;->INSTANCE:Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder;

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v15, v3, v8

    invoke-direct {v11, v14, v3}, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    goto :goto_5

    .line 71
    :cond_5
    const-string v3, "0.0"

    .line 73
    :goto_5
    invoke-virtual {v5}, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder$NmeaCoordinate;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder$NmeaCoordinate;->getHemisphere()Ljava/lang/String;

    move-result-object v15

    const/16 v19, 0x0

    .line 74
    invoke-virtual {v7}, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder$NmeaCoordinate;->getValue()Ljava/lang/String;

    move-result-object v8

    move-wide/from16 v20, v12

    invoke-virtual {v7}, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder$NmeaCoordinate;->getHemisphere()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v9, v10, v19

    invoke-direct {v0, v14, v10}, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 75
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v13, "GPGGA,"

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",1,08,"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",M,0.0,M,,"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 76
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->getSpeedMetersPerSecond()Ljava/lang/Double;

    move-result-object v8

    .line 77
    const-string v9, "%.2f"

    const-string v10, "0.00"

    if-eqz v8, :cond_7

    move-object v11, v8

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    cmpg-double v22, v14, v20

    if-gtz v22, :cond_6

    cmpl-double v14, v11, v16

    if-ltz v14, :cond_6

    goto :goto_6

    :cond_6
    const/4 v8, 0x0

    :goto_6
    if-eqz v8, :cond_7

    .line 78
    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v11

    sget-object v8, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder;->INSTANCE:Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder;

    const-wide v14, 0x3fff19fcae10f4f0L    # 1.94384449

    mul-double v11, v11, v14

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    new-array v12, v4, [Ljava/lang/Object;

    aput-object v11, v12, v19

    invoke-direct {v8, v9, v12}, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    goto :goto_7

    :cond_7
    move-object v8, v10

    .line 80
    :goto_7
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;->getBearingDegrees()Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 81
    move-object v11, v2

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    cmpg-double v14, v11, v20

    if-gtz v14, :cond_8

    move-object/from16 v18, v2

    goto :goto_8

    :cond_8
    const/16 v18, 0x0

    :goto_8
    if-eqz v18, :cond_9

    .line 82
    check-cast v18, Ljava/lang/Number;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v11

    sget-object v2, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder;->INSTANCE:Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder;

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v11, v4, v19

    invoke-direct {v2, v9, v4}, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    move-object v10, v2

    .line 84
    :cond_9
    invoke-virtual {v5}, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder$NmeaCoordinate;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder$NmeaCoordinate;->getHemisphere()Ljava/lang/String;

    move-result-object v4

    .line 85
    invoke-virtual {v7}, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder$NmeaCoordinate;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder$NmeaCoordinate;->getHemisphere()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "GPRMC,"

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",A,"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",,"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-direct {v0, v3}, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder;->checksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder;->checksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "$"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "*"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n$"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
