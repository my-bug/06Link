.class public final Lcom/shilapi/xcertplay/network/P2pStartupRecovery;
.super Ljava/lang/Object;
.source "P2pStartupRecovery.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nP2pStartupRecovery.kt\nKotlin\n*S Kotlin\n*F\n+ 1 P2pStartupRecovery.kt\ncom/shilapi/xcertplay/network/P2pStartupRecovery\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,139:1\n1#2:140\n2746#3,3:141\n1869#3,2:144\n1869#3,2:146\n*S KotlinDebug\n*F\n+ 1 P2pStartupRecovery.kt\ncom/shilapi/xcertplay/network/P2pStartupRecovery\n*L\n42#1:141,3\n35#1:144,2\n36#1:146,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\'\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u000cJ(\u0010\r\u001a\u00020\u00052\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00100\u0012JL\u0010\u0013\u001a\u00020\u00052\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00070\t2\u0014\u0010\u0015\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0004\u0012\u00020\u00160\u00122\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00100\u0012JC\u0010\u0017\u001a\u00020\u00052\u0008\u0010\n\u001a\u0004\u0018\u00010\u00072\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00052\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00100\u0012\u00a2\u0006\u0002\u0010\u0018\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/P2pStartupRecovery;",
        "",
        "<init>",
        "()V",
        "rememberedFrequency",
        "Lcom/shilapi/xcertplay/network/P2pCreationRequest;",
        "frequency",
        "",
        "plan",
        "",
        "stationFrequency",
        "preferred",
        "(Ljava/lang/Integer;Lcom/shilapi/xcertplay/network/P2pCreationRequest;)Ljava/util/List;",
        "createLegacy",
        "beforeRetry",
        "Lkotlin/Function0;",
        "",
        "request",
        "Lkotlin/Function1;",
        "createLegacyForced",
        "channels",
        "force",
        "",
        "create",
        "(Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;Lcom/shilapi/xcertplay/network/P2pCreationRequest;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/network/P2pCreationRequest;",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/network/P2pStartupRecovery;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/network/P2pStartupRecovery;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/network/P2pStartupRecovery;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/network/P2pStartupRecovery;->INSTANCE:Lcom/shilapi/xcertplay/network/P2pStartupRecovery;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic create$default(Lcom/shilapi/xcertplay/network/P2pStartupRecovery;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;Lcom/shilapi/xcertplay/network/P2pCreationRequest;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/shilapi/xcertplay/network/P2pCreationRequest;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x0

    .line 108
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/network/P2pStartupRecovery;->create(Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;Lcom/shilapi/xcertplay/network/P2pCreationRequest;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/network/P2pCreationRequest;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic plan$default(Lcom/shilapi/xcertplay/network/P2pStartupRecovery;Ljava/lang/Integer;Lcom/shilapi/xcertplay/network/P2pCreationRequest;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 23
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/network/P2pStartupRecovery;->plan(Ljava/lang/Integer;Lcom/shilapi/xcertplay/network/P2pCreationRequest;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final plan$lambda$4$channel(Ljava/util/Set;Ljava/util/List;Lcom/shilapi/xcertplay/network/P2pCreationMode;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/network/P2pCreationRequest;",
            ">;",
            "Lcom/shilapi/xcertplay/network/P2pCreationMode;",
            "I)V"
        }
    .end annotation

    .line 29
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/shilapi/xcertplay/network/P2pCreationRequest;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Lcom/shilapi/xcertplay/network/P2pCreationRequest;-><init>(Lcom/shilapi/xcertplay/network/P2pCreationMode;Ljava/lang/Integer;)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static final plan$lambda$4$fiveGhz(Ljava/util/Set;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/network/P2pCreationRequest;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x143c

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x1671

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 146
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 36
    sget-object v2, Lcom/shilapi/xcertplay/network/P2pCreationMode;->FIXED_5_GHZ:Lcom/shilapi/xcertplay/network/P2pCreationMode;

    invoke-static {p0, p1, v2, v1}, Lcom/shilapi/xcertplay/network/P2pStartupRecovery;->plan$lambda$4$channel(Ljava/util/Set;Ljava/util/List;Lcom/shilapi/xcertplay/network/P2pCreationMode;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final plan$lambda$4$twoGhz(Ljava/util/Set;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/network/P2pCreationRequest;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x985

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x96c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x99e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 144
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 35
    sget-object v2, Lcom/shilapi/xcertplay/network/P2pCreationMode;->FIXED_2_GHZ:Lcom/shilapi/xcertplay/network/P2pCreationMode;

    invoke-static {p0, p1, v2, v1}, Lcom/shilapi/xcertplay/network/P2pStartupRecovery;->plan$lambda$4$channel(Ljava/util/Set;Ljava/util/List;Lcom/shilapi/xcertplay/network/P2pCreationMode;I)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;Lcom/shilapi/xcertplay/network/P2pCreationRequest;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/network/P2pCreationRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/shilapi/xcertplay/network/P2pCreationRequest;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/network/P2pCreationRequest;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/shilapi/xcertplay/network/P2pCreationRequest;"
        }
    .end annotation

    const-string v0, "beforeRetry"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0, p1, p3}, Lcom/shilapi/xcertplay/network/P2pStartupRecovery;->plan(Ljava/lang/Integer;Lcom/shilapi/xcertplay/network/P2pCreationRequest;)Ljava/util/List;

    move-result-object p1

    .line 116
    move-object p3, p1

    check-cast p3, Ljava/lang/Iterable;

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v2, v0, 0x1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shilapi/xcertplay/network/P2pCreationRequest;

    .line 119
    :goto_1
    :try_start_0
    invoke-interface {p4, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/shilapi/xcertplay/network/P2pCreateRejected; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v4

    .line 123
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/network/P2pCreateRejected;->getReason()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    if-nez v1, :cond_0

    .line 125
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_1

    .line 127
    :cond_0
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/network/P2pCreateRejected;->getReason()I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 128
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move v0, v2

    goto :goto_0

    .line 131
    :cond_1
    throw v4

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 136
    const-string p2, "No Wi-Fi Direct creation mode attempted"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final createLegacy(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/network/P2pCreationRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/network/P2pCreationRequest;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/shilapi/xcertplay/network/P2pCreationRequest;"
        }
    .end annotation

    const-string v0, "beforeRetry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    new-instance v0, Lcom/shilapi/xcertplay/network/P2pCreationRequest;

    sget-object v1, Lcom/shilapi/xcertplay/network/P2pCreationMode;->SYSTEM_DEFAULT:Lcom/shilapi/xcertplay/network/P2pCreationMode;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/shilapi/xcertplay/network/P2pCreationRequest;-><init>(Lcom/shilapi/xcertplay/network/P2pCreationMode;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 52
    :try_start_0
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/shilapi/xcertplay/network/P2pCreateRejected; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 54
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/network/P2pCreateRejected;->getReason()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 55
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 56
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 54
    :cond_0
    throw v1
.end method

.method public final createLegacyForced(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/network/P2pCreationRequest;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/network/P2pCreationRequest;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/shilapi/xcertplay/network/P2pCreationRequest;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    const-string v3, "channels"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "force"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "beforeRetry"

    move-object/from16 v4, p3

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "request"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    check-cast v0, Ljava/util/Collection;

    const/4 v3, 0x0

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    .line 77
    move-object v0, v5

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    add-int/lit8 v11, v9, 0x1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    if-eqz v12, :cond_1

    if-eqz v10, :cond_0

    goto :goto_1

    :cond_0
    move v9, v11

    goto :goto_0

    .line 79
    :cond_1
    :goto_1
    invoke-interface {v1, v12}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_2

    if-eqz v12, :cond_2

    move v9, v11

    const/4 v10, 0x0

    goto :goto_0

    :cond_2
    if-eqz v12, :cond_3

    .line 80
    sget-object v13, Lcom/shilapi/xcertplay/network/P2pLegacyChannel;->INSTANCE:Lcom/shilapi/xcertplay/network/P2pLegacyChannel;

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    invoke-virtual {v13, v12}, Lcom/shilapi/xcertplay/network/P2pLegacyChannel;->frequencyOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_2

    :cond_3
    move-object v12, v3

    :goto_2
    const/4 v13, 0x2

    if-nez v12, :cond_4

    .line 82
    new-instance v12, Lcom/shilapi/xcertplay/network/P2pCreationRequest;

    sget-object v14, Lcom/shilapi/xcertplay/network/P2pCreationMode;->SYSTEM_DEFAULT:Lcom/shilapi/xcertplay/network/P2pCreationMode;

    invoke-direct {v12, v14, v3, v13, v3}, Lcom/shilapi/xcertplay/network/P2pCreationRequest;-><init>(Lcom/shilapi/xcertplay/network/P2pCreationMode;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_4

    .line 83
    :cond_4
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/16 v15, 0x1388

    if-lt v14, v15, :cond_5

    new-instance v14, Lcom/shilapi/xcertplay/network/P2pCreationRequest;

    sget-object v15, Lcom/shilapi/xcertplay/network/P2pCreationMode;->FIXED_5_GHZ:Lcom/shilapi/xcertplay/network/P2pCreationMode;

    invoke-direct {v14, v15, v12}, Lcom/shilapi/xcertplay/network/P2pCreationRequest;-><init>(Lcom/shilapi/xcertplay/network/P2pCreationMode;Ljava/lang/Integer;)V

    goto :goto_3

    .line 84
    :cond_5
    new-instance v14, Lcom/shilapi/xcertplay/network/P2pCreationRequest;

    sget-object v15, Lcom/shilapi/xcertplay/network/P2pCreationMode;->FIXED_2_GHZ:Lcom/shilapi/xcertplay/network/P2pCreationMode;

    invoke-direct {v14, v15, v12}, Lcom/shilapi/xcertplay/network/P2pCreationRequest;-><init>(Lcom/shilapi/xcertplay/network/P2pCreationMode;Ljava/lang/Integer;)V

    :goto_3
    move-object v12, v14

    :goto_4
    move v14, v0

    .line 88
    :goto_5
    :try_start_0
    invoke-interface {v2, v12}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/shilapi/xcertplay/network/P2pCreateRejected; {:try_start_0 .. :try_end_0} :catch_0

    return-object v12

    :catch_0
    move-exception v0

    .line 92
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/P2pCreateRejected;->getReason()I

    move-result v15

    if-ne v15, v13, :cond_6

    if-nez v14, :cond_6

    .line 94
    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    const/4 v14, 0x1

    goto :goto_5

    .line 96
    :cond_6
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/P2pCreateRejected;->getReason()I

    move-result v12

    if-nez v12, :cond_7

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v12

    if-ge v9, v12, :cond_7

    .line 97
    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move v9, v11

    move v0, v14

    goto :goto_0

    .line 100
    :cond_7
    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 105
    const-string v1, "No Wi-Fi Direct creation mode attempted"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method public final plan(Ljava/lang/Integer;Lcom/shilapi/xcertplay/network/P2pCreationRequest;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lcom/shilapi/xcertplay/network/P2pCreationRequest;",
            ")",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/network/P2pCreationRequest;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 23
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 24
    new-instance v6, Lkotlin/ranges/IntRange;

    const/16 v7, 0x99e

    const/16 v8, 0x96c

    invoke-direct {v6, v8, v7}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lkotlin/ranges/IntRange;->contains(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int/2addr v6, v8

    rem-int/2addr v6, v3

    if-nez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const/16 v7, 0x143c

    .line 26
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x1450

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0x1464

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v10, 0x1478

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v11, 0x1671

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v12, 0x1685

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v13, 0x1699

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v14, 0x16ad

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v15, 0x16c1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x5

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/Integer;

    aput-object v7, v3, v5

    aput-object v8, v3, v4

    const/4 v4, 0x2

    aput-object v9, v3, v4

    const/4 v5, 0x3

    aput-object v10, v3, v5

    const/4 v5, 0x4

    aput-object v11, v3, v5

    aput-object v12, v3, v16

    const/4 v5, 0x6

    aput-object v13, v3, v5

    const/4 v5, 0x7

    aput-object v14, v3, v5

    const/16 v5, 0x8

    aput-object v15, v3, v5

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3, v0}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v3

    .line 27
    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v5, Ljava/util/Set;

    const/4 v7, 0x0

    if-eqz v1, :cond_1

    .line 31
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/network/P2pCreationRequest;->getMode()Lcom/shilapi/xcertplay/network/P2pCreationMode;

    move-result-object v8

    goto :goto_1

    :cond_1
    move-object v8, v7

    :goto_1
    sget-object v9, Lcom/shilapi/xcertplay/network/P2pCreationMode;->SYSTEM_DEFAULT:Lcom/shilapi/xcertplay/network/P2pCreationMode;

    if-ne v8, v9, :cond_2

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/network/P2pCreationRequest;->getFrequencyMHz()Ljava/lang/Integer;

    move-result-object v8

    if-nez v8, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    .line 32
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/network/P2pCreationRequest;->getFrequencyMHz()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v8, Lcom/shilapi/xcertplay/network/P2pStartupRecovery;->INSTANCE:Lcom/shilapi/xcertplay/network/P2pStartupRecovery;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/shilapi/xcertplay/network/P2pStartupRecovery;->rememberedFrequency(I)Lcom/shilapi/xcertplay/network/P2pCreationRequest;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/network/P2pCreationRequest;->getMode()Lcom/shilapi/xcertplay/network/P2pCreationMode;

    move-result-object v8

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/network/P2pCreationRequest;->getFrequencyMHz()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v5, v2, v8, v1}, Lcom/shilapi/xcertplay/network/P2pStartupRecovery;->plan$lambda$4$channel(Ljava/util/Set;Ljava/util/List;Lcom/shilapi/xcertplay/network/P2pCreationMode;I)V

    .line 33
    :cond_3
    :goto_2
    const-string v1, "Required value was null."

    if-eqz v6, :cond_5

    sget-object v8, Lcom/shilapi/xcertplay/network/P2pCreationMode;->ALIGNED_2_GHZ:Lcom/shilapi/xcertplay/network/P2pCreationMode;

    if-eqz v0, :cond_4

    move-object v9, v0

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    invoke-static {v5, v2, v8, v9}, Lcom/shilapi/xcertplay/network/P2pStartupRecovery;->plan$lambda$4$channel(Ljava/util/Set;Ljava/util/List;Lcom/shilapi/xcertplay/network/P2pCreationMode;I)V

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_3
    if-eqz v3, :cond_7

    .line 34
    sget-object v3, Lcom/shilapi/xcertplay/network/P2pCreationMode;->ALIGNED_5_GHZ:Lcom/shilapi/xcertplay/network/P2pCreationMode;

    if-eqz v0, :cond_6

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v5, v2, v3, v0}, Lcom/shilapi/xcertplay/network/P2pStartupRecovery;->plan$lambda$4$channel(Ljava/util/Set;Ljava/util/List;Lcom/shilapi/xcertplay/network/P2pCreationMode;I)V

    goto :goto_4

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_4
    if-eqz v6, :cond_8

    .line 39
    invoke-static {v5, v2}, Lcom/shilapi/xcertplay/network/P2pStartupRecovery;->plan$lambda$4$twoGhz(Ljava/util/Set;Ljava/util/List;)V

    invoke-static {v5, v2}, Lcom/shilapi/xcertplay/network/P2pStartupRecovery;->plan$lambda$4$fiveGhz(Ljava/util/Set;Ljava/util/List;)V

    goto :goto_5

    :cond_8
    invoke-static {v5, v2}, Lcom/shilapi/xcertplay/network/P2pStartupRecovery;->plan$lambda$4$fiveGhz(Ljava/util/Set;Ljava/util/List;)V

    invoke-static {v5, v2}, Lcom/shilapi/xcertplay/network/P2pStartupRecovery;->plan$lambda$4$twoGhz(Ljava/util/Set;Ljava/util/List;)V

    .line 42
    :goto_5
    move-object v0, v2

    check-cast v0, Ljava/lang/Iterable;

    .line 141
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_9

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_6

    .line 142
    :cond_9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shilapi/xcertplay/network/P2pCreationRequest;

    .line 42
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/network/P2pCreationRequest;->getMode()Lcom/shilapi/xcertplay/network/P2pCreationMode;

    move-result-object v1

    sget-object v3, Lcom/shilapi/xcertplay/network/P2pCreationMode;->SYSTEM_DEFAULT:Lcom/shilapi/xcertplay/network/P2pCreationMode;

    if-ne v1, v3, :cond_a

    goto :goto_7

    :cond_b
    :goto_6
    new-instance v0, Lcom/shilapi/xcertplay/network/P2pCreationRequest;

    sget-object v1, Lcom/shilapi/xcertplay/network/P2pCreationMode;->SYSTEM_DEFAULT:Lcom/shilapi/xcertplay/network/P2pCreationMode;

    invoke-direct {v0, v1, v7, v4, v7}, Lcom/shilapi/xcertplay/network/P2pCreationRequest;-><init>(Lcom/shilapi/xcertplay/network/P2pCreationMode;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    :goto_7
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final rememberedFrequency(I)Lcom/shilapi/xcertplay/network/P2pCreationRequest;
    .locals 12

    const/16 v0, 0x96c

    const/4 v1, 0x5

    if-gt v0, p1, :cond_0

    const/16 v0, 0x99f

    if-ge p1, v0, :cond_0

    add-int/lit16 v0, p1, -0x96c

    .line 15
    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/shilapi/xcertplay/network/P2pCreationRequest;

    sget-object v1, Lcom/shilapi/xcertplay/network/P2pCreationMode;->FIXED_2_GHZ:Lcom/shilapi/xcertplay/network/P2pCreationMode;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/shilapi/xcertplay/network/P2pCreationRequest;-><init>(Lcom/shilapi/xcertplay/network/P2pCreationMode;Ljava/lang/Integer;)V

    return-object v0

    :cond_0
    const/16 v0, 0x143c

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x1450

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x1464

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x1478

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x1671

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x1685

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x1699

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x16ad

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0x16c1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v10, 0x9

    new-array v10, v10, [Ljava/lang/Integer;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v0, 0x1

    aput-object v2, v10, v0

    const/4 v0, 0x2

    aput-object v3, v10, v0

    const/4 v0, 0x3

    aput-object v4, v10, v0

    const/4 v0, 0x4

    aput-object v5, v10, v0

    aput-object v6, v10, v1

    const/4 v0, 0x6

    aput-object v7, v10, v0

    const/4 v0, 0x7

    aput-object v8, v10, v0

    const/16 v0, 0x8

    aput-object v9, v10, v0

    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    new-instance v0, Lcom/shilapi/xcertplay/network/P2pCreationRequest;

    sget-object v1, Lcom/shilapi/xcertplay/network/P2pCreationMode;->FIXED_5_GHZ:Lcom/shilapi/xcertplay/network/P2pCreationMode;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/shilapi/xcertplay/network/P2pCreationRequest;-><init>(Lcom/shilapi/xcertplay/network/P2pCreationMode;Ljava/lang/Integer;)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
