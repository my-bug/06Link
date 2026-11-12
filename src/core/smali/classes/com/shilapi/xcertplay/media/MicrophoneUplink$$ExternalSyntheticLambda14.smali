.class public final synthetic Lcom/shilapi/xcertplay/media/MicrophoneUplink$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/media/MicrophoneUplink;

.field public final synthetic f$1:Landroid/media/AudioRecord;

.field public final synthetic f$2:Ljava/net/DatagramSocket;


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/media/MicrophoneUplink;Landroid/media/AudioRecord;Ljava/net/DatagramSocket;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/media/MicrophoneUplink$$ExternalSyntheticLambda14;->f$0:Lcom/shilapi/xcertplay/media/MicrophoneUplink;

    iput-object p2, p0, Lcom/shilapi/xcertplay/media/MicrophoneUplink$$ExternalSyntheticLambda14;->f$1:Landroid/media/AudioRecord;

    iput-object p3, p0, Lcom/shilapi/xcertplay/media/MicrophoneUplink$$ExternalSyntheticLambda14;->f$2:Ljava/net/DatagramSocket;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/MicrophoneUplink$$ExternalSyntheticLambda14;->f$0:Lcom/shilapi/xcertplay/media/MicrophoneUplink;

    iget-object v1, p0, Lcom/shilapi/xcertplay/media/MicrophoneUplink$$ExternalSyntheticLambda14;->f$1:Landroid/media/AudioRecord;

    iget-object v2, p0, Lcom/shilapi/xcertplay/media/MicrophoneUplink$$ExternalSyntheticLambda14;->f$2:Ljava/net/DatagramSocket;

    invoke-static {v0, v1, v2}, Lcom/shilapi/xcertplay/media/MicrophoneUplink;->$r8$lambda$wcTS7skOn-A446rKwPkViCyYX_0(Lcom/shilapi/xcertplay/media/MicrophoneUplink;Landroid/media/AudioRecord;Ljava/net/DatagramSocket;)V

    return-void
.end method
