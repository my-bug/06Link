.class public final Lcom/shilapi/xcertplay/hud/BydWheelSpeed;
.super Ljava/lang/Object;
.source "BydWheelSpeed.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBydWheelSpeed.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BydWheelSpeed.kt\ncom/shilapi/xcertplay/hud/BydWheelSpeed\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,106:1\n1#2:107\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\nJ\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/hud/BydWheelSpeed;",
        "",
        "<init>",
        "()V",
        "SPEED",
        "",
        "GEAR",
        "metersPerSecond",
        "",
        "output",
        "(Ljava/lang/String;)Ljava/lang/Double;",
        "gear",
        "Lcom/shilapi/xcertplay/transport/VehicleGear;",
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
.field public static final GEAR:Ljava/lang/String; = "service call autoservice 5 i32 1011 i32 555745336"

.field public static final INSTANCE:Lcom/shilapi/xcertplay/hud/BydWheelSpeed;

.field public static final SPEED:Ljava/lang/String; = "service call autoservice 7 i32 1013 i32 -1807745016"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/hud/BydWheelSpeed;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/hud/BydWheelSpeed;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/hud/BydWheelSpeed;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydWheelSpeed;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final gear(Ljava/lang/String;)Lcom/shilapi/xcertplay/transport/VehicleGear;
    .locals 2

    .line 28
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydParcel;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydParcel;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/hud/BydParcel;->value(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-object p1, Lcom/shilapi/xcertplay/transport/VehicleGear;->PARK:Lcom/shilapi/xcertplay/transport/VehicleGear;

    return-object p1

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    .line 30
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    sget-object p1, Lcom/shilapi/xcertplay/transport/VehicleGear;->REVERSE:Lcom/shilapi/xcertplay/transport/VehicleGear;

    return-object p1

    :cond_3
    :goto_1
    if-nez p1, :cond_4

    goto :goto_2

    .line 31
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    sget-object p1, Lcom/shilapi/xcertplay/transport/VehicleGear;->NEUTRAL:Lcom/shilapi/xcertplay/transport/VehicleGear;

    return-object p1

    :cond_5
    :goto_2
    if-nez p1, :cond_6

    goto :goto_3

    .line 32
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_7

    sget-object p1, Lcom/shilapi/xcertplay/transport/VehicleGear;->DRIVE:Lcom/shilapi/xcertplay/transport/VehicleGear;

    return-object p1

    :cond_7
    :goto_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final metersPerSecond(Ljava/lang/String;)Ljava/lang/Double;
    .locals 5

    .line 24
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydParcel;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydParcel;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/hud/BydParcel;->value(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    float-to-double v1, p1

    const-wide/16 v3, 0x0

    cmpg-double p1, v3, v1

    if-gtz p1, :cond_0

    const-wide v3, 0x4072c00000000000L    # 300.0

    cmpg-double p1, v1, v3

    if-gtz p1, :cond_0

    const-wide v3, 0x400ccccccccccccdL    # 3.6

    .line 25
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method
