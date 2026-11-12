.class public final synthetic Lcom/shilapi/xcertplay/airplay/AudioStream$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/airplay/AudioStream;

.field public final synthetic f$1:Ljava/net/DatagramSocket;


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/airplay/AudioStream;Ljava/net/DatagramSocket;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/AudioStream$$ExternalSyntheticLambda5;->f$0:Lcom/shilapi/xcertplay/airplay/AudioStream;

    iput-object p2, p0, Lcom/shilapi/xcertplay/airplay/AudioStream$$ExternalSyntheticLambda5;->f$1:Ljava/net/DatagramSocket;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AudioStream$$ExternalSyntheticLambda5;->f$0:Lcom/shilapi/xcertplay/airplay/AudioStream;

    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/AudioStream$$ExternalSyntheticLambda5;->f$1:Ljava/net/DatagramSocket;

    invoke-static {v0, v1}, Lcom/shilapi/xcertplay/airplay/AudioStream;->$r8$lambda$yLwYSmpoginJVSbP1PqtARcwqCo(Lcom/shilapi/xcertplay/airplay/AudioStream;Ljava/net/DatagramSocket;)V

    return-void
.end method
