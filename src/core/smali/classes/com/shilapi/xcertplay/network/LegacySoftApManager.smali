.class public final Lcom/shilapi/xcertplay/network/LegacySoftApManager;
.super Ljava/lang/Object;
.source "LegacySoftApManager.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/network/WirelessHotspotManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;,
        Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;,
        Lcom/shilapi/xcertplay/network/LegacySoftApManager$SystemSoftApControl;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLegacySoftApManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LegacySoftApManager.kt\ncom/shilapi/xcertplay/network/LegacySoftApManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,427:1\n1#2:428\n11228#3:429\n11563#3,3:430\n37#4:433\n36#4,3:434\n*S KotlinDebug\n*F\n+ 1 LegacySoftApManager.kt\ncom/shilapi/xcertplay/network/LegacySoftApManager\n*L\n160#1:429\n160#1:430,3\n160#1:433\n160#1:434,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0008\u0005\u0018\u0000 +2\u00020\u0001:\u0003)*+B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0014\u0008\u0002\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0008\u0010\u0017\u001a\u00020\u0007H\u0016J\u0008\u0010\u0018\u001a\u00020\u0007H\u0002J\u0010\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u0016H\u0002J\u000f\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0002\u00a2\u0006\u0002\u0010\u001dJ\u0010\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u001f\u001a\u00020\u0016H\u0002J\u001a\u0010 \u001a\u00020\u00122\u0008\u0010!\u001a\u0004\u0018\u00010\"2\u0006\u0010#\u001a\u00020\u0012H\u0002J+\u0010$\u001a\u0004\u0018\u00010\u000e2\u0006\u0010%\u001a\u00020\u00062\u0012\u0010&\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000e0\'\"\u00020\u000eH\u0002\u00a2\u0006\u0002\u0010(R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006,"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/LegacySoftApManager;",
        "Lcom/shilapi/xcertplay/network/WirelessHotspotManager;",
        "context",
        "Landroid/content/Context;",
        "onDiagnostic",
        "Lkotlin/Function1;",
        "",
        "",
        "<init>",
        "(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V",
        "appContext",
        "wifiManager",
        "Landroid/net/wifi/WifiManager;",
        "lock",
        "",
        "delegate",
        "Lcom/shilapi/xcertplay/network/ManualHotspotManager;",
        "closed",
        "",
        "start",
        "Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;",
        "timeoutMillis",
        "",
        "close",
        "checkOpen",
        "remaining",
        "deadline",
        "apStateCode",
        "",
        "()Ljava/lang/Integer;",
        "awaitApEnabled",
        "until",
        "setAp",
        "configuration",
        "Landroid/net/wifi/WifiConfiguration;",
        "enabled",
        "hidden",
        "name",
        "arguments",
        "",
        "(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;",
        "SoftApControl",
        "SystemSoftApControl",
        "Companion",
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
.field private static final AP_DISABLED:I = 0xb

.field private static final AP_ENABLED:I = 0xd

.field private static final AP_ENABLING:I = 0xc

.field private static final AP_FAILED:I = 0xe

.field public static final Companion:Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;

.field private static final DISABLE_WAIT_MILLIS:J = 0x1f40L

.field private static final ENABLING_WAIT_MILLIS:J = 0x1388L

.field private static final MIN_ATTACH_MILLIS:J = 0xbb8L

.field private static final POLL_MILLIS:J = 0xc8L

.field private static final PREFS:Ljava/lang/String; = "legacy_softap"

.field private static final RENAME_MILLIS:J = 0x61a8L


# instance fields
.field private final appContext:Landroid/content/Context;

.field private closed:Z

.field private delegate:Lcom/shilapi/xcertplay/network/ManualHotspotManager;

.field private final lock:Ljava/lang/Object;

