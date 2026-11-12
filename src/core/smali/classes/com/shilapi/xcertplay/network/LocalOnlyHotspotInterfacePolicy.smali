.class public final Lcom/shilapi/xcertplay/network/LocalOnlyHotspotInterfacePolicy;
.super Ljava/lang/Object;
.source "LocalOnlyHotspotInterfacePolicy.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/network/LocalOnlyHotspotInterfacePolicy$Candidate;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLocalOnlyHotspotInterfacePolicy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocalOnlyHotspotInterfacePolicy.kt\ncom/shilapi/xcertplay/network/LocalOnlyHotspotInterfacePolicy\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,37:1\n774#2:38\n865#2,2:39\n669#2,11:41\n774#2:52\n865#2:53\n1761#2,3:54\n866#2:57\n*S KotlinDebug\n*F\n+ 1 LocalOnlyHotspotInterfacePolicy.kt\ncom/shilapi/xcertplay/network/LocalOnlyHotspotInterfacePolicy\n*L\n13#1:38\n13#1:39,2\n18#1:41,11\n20#1:52\n20#1:53\n21#1:54,3\n20#1:57\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u00c0\u0002\u0018\u00002\u00020\u0001:\u0001\u0012B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J<\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\nJ0\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000e\u001a\u00020\u000f2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/LocalOnlyHotspotInterfacePolicy;",
        "",
        "<init>",
        "()V",
        "select",
        "Lcom/shilapi/xcertplay/network/LocalOnlyHotspotInterfacePolicy$Candidate;",
        "candidates",
        "",
        "previousAddresses",
        "",
        "",
        "upstreamInterfaces",
        "configuredBssid",
        "excludedUpstreams",
        "sdk",
        "",
        "beforeStart",
        "now",
        "Candidate",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/network/LocalOnlyHotspotInterfacePolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotInterfacePolicy;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotInterfacePolicy;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotInterfacePolicy;->INSTANCE:Lcom/shilapi/xcertplay/network/LocalOnlyHotspotInterfacePolicy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final excludedUpstreams(ILjava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "beforeStart"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "now"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x1a

    if-gt v0, p1, :cond_0

    const/16 v0, 0x1d

    if-ge p1, v0, :cond_0

    return-object p3

    .line 35
    :cond_0
    check-cast p3, Ljava/lang/Iterable;

    invoke-static {p2, p3}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final select(Ljava/util/List;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)Lcom/shilapi/xcertplay/network/LocalOnlyHotspotInterfacePolicy$Candidate;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/network/LocalOnlyHotspotInterfacePolicy$Candidate;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/shilapi/xcertplay/network/LocalOnlyHotspotInterfacePolicy$Candidate;"
        }
    .end annotation

    const-string v0, "candidates"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previousAddresses"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "upstreamInterfaces"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    check-cast p1, Ljava/lang/Iterable;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 39
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotInterfacePolicy$Candidate;

    .line 14
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotInterfacePolicy$Candidate;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotInterfacePolicy$Candidate;->getIpv4()Ljava/util/Set;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 15
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotInterfacePolicy$Candidate;->getName()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v3, Lkotlin/text/Regex;

    const-string v4, "(?:ap|wlan|swlan|softap)[0-9]+"

    invoke-direct {v3, v4}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 40
    :cond_1
    check-cast v0, Ljava/util/List;

    if-eqz p4, :cond_6

    .line 18
    check-cast v0, Ljava/lang/Iterable;

    .line 43
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    move-object v0, p2

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 44
    move-object v2, v1

    check-cast v2, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotInterfacePolicy$Candidate;

    .line 18
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotInterfacePolicy$Candidate;->getBssid()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, p4, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p3, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, v1

    const/4 p3, 0x1

    goto :goto_1

    :cond_4
    if-nez p3, :cond_5

    goto :goto_2

    :cond_5
    move-object p2, v0

    .line 51
    :goto_2
    check-cast p2, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotInterfacePolicy$Candidate;

    return-object p2

    .line 20
    :cond_6
    check-cast v0, Ljava/lang/Iterable;

    .line 52
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/Collection;

    .line 53
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_7
    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotInterfacePolicy$Candidate;

    .line 21
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotInterfacePolicy$Candidate;->getIpv4()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 54
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_8

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_3

    .line 55
    :cond_8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 21
    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 53
    invoke-interface {p1, p4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 57
    :cond_a
    check-cast p1, Ljava/util/List;

    .line 22
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->singleOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotInterfacePolicy$Candidate;

    return-object p1
.end method
