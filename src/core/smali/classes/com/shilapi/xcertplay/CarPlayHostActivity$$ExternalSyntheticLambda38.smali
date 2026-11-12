.class public final synthetic Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda38;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/shilapi/xcertplay/media/VideoLoadGuard$Adaptation;


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/CarPlayHostActivity;ILcom/shilapi/xcertplay/media/VideoLoadGuard$Adaptation;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda38;->f$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    iput p2, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda38;->f$1:I

    iput-object p3, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda38;->f$2:Lcom/shilapi/xcertplay/media/VideoLoadGuard$Adaptation;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda38;->f$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    iget v1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda38;->f$1:I

    iget-object v2, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda38;->f$2:Lcom/shilapi/xcertplay/media/VideoLoadGuard$Adaptation;

    invoke-static {v0, v1, v2}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->$r8$lambda$HM9ZPJyLNIGoP7g-990OHfToiS0(Lcom/shilapi/xcertplay/CarPlayHostActivity;ILcom/shilapi/xcertplay/media/VideoLoadGuard$Adaptation;)V

    return-void
.end method
