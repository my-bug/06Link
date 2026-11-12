.class public final Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;
.super Ljava/lang/Object;
.source "BydNavigationOutputs.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBydNavigationOutputs.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BydNavigationOutputs.kt\ncom/shilapi/xcertplay/hud/BydNavigationOutputs\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,68:1\n1#2:69\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\nJ\u001a\u0010\u0012\u001a\u00020\u00052\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00050\u0014J\u001a\u0010\u0015\u001a\u00020\u00052\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00050\u0014J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0006\u001a\u00020\u0007J\u0015\u0010\u001a\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u001bJ\u000e\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0015\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u001fH\u0000\u00a2\u0006\u0002\u0008 J\u0006\u0010!\u001a\u00020\u0005R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;",
        "",
        "<init>",
        "()V",
        "onAppOpened",
        "",
        "context",
        "Landroid/content/Context;",
        "setDiagnosticHold",
        "hold",
        "",
        "useStandalone",
        "standalone",
        "Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;",
        "hud",
        "cluster",
        "setClusterMapShown",
        "shown",
        "setClusterStreamControl",
        "control",
        "Lkotlin/Function1;",
        "clearClusterStreamControl",
        "batteryStatus",
        "Lcom/shilapi/xcertplay/transport/VehicleStatusProvider;",
        "wheelSpeed",
        "Lcom/shilapi/xcertplay/transport/VehicleSpeedSource;",
        "parked",
        "(Landroid/content/Context;)Ljava/lang/Boolean;",
        "start",
        "onFrame",
        "frame",
        "Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;",
        "onFrame$shared_release",
        "endNow",
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


# static fields
.field public static final INSTANCE:Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;

.field private static final cluster:Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;

.field private static final hud:Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;

.field private static final standalone:Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;

.field private static volatile useStandalone:Z


