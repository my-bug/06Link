.class public final synthetic Lcom/shilapi/xcertplay/media/AudioRenderer$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lcom/shilapi/xcertplay/media/AudioRenderer;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Lcom/shilapi/xcertplay/media/MediaAudioBuffer$Plan;


# direct methods
.method public synthetic constructor <init>(ILcom/shilapi/xcertplay/media/AudioRenderer;IILcom/shilapi/xcertplay/media/MediaAudioBuffer$Plan;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer$$ExternalSyntheticLambda16;->f$0:I

    iput-object p2, p0, Lcom/shilapi/xcertplay/media/AudioRenderer$$ExternalSyntheticLambda16;->f$1:Lcom/shilapi/xcertplay/media/AudioRenderer;

    iput p3, p0, Lcom/shilapi/xcertplay/media/AudioRenderer$$ExternalSyntheticLambda16;->f$2:I

    iput p4, p0, Lcom/shilapi/xcertplay/media/AudioRenderer$$ExternalSyntheticLambda16;->f$3:I

    iput-object p5, p0, Lcom/shilapi/xcertplay/media/AudioRenderer$$ExternalSyntheticLambda16;->f$4:Lcom/shilapi/xcertplay/media/MediaAudioBuffer$Plan;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 0
    iget v0, p0, Lcom/shilapi/xcertplay/media/AudioRenderer$$ExternalSyntheticLambda16;->f$0:I

    iget-object v1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer$$ExternalSyntheticLambda16;->f$1:Lcom/shilapi/xcertplay/media/AudioRenderer;

    iget v2, p0, Lcom/shilapi/xcertplay/media/AudioRenderer$$ExternalSyntheticLambda16;->f$2:I

    iget v3, p0, Lcom/shilapi/xcertplay/media/AudioRenderer$$ExternalSyntheticLambda16;->f$3:I

    iget-object v4, p0, Lcom/shilapi/xcertplay/media/AudioRenderer$$ExternalSyntheticLambda16;->f$4:Lcom/shilapi/xcertplay/media/MediaAudioBuffer$Plan;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/shilapi/xcertplay/media/AudioRenderer;->$r8$lambda$RAzYbPRwvwNqBtnvbb1MYFc4kz8(ILcom/shilapi/xcertplay/media/AudioRenderer;IILcom/shilapi/xcertplay/media/MediaAudioBuffer$Plan;)Landroid/media/AudioTrack;

    move-result-object v0

    return-object v0
.end method
