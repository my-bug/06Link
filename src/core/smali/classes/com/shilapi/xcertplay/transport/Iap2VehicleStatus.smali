.class public final Lcom/shilapi/xcertplay/transport/Iap2VehicleStatus;
.super Ljava/lang/Object;
.source "Iap2VehicleStatus.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIap2VehicleStatus.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Iap2VehicleStatus.kt\ncom/shilapi/xcertplay/transport/Iap2VehicleStatus\n+ 2 Iap2Messages.kt\ncom/shilapi/xcertplay/iap2/message/Iap2Messages\n*L\n1#1,131:1\n21#2:132\n*S KotlinDebug\n*F\n+ 1 Iap2VehicleStatus.kt\ncom/shilapi/xcertplay/transport/Iap2VehicleStatus\n*L\n76#1:132\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u000b\u001a\u00020\u000c*\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/Iap2VehicleStatus;",
        "",
        "<init>",
        "()V",
        "START_VEHICLE_STATUS_UPDATES",
        "",
        "VEHICLE_STATUS_UPDATE",
        "STOP_VEHICLE_STATUS_UPDATES",
        "UPDATE_INTERVAL_MILLIS",
        "",
        "ENGINE_TYPE_ELECTRIC",
        "electricVehicleComponents",
        "",
        "Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;",
        "name",
        "",
        "connectors",
        "Lcom/shilapi/xcertplay/transport/EvChargingConnectors;",
        "update",
        "Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;",
        "status",
        "Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;",
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
.field private static final ENGINE_TYPE_ELECTRIC:I = 0x2

.field public static final INSTANCE:Lcom/shilapi/xcertplay/transport/Iap2VehicleStatus;

.field public static final START_VEHICLE_STATUS_UPDATES:I = 0xa100

.field public static final STOP_VEHICLE_STATUS_UPDATES:I = 0xa102

.field public static final UPDATE_INTERVAL_MILLIS:J = 0x7530L

.field public static final VEHICLE_STATUS_UPDATE:I = 0xa101


