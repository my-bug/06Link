.class public final synthetic Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda54;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/CarPlayHostActivity;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda54;->f$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    iput p2, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda54;->f$1:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda54;->f$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    iget v1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda54;->f$1:I

    check-cast p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;

    invoke-static {v0, v1, p1}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->$r8$lambda$9tjBVXdjtvhlVjaeEXb1ejyUljg(Lcom/shilapi/xcertplay/CarPlayHostActivity;ILcom/shilapi/xcertplay/orchestration/CarPlayStatus;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
