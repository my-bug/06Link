.class public final synthetic Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda108;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/media/VideoLoadGuard;

.field public final synthetic f$1:Lcom/shilapi/xcertplay/media/FrameRateWatch;

.field public final synthetic f$2:Lcom/shilapi/xcertplay/CarPlayHostActivity;

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/content/Context;

.field public final synthetic f$5:Lcom/shilapi/xcertplay/SessionLogFile;


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/media/VideoLoadGuard;Lcom/shilapi/xcertplay/media/FrameRateWatch;Lcom/shilapi/xcertplay/CarPlayHostActivity;ILandroid/content/Context;Lcom/shilapi/xcertplay/SessionLogFile;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda108;->f$0:Lcom/shilapi/xcertplay/media/VideoLoadGuard;

    iput-object p2, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda108;->f$1:Lcom/shilapi/xcertplay/media/FrameRateWatch;

    iput-object p3, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda108;->f$2:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    iput p4, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda108;->f$3:I

    iput-object p5, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda108;->f$4:Landroid/content/Context;

    iput-object p6, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda108;->f$5:Lcom/shilapi/xcertplay/SessionLogFile;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda108;->f$0:Lcom/shilapi/xcertplay/media/VideoLoadGuard;

    iget-object v1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda108;->f$1:Lcom/shilapi/xcertplay/media/FrameRateWatch;

    iget-object v2, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda108;->f$2:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    iget v3, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda108;->f$3:I

    iget-object v4, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda108;->f$4:Landroid/content/Context;

    iget-object v5, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda108;->f$5:Lcom/shilapi/xcertplay/SessionLogFile;

    move-object v6, p1

    check-cast v6, Lcom/shilapi/xcertplay/media/VideoWindow;

    invoke-static/range {v0 .. v6}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->$r8$lambda$hEIDtUfazsCsqmI7ZDve20Rf-p4(Lcom/shilapi/xcertplay/media/VideoLoadGuard;Lcom/shilapi/xcertplay/media/FrameRateWatch;Lcom/shilapi/xcertplay/CarPlayHostActivity;ILandroid/content/Context;Lcom/shilapi/xcertplay/SessionLogFile;Lcom/shilapi/xcertplay/media/VideoWindow;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
