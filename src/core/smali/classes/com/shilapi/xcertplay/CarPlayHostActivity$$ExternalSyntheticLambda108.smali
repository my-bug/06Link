.class public final synthetic Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda108;
.super Ljava/lang/Object;
# interfaces
.implements Lkotlin/jvm/functions/Function1;
# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/media/VideoLoadGuard;
.field public final synthetic f$1:Lcom/shilapi/xcertplay/CarPlayHostActivity;
.field public final synthetic f$2:I
.field public final synthetic f$3:Landroid/content/Context;
# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/media/VideoLoadGuard;Lcom/shilapi/xcertplay/CarPlayHostActivity;ILandroid/content/Context;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda108;->f$0:Lcom/shilapi/xcertplay/media/VideoLoadGuard;
    iput-object p2, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda108;->f$1:Lcom/shilapi/xcertplay/CarPlayHostActivity;
    iput p3, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda108;->f$2:I
    iput-object p4, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda108;->f$3:Landroid/content/Context;
    return-void
.end method
# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda108;->f$0:Lcom/shilapi/xcertplay/media/VideoLoadGuard;
    iget-object v1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda108;->f$1:Lcom/shilapi/xcertplay/CarPlayHostActivity;
    iget v2, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda108;->f$2:I
    iget-object v3, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda108;->f$3:Landroid/content/Context;
    check-cast p1, Lcom/shilapi/xcertplay/media/VideoWindow;
    invoke-static {v0, v1, v2, v3, p1}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->$r8$lambda$hEIDtUfazsCsqmI7ZDve20Rf-p4(Lcom/shilapi/xcertplay/media/VideoLoadGuard;Lcom/shilapi/xcertplay/CarPlayHostActivity;ILandroid/content/Context;Lcom/shilapi/xcertplay/media/VideoWindow;)Lkotlin/Unit;
    move-result-object v0
    return-object v0
.end method
