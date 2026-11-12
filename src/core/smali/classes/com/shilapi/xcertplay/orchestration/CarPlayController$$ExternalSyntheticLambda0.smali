.class public final synthetic Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$1:Lcom/shilapi/xcertplay/airplay/AirPlaySession;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda0;->f$1:Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda0;->f$1:Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    invoke-static {v0, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->$r8$lambda$lA_QF5nn4tFTLgAuMI-TXdC3-_Q(Lkotlin/jvm/functions/Function1;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    return-void
.end method
