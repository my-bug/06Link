.class public final synthetic Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;

.field public final synthetic f$1:Lcom/shilapi/xcertplay/ClusterActivityState$Snapshot;


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;Lcom/shilapi/xcertplay/ClusterActivityState$Snapshot;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$$ExternalSyntheticLambda11;->f$0:Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;

    iput-object p2, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$$ExternalSyntheticLambda11;->f$1:Lcom/shilapi/xcertplay/ClusterActivityState$Snapshot;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$$ExternalSyntheticLambda11;->f$0:Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;

    iget-object v1, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$$ExternalSyntheticLambda11;->f$1:Lcom/shilapi/xcertplay/ClusterActivityState$Snapshot;

    invoke-static {v0, v1}, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;->$r8$lambda$GibJcpRFVJZwnNrWtZNfX48GULU(Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;Lcom/shilapi/xcertplay/ClusterActivityState$Snapshot;)V

    return-void
.end method
