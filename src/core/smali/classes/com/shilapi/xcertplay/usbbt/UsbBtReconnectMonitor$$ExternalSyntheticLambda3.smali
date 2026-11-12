.class public final synthetic Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor$$ExternalSyntheticLambda3;->f$0:Z

    iput-object p2, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor$$ExternalSyntheticLambda3;->f$0:Z

    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    check-cast p1, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;

    invoke-static {v0, v1, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor;->$r8$lambda$bpBfyc2AGhAe6_AX_3UcVdf9owc(ZLjava/lang/String;Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;

    move-result-object p1

    return-object p1
.end method
