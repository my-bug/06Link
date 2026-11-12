.class public final Lcom/shilapi/xcertplay/iap2/message/Iap2ControlMessages;
.super Ljava/lang/Object;
.source "Iap2Messages.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIap2Messages.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Iap2Messages.kt\ncom/shilapi/xcertplay/iap2/message/Iap2ControlMessages\n+ 2 Iap2Messages.kt\ncom/shilapi/xcertplay/iap2/message/Iap2Messages\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,322:1\n16#2:323\n16#2:325\n16#2:326\n16#2:327\n16#2:328\n16#2:329\n16#2:330\n1#3:324\n1869#4,2:331\n1869#4,2:333\n*S KotlinDebug\n*F\n+ 1 Iap2Messages.kt\ncom/shilapi/xcertplay/iap2/message/Iap2ControlMessages\n*L\n273#1:323\n282#1:325\n290#1:326\n295#1:327\n300#1:328\n305#1:329\n317#1:330\n284#1:331,2\n287#1:333,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003JA\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u000c\u001a\u00020\t\u00a2\u0006\u0002\u0010\rJ\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000fJ\u000e\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/iap2/message/Iap2ControlMessages;",
        "",
        "<init>",
        "()V",
        "powerSourceUpdate",
        "Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;",
        "availableCurrentMilliAmps",
        "",
        "charging",
        "",
        "availableSiphoningCurrentMilliAmps",
        "reserveCurrentMilliAmps",
        "maxNonSiphoningCurrentExceeded",
        "(ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Z)Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;",
        "subscriptions",
        "",
        "locationInformation",
        "nmeaSentence",
        "",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/iap2/message/Iap2ControlMessages;


