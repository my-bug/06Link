.class public final Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;
.super Ljava/lang/Object;
.source "WirelessLinkMemory.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory$Broadcast;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWirelessLinkMemory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WirelessLinkMemory.kt\ncom/shilapi/xcertplay/orchestration/WirelessLinkMemory\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,101:1\n1#2:102\n1310#3,2:103\n1310#3,2:105\n774#4:107\n865#4,2:108\n774#4:110\n865#4,2:111\n295#4,2:113\n*S KotlinDebug\n*F\n+ 1 WirelessLinkMemory.kt\ncom/shilapi/xcertplay/orchestration/WirelessLinkMemory\n*L\n55#1:103,2\n74#1:105,2\n81#1:107\n81#1:108,2\n82#1:110\n82#1:111,2\n91#1:113,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u00010B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J8\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fJ\u0006\u0010 \u001a\u00020\u0016J\u0010\u0010!\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0017\u001a\u00020\u0018J\u0010\u0010\"\u001a\u00020\u00162\u0008\u0010\u0019\u001a\u0004\u0018\u00010\rJ\u0006\u0010#\u001a\u00020\u0016J\u0018\u0010$\u001a\u00020%2\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0010&\u001a\u0004\u0018\u00010\rJ\u0010\u0010\'\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0017\u001a\u00020\u0018J.\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\r0\u00122\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\r0\u00122\u0008\u0010*\u001a\u0004\u0018\u00010\r2\u0008\u0010\'\u001a\u0004\u0018\u00010\rJ \u0010+\u001a\u0004\u0018\u00010\r2\u0008\u0010\n\u001a\u0004\u0018\u00010\r2\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0012J\u0012\u0010,\u001a\u0004\u0018\u00010-2\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\r\u0010.\u001a\u00020\u0016H\u0000\u00a2\u0006\u0002\u0008/R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\"\u0010\n\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\"\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\r@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0017\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u00061"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;",
        "",
        "<init>",
        "()V",
        "PREFS",
        "",
        "KEY_LAST_UP",
        "KEY_REMEMBERED",
        "value",
        "Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory$Broadcast;",
        "current",
        "getCurrent",
        "()Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory$Broadcast;",
        "Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;",
        "overrideForThisConnection",
        "getOverrideForThisConnection",
        "()Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;",
        "SWITCH_ORDER",
        "",
        "getSWITCH_ORDER",
        "()Ljava/util/List;",
        "up",
        "",
        "context",
        "Landroid/content/Context;",
        "mode",
        "ssid",
        "passphrase",
        "security",
        "Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;",
        "channel",
        "",
        "down",
        "lastUp",
        "setOverride",
        "clearOverride",
        "rememberIfOverrideWorked",
        "",
        "inUse",
        "remembered",
        "order",
        "candidates",
        "preferredNow",
        "nextAfter",
        "prefs",
        "Landroid/content/SharedPreferences;",
        "reset",
        "reset$shared_release",
        "Broadcast",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;

.field private static final KEY_LAST_UP:Ljava/lang/String; = "last_up"

.field private static final KEY_REMEMBERED:Ljava/lang/String; = "remembered_quick_switch"

.field private static final PREFS:Ljava/lang/String; = "free_auto_wireless_link"

.field private static final SWITCH_ORDER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile current:Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory$Broadcast;

.field private static volatile overrideForThisConnection:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;

    const/4 v0, 0x3

    .line 43
    new-array v0, v0, [Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    const/4 v1, 0x0

    sget-object v2, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;->LOCAL_ONLY_HOTSPOT:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;->WIFI_P2P:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;->MANUAL:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    aput-object v2, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;->SWITCH_ORDER:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 94
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    const-string v0, "free_auto_wireless_link"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 94
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 96
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    check-cast p1, Landroid/content/SharedPreferences;

    return-object p1
.end method


# virtual methods
.method public final clearOverride()V
    .locals 1

    const/4 v0, 0x0

    .line 59
    sput-object v0, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;->overrideForThisConnection:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    return-void
.end method

.method public final down()V
    .locals 1

    const/4 v0, 0x0

    .line 52
    sput-object v0, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;->current:Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory$Broadcast;

    return-void
.end method

.method public final getCurrent()Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory$Broadcast;
    .locals 1

    .line 35
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;->current:Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory$Broadcast;

    return-object v0
.end method

.method public final getOverrideForThisConnection()Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSWITCH_ORDER()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;",
            ">;"
        }
    .end annotation

    .line 43
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;->SWITCH_ORDER:Ljava/util/List;

    return-object v0
.end method

.method public final lastUp(Landroid/content/Context;)Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, "last_up"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;->values()[Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    move-result-object v1

    .line 103
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 55
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final nextAfter(Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;Ljava/util/List;)Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;",
            "Ljava/util/List<",
            "+",
            "Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;",
            ">;)",
            "Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;"
        }
    .end annotation

    const-string v0, "candidates"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;->SWITCH_ORDER:Ljava/util/List;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->indexOf(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    .line 91
    check-cast v0, Ljava/lang/Iterable;

    if-gez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    :goto_0
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->drop(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 113
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    .line 91
    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eq v2, p1, :cond_1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 114
    :goto_1
    check-cast v1, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    return-object v1
.end method

.method public final order(Ljava/util/List;Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;",
            ">;",
            "Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;",
            "Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;",
            ")",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;",
            ">;"
        }
    .end annotation

    const-string v0, "candidates"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 81
    new-array v0, v0, [Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 107
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    check-cast p3, Ljava/util/Collection;

    .line 108
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    .line 81
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    :cond_1
    check-cast p3, Ljava/util/List;

    .line 82
    move-object p2, p3

    check-cast p2, Ljava/util/Collection;

    check-cast p1, Ljava/lang/Iterable;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 111
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    .line 82
    invoke-interface {p3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 111
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 112
    :cond_3
    check-cast v0, Ljava/util/List;

    .line 110
    check-cast v0, Ljava/lang/Iterable;

    .line 82
    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final rememberIfOverrideWorked(Landroid/content/Context;Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;)Z
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;->overrideForThisConnection:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eq p2, v0, :cond_1

    return v1

    .line 68
    :cond_1
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p2, "remembered_quick_switch"

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    const/4 p1, 0x0

    .line 69
    sput-object p1, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;->overrideForThisConnection:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    const/4 p1, 0x1

    return p1
.end method

.method public final remembered(Landroid/content/Context;)Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, "remembered_quick_switch"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;->values()[Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    move-result-object v1

    .line 105
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 74
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final reset$shared_release()V
    .locals 1

    const/4 v0, 0x0

    .line 99
    sput-object v0, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;->current:Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory$Broadcast;

    sput-object v0, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;->overrideForThisConnection:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    return-void
.end method

.method public final setOverride(Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;)V
    .locals 0

    return-void
.end method

.method public final up(Landroid/content/Context;Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;I)V
    .locals 7

    const-string v0, "mode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "ssid"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "passphrase"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "security"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v1, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory$Broadcast;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory$Broadcast;-><init>(Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;I)V

    sput-object v1, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;->current:Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory$Broadcast;

    if-eqz p1, :cond_0

    .line 48
    sget-object p2, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;

    invoke-direct {p2, p1}, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "last_up"

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;->name()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method
