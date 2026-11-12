.class public final Lcom/shilapi/xcertplay/network/HotspotIpv6Check;
.super Ljava/lang/Object;
.source "HotspotIpv6Check.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Repair;,
        Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;,
        Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHotspotIpv6Check.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HotspotIpv6Check.kt\ncom/shilapi/xcertplay/network/HotspotIpv6Check\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,182:1\n295#2:183\n296#2:185\n1761#2,3:186\n774#2:189\n865#2,2:190\n1563#2:192\n1634#2,3:193\n1761#2,3:196\n295#2,2:201\n360#2,7:203\n774#2:210\n865#2,2:211\n756#2,10:213\n1#3:184\n1255#4,2:199\n*S KotlinDebug\n*F\n+ 1 HotspotIpv6Check.kt\ncom/shilapi/xcertplay/network/HotspotIpv6Check\n*L\n48#1:183\n48#1:185\n57#1:186,3\n117#1:189\n117#1:190,2\n119#1:192\n119#1:193,3\n130#1:196,3\n167#1:201,2\n142#1:203,7\n149#1:210\n149#1:211,2\n150#1:213,10\n159#1:199,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\"\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0011\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0003234B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0006J,\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012J/\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00062\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0006H\u0000\u00a2\u0006\u0002\u0008\u0018J5\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\u0006\u0010\u0016\u001a\u00020\u00062\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u001b2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0010H\u0000\u00a2\u0006\u0002\u0008\u001dJ1\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020\u00060\u001f2\u0006\u0010!\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0006H\u0000\u00a2\u0006\u0002\u0008\"J#\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u001b2\u0006\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0006H\u0000\u00a2\u0006\u0002\u0008$J#\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u001b2\u0006\u0010&\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0006H\u0000\u00a2\u0006\u0002\u0008\'J\u001d\u0010(\u001a\u00020\u00102\u0006\u0010)\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0006H\u0000\u00a2\u0006\u0002\u0008*J#\u0010,\u001a\u0004\u0018\u00010\u00062\u0012\u0010-\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00060.\"\u00020\u0006H\u0002\u00a2\u0006\u0002\u0010/J\u0012\u00100\u001a\u0004\u0018\u00010\u00062\u0006\u00101\u001a\u00020\u0006H\u0002R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00065"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/HotspotIpv6Check;",
        "",
        "<init>",
        "()V",
        "AP_INTERFACES",
        "",
        "",
        "run",
        "Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;",
        "context",
        "Landroid/content/Context;",
        "preferredInterface",
        "repair",
        "Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Repair;",
        "report",
        "mayAskAdb",
        "",
        "prefer",
        "Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;",
        "repairPlan",
        "sdk",
        "",
        "iface",
        "rules",
        "repairPlan$shared_release",
        "repairCommands",
        "tables",
        "",
        "singleTable",
        "repairCommands$shared_release",
        "evaluate",
        "Lkotlin/Pair;",
        "Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;",
        "routes",
        "evaluate$shared_release",
        "ruleTablesFor",
        "ruleTablesFor$shared_release",
        "linkLocalRouteTables",
        "output",
        "linkLocalRouteTables$shared_release",
        "hasMainLinkLocalRoute",
        "procRoutes",
        "hasMainLinkLocalRoute$shared_release",
        "ROUTE_TYPES",
        "runIp",
        "arguments",
        "",
        "([Ljava/lang/String;)Ljava/lang/String;",
        "readText",
        "path",
        "Result",
        "Report",
        "Repair",
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
.field private static final AP_INTERFACES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lcom/shilapi/xcertplay/network/HotspotIpv6Check;

