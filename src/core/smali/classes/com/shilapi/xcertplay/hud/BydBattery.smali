.class public final Lcom/shilapi/xcertplay/hud/BydBattery;
.super Ljava/lang/Object;
.source "BydBattery.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBydBattery.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BydBattery.kt\ncom/shilapi/xcertplay/hud/BydBattery\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,152:1\n1#2:153\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u0005\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0014\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u000eJ%\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\n2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u00a2\u0006\u0002\u0010\u0015J\u0015\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0011\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\u0016J\u0010\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\nH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/hud/BydBattery;",
        "",
        "<init>",
        "()V",
        "PERCENT",
        "",
        "RANGE",
        "REMAINING",
        "BMS_STATE",
        "BMS_CHARGING",
        "",
        "read",
        "Lcom/shilapi/xcertplay/hud/BydBatteryReading;",
        "shell",
        "Lkotlin/Function1;",
        "snapshot",
        "Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;",
        "reading",
        "lowPercent",
        "fullKwh",
        "",
        "(Lcom/shilapi/xcertplay/hud/BydBatteryReading;ILjava/lang/Double;)Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;",
        "(Lcom/shilapi/xcertplay/hud/BydBatteryReading;)Ljava/lang/Double;",
        "float",
        "bits",
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
.field private static final BMS_CHARGING:I = 0x1

.field private static final BMS_STATE:Ljava/lang/String; = "service call autoservice 5 i32 1009 i32 876609560"

.field public static final INSTANCE:Lcom/shilapi/xcertplay/hud/BydBattery;

.field private static final PERCENT:Ljava/lang/String; = "service call autoservice 7 i32 1014 i32 1246777400"

.field private static final RANGE:Ljava/lang/String; = "service call autoservice 5 i32 1014 i32 1246765118"

.field private static final REMAINING:Ljava/lang/String; = "service call autoservice 7 i32 1005 i32 882901008"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/hud/BydBattery;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/hud/BydBattery;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/hud/BydBattery;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydBattery;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final float(I)D
    .locals 2

    .line 65
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    float-to-double v0, p1

    return-wide v0
.end method


# virtual methods
.method public final fullKwh(Lcom/shilapi/xcertplay/hud/BydBatteryReading;)Ljava/lang/Double;
    .locals 6

    const-string v0, "reading"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/hud/BydBatteryReading;->getPercent()D

    move-result-wide v0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_0

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/hud/BydBatteryReading;->getRemainingKwh()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/hud/BydBatteryReading;->getPercent()D

    move-result-wide v2

    const/16 p1, 0x64

    int-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final read(Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/hud/BydBatteryReading;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/shilapi/xcertplay/hud/BydBatteryReading;"
        }
    .end annotation

    const-string/jumbo v0, "shell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydParcel;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydParcel;

    const-string v1, "service call autoservice 7 i32 1014 i32 1246777400"

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/hud/BydParcel;->value(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/hud/BydBattery;->float(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v6, v4, v2

    if-gtz v6, :cond_0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    cmpg-double v8, v2, v6

    if-gtz v8, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    .line 36
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydParcel;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydParcel;

    const-string v2, "service call autoservice 5 i32 1014 i32 1246765118"

    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/shilapi/xcertplay/hud/BydParcel;->value(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    move-object v2, v0

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-ltz v2, :cond_1

    const/16 v3, 0xbb9

    if-ge v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 37
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydParcel;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydParcel;

    const-string v2, "service call autoservice 7 i32 1005 i32 882901008"

    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/shilapi/xcertplay/hud/BydParcel;->value(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/hud/BydBattery;->float(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpg-double v6, v4, v2

    if-gtz v6, :cond_2

    const-wide v4, 0x4072c00000000000L    # 300.0

    cmpg-double v6, v2, v4

    if-gtz v6, :cond_2

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    .line 38
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydParcel;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydParcel;

    const-string v1, "service call autoservice 5 i32 1009 i32 876609560"

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/hud/BydParcel;->value(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 39
    new-instance v6, Lcom/shilapi/xcertplay/hud/BydBatteryReading;

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    const/4 v12, 0x1

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v0, 0x0

    const/4 v12, 0x0

    :goto_4
    invoke-direct/range {v6 .. v12}, Lcom/shilapi/xcertplay/hud/BydBatteryReading;-><init>(DIDZ)V

    return-object v6

    :cond_5
    return-object v1
.end method

.method public final snapshot(Lcom/shilapi/xcertplay/hud/BydBatteryReading;ILjava/lang/Double;)Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;
    .locals 19

    const-string v0, "reading"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/hud/BydBatteryReading;->getPercent()D

    move-result-wide v2

    const/16 v0, 0x64

    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    const-wide/16 v4, 0x0

    if-eqz p3, :cond_0

    .line 49
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    goto :goto_0

    :cond_0
    cmpl-double v0, v2, v4

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/hud/BydBatteryReading;->getRemainingKwh()D

    move-result-wide v6

    if-lez v0, :cond_1

    div-double/2addr v6, v2

    .line 50
    :cond_1
    :goto_0
    new-instance v8, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;

    .line 51
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/hud/BydBatteryReading;->getRangeKm()I

    move-result v9

    .line 52
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/hud/BydBatteryReading;->getPercent()D

    move-result-wide v10

    move/from16 v0, p2

    int-to-double v12, v0

    cmpg-double v0, v10, v12

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    const/4 v10, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    const/4 v10, 0x0

    .line 53
    :goto_1
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/hud/BydBatteryReading;->getPercent()D

    move-result-wide v11

    .line 54
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/hud/BydBatteryReading;->getRemainingKwh()D

    move-result-wide v13

    const/16 v0, 0x3e8

    move-wide v15, v4

    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v4

    invoke-static {v13, v14}, Lkotlin/math/MathKt;->roundToLong(D)J

    move-result-wide v13

    .line 55
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v4

    invoke-static {v6, v7}, Lkotlin/math/MathKt;->roundToLong(D)J

    move-result-wide v4

    cmpl-double v0, v2, v15

    if-lez v0, :cond_3

    .line 56
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/hud/BydBatteryReading;->getRangeKm()I

    move-result v0

    int-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v2

    invoke-static {v6, v7}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/hud/BydBatteryReading;->getRangeKm()I

    move-result v0

    :goto_2
    move/from16 v17, v0

    .line 57
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/hud/BydBatteryReading;->getCharging()Z

    move-result v18

    move-wide v15, v4

    .line 50
    invoke-direct/range {v8 .. v18}, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;-><init>(IZDJJIZ)V

    return-object v8
.end method
