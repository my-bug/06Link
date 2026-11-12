.class public final Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;
.super Ljava/lang/Object;
.source "LocalOnlyHotspotRadioInfo.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Companion;,
        Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Radio;,
        Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Snapshot;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLocalOnlyHotspotRadioInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocalOnlyHotspotRadioInfo.kt\ncom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,125:1\n1#2:126\n1#2:137\n1617#3,9:127\n1869#3:136\n1870#3:138\n1626#3:139\n*S KotlinDebug\n*F\n+ 1 LocalOnlyHotspotRadioInfo.kt\ncom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo\n*L\n47#1:137\n47#1:127,9\n47#1:136\n47#1:138\n47#1:139\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0000\u0018\u0000 &2\u00020\u0001:\u0003$%&B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u0019\u001a\u00020\u0010J\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\rJ\u0012\u0010\u001d\u001a\u0004\u0018\u00010\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\rJ$\u0010\u001e\u001a\u00020\u00102\u0008\u0010\u001c\u001a\u0004\u0018\u00010\r2\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00100\u000fJ\u0008\u0010 \u001a\u00020\u0010H\u0002J\u0010\u0010!\u001a\u00020\u00102\u0006\u0010\"\u001a\u00020\u0012H\u0002J\u0008\u0010#\u001a\u00020\u0010H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0013R\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0013R\"\u0010\u0016\u001a\u0004\u0018\u00010\r2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\r@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;",
        "Ljava/io/Closeable;",
        "wifi",
        "Landroid/net/wifi/WifiManager;",
        "<init>",
        "(Landroid/net/wifi/WifiManager;)V",
        "snapshot",
        "Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Snapshot;",
        "callback",
        "",
        "unregister",
        "Ljava/lang/reflect/Method;",
        "watchedBssid",
        "",
        "diagnostic",
        "Lkotlin/Function1;",
        "",
        "lastFrequency",
        "",
        "Ljava/lang/Integer;",
        "lastClientCount",
        "value",
        "unavailableReason",
        "getUnavailableReason",
        "()Ljava/lang/String;",
        "start",
        "forBssid",
        "Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Radio;",
        "bssid",
        "settledForBssid",
        "watch",
        "onDiagnostic",
        "reportRadio",
        "reportClients",
        "count",
        "close",
        "Radio",
        "Snapshot",
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
.field public static final Companion:Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Companion;


# instance fields
.field private callback:Ljava/lang/Object;

.field private volatile diagnostic:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private lastClientCount:Ljava/lang/Integer;

.field private lastFrequency:Ljava/lang/Integer;

.field private volatile snapshot:Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Snapshot;

.field private unavailableReason:Ljava/lang/String;

.field private unregister:Ljava/lang/reflect/Method;

.field private volatile watchedBssid:Ljava/lang/String;

