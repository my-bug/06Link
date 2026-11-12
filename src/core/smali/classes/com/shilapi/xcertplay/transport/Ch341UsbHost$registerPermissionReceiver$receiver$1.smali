.class public final Lcom/shilapi/xcertplay/transport/Ch341UsbHost$registerPermissionReceiver$receiver$1;
.super Landroid/content/BroadcastReceiver;
.source "Ch341UsbHost.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/transport/Ch341UsbHost;->registerPermissionReceiver(Lkotlin/jvm/functions/Function1;)Ljava/io/Closeable;
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
        "com/shilapi/xcertplay/transport/Ch341UsbHost$registerPermissionReceiver$receiver$1",
        "Landroid/content/BroadcastReceiver;",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
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
.field final synthetic $onResult:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionResult;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/shilapi/xcertplay/transport/Ch341UsbHost;


# direct methods
.method constructor <init>(Lcom/shilapi/xcertplay/transport/Ch341UsbHost;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/transport/Ch341UsbHost;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionResult;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$registerPermissionReceiver$receiver$1;->this$0:Lcom/shilapi/xcertplay/transport/Ch341UsbHost;

    iput-object p2, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$registerPermissionReceiver$receiver$1;->$onResult:Lkotlin/jvm/functions/Function1;

    .line 74
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$registerPermissionReceiver$receiver$1;->this$0:Lcom/shilapi/xcertplay/transport/Ch341UsbHost;

    invoke-virtual {p1, p2}, Lcom/shilapi/xcertplay/transport/Ch341UsbHost;->parsePermissionResult(Landroid/content/Intent;)Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionResult;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$registerPermissionReceiver$receiver$1;->$onResult:Lkotlin/jvm/functions/Function1;

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
