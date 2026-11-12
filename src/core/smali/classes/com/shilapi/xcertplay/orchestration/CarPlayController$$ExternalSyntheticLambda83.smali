.class public final synthetic Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda83;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(ZI)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda83;->f$0:Z

    iput p2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda83;->f$1:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda83;->f$0:Z

    iget v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda83;->f$1:I

    check-cast p1, Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    invoke-static {v0, v1, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->$r8$lambda$5ZC6odzNEAeG5HcrQZ2TG7p4z0M(ZILcom/shilapi/xcertplay/airplay/AirPlaySession;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
