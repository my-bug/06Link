.class public final synthetic Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda96;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/airplay/AirPlaySession;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda96;->f$0:Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    iput-boolean p2, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda96;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda96;->f$0:Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda96;->f$1:Z

    invoke-static {v0, v1}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->$r8$lambda$39QUech6cpjgFnypGeDFF9jwyfk(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Z)V

    return-void
.end method
