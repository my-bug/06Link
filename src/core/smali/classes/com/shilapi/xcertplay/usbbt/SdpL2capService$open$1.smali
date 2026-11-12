.class public final Lcom/shilapi/xcertplay/usbbt/SdpL2capService$open$1;
.super Ljava/lang/Object;
.source "L2cap.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/usbbt/L2capChannelHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/usbbt/SdpL2capService;->open(Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;)Lcom/shilapi/xcertplay/usbbt/L2capChannelHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0004\u001a\u00020\u00052\n\u0010\u0006\u001a\u00060\u0007R\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "com/shilapi/xcertplay/usbbt/SdpL2capService$open$1",
        "Lcom/shilapi/xcertplay/usbbt/L2capChannelHandler;",
        "server",
        "Lcom/shilapi/xcertplay/usbbt/SdpServer;",
        "onData",
        "",
        "channel",
        "Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;",
        "Lcom/shilapi/xcertplay/usbbt/L2capLayer;",
        "payload",
        "",
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
.field private final server:Lcom/shilapi/xcertplay/usbbt/SdpServer;


# direct methods
.method constructor <init>(Lcom/shilapi/xcertplay/usbbt/SdpL2capService;)V
    .locals 1

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    new-instance v0, Lcom/shilapi/xcertplay/usbbt/SdpServer;

    # getter for: Lcom/shilapi/xcertplay/usbbt/SdpL2capService;->records:Ljava/util/List;
    invoke-static {p1}, Lcom/shilapi/xcertplay/usbbt/SdpL2capService;->access$getRecords$p(Lcom/shilapi/xcertplay/usbbt/SdpL2capService;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/shilapi/xcertplay/usbbt/SdpServer;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/shilapi/xcertplay/usbbt/SdpL2capService$open$1;->server:Lcom/shilapi/xcertplay/usbbt/SdpServer;

    return-void
.end method


# virtual methods
.method public onClosed(Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;)V
    .locals 0

    .line 325
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/usbbt/L2capChannelHandler$-CC;->$default$onClosed(Lcom/shilapi/xcertplay/usbbt/L2capChannelHandler;Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;)V

    return-void
.end method

.method public onData(Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;[B)V
    .locals 2

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payload"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/SdpL2capService$open$1;->server:Lcom/shilapi/xcertplay/usbbt/SdpServer;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->getRemoteMtu()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/shilapi/xcertplay/usbbt/SdpServer;->handle([BI)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->write([B)V

    return-void
.end method
