.class final Lcom/shilapi/xcertplay/network/LegacySoftApManager$SystemSoftApControl;
.super Ljava/lang/Object;
.source "LegacySoftApManager.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/network/LegacySoftApManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SystemSoftApControl"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLegacySoftApManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LegacySoftApManager.kt\ncom/shilapi/xcertplay/network/LegacySoftApManager$SystemSoftApControl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,427:1\n1#2:428\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0002\u0010\nJ\n\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J\u001a\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016J\u0008\u0010\u0010\u001a\u00020\u000eH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/LegacySoftApManager$SystemSoftApControl;",
        "Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;",
        "context",
        "Landroid/content/Context;",
        "wifi",
        "Landroid/net/wifi/WifiManager;",
        "<init>",
        "(Landroid/content/Context;Landroid/net/wifi/WifiManager;)V",
        "state",
        "",
        "()Ljava/lang/Integer;",
        "configuration",
        "Landroid/net/wifi/WifiConfiguration;",
        "setEnabled",
        "",
        "enabled",
        "canWriteSettings",
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
.field private final context:Landroid/content/Context;

.field private final wifi:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "wifi"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$SystemSoftApControl;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$SystemSoftApControl;->wifi:Landroid/net/wifi/WifiManager;

    return-void
.end method


# virtual methods
.method public canWriteSettings()Z
    .locals 2

    .line 187
    sget-object v0, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->Companion:Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$SystemSoftApControl;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;->canWriteSettings(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public configuration()Landroid/net/wifi/WifiConfiguration;
    .locals 2

    .line 181
    sget-object v0, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->Companion:Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$SystemSoftApControl;->wifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;->savedConfiguration$shared_release(Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public now()J
    .locals 2

    .line 179
    invoke-static {p0}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl$-CC;->$default$now(Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;)J

    move-result-wide v0

    return-wide v0
.end method

.method public setEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 182
    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v2, p0

    check-cast v2, Lcom/shilapi/xcertplay/network/LegacySoftApManager$SystemSoftApControl;

    .line 183
    const-class v2, Landroid/net/wifi/WifiManager;

    .line 184
    const-string/jumbo v3, "setWifiApEnabled"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/net/wifi/WifiConfiguration;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 185
    iget-object v3, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$SystemSoftApControl;->wifi:Landroid/net/wifi/WifiManager;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v7

    aput-object p2, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 183
    instance-of p2, p1, Ljava/lang/Boolean;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 182
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 186
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_2

    :cond_1
    move-object v0, p1

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 182
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public sleep(J)V
    .locals 0

    .line 179
    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl$-CC;->$default$sleep(Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;J)V

    return-void
.end method

.method public state()Ljava/lang/Integer;
    .locals 3

    const/4 v0, 0x0

    .line 180
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/network/LegacySoftApManager$SystemSoftApControl;

    const-class v1, Landroid/net/wifi/WifiManager;

    const-string v2, "getWifiApState"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$SystemSoftApControl;->wifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    move-object v0, v1

    :goto_2
    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method
