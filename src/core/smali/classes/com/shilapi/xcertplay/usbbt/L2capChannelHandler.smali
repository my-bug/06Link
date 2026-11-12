.class public interface abstract Lcom/shilapi/xcertplay/usbbt/L2capChannelHandler;
.super Ljava/lang/Object;
.source "L2cap.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/usbbt/L2capChannelHandler$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\n\u0010\u0004\u001a\u00060\u0005R\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H&J\u0014\u0010\t\u001a\u00020\u00032\n\u0010\u0004\u001a\u00060\u0005R\u00020\u0006H\u0016\u00a8\u0006\n\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/L2capChannelHandler;",
        "",
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


# virtual methods
.method public abstract onClosed(Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;)V
.end method

.method public abstract onData(Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;[B)V
.end method
