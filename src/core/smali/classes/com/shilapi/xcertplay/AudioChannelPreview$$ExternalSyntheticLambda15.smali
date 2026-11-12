.class public final synthetic Lcom/shilapi/xcertplay/AudioChannelPreview$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/AudioChannelPreview;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/AudioChannelPreview;IIZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/AudioChannelPreview$$ExternalSyntheticLambda15;->f$0:Lcom/shilapi/xcertplay/AudioChannelPreview;

    iput p2, p0, Lcom/shilapi/xcertplay/AudioChannelPreview$$ExternalSyntheticLambda15;->f$1:I

    iput p3, p0, Lcom/shilapi/xcertplay/AudioChannelPreview$$ExternalSyntheticLambda15;->f$2:I

    iput-boolean p4, p0, Lcom/shilapi/xcertplay/AudioChannelPreview$$ExternalSyntheticLambda15;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/AudioChannelPreview$$ExternalSyntheticLambda15;->f$0:Lcom/shilapi/xcertplay/AudioChannelPreview;

    iget v1, p0, Lcom/shilapi/xcertplay/AudioChannelPreview$$ExternalSyntheticLambda15;->f$1:I

    iget v2, p0, Lcom/shilapi/xcertplay/AudioChannelPreview$$ExternalSyntheticLambda15;->f$2:I

    iget-boolean v3, p0, Lcom/shilapi/xcertplay/AudioChannelPreview$$ExternalSyntheticLambda15;->f$3:Z

    invoke-static {v0, v1, v2, v3}, Lcom/shilapi/xcertplay/AudioChannelPreview;->$r8$lambda$y9v0szFLfA3R88L7QYXojvnFVII(Lcom/shilapi/xcertplay/AudioChannelPreview;IIZ)V

    return-void
.end method