# direct methods
.method public static synthetic $r8$lambda$FUcpIvCuRUKeFBefmJWMmHcha6Y(Ljava/lang/String;Lcom/shilapi/xcertplay/transport/EvChargingConnectors;Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/transport/Iap2VehicleStatus;->electricVehicleComponents$lambda$0(Ljava/lang/String;Lcom/shilapi/xcertplay/transport/EvChargingConnectors;Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fjkJNNzt2WAhxRRwscov65iFjTw(Ljava/lang/String;Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2VehicleStatus;->electricVehicleComponents$lambda$1(Ljava/lang/String;Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/transport/Iap2VehicleStatus;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/transport/Iap2VehicleStatus;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/transport/Iap2VehicleStatus;->INSTANCE:Lcom/shilapi/xcertplay/transport/Iap2VehicleStatus;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final electricVehicleComponents$lambda$0(Ljava/lang/String;Lcom/shilapi/xcertplay/transport/EvChargingConnectors;Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;)Lkotlin/Unit;
    .locals 3

    const-string v0, "$this$group"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 57
    invoke-virtual {p2, v1, v0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->u16(II)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    const/4 v0, 0x1

    .line 58
    invoke-virtual {p2, v0, p0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->string(ILjava/lang/String;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    const/4 v0, 0x2

    .line 59
    invoke-virtual {p2, v0, v0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->u8(II)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    const/4 v0, 0x6

    .line 60
    invoke-virtual {p2, v0, p0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->string(ILjava/lang/String;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    const/16 v0, 0x8

    .line 61
    invoke-virtual {p2, v0, p0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->string(ILjava/lang/String;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    .line 62
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/EvChargingConnectors;->getWireValues$shared_release()[I

    move-result-object p0

    array-length p1, p0

    :goto_0
    if-ge v1, p1, :cond_0

    aget v0, p0, v1

    const/16 v2, 0xb

    invoke-virtual {p2, v2, v0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->u8(II)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final electricVehicleComponents$lambda$1(Ljava/lang/String;Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;)Lkotlin/Unit;
    .locals 2

    const-string v0, "$this$group"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 65
    invoke-virtual {p1, v0, v1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->u16(II)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    const/4 v0, 0x1

    .line 66
    invoke-virtual {p1, v0, p0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->string(ILjava/lang/String;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    const/4 p0, 0x3

    .line 67
    invoke-virtual {p1, p0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->void(I)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    const/4 p0, 0x6

    .line 68
    invoke-virtual {p1, p0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->void(I)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    const/16 p0, 0xb

    .line 69
    invoke-virtual {p1, p0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->void(I)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    const/16 p0, 0xf

    .line 70
    invoke-virtual {p1, p0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->void(I)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    const/16 p0, 0x15

    .line 71
    invoke-virtual {p1, p0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->void(I)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    const/16 p0, 0x1e

    .line 72
    invoke-virtual {p1, p0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->void(I)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    .line 73
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final electricVehicleComponents(Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;Ljava/lang/String;Lcom/shilapi/xcertplay/transport/EvChargingConnectors;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectors"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    new-instance v0, Lcom/shilapi/xcertplay/transport/Iap2VehicleStatus$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p3}, Lcom/shilapi/xcertplay/transport/Iap2VehicleStatus$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lcom/shilapi/xcertplay/transport/EvChargingConnectors;)V

    const/16 p3, 0x14

    invoke-virtual {p1, p3, v0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->group(ILkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    .line 64
    new-instance p3, Lcom/shilapi/xcertplay/transport/Iap2VehicleStatus$$ExternalSyntheticLambda1;

    invoke-direct {p3, p2}, Lcom/shilapi/xcertplay/transport/Iap2VehicleStatus$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x15

    invoke-virtual {p1, p2, p3}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->group(ILkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    return-void
.end method

.method public final update(Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;)Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;
    .locals 12

    const-string/jumbo v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    sget-object v0, Lcom/shilapi/xcertplay/iap2/message/Iap2Messages;->INSTANCE:Lcom/shilapi/xcertplay/iap2/message/Iap2Messages;

    const v0, 0xa101

    .line 132
    sget-object v1, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->Companion:Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Companion;

    invoke-virtual {v1, v0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Companion;->opaque(I)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    move-result-object v0

    .line 77
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->getRangeKm()I

    move-result v1

    const/4 v2, 0x0

    const v3, 0xffff

    invoke-static {v1, v2, v3}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v1

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->u16(II)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    const/4 v1, 0x6

    .line 78
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->getRangeWarning()Z

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->bool(IZ)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    .line 79
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->getRangeKm()I

    move-result v1

    invoke-static {v1, v2, v3}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v1

    const/16 v4, 0xb

    invoke-virtual {v0, v4, v1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->u16(II)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    const/16 v1, 0xf

    .line 80
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->getRangeWarning()Z

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->bool(IZ)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    const/16 v1, 0x15

    const-wide/16 v4, 0x0

    .line 81
    invoke-virtual {v0, v1, v4, v5}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->u32(IJ)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    .line 82
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->getCurrentChargeWh()J

    move-result-wide v6

    invoke-static {v6, v7, v4, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v6

    const/16 v1, 0x16

    invoke-virtual {v0, v1, v6, v7}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->u32(IJ)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    .line 83
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->getMaxChargeWh()J

    move-result-wide v6

    invoke-static {v6, v7, v4, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v4

    const/16 v1, 0x17

    invoke-virtual {v0, v1, v4, v5}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->u32(IJ)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    .line 84
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->getBatteryPercent()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    invoke-static/range {v6 .. v11}, Lkotlin/ranges/RangesKt;->coerceIn(DDD)D

    move-result-wide v4

    const/16 v1, 0x3e8

    int-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    invoke-static {v4, v5}, Lkotlin/math/MathKt;->roundToLong(D)J

    move-result-wide v4

    const/16 v1, 0x18

    invoke-virtual {v0, v1, v4, v5}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->u32(IJ)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    const/16 v1, 0x19

    .line 85
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->getCharging()Z

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->bool(IZ)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    .line 86
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->getMaxRangeKm()I

    move-result p1

    invoke-static {p1, v2, v3}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p1

    const/16 v1, 0x1e

    invoke-virtual {v0, v1, p1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->u16(II)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    .line 132
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->build()Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;

    move-result-object p1

    return-object p1
.end method
