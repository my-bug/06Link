.class public final Lcom/shilapi/xcertplay/network/WirelessRadioKeepAlive;
.super Ljava/lang/Object;
.source "WirelessRadioKeepAlive.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWirelessRadioKeepAlive.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WirelessRadioKeepAlive.kt\ncom/shilapi/xcertplay/network/WirelessRadioKeepAlive\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,69:1\n1#2:70\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J\u0006\u0010\u0015\u001a\u00020\u0012J\u0006\u0010\u0016\u001a\u00020\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0018\u00010\u000cR\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0018\u00010\u000fR\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/WirelessRadioKeepAlive;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "WIFI_TAG",
        "WAKE_TAG",
        "lock",
        "holds",
        "",
        "wifiLock",
        "Landroid/net/wifi/WifiManager$WifiLock;",
        "Landroid/net/wifi/WifiManager;",
        "wakeLock",
        "Landroid/os/PowerManager$WakeLock;",
        "Landroid/os/PowerManager;",
        "acquire",
        "",
        "context",
        "Landroid/content/Context;",
        "release",
        "holdsForTest",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/network/WirelessRadioKeepAlive;

.field private static final TAG:Ljava/lang/String; = "06Link-WifiKeep"

.field private static final WAKE_TAG:Ljava/lang/String; = "06Link:carplay"

.field private static final WIFI_TAG:Ljava/lang/String; = "06Link-carplay-wifi"

.field private static holds:I

.field private static final lock:Ljava/lang/Object;

.field private static wakeLock:Landroid/os/PowerManager$WakeLock;

.field private static wifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/network/WirelessRadioKeepAlive;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/network/WirelessRadioKeepAlive;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/network/WirelessRadioKeepAlive;->INSTANCE:Lcom/shilapi/xcertplay/network/WirelessRadioKeepAlive;

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/network/WirelessRadioKeepAlive;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final acquire(Landroid/content/Context;)V
    .locals 9

    const-string v0, "radio keep-alive on (wifi="

    const-string v1, "WakeLock not held: "

    const-string v2, "WifiLock not held: "

    const-string v3, "context"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 28
    sget-object v3, Lcom/shilapi/xcertplay/network/WirelessRadioKeepAlive;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 29
    :try_start_0
    sget v4, Lcom/shilapi/xcertplay/network/WirelessRadioKeepAlive;->holds:I

    add-int/lit8 v5, v4, 0x1

    sput v5, Lcom/shilapi/xcertplay/network/WirelessRadioKeepAlive;->holds:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-lez v4, :cond_0

    monitor-exit v3

    return-void

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 30
    :try_start_1
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 31
    const-string/jumbo v6, "wifi"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Landroid/net/wifi/WifiManager;

    if-eqz v7, :cond_1

    check-cast v6, Landroid/net/wifi/WifiManager;

    goto :goto_0

    :cond_1
    move-object v6, v4

    :goto_0
    if-nez v6, :cond_2

    goto :goto_1

    .line 35
    :cond_2
    const-string v7, "06Link-carplay-wifi"

    const/4 v8, 0x3

    invoke-virtual {v6, v8, v7}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v6

    .line 36
    invoke-virtual {v6, v5}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 37
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 38
    sput-object v6, Lcom/shilapi/xcertplay/network/WirelessRadioKeepAlive;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 40
    :goto_1
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 30
    invoke-static {v6}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v6

    :try_start_2
    sget-object v7, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v6}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 40
    :goto_2
    invoke-static {v6}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_3

    const-string v7, "06Link-WifiKeep"

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_3
    const/4 v2, 0x1

    .line 41
    :try_start_3
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 42
    const-string v6, "power"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v6, p1, Landroid/os/PowerManager;

    if-eqz v6, :cond_4

    move-object v4, p1

    check-cast v4, Landroid/os/PowerManager;

    :cond_4
    if-nez v4, :cond_5

    goto :goto_3

    .line 44
    :cond_5
    const-string p1, "06Link:carplay"

    invoke-virtual {v4, v2, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    .line 45
    invoke-virtual {p1, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 46
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 47
    sput-object p1, Lcom/shilapi/xcertplay/network/WirelessRadioKeepAlive;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 49
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 41
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    :try_start_4
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 49
    :goto_4
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string v4, "06Link-WifiKeep"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_6
    const-string p1, "06Link-WifiKeep"

    sget-object v1, Lcom/shilapi/xcertplay/network/WirelessRadioKeepAlive;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v1

    if-ne v1, v2, :cond_7

    const/4 v1, 0x1

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    :goto_5
    sget-object v4, Lcom/shilapi/xcertplay/network/WirelessRadioKeepAlive;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-ne v4, v2, :cond_8

    const/4 v5, 0x1

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " wake="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 28
    monitor-exit v3

    return-void

    :catchall_2
    move-exception p1

    monitor-exit v3

    throw p1
.end method

.method public final holdsForTest()I
    .locals 2

    .line 67
    sget-object v0, Lcom/shilapi/xcertplay/network/WirelessRadioKeepAlive;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/shilapi/xcertplay/network/WirelessRadioKeepAlive;->holds:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final release()V
    .locals 4

    .line 55
    sget-object v0, Lcom/shilapi/xcertplay/network/WirelessRadioKeepAlive;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_0
    sget v1, Lcom/shilapi/xcertplay/network/WirelessRadioKeepAlive;->holds:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-gtz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 57
    :try_start_1
    sput v1, Lcom/shilapi/xcertplay/network/WirelessRadioKeepAlive;->holds:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-lez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 58
    :try_start_2
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v2, Lcom/shilapi/xcertplay/network/WirelessRadioKeepAlive;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v2

    if-ne v2, v1, :cond_2

    sget-object v2, Lcom/shilapi/xcertplay/network/WirelessRadioKeepAlive;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    :cond_2
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_3
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/4 v2, 0x0

    .line 59
    sput-object v2, Lcom/shilapi/xcertplay/network/WirelessRadioKeepAlive;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 60
    :try_start_4
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v3, Lcom/shilapi/xcertplay/network/WirelessRadioKeepAlive;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-ne v3, v1, :cond_3

    sget-object v1, Lcom/shilapi/xcertplay/network/WirelessRadioKeepAlive;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_5
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :goto_1
    sput-object v2, Lcom/shilapi/xcertplay/network/WirelessRadioKeepAlive;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 62
    const-string v1, "06Link-WifiKeep"

    const-string v2, "radio keep-alive off"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 55
    monitor-exit v0

    return-void

    :catchall_2
    move-exception v1

    monitor-exit v0

    throw v1
.end method