# direct methods
.method public static synthetic $r8$lambda$cvRmaRe-urg7nbvxv_-ML07BLzo(Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/iap2/message/Iap2ControlMessages;->subscriptions$lambda$5$lambda$4(Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ybDzxy2PUiHa9tSzQy5851SFsvU(Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/iap2/message/Iap2ControlMessages;->subscriptions$lambda$5$lambda$2(Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/iap2/message/Iap2ControlMessages;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/iap2/message/Iap2ControlMessages;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/iap2/message/Iap2ControlMessages;->INSTANCE:Lcom/shilapi/xcertplay/iap2/message/Iap2ControlMessages;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic powerSourceUpdate$default(Lcom/shilapi/xcertplay/iap2/message/Iap2ControlMessages;ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;ZILjava/lang/Object;)Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;
    .locals 1

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_2

    move-object p4, v0

    :cond_2
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_3

    const/4 p5, 0x0

    .line 267
    :cond_3
    invoke-virtual/range {p0 .. p5}, Lcom/shilapi/xcertplay/iap2/message/Iap2ControlMessages;->powerSourceUpdate(ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Z)Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;

    move-result-object p0

    return-object p0
.end method

.method private static final subscriptions$lambda$5$lambda$2(Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;)Lkotlin/Unit;
    .locals 9

    const-string v0, "$this$group"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 284
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x1a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Integer;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    aput-object v3, v7, v0

    const/4 v0, 0x2

    aput-object v4, v7, v0

    const/4 v0, 0x3

    aput-object v5, v7, v0

    aput-object v6, v7, v2

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 331
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

    .line 284
    invoke-virtual {p0, v1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->void(I)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    goto :goto_0

    .line 285
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final subscriptions$lambda$5$lambda$4(Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;)Lkotlin/Unit;
    .locals 6

    const-string v0, "$this$group"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 287
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Integer;

    aput-object v1, v5, v0

    aput-object v3, v5, v2

    const/4 v0, 0x2

    aput-object v4, v5, v0

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 333
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

    .line 287
    invoke-virtual {p0, v1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->void(I)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    goto :goto_0

    .line 288
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final locationInformation(Ljava/lang/String;)Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;
    .locals 2

    const-string v0, "nmeaSentence"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 317
    sget-object v0, Lcom/shilapi/xcertplay/iap2/message/Iap2Messages;->INSTANCE:Lcom/shilapi/xcertplay/iap2/message/Iap2Messages;

    sget-object v0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoints;->INSTANCE:Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoints;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoints;->getLOCATION_INFORMATION()Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;

    move-result-object v0

    .line 330
    sget-object v1, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->Companion:Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Companion;

    invoke-virtual {v1, v0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Companion;->of(Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    move-result-object v0

    const/4 v1, 0x0

    .line 318
    invoke-virtual {v0, v1, p1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->string(ILjava/lang/String;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    .line 330
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->build()Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;

    move-result-object p1

    return-object p1

    .line 316
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "NMEA sentence must not be empty"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final powerSourceUpdate(ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Z)Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;
    .locals 2

    .line 273
    sget-object v0, Lcom/shilapi/xcertplay/iap2/message/Iap2Messages;->INSTANCE:Lcom/shilapi/xcertplay/iap2/message/Iap2Messages;

    sget-object v0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoints;->INSTANCE:Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoints;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoints;->getPOWER_SOURCE_UPDATE()Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;

    move-result-object v0

    .line 323
    sget-object v1, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->Companion:Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Companion;

    invoke-virtual {v1, v0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Companion;->of(Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    move-result-object v0

    const/4 v1, 0x0

    .line 274
    invoke-virtual {v0, v1, p1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->u16(II)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    if-eqz p2, :cond_0

    .line 275
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 p2, 0x1

    invoke-virtual {v0, p2, p1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->optionalU8(ILjava/lang/Integer;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    const/4 p1, 0x3

    .line 276
    invoke-virtual {v0, p1, p3}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->optionalU16(ILjava/lang/Integer;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    const/4 p1, 0x4

    .line 277
    invoke-virtual {v0, p1, p4}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->optionalU16(ILjava/lang/Integer;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    const/4 p1, 0x5

    .line 278
    invoke-virtual {v0, p1, p5}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->optionalVoid(IZ)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    .line 323
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->build()Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;

    move-result-object p1

    return-object p1
.end method

.method public final subscriptions()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x5

    .line 282
    new-array v1, v0, [Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;

    sget-object v2, Lcom/shilapi/xcertplay/iap2/message/Iap2Messages;->INSTANCE:Lcom/shilapi/xcertplay/iap2/message/Iap2Messages;

    sget-object v2, Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoints;->INSTANCE:Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoints;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoints;->getSTART_NOW_PLAYING_UPDATES()Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;

    move-result-object v2

    .line 325
    sget-object v3, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->Companion:Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Companion;

    invoke-virtual {v3, v2}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Companion;->of(Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    move-result-object v2

    .line 283
    new-instance v3, Lcom/shilapi/xcertplay/iap2/message/Iap2ControlMessages$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/shilapi/xcertplay/iap2/message/Iap2ControlMessages$$ExternalSyntheticLambda0;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->group(ILkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    .line 286
    new-instance v3, Lcom/shilapi/xcertplay/iap2/message/Iap2ControlMessages$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/shilapi/xcertplay/iap2/message/Iap2ControlMessages$$ExternalSyntheticLambda1;-><init>()V

    const/4 v5, 0x1

    invoke-virtual {v2, v5, v3}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->group(ILkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    .line 289
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 325
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->build()Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;

    move-result-object v2

    aput-object v2, v1, v4

    .line 290
    sget-object v2, Lcom/shilapi/xcertplay/iap2/message/Iap2Messages;->INSTANCE:Lcom/shilapi/xcertplay/iap2/message/Iap2Messages;

    sget-object v2, Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoints;->INSTANCE:Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoints;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoints;->getSTART_ROUTE_GUIDANCE_UPDATES()Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;

    move-result-object v2

    .line 326
    sget-object v3, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->Companion:Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Companion;

    invoke-virtual {v3, v2}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Companion;->of(Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    move-result-object v2

    const/16 v3, 0x2a

    .line 291
    invoke-virtual {v2, v4, v3}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->u16(II)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    .line 292
    invoke-virtual {v2, v5}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->void(I)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    const/4 v3, 0x2

    .line 293
    invoke-virtual {v2, v3}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->void(I)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    .line 294
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 326
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->build()Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;

    move-result-object v2

    aput-object v2, v1, v5

    .line 295
    sget-object v2, Lcom/shilapi/xcertplay/iap2/message/Iap2Messages;->INSTANCE:Lcom/shilapi/xcertplay/iap2/message/Iap2Messages;

    sget-object v2, Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoints;->INSTANCE:Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoints;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoints;->getSTART_POWER_UPDATES()Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;

    move-result-object v2

    .line 327
    sget-object v6, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->Companion:Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Companion;

    invoke-virtual {v6, v2}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Companion;->of(Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    move-result-object v2

    const/4 v6, 0x4

    .line 296
    invoke-virtual {v2, v6}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->void(I)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    .line 297
    invoke-virtual {v2, v0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->void(I)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    const/4 v7, 0x6

    .line 298
    invoke-virtual {v2, v7}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->void(I)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    .line 299
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 327
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->build()Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;

    move-result-object v2

    aput-object v2, v1, v3

    .line 300
    sget-object v2, Lcom/shilapi/xcertplay/iap2/message/Iap2Messages;->INSTANCE:Lcom/shilapi/xcertplay/iap2/message/Iap2Messages;

    sget-object v2, Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoints;->INSTANCE:Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoints;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoints;->getSTART_COMMUNICATIONS_UPDATES()Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;

    move-result-object v2

    .line 328
    sget-object v7, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->Companion:Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Companion;

    invoke-virtual {v7, v2}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Companion;->of(Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    move-result-object v2

    .line 301
    invoke-virtual {v2, v4}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->void(I)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    .line 302
    invoke-virtual {v2, v6}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->void(I)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    .line 303
    invoke-virtual {v2, v0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->void(I)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    .line 304
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 328
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->build()Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v1, v2

    .line 305
    sget-object v0, Lcom/shilapi/xcertplay/iap2/message/Iap2Messages;->INSTANCE:Lcom/shilapi/xcertplay/iap2/message/Iap2Messages;

    sget-object v0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoints;->INSTANCE:Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoints;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoints;->getSTART_CALL_STATE_UPDATES()Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;

    move-result-object v0

    .line 329
    sget-object v7, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->Companion:Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Companion;

    invoke-virtual {v7, v0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Companion;->of(Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    move-result-object v0

    .line 306
    invoke-virtual {v0, v4}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->void(I)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    .line 307
    invoke-virtual {v0, v5}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->void(I)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    .line 308
    invoke-virtual {v0, v3}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->void(I)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    .line 309
    invoke-virtual {v0, v2}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->void(I)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    .line 310
    invoke-virtual {v0, v6}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->void(I)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    const/16 v2, 0xb

    .line 311
    invoke-virtual {v0, v2}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->void(I)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    .line 312
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 329
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->build()Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;

    move-result-object v0

    aput-object v0, v1, v6

    .line 281
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
