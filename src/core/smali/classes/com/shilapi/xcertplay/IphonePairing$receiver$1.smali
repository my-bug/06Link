.class public final Lcom/shilapi/xcertplay/IphonePairing$receiver$1;
.super Landroid/content/BroadcastReceiver;
.source "IphonePairing.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/IphonePairing;-><init>(Landroid/app/Activity;Landroid/bluetooth/BluetoothAdapter;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/shilapi/xcertplay/IphonePairing$receiver$1",
        "Landroid/content/BroadcastReceiver;",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
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
.field final synthetic this$0:Lcom/shilapi/xcertplay/IphonePairing;


# direct methods
.method constructor <init>(Lcom/shilapi/xcertplay/IphonePairing;)V
    .locals 0

    iput-object p1, p0, Lcom/shilapi/xcertplay/IphonePairing$receiver$1;->this$0:Lcom/shilapi/xcertplay/IphonePairing;

    .line 47
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x6a269925

    if-eq v0, v1, :cond_a

    const v1, 0x459717c3

    const-string v2, "android.bluetooth.device.extra.DEVICE"

    if-eq v0, v1, :cond_7

    const v1, 0x7e2cc189

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_1

    .line 60
    :cond_1
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    if-nez p1, :cond_2

    goto/16 :goto_1

    .line 61
    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/shilapi/xcertplay/IphonePairing$receiver$1;->this$0:Lcom/shilapi/xcertplay/IphonePairing;

    # getter for: Lcom/shilapi/xcertplay/IphonePairing;->pairingAddress:Ljava/lang/String;
    invoke-static {v1}, Lcom/shilapi/xcertplay/IphonePairing;->access$getPairingAddress$p(Lcom/shilapi/xcertplay/IphonePairing;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_1

    .line 62
    :cond_3
    const-string v0, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v1, -0x80000000

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/16 v0, 0xa

    if-eq p2, v0, :cond_5

    const/16 v0, 0xc

    if-eq p2, v0, :cond_4

    goto/16 :goto_1

    .line 63
    :cond_4
    iget-object p2, p0, Lcom/shilapi/xcertplay/IphonePairing$receiver$1;->this$0:Lcom/shilapi/xcertplay/IphonePairing;

    # invokes: Lcom/shilapi/xcertplay/IphonePairing;->complete(Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {p2, p1}, Lcom/shilapi/xcertplay/IphonePairing;->access$complete(Lcom/shilapi/xcertplay/IphonePairing;Landroid/bluetooth/BluetoothDevice;)V

    return-void

    .line 65
    :cond_5
    iget-object p1, p0, Lcom/shilapi/xcertplay/IphonePairing$receiver$1;->this$0:Lcom/shilapi/xcertplay/IphonePairing;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/shilapi/xcertplay/IphonePairing;->access$setPairingAddress$p(Lcom/shilapi/xcertplay/IphonePairing;Ljava/lang/String;)V

    .line 66
    iget-object p1, p0, Lcom/shilapi/xcertplay/IphonePairing$receiver$1;->this$0:Lcom/shilapi/xcertplay/IphonePairing;

    # getter for: Lcom/shilapi/xcertplay/IphonePairing;->progressDialog:Landroid/app/AlertDialog;
    invoke-static {p1}, Lcom/shilapi/xcertplay/IphonePairing;->access$getProgressDialog$p(Lcom/shilapi/xcertplay/IphonePairing;)Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 67
    :cond_6
    iget-object p1, p0, Lcom/shilapi/xcertplay/IphonePairing$receiver$1;->this$0:Lcom/shilapi/xcertplay/IphonePairing;

    # getter for: Lcom/shilapi/xcertplay/IphonePairing;->activity:Landroid/app/Activity;
    invoke-static {p1}, Lcom/shilapi/xcertplay/IphonePairing;->access$getActivity$p(Lcom/shilapi/xcertplay/IphonePairing;)Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    sget p2, Lcom/shilapi/xcertplay/host/R$string;->pair_failed:I

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 68
    iget-object p1, p0, Lcom/shilapi/xcertplay/IphonePairing$receiver$1;->this$0:Lcom/shilapi/xcertplay/IphonePairing;

    # invokes: Lcom/shilapi/xcertplay/IphonePairing;->showList()V
    invoke-static {p1}, Lcom/shilapi/xcertplay/IphonePairing;->access$showList(Lcom/shilapi/xcertplay/IphonePairing;)V

    return-void

    .line 49
    :cond_7
    const-string v0, "android.bluetooth.device.action.FOUND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_1

    .line 51
    :cond_8
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    if-nez p1, :cond_9

    goto :goto_1

    .line 52
    :cond_9
    sget-object p2, Lcom/shilapi/xcertplay/IphonePairing;->Companion:Lcom/shilapi/xcertplay/IphonePairing$Companion;

    invoke-virtual {p2, p1}, Lcom/shilapi/xcertplay/IphonePairing$Companion;->isCandidate(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p2

    if-eqz p2, :cond_d

    iget-object p2, p0, Lcom/shilapi/xcertplay/IphonePairing$receiver$1;->this$0:Lcom/shilapi/xcertplay/IphonePairing;

    # getter for: Lcom/shilapi/xcertplay/IphonePairing;->found:Ljava/util/LinkedHashMap;
    invoke-static {p2}, Lcom/shilapi/xcertplay/IphonePairing;->access$getFound$p(Lcom/shilapi/xcertplay/IphonePairing;)Ljava/util/LinkedHashMap;

    move-result-object p2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/shilapi/xcertplay/IphonePairing$receiver$1;->this$0:Lcom/shilapi/xcertplay/IphonePairing;

    # invokes: Lcom/shilapi/xcertplay/IphonePairing;->refreshList()V
    invoke-static {p1}, Lcom/shilapi/xcertplay/IphonePairing;->access$refreshList(Lcom/shilapi/xcertplay/IphonePairing;)V

    return-void

    .line 49
    :cond_a
    const-string p2, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_1

    .line 54
    :cond_b
    iget-object p1, p0, Lcom/shilapi/xcertplay/IphonePairing$receiver$1;->this$0:Lcom/shilapi/xcertplay/IphonePairing;

    # getter for: Lcom/shilapi/xcertplay/IphonePairing;->finished:Z
    invoke-static {p1}, Lcom/shilapi/xcertplay/IphonePairing;->access$getFinished$p(Lcom/shilapi/xcertplay/IphonePairing;)Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/shilapi/xcertplay/IphonePairing$receiver$1;->this$0:Lcom/shilapi/xcertplay/IphonePairing;

    # getter for: Lcom/shilapi/xcertplay/IphonePairing;->pairingAddress:Ljava/lang/String;
    invoke-static {p1}, Lcom/shilapi/xcertplay/IphonePairing;->access$getPairingAddress$p(Lcom/shilapi/xcertplay/IphonePairing;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_d

    .line 55
    iget-object p1, p0, Lcom/shilapi/xcertplay/IphonePairing$receiver$1;->this$0:Lcom/shilapi/xcertplay/IphonePairing;

    # getter for: Lcom/shilapi/xcertplay/IphonePairing;->hint:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/shilapi/xcertplay/IphonePairing;->access$getHint$p(Lcom/shilapi/xcertplay/IphonePairing;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_d

    iget-object p2, p0, Lcom/shilapi/xcertplay/IphonePairing$receiver$1;->this$0:Lcom/shilapi/xcertplay/IphonePairing;

    # getter for: Lcom/shilapi/xcertplay/IphonePairing;->activity:Landroid/app/Activity;
    invoke-static {p2}, Lcom/shilapi/xcertplay/IphonePairing;->access$getActivity$p(Lcom/shilapi/xcertplay/IphonePairing;)Landroid/app/Activity;

    move-result-object p2

    .line 56
    iget-object v0, p0, Lcom/shilapi/xcertplay/IphonePairing$receiver$1;->this$0:Lcom/shilapi/xcertplay/IphonePairing;

    # getter for: Lcom/shilapi/xcertplay/IphonePairing;->shown:Ljava/util/List;
    invoke-static {v0}, Lcom/shilapi/xcertplay/IphonePairing;->access$getShown$p(Lcom/shilapi/xcertplay/IphonePairing;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    sget v0, Lcom/shilapi/xcertplay/host/R$string;->pair_none_found:I

    goto :goto_0

    :cond_c
    sget v0, Lcom/shilapi/xcertplay/host/R$string;->pair_searching_hint:I

    .line 55
    :goto_0
    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    :goto_1
    return-void
.end method
