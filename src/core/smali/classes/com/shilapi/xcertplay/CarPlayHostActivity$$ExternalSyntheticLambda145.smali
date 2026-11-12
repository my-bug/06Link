.class public final synthetic Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda145;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

.field public final synthetic f$1:Lcom/shilapi/xcertplay/media/AndroidMediaSink;

.field public final synthetic f$2:Lcom/shilapi/xcertplay/CarPlayHostActivity;

.field public final synthetic f$3:I

.field public final synthetic f$4:Lcom/shilapi/xcertplay/CarPlayHostActivity$DisplaySize;


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/media/AndroidMediaSink;Lcom/shilapi/xcertplay/CarPlayHostActivity;ILcom/shilapi/xcertplay/CarPlayHostActivity$DisplaySize;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda145;->f$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    iput-object p2, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda145;->f$1:Lcom/shilapi/xcertplay/media/AndroidMediaSink;

    iput-object p3, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda145;->f$2:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    iput p4, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda145;->f$3:I

    iput-object p5, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda145;->f$4:Lcom/shilapi/xcertplay/CarPlayHostActivity$DisplaySize;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda145;->f$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    iget-object v1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda145;->f$1:Lcom/shilapi/xcertplay/media/AndroidMediaSink;

    iget-object v2, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda145;->f$2:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    iget v3, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda145;->f$3:I

    iget-object v4, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda145;->f$4:Lcom/shilapi/xcertplay/CarPlayHostActivity$DisplaySize;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->$r8$lambda$8zJbIxUhx-G3ET6yP1Y3rJZh5AI(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/media/AndroidMediaSink;Lcom/shilapi/xcertplay/CarPlayHostActivity;ILcom/shilapi/xcertplay/CarPlayHostActivity$DisplaySize;)V

    return-void
.end method
