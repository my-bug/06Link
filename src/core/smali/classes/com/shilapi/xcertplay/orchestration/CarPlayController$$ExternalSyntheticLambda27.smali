.class public final synthetic Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda27;->f$0:Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda27;->f$0:Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;

    check-cast p1, Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    invoke-static {v0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->$r8$lambda$M34gzUUCK89jk8E3rrUXcNGXwz4(Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
