.class public final synthetic Lcom/shilapi/xcertplay/CarPlayVideo$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;

.field public final synthetic f$1:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Lcom/shilapi/xcertplay/orchestration/CarPlayController;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/CarPlayVideo$$ExternalSyntheticLambda2;->f$0:Ljava/util/Map;

    iput-object p2, p0, Lcom/shilapi/xcertplay/CarPlayVideo$$ExternalSyntheticLambda2;->f$1:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    iput-wide p3, p0, Lcom/shilapi/xcertplay/CarPlayVideo$$ExternalSyntheticLambda2;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideo$$ExternalSyntheticLambda2;->f$0:Ljava/util/Map;

    iget-object v1, p0, Lcom/shilapi/xcertplay/CarPlayVideo$$ExternalSyntheticLambda2;->f$1:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    iget-wide v2, p0, Lcom/shilapi/xcertplay/CarPlayVideo$$ExternalSyntheticLambda2;->f$2:J

    invoke-static {v0, v1, v2, v3}, Lcom/shilapi/xcertplay/CarPlayVideo;->$r8$lambda$C5gAnc0MGZwQwZKnHiZcm-5IAw8(Ljava/util/Map;Lcom/shilapi/xcertplay/orchestration/CarPlayController;J)V

    return-void
.end method
