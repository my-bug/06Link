.class public final synthetic Lcom/shilapi/xcertplay/CarPlayHostActivity$createSessionListener$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lcom/shilapi/xcertplay/CarPlayHostActivity;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lcom/shilapi/xcertplay/airplay/AirPlaySession;


# direct methods
.method public synthetic constructor <init>(ILcom/shilapi/xcertplay/CarPlayHostActivity;ZLcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$createSessionListener$1$$ExternalSyntheticLambda2;->f$0:I

    iput-object p2, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$createSessionListener$1$$ExternalSyntheticLambda2;->f$1:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    iput-boolean p3, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$createSessionListener$1$$ExternalSyntheticLambda2;->f$2:Z

    iput-object p4, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$createSessionListener$1$$ExternalSyntheticLambda2;->f$3:Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$createSessionListener$1$$ExternalSyntheticLambda2;->f$0:I

    iget-object v1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$createSessionListener$1$$ExternalSyntheticLambda2;->f$1:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    iget-boolean v2, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$createSessionListener$1$$ExternalSyntheticLambda2;->f$2:Z

    iget-object v3, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$createSessionListener$1$$ExternalSyntheticLambda2;->f$3:Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    invoke-static {v0, v1, v2, v3}, Lcom/shilapi/xcertplay/CarPlayHostActivity$createSessionListener$1;->$r8$lambda$YIvQFQDzvNA1KEULIXbUPRCRF70(ILcom/shilapi/xcertplay/CarPlayHostActivity;ZLcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    return-void
.end method
