.class public final synthetic Lcom/shilapi/xcertplay/airplay/AudioStream$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/airplay/AudioStream;

.field public final synthetic f$1:Ljava/net/DatagramSocket;

.field public final synthetic f$2:Lcom/shilapi/xcertplay/airplay/AudioStream$Listener;


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/airplay/AudioStream;Ljava/net/DatagramSocket;Lcom/shilapi/xcertplay/airplay/AudioStream$Listener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/AudioStream$$ExternalSyntheticLambda4;->f$0:Lcom/shilapi/xcertplay/airplay/AudioStream;

    iput-object p2, p0, Lcom/shilapi/xcertplay/airplay/AudioStream$$ExternalSyntheticLambda4;->f$1:Ljava/net/DatagramSocket;

    iput-object p3, p0, Lcom/shilapi/xcertplay/airplay/AudioStream$$ExternalSyntheticLambda4;->f$2:Lcom/shilapi/xcertplay/airplay/AudioStream$Listener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AudioStream$$ExternalSyntheticLambda4;->f$0:Lcom/shilapi/xcertplay/airplay/AudioStream;

    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/AudioStream$$ExternalSyntheticLambda4;->f$1:Ljava/net/DatagramSocket;

    iget-object v2, p0, Lcom/shilapi/xcertplay/airplay/AudioStream$$ExternalSyntheticLambda4;->f$2:Lcom/shilapi/xcertplay/airplay/AudioStream$Listener;

    invoke-static {v0, v1, v2}, Lcom/shilapi/xcertplay/airplay/AudioStream;->$r8$lambda$qNbIdgk4XE_iW8JePTiFHaacRGk(Lcom/shilapi/xcertplay/airplay/AudioStream;Ljava/net/DatagramSocket;Lcom/shilapi/xcertplay/airplay/AudioStream$Listener;)V

    return-void
.end method
