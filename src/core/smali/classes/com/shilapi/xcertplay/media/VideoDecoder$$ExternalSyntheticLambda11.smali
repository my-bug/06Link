.class public final synthetic Lcom/shilapi/xcertplay/media/VideoDecoder$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Landroid/media/MediaCodec;


# direct methods
.method public synthetic constructor <init>(Landroid/media/MediaCodec;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/media/VideoDecoder$$ExternalSyntheticLambda11;->f$0:Landroid/media/MediaCodec;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/VideoDecoder$$ExternalSyntheticLambda11;->f$0:Landroid/media/MediaCodec;

    invoke-static {v0}, Lcom/shilapi/xcertplay/media/VideoDecoder;->$r8$lambda$FZhDMJoLLhvUzNNNcnoeyq588Ic(Landroid/media/MediaCodec;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