# direct methods
.method public static synthetic $r8$lambda$2UVjXxaPxQOi3e6hWxHRzf4_bB0(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;->onFrame$lambda$6(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$6DBu7U5nFze6XhgN5-WmPgsEyF0(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;->onFrame$lambda$4(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BDJrx2Jkr_O68qsT0XAI1KIYbXA(Landroid/content/Context;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;->start$lambda$1(Landroid/content/Context;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$F2Ruq804OK1uFrKLl8YYAGRgJJg(Landroid/content/Context;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;->start$lambda$2(Landroid/content/Context;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PgQkpZureJlkI0Xu8kTkn1JxJlM(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;->onFrame$lambda$5(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wl2kFQwiGr7BTkL4u9VOT7R-Z9w(Landroid/content/Context;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;->start$lambda$3(Landroid/content/Context;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;

    .line 16
    new-instance v0, Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;

    new-instance v1, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs$standalone$1;

    sget-object v2, Lcom/shilapi/xcertplay/hud/BydStandaloneNavigationBridge;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydStandaloneNavigationBridge;

    invoke-direct {v1, v2}, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs$standalone$1;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    const-string v2, "diplay-standalone-output"

    invoke-direct {v0, v2, v1}, Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    sput-object v0, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;->standalone:Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;

    .line 17
    new-instance v0, Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;

    new-instance v1, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs$hud$1;

    sget-object v2, Lcom/shilapi/xcertplay/hud/BydHudBridge;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydHudBridge;

    invoke-direct {v1, v2}, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs$hud$1;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    const-string v2, "diplay-hud-output"

    invoke-direct {v0, v2, v1}, Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    sput-object v0, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;->hud:Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;

    .line 18
    new-instance v0, Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;

    new-instance v1, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs$cluster$1;

    sget-object v2, Lcom/shilapi/xcertplay/hud/BydClusterBridge;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydClusterBridge;

    invoke-direct {v1, v2}, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs$cluster$1;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    const-string v2, "diplay-cluster-output"

    invoke-direct {v0, v2, v1}, Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    sput-object v0, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;->cluster:Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final onFrame$lambda$4(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lkotlin/Unit;
    .locals 1

    .line 58
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydStandaloneNavigationBridge;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydStandaloneNavigationBridge;

    invoke-virtual {v0, p0}, Lcom/shilapi/xcertplay/hud/BydStandaloneNavigationBridge;->onFrame(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onFrame$lambda$5(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lkotlin/Unit;
    .locals 1

    .line 60
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydHudBridge;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydHudBridge;

    invoke-virtual {v0, p0}, Lcom/shilapi/xcertplay/hud/BydHudBridge;->onFrame(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onFrame$lambda$6(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lkotlin/Unit;
    .locals 1

    .line 61
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydClusterBridge;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydClusterBridge;

    invoke-virtual {v0, p0}, Lcom/shilapi/xcertplay/hud/BydClusterBridge;->onFrame(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final start$lambda$1(Landroid/content/Context;)Lkotlin/Unit;
    .locals 1

    .line 46
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydStandaloneNavigationBridge;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydStandaloneNavigationBridge;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lcom/shilapi/xcertplay/hud/BydStandaloneNavigationBridge;->initialize(Landroid/content/Context;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final start$lambda$2(Landroid/content/Context;)Lkotlin/Unit;
    .locals 1

    .line 48
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydHudBridge;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydHudBridge;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lcom/shilapi/xcertplay/hud/BydHudBridge;->initialize(Landroid/content/Context;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final start$lambda$3(Landroid/content/Context;)Lkotlin/Unit;
    .locals 1

    .line 49
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydClusterBridge;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydClusterBridge;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lcom/shilapi/xcertplay/hud/BydClusterBridge;->initialize(Landroid/content/Context;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final batteryStatus(Landroid/content/Context;)Lcom/shilapi/xcertplay/transport/VehicleStatusProvider;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydBatteryStatus;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydBatteryStatus;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/hud/BydBatteryStatus;->start(Landroid/content/Context;)V

    check-cast v0, Lcom/shilapi/xcertplay/transport/VehicleStatusProvider;

    return-object v0
.end method

.method public final clearClusterStreamControl(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "control"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydClusterMapPause;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydClusterMapPause;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/hud/BydClusterMapPause;->getStreamControl()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/shilapi/xcertplay/hud/BydClusterMapPause;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydClusterMapPause;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/shilapi/xcertplay/hud/BydClusterMapPause;->setStreamControl(Lkotlin/jvm/functions/Function1;)V

    :cond_0
    return-void
.end method

.method public final endNow()V
    .locals 1

    invoke-static {}, Lcom/shilapi/xcertplay/E01ClusterMode;->endNow()V

    .line 66
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;->standalone:Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;->clear()V

    sget-object v0, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;->hud:Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;->clear()V

    sget-object v0, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;->cluster:Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;->clear()V

    return-void
.end method

.method public final onAppOpened(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;->Companion:Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput$Companion;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput$Companion;->available(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;->start(Landroid/content/Context;)V

    .line 12
    :cond_0
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydOutputSettings;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydOutputSettings;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/hud/BydOutputSettings;->batteryToIphone(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/shilapi/xcertplay/hud/BydBatteryStatus;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydBatteryStatus;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/hud/BydBatteryStatus;->start(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public final onFrame$shared_release(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)V
    .locals 2

    invoke-static {p1}, Lcom/shilapi/xcertplay/E01ClusterMode;->onFrame(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)V

    const-string v0, "frame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;->getMessageId()I

    move-result v0

    const/16 v1, 0x5201

    if-eq v0, v1, :cond_0

    .line 56
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;->getMessageId()I

    move-result v0

    const/16 v1, 0x5202

    if-eq v0, v1, :cond_0

    return-void

    .line 58
    :cond_0
    sget-boolean v0, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;->useStandalone:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;->standalone:Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;

    new-instance v1, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs$$ExternalSyntheticLambda3;-><init>(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)V

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;->submit(Lkotlin/jvm/functions/Function0;)V

    return-void

    .line 60
    :cond_1
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;->hud:Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;

    new-instance v1, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs$$ExternalSyntheticLambda4;-><init>(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)V

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;->submit(Lkotlin/jvm/functions/Function0;)V

    .line 61
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;->cluster:Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;

    new-instance v1, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs$$ExternalSyntheticLambda5;-><init>(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)V

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;->submit(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final parked(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydParkedState;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydParkedState;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "getApplicationContext(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/hud/BydParkedState;->parked(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final setClusterMapShown(Z)V
    .locals 1

    .line 21
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydClusterMapPause;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydClusterMapPause;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/hud/BydClusterMapPause;->setClusterMapShown(Z)V

    return-void
.end method

.method public final setClusterStreamControl(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "control"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydClusterMapPause;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydClusterMapPause;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/hud/BydClusterMapPause;->setStreamControl(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setDiagnosticHold(Z)V
    .locals 1

    .line 14
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;->Companion:Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput$Companion;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput$Companion;->setSyntheticHold(Z)V

    return-void
.end method

.method public final start(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lcom/shilapi/xcertplay/E01ClusterMode;->initialize(Landroid/content/Context;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 45
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;->Companion:Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput$Companion;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput$Companion;->available(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;->useStandalone:Z

    .line 46
    sget-boolean v0, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;->useStandalone:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;->standalone:Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;

    new-instance v1, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;->start(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 48
    :cond_0
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;->hud:Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;

    new-instance v1, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;->start(Lkotlin/jvm/functions/Function0;)V

    .line 49
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;->cluster:Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;

    new-instance v1, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;->start(Lkotlin/jvm/functions/Function0;)V

    .line 51
    :goto_0
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydClusterMapPause;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydClusterMapPause;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/hud/BydClusterMapPause;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public final wheelSpeed(Landroid/content/Context;)Lcom/shilapi/xcertplay/transport/VehicleSpeedSource;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydWheelSpeedSource;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydWheelSpeedSource;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/hud/BydWheelSpeedSource;->attach(Landroid/content/Context;)Lcom/shilapi/xcertplay/hud/BydWheelSpeedSource;

    move-result-object p1

    check-cast p1, Lcom/shilapi/xcertplay/transport/VehicleSpeedSource;

    return-object p1
.end method
