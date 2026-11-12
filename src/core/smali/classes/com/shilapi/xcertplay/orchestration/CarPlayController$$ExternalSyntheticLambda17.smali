.class public final synthetic Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

.field public final synthetic f$1:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda17;->f$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    iput-object p2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda17;->f$1:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    iput-object p3, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda17;->f$2:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda17;->f$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda17;->f$1:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    iget-object v2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda17;->f$2:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->$r8$lambda$rs1AC3lI45MAGdU0jJuqdMXg2pc(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
