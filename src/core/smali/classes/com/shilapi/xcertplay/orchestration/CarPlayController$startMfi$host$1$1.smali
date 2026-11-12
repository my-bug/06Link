.class final synthetic Lcom/shilapi/xcertplay/orchestration/CarPlayController$startMfi$host$1$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "CarPlayController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/orchestration/CarPlayController;->startMfi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionResult;",
        "Lkotlin/Unit;",
        ">;"
    }
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
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    const-string v5, "onCh341Permission(Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionResult;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-string v4, "onCh341Permission"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 771
    check-cast p1, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionResult;

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$startMfi$host$1$1;->invoke(Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionResult;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionResult;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 771
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$startMfi$host$1$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    # invokes: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onCh341Permission(Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionResult;)V
    invoke-static {v0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$onCh341Permission(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionResult;)V

    return-void
.end method
