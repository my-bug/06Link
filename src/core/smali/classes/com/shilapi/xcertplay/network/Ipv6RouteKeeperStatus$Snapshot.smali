.class public final Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;
.super Ljava/lang/Object;
.source "Ipv6RouteKeeperStatus.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Snapshot"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0011\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u000b\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0015\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\n\n\u0002\u0010\u0016\u001a\u0004\u0008\u0014\u0010\u0015R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0011R\u0011\u0010\u000b\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u001a\u001a\u00020\u001b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;",
        "",
        "phase",
        "Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Phase;",
        "interfaceName",
        "",
        "lastGoodVia",
        "Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;",
        "lastRepairElapsed",
        "",
        "lastFailure",
        "updatedElapsed",
        "<init>",
        "(Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Phase;Ljava/lang/String;Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;Ljava/lang/Long;Ljava/lang/String;J)V",
        "getPhase",
        "()Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Phase;",
        "getInterfaceName",
        "()Ljava/lang/String;",
        "getLastGoodVia",
        "()Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;",
        "getLastRepairElapsed",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getLastFailure",
        "getUpdatedElapsed",
        "()J",
        "running",
        "",
        "getRunning",
        "()Z",
        "shared_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final interfaceName:Ljava/lang/String;

.field private final lastFailure:Ljava/lang/String;

.field private final lastGoodVia:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

.field private final lastRepairElapsed:Ljava/lang/Long;

.field private final phase:Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Phase;

.field private final updatedElapsed:J


# direct methods
.method public constructor <init>(Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Phase;Ljava/lang/String;Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;Ljava/lang/Long;Ljava/lang/String;J)V
    .locals 1

    const-string v0, "phase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;->phase:Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Phase;

    .line 20
    iput-object p2, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;->interfaceName:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;->lastGoodVia:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    .line 24
    iput-object p4, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;->lastRepairElapsed:Ljava/lang/Long;

    .line 26
    iput-object p5, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;->lastFailure:Ljava/lang/String;

    .line 27
    iput-wide p6, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;->updatedElapsed:J

    return-void
.end method


# virtual methods
.method public final getInterfaceName()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;->interfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastFailure()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;->lastFailure:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastGoodVia()Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;->lastGoodVia:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    return-object v0
.end method

.method public final getLastRepairElapsed()Ljava/lang/Long;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;->lastRepairElapsed:Ljava/lang/Long;

    return-object v0
.end method

.method public final getPhase()Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Phase;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;->phase:Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Phase;

    return-object v0
.end method

.method public final getRunning()Z
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;->phase:Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Phase;

    sget-object v1, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Phase;->ARMING:Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Phase;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;->phase:Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Phase;

    sget-object v1, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Phase;->HOLDING:Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Phase;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;->phase:Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Phase;

    sget-object v1, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Phase;->REPAIRING:Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Phase;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final getUpdatedElapsed()J
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;->updatedElapsed:J

    return-wide v0
.end method
