.class public final synthetic Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda35;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda35;->f$0:Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;

    iput-wide p2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda35;->f$1:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda35;->f$0:Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;

    iget-wide v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda35;->f$1:J

    check-cast p1, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;

    invoke-static {v0, v1, v2, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->$r8$lambda$xaeNbwec_6FsmPsxYDAtyoAybVc(Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;JLcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;

    move-result-object p1

    return-object p1
.end method
