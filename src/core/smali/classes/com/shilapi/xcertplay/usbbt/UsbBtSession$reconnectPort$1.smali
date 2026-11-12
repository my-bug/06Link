.class public final Lcom/shilapi/xcertplay/usbbt/UsbBtSession$reconnectPort$1;
.super Ljava/lang/Object;
.source "UsbBtSession.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector$Port;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->reconnectPort()Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector$Port;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUsbBtSession.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UsbBtSession.kt\ncom/shilapi/xcertplay/usbbt/UsbBtSession$reconnectPort$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,309:1\n1#2:310\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u000f\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0002\u0010\nJ\n\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u0003H\u0016J\u0008\u0010\u000e\u001a\u00020\u0003H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/shilapi/xcertplay/usbbt/UsbBtSession$reconnectPort$1",
        "Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector$Port;",
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


# instance fields
.field final synthetic $host:Lcom/shilapi/xcertplay/usbbt/UsbBtHost;


# direct methods
.method constructor <init>(Lcom/shilapi/xcertplay/usbbt/UsbBtHost;)V
    .locals 0

    iput-object p1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$reconnectPort$1;->$host:Lcom/shilapi/xcertplay/usbbt/UsbBtHost;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public disconnections()I
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$reconnectPort$1;->$host:Lcom/shilapi/xcertplay/usbbt/UsbBtHost;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->getDisconnections()I

    move-result v0

    return v0
.end method

.method public dropLink()Z
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$reconnectPort$1;->$host:Lcom/shilapi/xcertplay/usbbt/UsbBtHost;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->currentLink()Lcom/shilapi/xcertplay/usbbt/UsbBtHost$LinkInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$reconnectPort$1;->$host:Lcom/shilapi/xcertplay/usbbt/UsbBtHost;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$LinkInfo;->getHandle()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->dropLink(I)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method public iap2Open()Z
    .locals 1

    .line 204
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtSession;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->getIap2()Lcom/shilapi/xcertplay/usbbt/UsbBtIap2Link;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtIap2Link;->hasWaiting()Z

    move-result v0

    return v0
.end method

.method public lastDisconnectReason()Ljava/lang/Integer;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$reconnectPort$1;->$host:Lcom/shilapi/xcertplay/usbbt/UsbBtHost;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->getLastDisconnectReason()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public link()Lcom/shilapi/xcertplay/usbbt/BtLinkState;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$reconnectPort$1;->$host:Lcom/shilapi/xcertplay/usbbt/UsbBtHost;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->isPaging()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/shilapi/xcertplay/usbbt/BtLinkState;->PAGING:Lcom/shilapi/xcertplay/usbbt/BtLinkState;

    return-object v0

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$reconnectPort$1;->$host:Lcom/shilapi/xcertplay/usbbt/UsbBtHost;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->currentLink()Lcom/shilapi/xcertplay/usbbt/UsbBtHost$LinkInfo;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/shilapi/xcertplay/usbbt/BtLinkState;->NONE:Lcom/shilapi/xcertplay/usbbt/BtLinkState;

    return-object v0

    .line 202
    :cond_1
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$LinkInfo;->getEncrypted()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/shilapi/xcertplay/usbbt/BtLinkState;->ENCRYPTED:Lcom/shilapi/xcertplay/usbbt/BtLinkState;

    return-object v0

    :cond_2
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/BtLinkState;->UNENCRYPTED:Lcom/shilapi/xcertplay/usbbt/BtLinkState;

    return-object v0
.end method

.method public openIap2OnLink()Z
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$reconnectPort$1;->$host:Lcom/shilapi/xcertplay/usbbt/UsbBtHost;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->currentLink()Lcom/shilapi/xcertplay/usbbt/UsbBtHost$LinkInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$reconnectPort$1;->$host:Lcom/shilapi/xcertplay/usbbt/UsbBtHost;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$LinkInfo;->getHandle()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->openIap2OnLink(I)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method public page()Ljava/lang/String;
    .locals 1

    .line 207
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtSession;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->reconnectPairedIphone()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public paired()Z
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$reconnectPort$1;->$host:Lcom/shilapi/xcertplay/usbbt/UsbBtHost;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->pairedAddresses()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
