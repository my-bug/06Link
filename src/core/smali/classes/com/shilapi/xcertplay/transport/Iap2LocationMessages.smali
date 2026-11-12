.class public final Lcom/shilapi/xcertplay/transport/Iap2LocationMessages;
.super Ljava/lang/Object;
.source "Iap2LocationClient.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIap2LocationClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Iap2LocationClient.kt\ncom/shilapi/xcertplay/transport/Iap2LocationMessages\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,283:1\n1#2:284\n1563#3:285\n1634#3,3:286\n*S KotlinDebug\n*F\n+ 1 Iap2LocationClient.kt\ncom/shilapi/xcertplay/transport/Iap2LocationMessages\n*L\n276#1:285\n276#1:286,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00050\n2\u0006\u0010\u000b\u001a\u00020\u000cJ\u000e\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000fR\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/Iap2LocationMessages;",
        "",
        "<init>",
        "()V",
        "START_LOCATION_INFORMATION",
        "",
        "LOCATION_INFORMATION",
        "STOP_LOCATION_INFORMATION",
        "VEHICLE_SPEED_DATA",
        "requestedComponents",
        "",
        "frame",
        "Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/transport/Iap2LocationMessages;

.field public static final LOCATION_INFORMATION:I = 0xfffb

.field public static final START_LOCATION_INFORMATION:I = 0xfffa

.field public static final STOP_LOCATION_INFORMATION:I = 0xfffc

.field public static final VEHICLE_SPEED_DATA:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/transport/Iap2LocationMessages;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/transport/Iap2LocationMessages;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/transport/Iap2LocationMessages;->INSTANCE:Lcom/shilapi/xcertplay/transport/Iap2LocationMessages;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final locationInformation(Ljava/lang/String;)Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;
    .locals 1

    const-string v0, "nmeaSentence"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 280
    sget-object v0, Lcom/shilapi/xcertplay/iap2/message/Iap2ControlMessages;->INSTANCE:Lcom/shilapi/xcertplay/iap2/message/Iap2ControlMessages;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/iap2/message/Iap2ControlMessages;->locationInformation(Ljava/lang/String;)Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;

    move-result-object p1

    return-object p1

    .line 279
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "NMEA sentence must not be empty"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final requestedComponents(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "frame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/transport/Iap2LocationMessages;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;->body()Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;->asList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 286
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 287
    check-cast v1, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;

    .line 276
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 287
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 288
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 285
    check-cast v0, Ljava/lang/Iterable;

    .line 276
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSortedSet(Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object p1

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

    :goto_1
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p1, v0

    :cond_1
    check-cast p1, Ljava/util/Set;

    return-object p1
.end method
