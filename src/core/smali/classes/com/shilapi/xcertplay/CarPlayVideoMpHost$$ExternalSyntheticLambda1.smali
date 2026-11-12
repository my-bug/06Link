.class public final synthetic Lcom/shilapi/xcertplay/CarPlayVideoMpHost$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/CarPlayVideoMpHost$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoMpHost$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p1, p2, p3}, Lcom/shilapi/xcertplay/CarPlayVideoMpHost;->$r8$lambda$9oBBwoeJ-Ny6EeG9P5n5bKogd8c(Lkotlin/jvm/functions/Function1;Landroid/media/MediaPlayer;II)Z

    move-result p1

    return p1
.end method
