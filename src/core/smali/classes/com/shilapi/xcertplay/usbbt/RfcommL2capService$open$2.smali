.class public final Lcom/shilapi/xcertplay/usbbt/RfcommL2capService$open$2;
.super Ljava/lang/Object;
.source "Rfcomm.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/usbbt/L2capChannelHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/usbbt/RfcommL2capService;->open(Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;)Lcom/shilapi/xcertplay/usbbt/L2capChannelHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\n\u0010\u0004\u001a\u00060\u0005R\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0014\u0010\t\u001a\u00020\u00032\n\u0010\u0004\u001a\u00060\u0005R\u00020\u0006H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/shilapi/xcertplay/usbbt/RfcommL2capService$open$2",
        "Lcom/shilapi/xcertplay/usbbt/L2capChannelHandler;",
        "onData",
        "",
        "channel",
        "Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;",
        "Lcom/shilapi/xcertplay/usbbt/L2capLayer;",
        "payload",
        "",
        "onClosed",
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


# instance fields
.field final synthetic $session:Lcom/shilapi/xcertplay/usbbt/RfcommSession;

.field final synthetic this$0:Lcom/shilapi/xcertplay/usbbt/RfcommL2capService;


# direct methods
.method constructor <init>(Lcom/shilapi/xcertplay/usbbt/RfcommSession;Lcom/shilapi/xcertplay/usbbt/RfcommL2capService;)V
    .locals 0

    iput-object p1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommL2capService$open$2;->$session:Lcom/shilapi/xcertplay/usbbt/RfcommSession;

    iput-object p2, p0, Lcom/shilapi/xcertplay/usbbt/RfcommL2capService$open$2;->this$0:Lcom/shilapi/xcertplay/usbbt/RfcommL2capService;

    .line 632
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;)V
    .locals 1

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 635
    iget-object p1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommL2capService$open$2;->this$0:Lcom/shilapi/xcertplay/usbbt/RfcommL2capService;

    # getter for: Lcom/shilapi/xcertplay/usbbt/RfcommL2capService;->log:Lkotlin/jvm/functions/Function1;
    invoke-static {p1}, Lcom/shilapi/xcertplay/usbbt/RfcommL2capService;->access$getLog$p(Lcom/shilapi/xcertplay/usbbt/RfcommL2capService;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    const-string v0, "rfcomm: L2CAP channel closed"

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    iget-object p1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommL2capService$open$2;->$session:Lcom/shilapi/xcertplay/usbbt/RfcommSession;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->onL2capClosed()V

    return-void
.end method

.method public onData(Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;[B)V
    .locals 1

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "payload"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 633
    iget-object p1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommL2capService$open$2;->$session:Lcom/shilapi/xcertplay/usbbt/RfcommSession;

    invoke-virtual {p1, p2}, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->onFrame([B)V

    return-void
.end method
