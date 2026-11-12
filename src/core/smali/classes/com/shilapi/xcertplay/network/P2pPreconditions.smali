.class public final Lcom/shilapi/xcertplay/network/P2pPreconditions;
.super Ljava/lang/Object;
.source "P2pPreconditions.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nP2pPreconditions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 P2pPreconditions.kt\ncom/shilapi/xcertplay/network/P2pPreconditions\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,44:1\n1#2:45\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0008\u001a\u00020\tJ)\u0010\u0007\u001a\u0004\u0018\u00010\u00052\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0002\u0010\u000fJ\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/P2pPreconditions;",
        "",
        "<init>",
        "()V",
        "SOFTAP_ON",
        "",
        "WIFI_OFF",
        "blocker",
        "context",
        "Landroid/content/Context;",
        "sdk",
        "",
        "apOnOrStarting",
        "",
        "wifiEnabled",
        "(ILjava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/String;",
        "failure",
        "Ljava/io/IOException;",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/network/P2pPreconditions;

.field public static final SOFTAP_ON:Ljava/lang/String; = "softap_on"

.field public static final WIFI_OFF:Ljava/lang/String; = "wifi_off"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/network/P2pPreconditions;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/network/P2pPreconditions;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/network/P2pPreconditions;->INSTANCE:Lcom/shilapi/xcertplay/network/P2pPreconditions;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blocker(ILjava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x1d

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    return-object v1

    :cond_0
    const/4 p1, 0x1

    .line 30
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string/jumbo p1, "softap_on"

    return-object p1

    :cond_1
    const/4 p1, 0x0

    .line 31
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string/jumbo p1, "wifi_off"

    return-object p1

    :cond_2
    return-object v1
.end method

.method public final blocker(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return-object v2

    .line 23
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getApplicationContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-static {v0, v1}, Lcom/shilapi/xcertplay/compat/Api19Kt;->systemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 24
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v3, Lcom/shilapi/xcertplay/network/CarHotspotStatus;->INSTANCE:Lcom/shilapi/xcertplay/network/CarHotspotStatus;

    invoke-virtual {v3, p1}, Lcom/shilapi/xcertplay/network/CarHotspotStatus;->isOnOrStarting(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v3, p0

    check-cast v3, Lcom/shilapi/xcertplay/network/P2pPreconditions;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move-object v2, v0

    :goto_2
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {p0, v1, p1, v2}, Lcom/shilapi/xcertplay/network/P2pPreconditions;->blocker(ILjava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final failure(Ljava/lang/String;)Ljava/io/IOException;
    .locals 2

    const-string v0, "blocker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/shilapi/xcertplay/network/P2pUnavailableException;

    .line 37
    const-string/jumbo v1, "softap_on"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Wi-Fi Direct needs the hotspot off: switch off the head unit\'s hotspot and switch Wi-Fi on, then connect again"

    goto :goto_0

    .line 38
    :cond_0
    const-string v1, "Turn on Wi-Fi in the head unit\'s settings, then reconnect"

    .line 36
    :goto_0
    invoke-direct {v0, p1, v1}, Lcom/shilapi/xcertplay/network/P2pUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Ljava/io/IOException;

    return-object v0
.end method
