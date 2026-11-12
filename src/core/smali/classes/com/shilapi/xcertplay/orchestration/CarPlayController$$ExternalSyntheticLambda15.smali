.class public final synthetic Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/io/File;

.field public final synthetic f$1:Lcom/shilapi/xcertplay/orchestration/CarPlayController;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Lcom/shilapi/xcertplay/orchestration/CarPlayController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda15;->f$0:Ljava/io/File;

    iput-object p2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda15;->f$1:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda15;->f$0:Ljava/io/File;

    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda15;->f$1:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    invoke-static {v0, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->$r8$lambda$_ZWXxZI9H1X2cM5GWdpKpL43dc4(Ljava/io/File;Lcom/shilapi/xcertplay/orchestration/CarPlayController;)V

    return-void
.end method
