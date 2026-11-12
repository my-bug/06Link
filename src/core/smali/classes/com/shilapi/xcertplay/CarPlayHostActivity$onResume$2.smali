.class final synthetic Lcom/shilapi/xcertplay/CarPlayHostActivity$onResume$2;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "CarPlayHostActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/CarPlayHostActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/shilapi/xcertplay/ClusterActivityState$Snapshot;",
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

    const-class v3, Lcom/shilapi/xcertplay/CarPlayHostActivity;

    const-string v5, "onClusterActivityState(Lcom/shilapi/xcertplay/ClusterActivityState$Snapshot;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-string v4, "onClusterActivityState"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 853
    check-cast p1, Lcom/shilapi/xcertplay/ClusterActivityState$Snapshot;

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/CarPlayHostActivity$onResume$2;->invoke(Lcom/shilapi/xcertplay/ClusterActivityState$Snapshot;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/shilapi/xcertplay/ClusterActivityState$Snapshot;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 853
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$onResume$2;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/shilapi/xcertplay/CarPlayHostActivity;

    # invokes: Lcom/shilapi/xcertplay/CarPlayHostActivity;->onClusterActivityState(Lcom/shilapi/xcertplay/ClusterActivityState$Snapshot;)V
    invoke-static {v0, p1}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$onClusterActivityState(Lcom/shilapi/xcertplay/CarPlayHostActivity;Lcom/shilapi/xcertplay/ClusterActivityState$Snapshot;)V

    return-void
.end method
