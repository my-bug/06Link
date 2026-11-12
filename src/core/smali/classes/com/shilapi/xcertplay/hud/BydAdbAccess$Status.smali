.class public final Lcom/shilapi/xcertplay/hud/BydAdbAccess$Status;
.super Ljava/lang/Object;
.source "BydAdbAccess.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/hud/BydAdbAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Status"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000f\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0015\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\n\n\u0002\u0010\u0016\u001a\u0004\u0008\u0014\u0010\u0015R\u0015\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\n\n\u0002\u0010\u0019\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/hud/BydAdbAccess$Status;",
        "",
        "state",
        "Lcom/shilapi/xcertplay/hud/BydAdbAccess$State;",
        "dashboardMode",
        "Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;",
        "dashboardShowsMap",
        "",
        "batteryPercent",
        "",
        "rangeKm",
        "",
        "<init>",
        "(Lcom/shilapi/xcertplay/hud/BydAdbAccess$State;Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;ZLjava/lang/Double;Ljava/lang/Integer;)V",
        "getState",
        "()Lcom/shilapi/xcertplay/hud/BydAdbAccess$State;",
        "getDashboardMode",
        "()Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;",
        "getDashboardShowsMap",
        "()Z",
        "getBatteryPercent",
        "()Ljava/lang/Double;",
        "Ljava/lang/Double;",
        "getRangeKm",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
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
.field private final batteryPercent:Ljava/lang/Double;

.field private final dashboardMode:Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;

.field private final dashboardShowsMap:Z

.field private final rangeKm:Ljava/lang/Integer;

.field private final state:Lcom/shilapi/xcertplay/hud/BydAdbAccess$State;


# direct methods
.method public constructor <init>(Lcom/shilapi/xcertplay/hud/BydAdbAccess$State;Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;ZLjava/lang/Double;Ljava/lang/Integer;)V
    .locals 1

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/shilapi/xcertplay/hud/BydAdbAccess$Status;->state:Lcom/shilapi/xcertplay/hud/BydAdbAccess$State;

    .line 13
    iput-object p2, p0, Lcom/shilapi/xcertplay/hud/BydAdbAccess$Status;->dashboardMode:Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;

    .line 14
    iput-boolean p3, p0, Lcom/shilapi/xcertplay/hud/BydAdbAccess$Status;->dashboardShowsMap:Z

    .line 15
    iput-object p4, p0, Lcom/shilapi/xcertplay/hud/BydAdbAccess$Status;->batteryPercent:Ljava/lang/Double;

    .line 16
    iput-object p5, p0, Lcom/shilapi/xcertplay/hud/BydAdbAccess$Status;->rangeKm:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/hud/BydAdbAccess$State;Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;ZLjava/lang/Double;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_1

    const/4 p3, 0x1

    :cond_1
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_2

    move-object p4, v0

    :cond_2
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_3

    move-object p6, v0

    goto :goto_0

    :cond_3
    move-object p6, p5

    :goto_0
    move-object p5, p4

    move p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 11
    invoke-direct/range {p1 .. p6}, Lcom/shilapi/xcertplay/hud/BydAdbAccess$Status;-><init>(Lcom/shilapi/xcertplay/hud/BydAdbAccess$State;Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;ZLjava/lang/Double;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public final getBatteryPercent()Ljava/lang/Double;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/shilapi/xcertplay/hud/BydAdbAccess$Status;->batteryPercent:Ljava/lang/Double;

    return-object v0
.end method

.method public final getDashboardMode()Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/shilapi/xcertplay/hud/BydAdbAccess$Status;->dashboardMode:Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;

    return-object v0
.end method

.method public final getDashboardShowsMap()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/hud/BydAdbAccess$Status;->dashboardShowsMap:Z

    return v0
.end method

.method public final getRangeKm()Ljava/lang/Integer;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/shilapi/xcertplay/hud/BydAdbAccess$Status;->rangeKm:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getState()Lcom/shilapi/xcertplay/hud/BydAdbAccess$State;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/shilapi/xcertplay/hud/BydAdbAccess$Status;->state:Lcom/shilapi/xcertplay/hud/BydAdbAccess$State;

    return-object v0
.end method
