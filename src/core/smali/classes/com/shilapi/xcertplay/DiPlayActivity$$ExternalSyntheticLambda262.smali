.class public final synthetic Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda262;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/AudioChannelPreview;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/AudioChannelPreview;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda262;->f$0:Lcom/shilapi/xcertplay/AudioChannelPreview;

    iput-boolean p2, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda262;->f$1:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda262;->f$0:Lcom/shilapi/xcertplay/AudioChannelPreview;

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda262;->f$1:Z

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->$r8$lambda$vSwla0FJf4vYhVE6z22lpnk0Imo(Lcom/shilapi/xcertplay/AudioChannelPreview;ZI)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
