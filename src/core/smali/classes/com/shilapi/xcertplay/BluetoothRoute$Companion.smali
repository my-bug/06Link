.class public final Lcom/shilapi/xcertplay/BluetoothRoute$Companion;
.super Ljava/lang/Object;
.source "BluetoothRoute.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/BluetoothRoute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0018\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/BluetoothRoute$Companion;",
        "",
        "<init>",
        "()V",
        "of",
        "Lcom/shilapi/xcertplay/BluetoothRoute;",
        "stack",
        "Lcom/shilapi/xcertplay/compat/BluetoothStack;",
        "gocSppReady",
        "",
        "common_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/BluetoothRoute$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final of(Lcom/shilapi/xcertplay/compat/BluetoothStack;)Lcom/shilapi/xcertplay/BluetoothRoute;
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, p1, v0}, Lcom/shilapi/xcertplay/BluetoothRoute$Companion;->of(Lcom/shilapi/xcertplay/compat/BluetoothStack;Z)Lcom/shilapi/xcertplay/BluetoothRoute;

    move-result-object p1

    return-object p1
.end method

.method public final of(Lcom/shilapi/xcertplay/compat/BluetoothStack;Z)Lcom/shilapi/xcertplay/BluetoothRoute;
    .locals 1

    .line 55
    sget-object v0, Lcom/shilapi/xcertplay/compat/BluetoothStack;->ENABLED:Lcom/shilapi/xcertplay/compat/BluetoothStack;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/shilapi/xcertplay/BluetoothRoute;->USE:Lcom/shilapi/xcertplay/BluetoothRoute;

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 56
    sget-object p1, Lcom/shilapi/xcertplay/BluetoothRoute;->USE_GOC:Lcom/shilapi/xcertplay/BluetoothRoute;

    return-object p1

    .line 57
    :cond_1
    sget-object p2, Lcom/shilapi/xcertplay/compat/BluetoothStack;->OFF:Lcom/shilapi/xcertplay/compat/BluetoothStack;

    if-eq p1, p2, :cond_5

    if-nez p1, :cond_2

    goto :goto_0

    .line 58
    :cond_2
    sget-object p2, Lcom/shilapi/xcertplay/compat/BluetoothStack;->ABSENT:Lcom/shilapi/xcertplay/compat/BluetoothStack;

    if-ne p1, p2, :cond_3

    sget-object p1, Lcom/shilapi/xcertplay/BluetoothRoute;->NO_ADAPTER:Lcom/shilapi/xcertplay/BluetoothRoute;

    return-object p1

    .line 59
    :cond_3
    sget-object p2, Lcom/shilapi/xcertplay/compat/BluetoothStack;->VENDOR_NO_AOSP:Lcom/shilapi/xcertplay/compat/BluetoothStack;

    if-ne p1, p2, :cond_4

    sget-object p1, Lcom/shilapi/xcertplay/BluetoothRoute;->GUIDE_TO_USB:Lcom/shilapi/xcertplay/BluetoothRoute;

    return-object p1

    .line 60
    :cond_4
    sget-object p1, Lcom/shilapi/xcertplay/BluetoothRoute;->TURN_ON:Lcom/shilapi/xcertplay/BluetoothRoute;

    return-object p1

    .line 57
    :cond_5
    :goto_0
    sget-object p1, Lcom/shilapi/xcertplay/BluetoothRoute;->TURN_ON:Lcom/shilapi/xcertplay/BluetoothRoute;

    return-object p1
.end method
