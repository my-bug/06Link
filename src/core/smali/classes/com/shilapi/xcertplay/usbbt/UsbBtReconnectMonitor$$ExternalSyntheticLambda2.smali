.class public final synthetic Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(JZLjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor$$ExternalSyntheticLambda2;->f$0:J

    iput-boolean p3, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor$$ExternalSyntheticLambda2;->f$1:Z

    iput-object p4, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 0
    iget-wide v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor$$ExternalSyntheticLambda2;->f$0:J

    iget-boolean v2, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor$$ExternalSyntheticLambda2;->f$1:Z

    iget-object v3, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    check-cast p1, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor;->$r8$lambda$W4Eo7L7q4YBueSPCPsaOaFM14Sw(JZLjava/lang/String;Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;

    move-result-object p1

    return-object p1
.end method
