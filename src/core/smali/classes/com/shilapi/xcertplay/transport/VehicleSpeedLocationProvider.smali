.class public final Lcom/shilapi/xcertplay/transport/VehicleSpeedLocationProvider;
.super Ljava/lang/Object;
.source "VehicleSpeedNmea.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVehicleSpeedNmea.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VehicleSpeedNmea.kt\ncom/shilapi/xcertplay/transport/VehicleSpeedLocationProvider\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,81:1\n1#2:82\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0016\u0010\t\u001a\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cH\u0016J\u0008\u0010\u000e\u001a\u00020\u0008H\u0016J\u0008\u0010\u000f\u001a\u00020\nH\u0016J\n\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/VehicleSpeedLocationProvider;",
        "Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;",
        "position",
        "speed",
        "Lcom/shilapi/xcertplay/transport/VehicleSpeedSource;",
        "<init>",
        "(Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;Lcom/shilapi/xcertplay/transport/VehicleSpeedSource;)V",
        "speedRequested",
        "",
        "onRequested",
        "",
        "components",
        "",
        "",
        "start",
        "stop",
        "latestNmea",
        "",
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
.field private final position:Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;

.field private final speed:Lcom/shilapi/xcertplay/transport/VehicleSpeedSource;

.field private volatile speedRequested:Z


# direct methods
.method public constructor <init>(Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;Lcom/shilapi/xcertplay/transport/VehicleSpeedSource;)V
    .locals 1

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "speed"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/VehicleSpeedLocationProvider;->position:Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;

    .line 55
    iput-object p2, p0, Lcom/shilapi/xcertplay/transport/VehicleSpeedLocationProvider;->speed:Lcom/shilapi/xcertplay/transport/VehicleSpeedSource;

    :try_start_0
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/E01GpsDiagnostic;->providerAlias(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 53
    invoke-static {p0}, Lcom/shilapi/xcertplay/transport/Iap2LocationProvider$-CC;->$default$close(Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;)V

    return-void
.end method

.method public latestNmea()Ljava/lang/String;
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/VehicleSpeedLocationProvider;->position:Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;

    invoke-interface {v0}, Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;->latestNmea()Ljava/lang/String;

    move-result-object v0

    .line 77
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/transport/VehicleSpeedLocationProvider;->speedRequested:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/VehicleSpeedLocationProvider;->speed:Lcom/shilapi/xcertplay/transport/VehicleSpeedSource;

    invoke-interface {v1}, Lcom/shilapi/xcertplay/transport/VehicleSpeedSource;->drain()Lcom/shilapi/xcertplay/transport/VehicleSpeedReading;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/shilapi/xcertplay/transport/PascdEncoder;->INSTANCE:Lcom/shilapi/xcertplay/transport/PascdEncoder;

    invoke-virtual {v2, v1}, Lcom/shilapi/xcertplay/transport/PascdEncoder;->encode(Lcom/shilapi/xcertplay/transport/VehicleSpeedReading;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-nez v0, :cond_1

    return-object v2

    :cond_1
    if-nez v2, :cond_2

    .line 78
    const-string v2, ""

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onRequested(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "components"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/shilapi/xcertplay/transport/VehicleSpeedLocationProvider;->speedRequested:Z

    .line 61
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/VehicleSpeedLocationProvider;->position:Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;

    invoke-interface {v0, p1}, Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;->onRequested(Ljava/util/Set;)V

    return-void
.end method

.method public start()Z
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/VehicleSpeedLocationProvider;->position:Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;

    invoke-interface {v0}, Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;->start()Z

    move-result v0

    .line 66
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/transport/VehicleSpeedLocationProvider;->speedRequested:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/VehicleSpeedLocationProvider;->speed:Lcom/shilapi/xcertplay/transport/VehicleSpeedSource;

    invoke-interface {v1}, Lcom/shilapi/xcertplay/transport/VehicleSpeedSource;->start()V

    :cond_0
    if-nez v0, :cond_2

    .line 67
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/transport/VehicleSpeedLocationProvider;->speedRequested:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public stop()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/VehicleSpeedLocationProvider;->speed:Lcom/shilapi/xcertplay/transport/VehicleSpeedSource;

    invoke-interface {v0}, Lcom/shilapi/xcertplay/transport/VehicleSpeedSource;->stop()V

    .line 72
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/VehicleSpeedLocationProvider;->position:Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;

    invoke-interface {v0}, Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;->stop()V

    return-void
.end method
