.class public final Lcom/shilapi/xcertplay/GenericClusterPlaceholder;
.super Ljava/lang/Object;
.source "GenericClusterDisplay.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGenericClusterDisplay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GenericClusterDisplay.kt\ncom/shilapi/xcertplay/GenericClusterPlaceholder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,368:1\n295#2,2:369\n1#3:371\n*S KotlinDebug\n*F\n+ 1 GenericClusterDisplay.kt\ncom/shilapi/xcertplay/GenericClusterPlaceholder\n*L\n323#1:369,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0007J\u0010\u0010\u000b\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\rJ\u000e\u0010\u000e\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0007R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/GenericClusterPlaceholder;",
        "",
        "<init>",
        "()V",
        "presentation",
        "Lcom/shilapi/xcertplay/GenericClusterPresentation;",
        "owner",
        "Landroid/app/Activity;",
        "ensure",
        "",
        "activity",
        "dismiss",
        "reason",
        "",
        "dismissIfOwner",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/GenericClusterPlaceholder;

.field private static owner:Landroid/app/Activity;

.field private static presentation:Lcom/shilapi/xcertplay/GenericClusterPresentation;


# direct methods
.method public static synthetic $r8$lambda$mv0jPC-hB29Aje7-1Jn_ucw0s2Q(Landroid/view/Surface;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/GenericClusterPlaceholder;->ensure$lambda$4(Landroid/view/Surface;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tGjDDl_MzXZc1dW5af-T25PTZXE(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/GenericClusterPlaceholder;->ensure$lambda$5(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/DialogInterface;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/GenericClusterPlaceholder;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/GenericClusterPlaceholder;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/GenericClusterPlaceholder;->INSTANCE:Lcom/shilapi/xcertplay/GenericClusterPlaceholder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic dismiss$default(Lcom/shilapi/xcertplay/GenericClusterPlaceholder;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 356
    const-string p1, ""

    :cond_0
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/GenericClusterPlaceholder;->dismiss(Ljava/lang/String;)V

    return-void
.end method

.method private static final ensure$lambda$4(Landroid/view/Surface;)Lkotlin/Unit;
    .locals 0

    .line 339
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final ensure$lambda$5(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/DialogInterface;)V
    .locals 2

    .line 343
    sget-object p1, Lcom/shilapi/xcertplay/GenericClusterPlaceholder;->presentation:Lcom/shilapi/xcertplay/GenericClusterPresentation;

    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo p0, "shown"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcom/shilapi/xcertplay/GenericClusterPresentation;

    :goto_0
    if-ne p1, p0, :cond_1

    sput-object v1, Lcom/shilapi/xcertplay/GenericClusterPlaceholder;->presentation:Lcom/shilapi/xcertplay/GenericClusterPresentation;

    sput-object v1, Lcom/shilapi/xcertplay/GenericClusterPlaceholder;->owner:Landroid/app/Activity;

    :cond_1
    return-void
.end method


# virtual methods
.method public final dismiss(Ljava/lang/String;)V
    .locals 2

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    sget-object v0, Lcom/shilapi/xcertplay/GenericClusterPlaceholder;->presentation:Lcom/shilapi/xcertplay/GenericClusterPresentation;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 358
    sput-object v1, Lcom/shilapi/xcertplay/GenericClusterPlaceholder;->presentation:Lcom/shilapi/xcertplay/GenericClusterPresentation;

    .line 359
    sput-object v1, Lcom/shilapi/xcertplay/GenericClusterPlaceholder;->owner:Landroid/app/Activity;

    .line 360
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/GenericClusterPlaceholder;

    invoke-static {v0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m$1(Lcom/shilapi/xcertplay/GenericClusterPresentation;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    :goto_0
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "generic cluster placeholder dismissed ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DiPlay-Cluster"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public final dismissIfOwner(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    sget-object v0, Lcom/shilapi/xcertplay/GenericClusterPlaceholder;->owner:Landroid/app/Activity;

    if-ne v0, p1, :cond_0

    const-string p1, "owner paused"

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/GenericClusterPlaceholder;->dismiss(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final ensure(Landroid/app/Activity;)V
    .locals 14

    const-string v1, "DiPlay-Cluster"

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    sget-object v0, Lcom/shilapi/xcertplay/GenericClusterDisplay;->INSTANCE:Lcom/shilapi/xcertplay/GenericClusterDisplay;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/shilapi/xcertplay/GenericClusterDisplay;->supportedSdk$default(Lcom/shilapi/xcertplay/GenericClusterDisplay;IILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 315
    :cond_0
    sget-object v0, Lcom/shilapi/xcertplay/GenericClusterDisplay;->INSTANCE:Lcom/shilapi/xcertplay/GenericClusterDisplay;

    move-object v3, p1

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/shilapi/xcertplay/GenericClusterDisplay;->bydPresent(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "byd"

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/GenericClusterPlaceholder;->dismiss(Ljava/lang/String;)V

    return-void

    .line 316
    :cond_1
    sget-object v0, Lcom/shilapi/xcertplay/GenericClusterDisplay;->INSTANCE:Lcom/shilapi/xcertplay/GenericClusterDisplay;

    invoke-virtual {v0, v3}, Lcom/shilapi/xcertplay/GenericClusterDisplay;->candidates(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 317
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string p1, "none"

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/GenericClusterPlaceholder;->dismiss(Ljava/lang/String;)V

    return-void

    .line 318
    :cond_2
    sget-object v5, Lcom/shilapi/xcertplay/GenericClusterDisplay;->INSTANCE:Lcom/shilapi/xcertplay/GenericClusterDisplay;

    invoke-virtual {v5, v3}, Lcom/shilapi/xcertplay/GenericClusterDisplay;->selected(Landroid/content/Context;)Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;

    move-result-object v5

    if-nez v5, :cond_3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;

    .line 320
    sget-object v0, Lcom/shilapi/xcertplay/GenericClusterDisplay;->INSTANCE:Lcom/shilapi/xcertplay/GenericClusterDisplay;

    invoke-virtual {v0, v3}, Lcom/shilapi/xcertplay/GenericClusterDisplay;->choice(Landroid/content/Context;)Lcom/shilapi/xcertplay/GenericClusterDisplay$Choice;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/shilapi/xcertplay/GenericClusterDisplay;->INSTANCE:Lcom/shilapi/xcertplay/GenericClusterDisplay;

    invoke-virtual {v0, v3, v5}, Lcom/shilapi/xcertplay/GenericClusterDisplay;->saveChoice(Landroid/content/Context;Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;)V

    .line 322
    :cond_3
    sget-object v0, Lcom/shilapi/xcertplay/GenericClusterDisplay;->INSTANCE:Lcom/shilapi/xcertplay/GenericClusterDisplay;

    invoke-virtual {v0, v3}, Lcom/shilapi/xcertplay/GenericClusterDisplay;->presentationDisplays(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 369
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Landroid/view/Display;

    .line 323
    invoke-virtual {v7}, Landroid/view/Display;->getDisplayId()I

    move-result v7

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;->getId()I

    move-result v8

    if-ne v7, v8, :cond_4

    goto :goto_0

    :cond_5
    move-object v6, v4

    :goto_0
    move-object v9, v6

    check-cast v9, Landroid/view/Display;

    if-nez v9, :cond_6

    move-object p1, p0

    check-cast p1, Lcom/shilapi/xcertplay/GenericClusterPlaceholder;

    const-string p1, "absent"

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/GenericClusterPlaceholder;->dismiss(Ljava/lang/String;)V

    return-void

    .line 324
    :cond_6
    sget-object v0, Lcom/shilapi/xcertplay/GenericClusterPlaceholder;->presentation:Lcom/shilapi/xcertplay/GenericClusterPresentation;

    if-eqz v0, :cond_8

    .line 325
    invoke-static {v0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Lcom/shilapi/xcertplay/GenericClusterPresentation;)Z

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Lcom/shilapi/xcertplay/GenericClusterPlaceholder;->owner:Landroid/app/Activity;

    if-ne v6, p1, :cond_7

    invoke-static {v0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Lcom/shilapi/xcertplay/GenericClusterPresentation;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;->getId()I

    move-result v6

    if-ne v0, v6, :cond_7

    :goto_1
    return-void

    .line 326
    :cond_7
    sget-object v0, Lcom/shilapi/xcertplay/GenericClusterPlaceholder;->INSTANCE:Lcom/shilapi/xcertplay/GenericClusterPlaceholder;

    const-string v6, "replace"

    invoke-virtual {v0, v6}, Lcom/shilapi/xcertplay/GenericClusterPlaceholder;->dismiss(Ljava/lang/String;)V

    .line 328
    :cond_8
    sget-object v0, Lcom/shilapi/xcertplay/AirPlayPersistence;->INSTANCE:Lcom/shilapi/xcertplay/AirPlayPersistence;

    invoke-virtual {v0, v3}, Lcom/shilapi/xcertplay/AirPlayPersistence;->loadClusterMapEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 329
    sget-object v6, Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay;->INSTANCE:Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay;

    .line 330
    invoke-virtual {v5}, Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;->getHeight()I

    move-result v5

    sget-object v8, Lcom/shilapi/xcertplay/AirPlayPersistence;->INSTANCE:Lcom/shilapi/xcertplay/AirPlayPersistence;

    invoke-virtual {v8, v3}, Lcom/shilapi/xcertplay/AirPlayPersistence;->loadClusterMapScalePercent(Landroid/content/Context;)I

    move-result v8

    .line 329
    invoke-virtual {v6, v7, v5, v8}, Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay;->genericStreamSize(III)Lkotlin/Pair;

    move-result-object v5

    if-eqz v0, :cond_9

    .line 332
    sget v6, Lcom/shilapi/xcertplay/host/R$string;->cluster_waiting_for_map:I

    goto :goto_2

    :cond_9
    sget v6, Lcom/shilapi/xcertplay/host/R$string;->cluster_overlay_off:I

    .line 331
    :goto_2
    invoke-virtual {p1, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v6, "getString(...)"

    invoke-static {v13, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 334
    new-instance v7, Lcom/shilapi/xcertplay/GenericClusterPresentation;

    .line 335
    sget-object v8, Lcom/shilapi/xcertplay/GenericClusterDisplay;->INSTANCE:Lcom/shilapi/xcertplay/GenericClusterDisplay;

    invoke-virtual {v8, v3}, Lcom/shilapi/xcertplay/GenericClusterDisplay;->presentationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v8

    .line 337
    invoke-virtual {v5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v10

    .line 338
    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v11

    new-instance v12, Lcom/shilapi/xcertplay/GenericClusterPlaceholder$$ExternalSyntheticLambda0;

    invoke-direct {v12}, Lcom/shilapi/xcertplay/GenericClusterPlaceholder$$ExternalSyntheticLambda0;-><init>()V

    .line 334
    invoke-direct/range {v7 .. v13}, Lcom/shilapi/xcertplay/GenericClusterPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;IILkotlin/jvm/functions/Function1;Ljava/lang/String;)V

    iput-object v7, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 342
    iget-object v3, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const-string/jumbo v5, "shown"

    if-nez v3, :cond_a

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v4

    goto :goto_3

    :cond_a
    iget-object v3, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lcom/shilapi/xcertplay/GenericClusterPresentation;

    :goto_3
    new-instance v7, Lcom/shilapi/xcertplay/GenericClusterPlaceholder$$ExternalSyntheticLambda1;

    invoke-direct {v7, v6}, Lcom/shilapi/xcertplay/GenericClusterPlaceholder$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {v3, v7}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Lcom/shilapi/xcertplay/GenericClusterPresentation;Landroid/content/DialogInterface$OnDismissListener;)V

    .line 346
    :try_start_0
    iget-object v3, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v3, :cond_b

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v4

    goto :goto_4

    :cond_b
    iget-object v3, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lcom/shilapi/xcertplay/GenericClusterPresentation;

    :goto_4
    invoke-static {v3}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Lcom/shilapi/xcertplay/GenericClusterPresentation;)V

    .line 347
    iget-object v3, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v3, :cond_c

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v4

    goto :goto_5

    :cond_c
    iget-object v3, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lcom/shilapi/xcertplay/GenericClusterPresentation;

    :goto_5
    invoke-virtual {v3, v2}, Lcom/shilapi/xcertplay/GenericClusterPresentation;->setStreamActive(Z)V

    .line 348
    iget-object v2, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v2, :cond_d

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_6

    :cond_d
    iget-object v2, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Lcom/shilapi/xcertplay/GenericClusterPresentation;

    :goto_6
    sput-object v4, Lcom/shilapi/xcertplay/GenericClusterPlaceholder;->presentation:Lcom/shilapi/xcertplay/GenericClusterPresentation;

    .line 349
    sput-object p1, Lcom/shilapi/xcertplay/GenericClusterPlaceholder;->owner:Landroid/app/Activity;

    .line 350
    invoke-virtual {v9}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generic cluster placeholder shown display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " enabled="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 352
    const-string v0, "generic cluster placeholder failed"

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