.field private final onDiagnostic:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic $r8$lambda$7NZV3w0LJNEtpSVISN5sqA1RckU(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->_init_$lambda$0(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->Companion:Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDiagnostic"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p2, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    iput-object p1, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->appContext:Landroid/content/Context;

    .line 43
    const-string/jumbo p2, "wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Landroid/net/wifi/WifiManager;

    if-eqz p2, :cond_1

    check-cast p1, Landroid/net/wifi/WifiManager;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 45
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->lock:Ljava/lang/Object;

    return-void

    .line 44
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "WifiManager is unavailable"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 40
    new-instance p2, Lcom/shilapi/xcertplay/network/LegacySoftApManager$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$$ExternalSyntheticLambda0;-><init>()V

    .line 38
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/network/LegacySoftApManager;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final _init_$lambda$0(Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final synthetic access$checkOpen(Lcom/shilapi/xcertplay/network/LegacySoftApManager;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->checkOpen()V

    return-void
.end method

.method private final apStateCode()Ljava/lang/Integer;
    .locals 2

    const/4 v0, 0x0

    .line 143
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "getWifiApState"

    invoke-direct {p0, v1, v0}, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->hidden(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Integer;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private final awaitApEnabled(J)Z
    .locals 3

    .line 146
    :goto_0
    invoke-direct {p0}, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->apStateCode()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    .line 147
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-ltz v2, :cond_1

    const/4 p1, 0x0

    return p1

    .line 148
    :cond_1
    invoke-direct {p0}, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->checkOpen()V

    const-wide/16 v0, 0xc8

    .line 149
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private final checkOpen()V
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->closed:Z

    if-nez v1, :cond_0

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    const-string v1, "LegacySoftApManager is closed"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private final varargs hidden(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 429
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 430
    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p2, v3

    .line 160
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 431
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 432
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 429
    check-cast v0, Ljava/util/Collection;

    .line 436
    new-array v1, v2, [Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 160
    check-cast v0, [Ljava/lang/Class;

    .line 161
    const-class v1, Landroid/net/wifi/WifiManager;

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, p1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->wifiManager:Landroid/net/wifi/WifiManager;

    array-length v2, p2

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 163
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Automatic hotspot "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " unavailable ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1
.end method

.method private final remaining(J)J
    .locals 2

    .line 140
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x1

    invoke-static {p1, p2, v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private final setAp(Landroid/net/wifi/WifiConfiguration;Z)Z
    .locals 6

    .line 155
    const-class v0, Landroid/net/wifi/WifiManager;

    const/4 v1, 0x2

    .line 156
    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/net/wifi/WifiConfiguration;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string/jumbo v3, "setWifiApEnabled"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 157
    iget-object v2, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 155
    instance-of p2, p1, Ljava/lang/Boolean;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_1
    return v4
.end method


# virtual methods
.method public associatedClients()Ljava/lang/Integer;
    .locals 1

    .line 38
    invoke-static {p0}, Lcom/shilapi/xcertplay/network/WirelessHotspotManager$-CC;->$default$associatedClients(Lcom/shilapi/xcertplay/network/WirelessHotspotManager;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_0
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 132
    :try_start_1
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->closed:Z

    .line 133
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->delegate:Lcom/shilapi/xcertplay/network/ManualHotspotManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->close()V

    :cond_1
    const/4 v1, 0x0

    .line 134
    iput-object v1, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->delegate:Lcom/shilapi/xcertplay/network/ManualHotspotManager;

    .line 135
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public onCarPlayConfirmed()V
    .locals 0

    .line 38
    invoke-static {p0}, Lcom/shilapi/xcertplay/network/WirelessHotspotManager$-CC;->$default$onCarPlayConfirmed(Lcom/shilapi/xcertplay/network/WirelessHotspotManager;)V

    return-void
.end method

.method public start(J)Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;
    .locals 17

    move-object/from16 v1, p0

    .line 50
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_11

    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_10

    .line 57
    sget-object v0, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->Companion:Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;

    iget-object v2, v1, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->appContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v2, v3}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;->discardOldRecords(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    .line 58
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long v2, v2, p1

    .line 59
    invoke-direct {v1}, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->apStateCode()Ljava/lang/Integer;

    move-result-object v4

    .line 60
    iget-object v5, v1, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/network/LegacySoftApManager;

    iget-object v0, v1, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    move-object v0, v7

    .line 61
    :cond_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Automatic hotspot preflight apState="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " wifiEnabled="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " api="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-interface {v5, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance v0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$SystemSoftApControl;

    iget-object v5, v1, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->appContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {v0, v5, v6}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$SystemSoftApControl;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;)V

    const-wide/16 v5, 0x61a8

    if-nez v4, :cond_1

    goto :goto_1

    .line 64
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, 0xd

    if-ne v8, v9, :cond_2

    .line 65
    iget-object v4, v1, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    const-string v8, "Automatic hotspot is already on"

    invoke-interface {v4, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v9, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->Companion:Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;

    move-object v10, v0

    check-cast v10, Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;

    iget-object v11, v1, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->appContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->remaining(J)J

    move-result-wide v12

    invoke-static {v5, v6, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    iget-object v14, v1, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    new-instance v0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$start$4;

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$start$4;-><init>(Ljava/lang/Object;)V

    move-object v15, v0

    check-cast v15, Lkotlin/jvm/functions/Function0;

    invoke-virtual/range {v9 .. v15}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;->applyNameRule$shared_release(Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;Landroid/content/Context;JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$NameResult;

    goto/16 :goto_4

    :cond_2
    :goto_1
    if-nez v4, :cond_3

    goto :goto_2

    .line 69
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v8, 0xc

    if-ne v4, v8, :cond_4

    .line 70
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-wide/16 v10, 0x1388

    add-long/2addr v8, v10

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-direct {v1, v8, v9}, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->awaitApEnabled(J)Z

    move-result v4

    .line 71
    iget-object v8, v1, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    invoke-direct {v1}, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->apStateCode()Ljava/lang/Integer;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Automatic hotspot was starting; on="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " apState="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_8

    .line 72
    sget-object v10, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->Companion:Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;

    move-object v11, v0

    check-cast v11, Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;

    iget-object v12, v1, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->appContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->remaining(J)J

    move-result-wide v8

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    iget-object v15, v1, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    new-instance v0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$start$5;

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$start$5;-><init>(Ljava/lang/Object;)V

    move-object/from16 v16, v0

    check-cast v16, Lkotlin/jvm/functions/Function0;

    invoke-virtual/range {v10 .. v16}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;->applyNameRule$shared_release(Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;Landroid/content/Context;JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$NameResult;

    goto/16 :goto_4

    .line 75
    :cond_4
    :goto_2
    sget-object v0, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->Companion:Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;

    iget-object v4, v1, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->appContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;->canWriteSettings(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 80
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 81
    iget-object v6, v1, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->appContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->wifiManager:Landroid/net/wifi/WifiManager;

    iget-object v9, v1, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v6, v8, v9}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;->namedConfiguration$shared_release(Landroid/content/Context;Landroid/net/wifi/WifiManager;Lkotlin/jvm/functions/Function1;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    const/4 v8, 0x1

    .line 82
    invoke-direct {v1, v6, v8}, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->setAp(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v9

    if-nez v9, :cond_5

    if-eqz v6, :cond_5

    .line 84
    iget-object v6, v1, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    const-string v9, "Automatic hotspot: the system refused the 06Link-\u2026 name and password; switching on with the saved configuration as it is"

    invoke-interface {v6, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-direct {v1, v7, v8}, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->setAp(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v9

    :cond_5
    if-eqz v9, :cond_e

    .line 91
    invoke-direct {v1, v2, v3}, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->awaitApEnabled(J)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 96
    sget-object v6, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->INSTANCE:Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;

    iget-object v8, v1, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->appContext:Landroid/content/Context;

    invoke-virtual {v6, v8}, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->passwordRenewalPending(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 97
    sget-object v6, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->INSTANCE:Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;

    iget-object v8, v1, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->appContext:Landroid/content/Context;

    iget-object v9, v1, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v9}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;->savedConfiguration$shared_release(Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->consumeRenewalIfApplied(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    .line 98
    iget-object v6, v1, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_6

    const-string v0, "applied (the system now has this install\'s password)"

    goto :goto_3

    :cond_6
    const-string v0, "not applied yet; stays pending"

    :goto_3
    const-string v8, "Automatic hotspot: \u300c\u6362\u4e00\u4e2a\u5bc6\u7801\u300d "

    invoke-virtual {v8, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_7
    iget-object v0, v1, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Automatic hotspot switched on with the system settings afterMs="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "; it stays on"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_8
    :goto_4
    sget-object v0, Lcom/shilapi/xcertplay/network/SystemHotspotCredentials;->INSTANCE:Lcom/shilapi/xcertplay/network/SystemHotspotCredentials;

    iget-object v4, v1, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->appContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/shilapi/xcertplay/network/SystemHotspotCredentials;->read(Landroid/content/Context;)Lcom/shilapi/xcertplay/network/SystemHotspotCredentials$Credentials;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 107
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/network/LegacySoftApManager;

    .line 108
    const-class v0, Landroid/net/wifi/WifiConfiguration;

    const-string v5, "apBand"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iget-object v5, v1, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getWifiApConfiguration"

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iget-object v6, v1, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 107
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 109
    :goto_5
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_6

    :cond_9
    move-object v7, v0

    :goto_6
    check-cast v7, Ljava/lang/Integer;

    .line 110
    iget-object v0, v1, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/network/SystemHotspotCredentials$Credentials;->getSecured()Z

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Automatic hotspot uses the system hotspot secured="

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " systemBand="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    new-instance v6, Lcom/shilapi/xcertplay/network/ManualHotspotManager;

    .line 112
    iget-object v7, v1, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->appContext:Landroid/content/Context;

    .line 113
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/network/SystemHotspotCredentials$Credentials;->getSsid()Ljava/lang/String;

    move-result-object v8

    .line 114
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/network/SystemHotspotCredentials$Credentials;->getPassphrase()Ljava/lang/String;

    move-result-object v9

    .line 115
    sget-object v10, Lcom/shilapi/xcertplay/orchestration/ManualHotspotBand;->AUTO:Lcom/shilapi/xcertplay/orchestration/ManualHotspotBand;

    .line 117
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/network/SystemHotspotCredentials$Credentials;->getSecured()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/shilapi/xcertplay/orchestration/ManualHotspotSecurity;->WPA2:Lcom/shilapi/xcertplay/orchestration/ManualHotspotSecurity;

    goto :goto_7

    :cond_a
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/ManualHotspotSecurity;->OPEN:Lcom/shilapi/xcertplay/orchestration/ManualHotspotSecurity;

    :goto_7
    move-object v12, v0

    .line 118
    iget-object v13, v1, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    const/4 v11, 0x0

    .line 111
    invoke-direct/range {v6 .. v13}, Lcom/shilapi/xcertplay/network/ManualHotspotManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/orchestration/ManualHotspotBand;ILcom/shilapi/xcertplay/orchestration/ManualHotspotSecurity;Lkotlin/jvm/functions/Function1;)V

    .line 120
    iget-object v4, v1, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 121
    :try_start_2
    iget-boolean v0, v1, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->closed:Z

    if-nez v0, :cond_b

    .line 122
    iput-object v6, v1, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->delegate:Lcom/shilapi/xcertplay/network/ManualHotspotManager;

    .line 123
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 120
    monitor-exit v4

    .line 124
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xbb8

    invoke-static {v2, v3, v4, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v2

    .line 125
    invoke-virtual {v6, v2, v3}, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->start(J)Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;

    move-result-object v0

    return-object v0

    .line 121
    :cond_b
    :try_start_3
    const-string v0, "LegacySoftApManager is closed"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v0

    .line 120
    monitor-exit v4

    throw v0

    .line 106
    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v2, "The system hides the hotspot password, so it cannot be sent to the iPhone"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_d
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v1}, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->apStateCode()Ljava/lang/Integer;

    move-result-object v2

    .line 93
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Timed out waiting for the hotspot to start (apState="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " afterMs="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "); MIUI and similar systems also need 06Link\'s Turn on Wi-Fi permission"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_e
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v1}, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->apStateCode()Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "This head unit refused to turn its hotspot on (apState="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_f
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Allow 06Link to modify system settings so it can turn the hotspot on"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string v2, "The automatic hotspot uses LocalOnlyHotspot on Android 8 and newer"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_11
    const-string/jumbo v0, "timeoutMillis must be positive"

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 51
    :cond_12
    const-string v0, "LegacySoftApManager.start must not run on the main thread"

    .line 50
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
