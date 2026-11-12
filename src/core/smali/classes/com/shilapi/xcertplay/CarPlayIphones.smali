.class public final Lcom/shilapi/xcertplay/CarPlayIphones;
.super Ljava/lang/Object;
.source "CarPlayIphones.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCarPlayIphones.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CarPlayIphones.kt\ncom/shilapi/xcertplay/CarPlayIphones\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,52:1\n774#2:53\n865#2,2:54\n1056#2:56\n*S KotlinDebug\n*F\n+ 1 CarPlayIphones.kt\ncom/shilapi/xcertplay/CarPlayIphones\n*L\n19#1:53\n19#1:54,2\n22#1:56\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\"\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003JT\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\u0005\"\u0004\u0008\u0000\u0010\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0014\u0010\n\u001a\u0010\u0012\u0004\u0012\u0002H\u0006\u0012\u0006\u0012\u0004\u0018\u00010\t0\u000b2\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u00020\r0\u000bJ \u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0011JF\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\t2\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00112\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0005\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/CarPlayIphones;",
        "",
        "<init>",
        "()V",
        "pick",
        "",
        "T",
        "bonded",
        "saved",
        "",
        "address",
        "Lkotlin/Function1;",
        "kind",
        "Lcom/shilapi/xcertplay/IphonePairing$Kind;",
        "savedLooksUnpaired",
        "",
        "bondedAddresses",
        "",
        "shouldAutoStartWireless",
        "vendorStack",
        "usbDonglePresent",
        "usbLinkKeys",
        "",
        "savedAddress",
        "bondedIphones",
        "common_release"
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/CarPlayIphones;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/CarPlayIphones;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/CarPlayIphones;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/CarPlayIphones;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayIphones;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final pick(Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+",
            "Lcom/shilapi/xcertplay/IphonePairing$Kind;",
            ">;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "bonded"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    check-cast p1, Ljava/lang/Iterable;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 54
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 20
    invoke-interface {p4, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shilapi/xcertplay/IphonePairing$Kind;

    .line 21
    sget-object v3, Lcom/shilapi/xcertplay/IphonePairing$Kind;->IPHONE:Lcom/shilapi/xcertplay/IphonePairing$Kind;

    if-eq v2, v3, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/shilapi/xcertplay/IphonePairing$Kind;->NOT_IPHONE:Lcom/shilapi/xcertplay/IphonePairing$Kind;

    if-eq v2, v3, :cond_0

    .line 54
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    :cond_2
    check-cast v0, Ljava/util/List;

    .line 53
    check-cast v0, Ljava/lang/Iterable;

    .line 56
    new-instance p1, Lcom/shilapi/xcertplay/CarPlayIphones$pick$$inlined$sortedBy$1;

    invoke-direct {p1, p2, p3}, Lcom/shilapi/xcertplay/CarPlayIphones$pick$$inlined$sortedBy$1;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    check-cast p1, Ljava/util/Comparator;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final savedLooksUnpaired(Ljava/lang/String;Ljava/util/Set;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 29
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    .line 30
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 31
    :cond_1
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public final shouldAutoStartWireless(ZZILjava/lang/String;Ljava/util/Set;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZI",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "bondedIphones"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    if-lez p3, :cond_0

    return v0

    :cond_0
    return v1

    .line 47
    :cond_1
    check-cast p6, Ljava/util/Collection;

    invoke-interface {p6}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    .line 48
    :cond_2
    move-object p1, p4

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    if-eqz p5, :cond_5

    .line 49
    invoke-interface {p5}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-interface {p5, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    :goto_0
    return v0

    :cond_6
    :goto_1
    return v1
.end method
