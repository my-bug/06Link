.class public final Lcom/shilapi/xcertplay/usbbt/UsbBtHost$l2cap$1;
.super Ljava/lang/Object;
.source "UsbBtHost.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/usbbt/L2capLayer$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/usbbt/UsbBtHost;-><init>(Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;Lcom/shilapi/xcertplay/usbbt/LinkKeyStore;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Transport;Lkotlin/jvm/functions/Function0;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J \u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0005H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/shilapi/xcertplay/usbbt/UsbBtHost$l2cap$1",
        "Lcom/shilapi/xcertplay/usbbt/L2capLayer$Observer;",
        "onConnectionRequest",
        "",
        "handle",
        "",
        "psm",
        "accepted",
        "",
        "onChannelData",
        "bytes",
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
.field final synthetic this$0:Lcom/shilapi/xcertplay/usbbt/UsbBtHost;


# direct methods
.method public static synthetic $r8$lambda$PpMMldIXk-MVST0ZT9tzLNB_ds0(IZLcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$l2cap$1;->onConnectionRequest$lambda$0(IZLcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rJRI2PoKAAconl4Te4YhL0yZ6eY(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$l2cap$1;->onChannelData$lambda$1(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/shilapi/xcertplay/usbbt/UsbBtHost;)V
    .locals 0

    iput-object p1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$l2cap$1;->this$0:Lcom/shilapi/xcertplay/usbbt/UsbBtHost;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final onChannelData$lambda$1(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;
    .locals 16

    const-string v0, "it"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->getSdpRequests()I

    move-result v0

    add-int/lit8 v13, v0, 0x1

    const/16 v14, 0x7ff

    const/4 v15, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v1 .. v15}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->copy$default(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;Lcom/shilapi/xcertplay/usbbt/BdAddr;Ljava/lang/String;ZLcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;IILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    move-result-object v0

    return-object v0
.end method

.method private static final onConnectionRequest$lambda$0(IZLcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;
    .locals 16

    const-string v0, "it"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->getPsmsRequested()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->getPsmsRefused()Ljava/util/List;

    move-result-object v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    check-cast v0, Ljava/util/Collection;

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    :goto_0
    move-object v12, v0

    const/16 v14, 0x9ff

    const/4 v15, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    invoke-static/range {v1 .. v15}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->copy$default(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;Lcom/shilapi/xcertplay/usbbt/BdAddr;Ljava/lang/String;ZLcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;IILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onChannelData(III)V
    .locals 0

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    .line 106
    iget-object p2, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$l2cap$1;->this$0:Lcom/shilapi/xcertplay/usbbt/UsbBtHost;

    new-instance p3, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$l2cap$1$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$l2cap$1$$ExternalSyntheticLambda0;-><init>()V

    # invokes: Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->updatePeer(ILkotlin/jvm/functions/Function1;)V
    invoke-static {p2, p1, p3}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->access$updatePeer(Lcom/shilapi/xcertplay/usbbt/UsbBtHost;ILkotlin/jvm/functions/Function1;)V

    :cond_0
    return-void
.end method

.method public onConnectionRequest(IIZ)V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$l2cap$1;->this$0:Lcom/shilapi/xcertplay/usbbt/UsbBtHost;

    new-instance v1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$l2cap$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2, p3}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$l2cap$1$$ExternalSyntheticLambda1;-><init>(IZ)V

    # invokes: Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->updatePeer(ILkotlin/jvm/functions/Function1;)V
    invoke-static {v0, p1, v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->access$updatePeer(Lcom/shilapi/xcertplay/usbbt/UsbBtHost;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method
