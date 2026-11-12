.class public final Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity$Companion;
.super Ljava/lang/Object;
.source "UsbBtIdentity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\tR\u0011\u0010\u000c\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\tR\u000e\u0010\u000e\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity$Companion;",
        "",
        "<init>",
        "()V",
        "CLASS_OF_DEVICE_HANDS_FREE",
        "",
        "IAP2_ACCESSORY_UUID",
        "Ljava/util/UUID;",
        "getIAP2_ACCESSORY_UUID",
        "()Ljava/util/UUID;",
        "IAP2_IPHONE_UUID",
        "getIAP2_IPHONE_UUID",
        "CARPLAY_UUID",
        "getCARPLAY_UUID",
        "IAP2_RFCOMM_CHANNEL",
        "EIR_INCOMPLETE_128_BIT_UUIDS",
        "EIR_COMPLETE_128_BIT_UUIDS",
        "EIR_SHORTENED_LOCAL_NAME",
        "EIR_COMPLETE_LOCAL_NAME",
        "EIR_TX_POWER_LEVEL",
        "EIR_DEVICE_ID",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCARPLAY_UUID()Ljava/util/UUID;
    .locals 1

    .line 48
    # getter for: Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;->CARPLAY_UUID:Ljava/util/UUID;
    invoke-static {}, Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;->access$getCARPLAY_UUID$cp()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public final getIAP2_ACCESSORY_UUID()Ljava/util/UUID;
    .locals 1

    .line 42
    # getter for: Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;->IAP2_ACCESSORY_UUID:Ljava/util/UUID;
    invoke-static {}, Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;->access$getIAP2_ACCESSORY_UUID$cp()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public final getIAP2_IPHONE_UUID()Ljava/util/UUID;
    .locals 1

    .line 45
    # getter for: Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;->IAP2_IPHONE_UUID:Ljava/util/UUID;
    invoke-static {}, Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;->access$getIAP2_IPHONE_UUID$cp()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method
