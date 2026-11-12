.class public final synthetic Lcom/shilapi/xcertplay/media/AudioRenderer$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/shilapi/xcertplay/media/AudioRenderer;

.field public final synthetic f$3:Lcom/shilapi/xcertplay/media/AudioChannelSelection;

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:Lcom/shilapi/xcertplay/media/MediaAudioBuffer$Plan;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;ILcom/shilapi/xcertplay/media/AudioRenderer;Lcom/shilapi/xcertplay/media/AudioChannelSelection;IILcom/shilapi/xcertplay/media/MediaAudioBuffer$Plan;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer$$ExternalSyntheticLambda12;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput p2, p0, Lcom/shilapi/xcertplay/media/AudioRenderer$$ExternalSyntheticLambda12;->f$1:I

    iput-object p3, p0, Lcom/shilapi/xcertplay/media/AudioRenderer$$ExternalSyntheticLambda12;->f$2:Lcom/shilapi/xcertplay/media/AudioRenderer;

    iput-object p4, p0, Lcom/shilapi/xcertplay/media/AudioRenderer$$ExternalSyntheticLambda12;->f$3:Lcom/shilapi/xcertplay/media/AudioChannelSelection;

    iput p5, p0, Lcom/shilapi/xcertplay/media/AudioRenderer$$ExternalSyntheticLambda12;->f$4:I

    iput p6, p0, Lcom/shilapi/xcertplay/media/AudioRenderer$$ExternalSyntheticLambda12;->f$5:I

    iput-object p7, p0, Lcom/shilapi/xcertplay/media/AudioRenderer$$ExternalSyntheticLambda12;->f$6:Lcom/shilapi/xcertplay/media/MediaAudioBuffer$Plan;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AudioRenderer$$ExternalSyntheticLambda12;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget v1, p0, Lcom/shilapi/xcertplay/media/AudioRenderer$$ExternalSyntheticLambda12;->f$1:I

    iget-object v2, p0, Lcom/shilapi/xcertplay/media/AudioRenderer$$ExternalSyntheticLambda12;->f$2:Lcom/shilapi/xcertplay/media/AudioRenderer;

    iget-object v3, p0, Lcom/shilapi/xcertplay/media/AudioRenderer$$ExternalSyntheticLambda12;->f$3:Lcom/shilapi/xcertplay/media/AudioChannelSelection;

    iget v4, p0, Lcom/shilapi/xcertplay/media/AudioRenderer$$ExternalSyntheticLambda12;->f$4:I

    iget v5, p0, Lcom/shilapi/xcertplay/media/AudioRenderer$$ExternalSyntheticLambda12;->f$5:I

    iget-object v6, p0, Lcom/shilapi/xcertplay/media/AudioRenderer$$ExternalSyntheticLambda12;->f$6:Lcom/shilapi/xcertplay/media/MediaAudioBuffer$Plan;

    invoke-static/range {v0 .. v6}, Lcom/shilapi/xcertplay/media/AudioRenderer;->$r8$lambda$Csks6xKVraCHSOyZWg8XLD6y01k(Lkotlin/jvm/internal/Ref$ObjectRef;ILcom/shilapi/xcertplay/media/AudioRenderer;Lcom/shilapi/xcertplay/media/AudioChannelSelection;IILcom/shilapi/xcertplay/media/MediaAudioBuffer$Plan;)Landroid/media/AudioTrack;

    move-result-object v0

    return-object v0
.end method
