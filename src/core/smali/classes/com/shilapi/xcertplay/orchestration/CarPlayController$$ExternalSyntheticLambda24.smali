.class public final synthetic Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

.field public final synthetic f$1:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda24;->f$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    iput-object p2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda24;->f$1:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda24;->f$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda24;->f$1:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;

    invoke-static {v0, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->$r8$lambda$fZ9PwU-_141pWIFflGHZmXi3OhA(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)V

    return-void
.end method
