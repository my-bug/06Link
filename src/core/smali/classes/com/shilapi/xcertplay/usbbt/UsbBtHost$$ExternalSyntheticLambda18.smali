.class public final synthetic Lcom/shilapi/xcertplay/usbbt/UsbBtHost$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$$ExternalSyntheticLambda18;->f$0:Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$$ExternalSyntheticLambda18;->f$0:Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;

    check-cast p1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    invoke-static {v0, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->$r8$lambda$9MOqklI1WQXgIDz9iHlF_odRouI(Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    move-result-object p1

    return-object p1
.end method
