.class public final synthetic Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/usbbt/ReconnectPath;


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/usbbt/ReconnectPath;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor$$ExternalSyntheticLambda4;->f$0:Lcom/shilapi/xcertplay/usbbt/ReconnectPath;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor$$ExternalSyntheticLambda4;->f$0:Lcom/shilapi/xcertplay/usbbt/ReconnectPath;

    check-cast p1, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;

    invoke-static {v0, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor;->$r8$lambda$8nayHgyn3-AO1MgqPB71irvxcoI(Lcom/shilapi/xcertplay/usbbt/ReconnectPath;Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;

    move-result-object p1

    return-object p1
.end method
