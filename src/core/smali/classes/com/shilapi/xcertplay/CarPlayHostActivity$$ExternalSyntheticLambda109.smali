.class public final synthetic Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda109;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

.field public final synthetic f$1:Lcom/shilapi/xcertplay/airplay/AirPlaySession;


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/CarPlayHostActivity;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda109;->f$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    iput-object p2, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda109;->f$1:Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda109;->f$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    iget-object v1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda109;->f$1:Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    invoke-static {v0, v1}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->$r8$lambda$ucSvc5mIwnlY3B6wxnD1948b4rE(Lcom/shilapi/xcertplay/CarPlayHostActivity;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    return-void
.end method
