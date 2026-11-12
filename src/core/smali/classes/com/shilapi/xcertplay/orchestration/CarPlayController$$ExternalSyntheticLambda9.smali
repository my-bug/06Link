.class public final synthetic Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda9;->f$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda9;->f$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    check-cast p1, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$TransitionResult;

    invoke-static {v0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->$r8$lambda$7fN8HF7T5AerBD7jCnas7MkIQ1k(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/transport/IphoneUsbHost$TransitionResult;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
