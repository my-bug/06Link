.class public final Lcom/shilapi/xcertplay/usbbt/L2capChannelHandler$DefaultImpls;
.super Ljava/lang/Object;
.source "L2cap.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/usbbt/L2capChannelHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static onClosed(Lcom/shilapi/xcertplay/usbbt/L2capChannelHandler;Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    # invokes: Lcom/shilapi/xcertplay/usbbt/L2capChannelHandler$-CC;->$default$onClosed(Lcom/shilapi/xcertplay/usbbt/L2capChannelHandler;Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;)V
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/usbbt/L2capChannelHandler$-CC;->access$onClosed$jd(Lcom/shilapi/xcertplay/usbbt/L2capChannelHandler;Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;)V

    return-void
.end method