.field private static final ROUTE_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$N1YvutZ2ekYIi1AbAVXy5VZsWkk(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check;->linkLocalRouteTables$lambda$23(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QhWYtTv9yDJK4GZgu52mq1guG7Q(Ljava/util/List;)Lcom/shilapi/xcertplay/network/RootShell$Result;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check;->repair$lambda$5(Ljava/util/List;)Lcom/shilapi/xcertplay/network/RootShell$Result;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qDAz6n0JxTJEP7aRexZTvbIoyGI(Landroid/content/Context;Z)Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check;->repair$lambda$6(Landroid/content/Context;Z)Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zFld8QUJ8q5FTS5YXVN6-GU3aCQ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check;->ruleTablesFor$lambda$16(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/shilapi/xcertplay/network/HotspotIpv6Check;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/network/HotspotIpv6Check;->INSTANCE:Lcom/shilapi/xcertplay/network/HotspotIpv6Check;

    const/4 v0, 0x5

    .line 43
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "ap0"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string/jumbo v4, "softap0"

    aput-object v4, v1, v3

    const/4 v4, 0x2

    const-string/jumbo v5, "swlan0"

    aput-object v5, v1, v4

    const/4 v5, 0x3

    const-string/jumbo v6, "wlan1"

    aput-object v6, v1, v5

    const/4 v6, 0x4

    const-string/jumbo v7, "wlan0"

    aput-object v7, v1, v6

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/shilapi/xcertplay/network/HotspotIpv6Check;->AP_INTERFACES:Ljava/util/List;

    const/16 v1, 0x9

    .line 164
    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v7, "unicast"

    aput-object v7, v1, v2

    const-string v2, "local"

    aput-object v2, v1, v3

    const-string v2, "broadcast"

    aput-object v2, v1, v4

    const-string v2, "multicast"

    aput-object v2, v1, v5

    const-string/jumbo v2, "unreachable"

    aput-object v2, v1, v6

    const-string v2, "prohibit"

    aput-object v2, v1, v0

    const-string v0, "blackhole"

    const/4 v2, 0x6

    aput-object v0, v1, v2

    const-string/jumbo v0, "throw"

    const/4 v2, 0x7

    aput-object v0, v1, v2

    const-string v0, "anycast"

    const/16 v2, 0x8

    aput-object v0, v1, v2

    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/network/HotspotIpv6Check;->ROUTE_TYPES:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final linkLocalRouteTables$lambda$23(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "line"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "\\s+"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 211
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 149
    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 211
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 212
    :cond_1
    check-cast v0, Ljava/util/List;

    .line 150
    check-cast v0, Ljava/lang/Iterable;

    .line 214
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 215
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v1, :cond_3

    .line 217
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 218
    :cond_3
    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    .line 150
    sget-object v5, Lcom/shilapi/xcertplay/network/HotspotIpv6Check;->ROUTE_TYPES:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 219
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    goto :goto_1

    .line 222
    :cond_4
    check-cast p1, Ljava/util/List;

    .line 151
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "fe80::/64"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    return-object v1

    .line 152
    :cond_5
    const-string v0, "dev"

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-ltz v2, :cond_6

    goto :goto_2

    :cond_6
    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_7

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    add-int/2addr v0, v3

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_3

    :cond_7
    move-object v0, v1

    .line 153
    :goto_3
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return-object v1

    .line 154
    :cond_8
    const-string/jumbo p0, "table"

    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-ltz v0, :cond_9

    move-object v1, p0

    :cond_9
    if-eqz v1, :cond_b

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result p0

    add-int/2addr p0, v3

    invoke-static {p1, p0}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_a

    goto :goto_4

    :cond_a
    return-object p0

    :cond_b
    :goto_4
    const-string p0, "main"

    return-object p0
.end method

.method private final readText(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 180
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/network/HotspotIpv6Check;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {v1, v0, p1, v0}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, p1

    :goto_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic repair$default(Lcom/shilapi/xcertplay/network/HotspotIpv6Check;Landroid/content/Context;Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;ZLcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;ILjava/lang/Object;)Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Repair;
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 89
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check;->repair(Landroid/content/Context;Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;ZLcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;)Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Repair;

    move-result-object p0

    return-object p0
.end method

.method private static final repair$lambda$5(Ljava/util/List;)Lcom/shilapi/xcertplay/network/RootShell$Result;
    .locals 7

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    sget-object v1, Lcom/shilapi/xcertplay/network/RootShell;->INSTANCE:Lcom/shilapi/xcertplay/network/RootShell;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v6}, Lcom/shilapi/xcertplay/network/RootShell;->run$default(Lcom/shilapi/xcertplay/network/RootShell;Ljava/util/List;JILjava/lang/Object;)Lcom/shilapi/xcertplay/network/RootShell$Result;

    move-result-object p0

    return-object p0
.end method

.method private static final repair$lambda$6(Landroid/content/Context;Z)Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;
    .locals 1

    .line 99
    sget-object v0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->INSTANCE:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;

    invoke-virtual {v0, p0, p1}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->openAdb(Landroid/content/Context;Z)Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic repairCommands$shared_release$default(Lcom/shilapi/xcertplay/network/HotspotIpv6Check;Ljava/lang/String;Ljava/util/Set;ZILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 113
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check;->repairCommands$shared_release(Ljava/lang/String;Ljava/util/Set;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final ruleTablesFor$lambda$16(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "line"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "\\s+"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p1

    .line 140
    const-string v0, "oif"

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, 0x0

    if-ltz v0, :cond_4

    add-int/lit8 v0, v0, 0x1

    .line 141
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_2

    .line 204
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 205
    check-cast v0, Ljava/lang/String;

    .line 142
    const-string v3, "lookup"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "table"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :cond_3
    :goto_1
    add-int/lit8 p0, v1, 0x1

    .line 143
    invoke-static {p1, p0}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_4

    if-ltz v1, :cond_4

    return-object p0

    :cond_4
    :goto_2
    return-object v2
.end method

.method public static synthetic run$default(Lcom/shilapi/xcertplay/network/HotspotIpv6Check;Landroid/content/Context;Ljava/lang/String;ILjava/lang/Object;)Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 46
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check;->run(Landroid/content/Context;Ljava/lang/String;)Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;

    move-result-object p0

    return-object p0
.end method

.method private static final run$report(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;Ljava/lang/String;)Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;
    .locals 6

    .line 52
    new-instance v0, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move-object v1, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;-><init>(Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Z)V

    return-object v0
.end method

.method private final varargs runIp([Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 166
    const-string v0, "ip"

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v2, p0

    check-cast v2, Lcom/shilapi/xcertplay/network/HotspotIpv6Check;

    const/4 v2, 0x3

    .line 167
    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "/system/bin/ip"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "/sbin/ip"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 201
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    .line 167
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->canExecute()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_1
    move-object v3, v1

    :cond_2
    :goto_0
    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v3

    .line 168
    :goto_1
    new-instance v2, Ljava/lang/ProcessBuilder;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/ProcessBuilder;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v4}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 170
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_2
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const-string v2, "getInputStream(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v3, Ljava/io/Reader;

    instance-of v0, v3, Ljava/io/BufferedReader;

    if-eqz v0, :cond_4

    check-cast v3, Ljava/io/BufferedReader;

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/io/BufferedReader;

    const/16 v2, 0x2000

    invoke-direct {v0, v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v3, v0

    :goto_3
    check-cast v3, Ljava/io/Closeable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    move-object v0, v3

    check-cast v0, Ljava/io/BufferedReader;

    check-cast v0, Ljava/io/Reader;

    invoke-static {v0}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 172
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3

    invoke-static {p1, v3, v4, v2}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Ljava/lang/Process;JLjava/util/concurrent/TimeUnit;)Z

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I

    .line 173
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Process;->exitValue()I

    move-result v2

    if-nez v2, :cond_6

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-nez v2, :cond_6

    goto :goto_5

    :cond_6
    move-object v0, v1

    .line 176
    :goto_5
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    .line 166
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_6

    :catchall_1
    move-exception v0

    .line 171
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v2

    :try_start_7
    invoke-static {v3, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v0

    .line 176
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception p1

    .line 166
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 178
    :goto_6
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_7

    :cond_7
    move-object v1, p1

    :goto_7
    check-cast v1, Ljava/lang/String;

    return-object v1
.end method


# virtual methods
.method public final evaluate$shared_release(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Pair<",
            "Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "routes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rules"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iface"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0, p1, p3}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check;->linkLocalRouteTables$shared_release(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    .line 128
    invoke-virtual {p0, p2, p3}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check;->ruleTablesFor$shared_release(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p2

    .line 129
    move-object p3, p2

    check-cast p3, Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p3, "main"

    invoke-static {p3}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p3

    :cond_0
    check-cast p3, Ljava/util/Set;

    .line 130
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .line 196
    instance-of p1, v0, Ljava/util/Collection;

    if-eqz p1, :cond_1

    move-object p1, v0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 197
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 130
    invoke-interface {p3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 131
    sget-object p1, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;->OK:Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;

    goto :goto_1

    :cond_3
    :goto_0
    sget-object p1, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;->MISSING_ROUTE:Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;

    .line 132
    :goto_1
    const-string p3, ","

    move-object v1, p3

    check-cast v1, Ljava/lang/CharSequence;

    const/16 v7, 0x3e

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-string v2, "none"

    if-nez v1, :cond_4

    move-object v0, v2

    .line 133
    :cond_4
    move-object v3, p2

    check-cast v3, Ljava/lang/Iterable;

    move-object v4, p3

    check-cast v4, Ljava/lang/CharSequence;

    const/16 v10, 0x3e

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-nez p3, :cond_5

    goto :goto_2

    :cond_5
    move-object v2, p2

    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "linkLocalRouteTables="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " ifaceRuleTables="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 131
    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final hasMainLinkLocalRoute$shared_release(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const-string v0, "procRoutes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iface"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->lineSequence(Ljava/lang/CharSequence;)Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 199
    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 160
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v2, Lkotlin/text/Regex;

    const-string v3, "\\s+"

    invoke-direct {v2, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v0

    .line 161
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-string v5, "fe80000000000000"

    invoke-static {v2, v5, v1, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "40"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x9

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return v1
.end method

.method public final linkLocalRouteTables$shared_release(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iface"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->lineSequence(Ljava/lang/CharSequence;)Lkotlin/sequences/Sequence;

    move-result-object p1

    new-instance v0, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 155
    invoke-static {p1}, Lkotlin/sequences/SequencesKt;->toSet(Lkotlin/sequences/Sequence;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final repair(Landroid/content/Context;Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;ZLcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;)Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Repair;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "report"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    if-nez v2, :cond_0

    return-object v4

    .line 91
    :cond_0
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;->getResult()Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;

    move-result-object v5

    sget-object v6, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;->MISSING_ROUTE:Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;

    if-eq v5, v6, :cond_1

    return-object v4

    .line 96
    :cond_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v5, v6, :cond_2

    move-object v5, v4

    goto :goto_0

    :cond_2
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "-6"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "rule"

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-string/jumbo v6, "show"

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-direct {v0, v5}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check;->runIp([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 97
    :goto_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v6, v2, v5}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check;->repairPlan$shared_release(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_3

    return-object v4

    .line 98
    :cond_3
    sget-object v7, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->INSTANCE:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;

    sget-object v4, Lcom/shilapi/xcertplay/network/RootShell;->INSTANCE:Lcom/shilapi/xcertplay/network/RootShell;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/network/RootShell;->available()Z

    move-result v9

    new-instance v10, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$$ExternalSyntheticLambda0;

    invoke-direct {v10}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$$ExternalSyntheticLambda0;-><init>()V

    new-instance v13, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$$ExternalSyntheticLambda1;

    move/from16 v4, p3

    invoke-direct {v13, v1, v4}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;Z)V

    const/16 v14, 0x10

    const/4 v15, 0x0

    const/4 v12, 0x0

    move-object/from16 v11, p4

    invoke-static/range {v7 .. v15}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->run$shared_release$default(Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;Ljava/util/List;ZLkotlin/jvm/functions/Function1;Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;

    move-result-object v4

    .line 101
    new-instance v5, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Repair;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;->getTried()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v0, v1, v2}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check;->run(Landroid/content/Context;Ljava/lang/String;)Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object v1, v3

    :goto_1
    invoke-direct {v5, v1, v4}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Repair;-><init>(Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;)V

    return-object v5
.end method

.method public final repairCommands$shared_release(Ljava/lang/String;Ljava/util/Set;Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "iface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tables"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "[A-Za-z0-9_.-]{1,32}"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 115
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 116
    :cond_0
    const-string v1, "ip -6 route replace fe80::/64 dev "

    if-eqz p3, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 117
    :cond_1
    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p2, "main"

    invoke-static {p2}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    :cond_2
    check-cast p2, Ljava/lang/Iterable;

    .line 189
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    check-cast p3, Ljava/util/Collection;

    .line 190
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    .line 117
    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 190
    invoke-interface {p3, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 191
    :cond_4
    check-cast p3, Ljava/util/List;

    .line 118
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    return-object v2

    .line 119
    :cond_5
    check-cast p3, Ljava/lang/Iterable;

    .line 192
    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p3, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p2, Ljava/util/Collection;

    .line 193
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 194
    check-cast v0, Ljava/lang/String;

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " table "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 195
    :cond_6
    check-cast p2, Ljava/util/List;

    return-object p2
.end method

.method public final repairPlan$shared_release(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "iface"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x15

    if-ge p1, v0, :cond_0

    .line 106
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p0, p2, p1, p3}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check;->repairCommands$shared_release(Ljava/lang/String;Ljava/util/Set;Z)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez p3, :cond_1

    .line 107
    const-string p3, ""

    :cond_1
    invoke-virtual {p0, p3, p2}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check;->ruleTablesFor$shared_release(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check;->repairCommands$shared_release$default(Lcom/shilapi/xcertplay/network/HotspotIpv6Check;Ljava/lang/String;Ljava/util/Set;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final ruleTablesFor$shared_release(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "rules"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iface"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->lineSequence(Ljava/lang/CharSequence;)Lkotlin/sequences/Sequence;

    move-result-object p1

    new-instance v0, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 144
    invoke-static {p1}, Lkotlin/sequences/SequencesKt;->toSet(Lkotlin/sequences/Sequence;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final run(Landroid/content/Context;Ljava/lang/String;)Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget-object v0, Lcom/shilapi/xcertplay/network/CarHotspotStatus;->INSTANCE:Lcom/shilapi/xcertplay/network/CarHotspotStatus;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/network/CarHotspotStatus;->isOnOrStarting(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v4

    .line 48
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOfNotNull(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    sget-object v0, Lcom/shilapi/xcertplay/network/HotspotIpv6Check;->AP_INTERFACES:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 183
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    .line 49
    :try_start_0
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v0, v6

    :cond_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_3
    move-object v5, v1

    .line 48
    :goto_2
    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_4

    .line 50
    new-instance v1, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;

    sget-object v2, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;->NO_INTERFACE:Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v3, 0x0

    const-string v5, ""

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;-><init>(Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    .line 51
    :cond_4
    invoke-static {v5, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    .line 53
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "/proc/sys/net/ipv6/conf/"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/disable_ipv6"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check;->readText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_5
    move-object p2, v1

    :goto_3
    const-string v0, "1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 54
    sget-object p2, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;->IPV6_DISABLED:Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;

    const-string v0, "disable_ipv6=1"

    invoke-static {v5, v4, p1, p2, v0}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check;->run$report(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;Ljava/lang/String;)Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;

    move-result-object p1

    return-object p1

    .line 56
    :cond_6
    :try_start_1
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object p2, p0

    check-cast p2, Lcom/shilapi/xcertplay/network/HotspotIpv6Check;

    .line 57
    invoke-static {v5}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object p2

    const-string v0, "list(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Iterable;

    .line 186
    instance-of v0, p2, Ljava/util/Collection;

    if-eqz v0, :cond_8

    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    const/4 p2, 0x0

    goto :goto_4

    .line 187
    :cond_8
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 57
    instance-of v6, v0, Ljava/net/Inet6Address;

    if-eqz v6, :cond_9

    check-cast v0, Ljava/net/Inet6Address;

    invoke-virtual {v0}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 p2, 0x1

    :goto_4
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 56
    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object p2, v0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 58
    :goto_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p2}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    move-object p2, v0

    :cond_a
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_b

    .line 59
    sget-object p2, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;->NO_LINK_LOCAL:Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;

    const-string v0, ""

    invoke-static {v5, v4, p1, p2, v0}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check;->run$report(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;Ljava/lang/String;)Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;

    move-result-object p1

    return-object p1

    .line 61
    :cond_b
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    const-string v6, "routes=unreadable"

    if-ge p2, v0, :cond_10

    .line 63
    const-string p2, "/proc/net/ipv6_route"

    invoke-direct {p0, p2}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check;->readText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_c

    .line 64
    sget-object v0, Lcom/shilapi/xcertplay/network/HotspotIpv6Check;->INSTANCE:Lcom/shilapi/xcertplay/network/HotspotIpv6Check;

    invoke-virtual {v0, p2, v5}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check;->hasMainLinkLocalRoute$shared_release(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 66
    :cond_c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    sget-object p2, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;->OK:Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;

    const-string/jumbo v0, "table=main(single)"

    invoke-static {v5, v4, p1, p2, v0}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check;->run$report(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;Ljava/lang/String;)Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;

    move-result-object p1

    goto :goto_6

    .line 67
    :cond_d
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    sget-object p2, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;->MISSING_ROUTE:Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;

    const-string/jumbo v0, "table=main(single) route=missing"

    invoke-static {v5, v4, p1, p2, v0}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check;->run$report(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;Ljava/lang/String;)Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;

    move-result-object p1

    goto :goto_6

    :cond_e
    if-nez v1, :cond_f

    .line 68
    sget-object p2, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;->UNKNOWN:Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;

    invoke-static {v5, v4, p1, p2, v6}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check;->run$report(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;Ljava/lang/String;)Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;

    move-result-object p1

    :goto_6
    return-object p1

    .line 65
    :cond_f
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_10
    const/4 p2, 0x5

    .line 71
    new-array p2, p2, [Ljava/lang/String;

    const-string v0, "-6"

    aput-object v0, p2, v3

    const-string v1, "route"

    aput-object v1, p2, v2

    const/4 v1, 0x2

    const-string/jumbo v7, "show"

    aput-object v7, p2, v1

    const-string/jumbo v8, "table"

    const/4 v9, 0x3

    aput-object v8, p2, v9

    const-string v8, "all"

    const/4 v10, 0x4

    aput-object v8, p2, v10

    invoke-direct {p0, p2}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check;->runIp([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_11

    .line 72
    sget-object p2, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;->UNKNOWN:Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;

    invoke-static {v5, v4, p1, p2, v6}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check;->run$report(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;Ljava/lang/String;)Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;

    move-result-object p1

    return-object p1

    .line 73
    :cond_11
    new-array v6, v9, [Ljava/lang/String;

    aput-object v0, v6, v3

    const-string v0, "rule"

    aput-object v0, v6, v2

    aput-object v7, v6, v1

    invoke-direct {p0, v6}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check;->runIp([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    .line 74
    sget-object p2, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;->UNKNOWN:Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;

    const-string v0, "rules=unreadable"

    invoke-static {v5, v4, p1, p2, v0}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check;->run$report(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;Ljava/lang/String;)Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;

    move-result-object p1

    return-object p1

    .line 75
    :cond_12
    invoke-virtual {p0, p2, v0, v5}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check;->evaluate$shared_release(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p2

    invoke-virtual {p2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;

    invoke-virtual {p2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 76
    invoke-static {v5, v4, p1, v0, p2}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check;->run$report(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;Ljava/lang/String;)Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;

    move-result-object p1

    return-object p1
.end method