.field private final wifi:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic $r8$lambda$C0DFqE0ZAXocQppkW9OLU2lxdZw(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;->start$lambda$3(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$epQJEfbJb-e7j_4wixpOYAzU3SU(Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;->start$lambda$2(Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;->Companion:Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiManager;)V
    .locals 3

    const-string/jumbo v0, "wifi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;->wifi:Landroid/net/wifi/WifiManager;

    .line 21
    new-instance p1, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Snapshot;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-direct {p1, v0, v1, v2}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Snapshot;-><init>(Ljava/util/List;J)V

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;->snapshot:Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Snapshot;

    return-void
.end method

.method private final declared-synchronized reportClients(I)V
    .locals 3

    const-string v0, "LocalOnlyHotspot associated clients="

    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;->lastClientCount:Ljava/lang/Integer;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, p1, :cond_1

    monitor-exit p0

    return-void

    .line 101
    :cond_1
    :goto_0
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;->lastClientCount:Ljava/lang/Integer;

    .line 102
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;->diagnostic:Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private final declared-synchronized reportRadio()V
    .locals 5

    const-string v0, "LocalOnlyHotspot live radio frequency="

    monitor-enter p0

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;->diagnostic:Lkotlin/jvm/functions/Function1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    return-void

    .line 93
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;->watchedBssid:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;->forBssid(Ljava/lang/String;)Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Radio;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    monitor-exit p0

    return-void

    .line 94
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;->lastFrequency:Ljava/lang/Integer;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Radio;->getFrequencyMHz()I

    move-result v4

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v3, v4, :cond_3

    monitor-exit p0

    return-void

    .line 95
    :cond_3
    :goto_0
    :try_start_3
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Radio;->getFrequencyMHz()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;->lastFrequency:Ljava/lang/Integer;

    .line 96
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Radio;->getFrequencyMHz()I

    move-result v3

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Radio;->getFrequencyMHz()I

    move-result v2

    invoke-static {v2}, Lcom/shilapi/xcertplay/network/WirelessHotspotManagerKt;->wifiFrequencyMhzToChannel(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "MHz channel="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 97
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method private static final start$lambda$2(Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 41
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_15

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_b

    :sswitch_0
    const-string p1, "onConnectedClientsChanged"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_b

    :cond_0
    if-eqz p3, :cond_1

    .line 61
    invoke-static {p3}, Lkotlin/collections/ArraysKt;->lastOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    instance-of p2, p1, Ljava/util/List;

    if-eqz p2, :cond_2

    check-cast p1, Ljava/util/List;

    goto :goto_1

    :cond_2
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_3

    .line 62
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;->reportClients(I)V

    :cond_3
    return-object v0

    .line 41
    :sswitch_1
    const-string p0, "hashCode"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_b

    .line 42
    :cond_4
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 41
    :sswitch_2
    const-string p1, "onInfoChanged"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_b

    :cond_5
    if-eqz p3, :cond_6

    .line 46
    invoke-static {p3}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    :cond_6
    move-object p1, v0

    :goto_2
    instance-of p2, p1, Ljava/util/List;

    if-eqz p2, :cond_7

    check-cast p1, Ljava/util/List;

    goto :goto_3

    :cond_7
    move-object p1, v0

    :goto_3
    if-nez p1, :cond_9

    if-eqz p3, :cond_8

    invoke-static {p3}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_4

    :cond_8
    move-object p1, v0

    :goto_4
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOfNotNull(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 47
    :cond_9
    check-cast p1, Ljava/lang/Iterable;

    .line 127
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/Collection;

    .line 136
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 48
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    if-nez p3, :cond_b

    :goto_6
    move-object v2, v0

    goto :goto_8

    .line 50
    :cond_b
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getFrequency"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Number"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 51
    invoke-static {v1}, Lcom/shilapi/xcertplay/network/WirelessHotspotManagerKt;->wifiFrequencyMhzToChannel(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_c

    goto :goto_6

    .line 52
    :cond_c
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getBssid"

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, p3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_d

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_7

    :cond_d
    move-object p3, v0

    .line 53
    :goto_7
    new-instance v2, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Radio;

    invoke-direct {v2, p3, v1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Radio;-><init>(Ljava/lang/String;I)V

    .line 48
    :goto_8
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception p3

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p3}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 54
    :goto_9
    invoke-static {p3}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    move-object p3, v0

    :cond_e
    check-cast p3, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Radio;

    if-eqz p3, :cond_a

    .line 135
    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 139
    :cond_f
    check-cast p2, Ljava/util/List;

    .line 56
    iget-object p1, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;->snapshot:Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Snapshot;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Snapshot;->getRadios()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    new-instance p1, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Snapshot;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-direct {p1, p2, v1, v2}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Snapshot;-><init>(Ljava/util/List;J)V

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;->snapshot:Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Snapshot;

    .line 57
    :cond_10
    invoke-direct {p0}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;->reportRadio()V

    return-object v0

    .line 41
    :sswitch_3
    const-string p0, "equals"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_b

    :cond_11
    if-eqz p3, :cond_12

    .line 43
    invoke-static {p3}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_12
    if-ne p1, v0, :cond_13

    const/4 p0, 0x1

    goto :goto_a

    :cond_13
    const/4 p0, 0x0

    :goto_a
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 41
    :sswitch_4
    const-string/jumbo p0, "toString"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto :goto_b

    .line 44
    :cond_14
    const-string p0, "06Link local hotspot radio observer"

    return-object p0

    :cond_15
    :goto_b
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x69e9ad94 -> :sswitch_4
        -0x4d378041 -> :sswitch_3
        -0x2ceae139 -> :sswitch_2
        0x8cdac1b -> :sswitch_1
        0x1a1af616 -> :sswitch_0
    .end sparse-switch
.end method

.method private static final start$lambda$3(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 6

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;->diagnostic:Lkotlin/jvm/functions/Function1;

    .line 119
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;->callback:Ljava/lang/Object;

    .line 120
    iput-object v0, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;->callback:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 121
    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v2, p0

    check-cast v2, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;

    iget-object v2, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;->unregister:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;->wifi:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_1
    :goto_1
    iput-object v0, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;->unregister:Ljava/lang/reflect/Method;

    return-void
.end method

.method public final forBssid(Ljava/lang/String;)Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Radio;
    .locals 2

    .line 78
    sget-object v0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;->Companion:Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Companion;

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;->snapshot:Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Snapshot;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Snapshot;->getRadios()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Companion;->matchingRadio(Ljava/util/List;Ljava/lang/String;)Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Radio;

    move-result-object p1

    return-object p1
.end method

.method public final getUnavailableReason()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;->unavailableReason:Ljava/lang/String;

    return-object v0
.end method

.method public final settledForBssid(Ljava/lang/String;)Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Radio;
    .locals 7

    .line 81
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;->snapshot:Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Snapshot;

    .line 82
    sget-object v1, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;->Companion:Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Companion;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Snapshot;->getRadios()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Snapshot;->getChangedNs()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const v0, 0xf4240

    int-to-long v5, v0

    div-long/2addr v3, v5

    invoke-virtual {v1, v2, p1, v3, v4}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Companion;->settledRadio(Ljava/util/List;Ljava/lang/String;J)Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Radio;

    move-result-object p1

    return-object p1
.end method

.method public final start()V
    .locals 9

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_0

    .line 33
    const-string v0, "live hotspot channel requires Android 13 or later"

    iput-object v0, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;->unavailableReason:Ljava/lang/String;

    return-void

    .line 37
    :cond_0
    :try_start_0
    const-string v0, "android.net.wifi.WifiManager$SoftApCallback"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 38
    const-class v1, Landroid/net/wifi/WifiManager;

    const-string/jumbo v2, "unregisterLocalOnlyHotspotSoftApCallback"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 39
    const-class v2, Landroid/net/wifi/WifiManager;

    const-string v4, "registerLocalOnlyHotspotSoftApCallback"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Ljava/util/concurrent/Executor;

    aput-object v8, v7, v5

    aput-object v0, v7, v3

    invoke-virtual {v2, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 40
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    new-array v7, v3, [Ljava/lang/Class;

    aput-object v0, v7, v5

    new-instance v0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$$ExternalSyntheticLambda0;-><init>(Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;)V

    invoke-static {v4, v7, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;->callback:Ljava/lang/Object;

    .line 69
    iput-object v1, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;->unregister:Ljava/lang/reflect/Method;

    .line 70
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 71
    iget-object v4, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;->wifi:Landroid/net/wifi/WifiManager;

    new-instance v7, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$$ExternalSyntheticLambda1;

    invoke-direct {v7, v1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$$ExternalSyntheticLambda1;-><init>(Landroid/os/Handler;)V

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v7, v1, v5

    aput-object v0, v1, v3

    invoke-virtual {v2, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "live hotspot channel unavailable ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;->unavailableReason:Ljava/lang/String;

    .line 74
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;->close()V

    return-void
.end method

.method public final watch(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onDiagnostic"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iput-object p1, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;->watchedBssid:Ljava/lang/String;

    .line 87
    iput-object p2, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;->diagnostic:Lkotlin/jvm/functions/Function1;

    .line 88
    invoke-direct {p0}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;->reportRadio()V

    return-void
.end method
