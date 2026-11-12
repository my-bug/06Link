.class public final Lcom/shilapi/xcertplay/DiPlayActivity$resetWirelessGroup$1$1;
.super Ljava/lang/Object;
.source "DiPlayActivity.kt"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/DiPlayActivity;->resetWirelessGroup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/shilapi/xcertplay/DiPlayActivity$resetWirelessGroup$1$1",
        "Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;",
        "onSuccess",
        "",
        "onFailure",
        "reason",
        "",
        "common_release"
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
.field final synthetic $channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field final synthetic $manager:Landroid/net/wifi/p2p/WifiP2pManager;

.field final synthetic this$0:Lcom/shilapi/xcertplay/DiPlayActivity;


# direct methods
.method public static synthetic $r8$lambda$NYWLDoGZhuTnG7iqnDkCnlQGHAs(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lcom/shilapi/xcertplay/DiPlayActivity;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/DiPlayActivity$resetWirelessGroup$1$1;->onSuccess$waitUntilRemoved$lambda$1$lambda$0(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lcom/shilapi/xcertplay/DiPlayActivity;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$pINEC1XDFXVcKOa1WERNVOy8mAE(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lcom/shilapi/xcertplay/DiPlayActivity;JLandroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/shilapi/xcertplay/DiPlayActivity$resetWirelessGroup$1$1;->onSuccess$waitUntilRemoved$lambda$1(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lcom/shilapi/xcertplay/DiPlayActivity;JLandroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    return-void
.end method

.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lcom/shilapi/xcertplay/DiPlayActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/shilapi/xcertplay/DiPlayActivity$resetWirelessGroup$1$1;->$manager:Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object p2, p0, Lcom/shilapi/xcertplay/DiPlayActivity$resetWirelessGroup$1$1;->$channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iput-object p3, p0, Lcom/shilapi/xcertplay/DiPlayActivity$resetWirelessGroup$1$1;->this$0:Lcom/shilapi/xcertplay/DiPlayActivity;

    .line 4419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final onSuccess$waitUntilRemoved(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lcom/shilapi/xcertplay/DiPlayActivity;J)V
    .locals 6

    .line 4423
    new-instance v0, Lcom/shilapi/xcertplay/DiPlayActivity$resetWirelessGroup$1$1$$ExternalSyntheticLambda0;

    move-object v5, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/DiPlayActivity$resetWirelessGroup$1$1$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lcom/shilapi/xcertplay/DiPlayActivity;JLandroid/net/wifi/p2p/WifiP2pManager;)V

    invoke-virtual {v5, v1, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    return-void
.end method

.method private static final onSuccess$waitUntilRemoved$lambda$1(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lcom/shilapi/xcertplay/DiPlayActivity;JLandroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 6

    if-nez p5, :cond_1

    .line 4425
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/shilapi/xcertplay/compat/Api19Kt;->closeCompat(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_0

    move-object p0, p1

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/shilapi/xcertplay/compat/Api19Kt;->isDestroyedCompat(Landroid/app/Activity;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x2

    const/4 p2, 0x0

    const/4 p3, 0x1

    const/4 p4, 0x0

    invoke-static {p1, p3, p4, p0, p2}, Lcom/shilapi/xcertplay/DiPlayActivity;->connect$default(Lcom/shilapi/xcertplay/DiPlayActivity;ZZILjava/lang/Object;)V

    :cond_0
    return-void

    .line 4426
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    cmp-long p5, v0, p2

    if-ltz p5, :cond_2

    .line 4427
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/shilapi/xcertplay/compat/Api19Kt;->closeCompat(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    sget p0, Lcom/shilapi/xcertplay/host/R$string;->wi_fi_direct_is_still_busy_close_the_other_projection_app:I

    invoke-virtual {p1, p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "getString(...)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    # invokes: Lcom/shilapi/xcertplay/DiPlayActivity;->toast(Ljava/lang/String;)V
    invoke-static {p1, p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->access$toast(Lcom/shilapi/xcertplay/DiPlayActivity;Ljava/lang/String;)V

    return-void

    .line 4429
    :cond_2
    # getter for: Lcom/shilapi/xcertplay/DiPlayActivity;->handler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->access$getHandler$p(Lcom/shilapi/xcertplay/DiPlayActivity;)Landroid/os/Handler;

    move-result-object p5

    new-instance v0, Lcom/shilapi/xcertplay/DiPlayActivity$resetWirelessGroup$1$1$$ExternalSyntheticLambda1;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v1, p4

    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/DiPlayActivity$resetWirelessGroup$1$1$$ExternalSyntheticLambda1;-><init>(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lcom/shilapi/xcertplay/DiPlayActivity;J)V

    const-wide/16 p0, 0xc8

    invoke-virtual {p5, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final onSuccess$waitUntilRemoved$lambda$1$lambda$0(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lcom/shilapi/xcertplay/DiPlayActivity;J)V
    .locals 0

    .line 4429
    invoke-static {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/DiPlayActivity$resetWirelessGroup$1$1;->onSuccess$waitUntilRemoved(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lcom/shilapi/xcertplay/DiPlayActivity;J)V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 2

    .line 4435
    iget-object p1, p0, Lcom/shilapi/xcertplay/DiPlayActivity$resetWirelessGroup$1$1;->$channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/shilapi/xcertplay/compat/Api19Kt;->closeCompat(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    iget-object p1, p0, Lcom/shilapi/xcertplay/DiPlayActivity$resetWirelessGroup$1$1;->this$0:Lcom/shilapi/xcertplay/DiPlayActivity;

    sget v0, Lcom/shilapi/xcertplay/host/R$string;->could_not_reset_wi_fi_direct_close_the_other_projection_ap:I

    invoke-virtual {p1, v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    # invokes: Lcom/shilapi/xcertplay/DiPlayActivity;->toast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->access$toast(Lcom/shilapi/xcertplay/DiPlayActivity;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 5

    .line 4421
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/16 v2, 0xfa0

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 4433
    iget-object v2, p0, Lcom/shilapi/xcertplay/DiPlayActivity$resetWirelessGroup$1$1;->$manager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/shilapi/xcertplay/DiPlayActivity$resetWirelessGroup$1$1;->$channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget-object v4, p0, Lcom/shilapi/xcertplay/DiPlayActivity$resetWirelessGroup$1$1;->this$0:Lcom/shilapi/xcertplay/DiPlayActivity;

    invoke-static {v2, v3, v4, v0, v1}, Lcom/shilapi/xcertplay/DiPlayActivity$resetWirelessGroup$1$1;->onSuccess$waitUntilRemoved(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lcom/shilapi/xcertplay/DiPlayActivity;J)V

    return-void
.end method
