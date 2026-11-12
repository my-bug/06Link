.class final synthetic Lcom/shilapi/xcertplay/orchestration/CarPlayController$runStack$csm$1;
.super Lkotlin/jvm/internal/AdaptedFunctionReference;
.source "CarPlayController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/orchestration/CarPlayController;->runStack(Lcom/shilapi/xcertplay/transport/Iap2UsbSession;Lcom/shilapi/xcertplay/transport/NcmUsbBridge;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/AdaptedFunctionReference;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
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

    const-string v5, "debugLog(Ljava/lang/String;Z)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-string v4, "debugLog"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2355
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$runStack$csm$1;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 4

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2355
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$runStack$csm$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v1, v2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method
