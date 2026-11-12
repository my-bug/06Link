.class public final synthetic Lcom/shilapi/xcertplay/airplay/AirPlaySession$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/airplay/AirPlaySession;

.field public final synthetic f$1:Ljava/net/DatagramSocket;


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/net/DatagramSocket;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession$$ExternalSyntheticLambda11;->f$0:Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    iput-object p2, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession$$ExternalSyntheticLambda11;->f$1:Ljava/net/DatagramSocket;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession$$ExternalSyntheticLambda11;->f$0:Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession$$ExternalSyntheticLambda11;->f$1:Ljava/net/DatagramSocket;

    invoke-static {v0, v1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->$r8$lambda$YmFvAWPPu2MfaMFbxPevLEiGEUw(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/net/DatagramSocket;)V

    return-void
.end method
