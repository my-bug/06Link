.class public final synthetic Lcom/shilapi/xcertplay/CarPlayHostActivity$createSessionListener$1$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

.field public final synthetic f$1:Lcom/shilapi/xcertplay/airplay/AirPlaySession;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/CarPlayHostActivity;Lcom/shilapi/xcertplay/airplay/AirPlaySession;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$createSessionListener$1$$ExternalSyntheticLambda4;->f$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    iput-object p2, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$createSessionListener$1$$ExternalSyntheticLambda4;->f$1:Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    iput p3, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$createSessionListener$1$$ExternalSyntheticLambda4;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$createSessionListener$1$$ExternalSyntheticLambda4;->f$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    iget-object v1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$createSessionListener$1$$ExternalSyntheticLambda4;->f$1:Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    iget v2, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$createSessionListener$1$$ExternalSyntheticLambda4;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/shilapi/xcertplay/CarPlayHostActivity$createSessionListener$1;->$r8$lambda$iKUD0t86dLWBqpaHIkTuI0u6k5E(Lcom/shilapi/xcertplay/CarPlayHostActivity;Lcom/shilapi/xcertplay/airplay/AirPlaySession;I)V

    return-void
.end method
