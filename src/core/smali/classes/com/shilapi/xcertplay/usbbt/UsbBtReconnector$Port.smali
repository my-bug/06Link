.class public interface abstract Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector$Port;
.super Ljava/lang/Object;
.source "UsbBtReconnect.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Port"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0005H&J\u0008\u0010\u0006\u001a\u00020\u0003H&J\u0008\u0010\u0007\u001a\u00020\u0008H&J\u000f\u0010\t\u001a\u0004\u0018\u00010\u0008H&\u00a2\u0006\u0002\u0010\nJ\n\u0010\u000b\u001a\u0004\u0018\u00010\u000cH&J\u0008\u0010\r\u001a\u00020\u0003H&J\u0008\u0010\u000e\u001a\u00020\u0003H&\u00a8\u0006\u000f\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector$Port;",
        "",
        "paired",
        "",
        "link",
        "Lcom/shilapi/xcertplay/usbbt/BtLinkState;",
        "iap2Open",
        "disconnections",
        "",
        "lastDisconnectReason",
        "()Ljava/lang/Integer;",
        "page",
        "",
        "openIap2OnLink",
        "dropLink",
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
.method public abstract disconnections()I
.end method

.method public abstract dropLink()Z
.end method

.method public abstract iap2Open()Z
.end method

.method public abstract lastDisconnectReason()Ljava/lang/Integer;
.end method

.method public abstract link()Lcom/shilapi/xcertplay/usbbt/BtLinkState;
.end method

.method public abstract openIap2OnLink()Z
.end method

.method public abstract page()Ljava/lang/String;
.end method

.method public abstract paired()Z
.end method
