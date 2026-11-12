.class public final Lcom/shilapi/xcertplay/airplay/WheelAction$Companion;
.super Ljava/lang/Object;
.source "SteeringWheelKeys.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/airplay/WheelAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSteeringWheelKeys.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SteeringWheelKeys.kt\ncom/shilapi/xcertplay/airplay/WheelAction$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,228:1\n295#2,2:229\n774#2:231\n865#2,2:232\n*S KotlinDebug\n*F\n+ 1 SteeringWheelKeys.kt\ncom/shilapi/xcertplay/airplay/WheelAction$Companion\n*L\n105#1:229,2\n108#1:231\n108#1:232,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u0017\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/WheelAction$Companion;",
        "",
        "<init>",
        "()V",
        "KNOB_NUDGE",
        "",
        "forStorageKey",
        "Lcom/shilapi/xcertplay/airplay/WheelAction;",
        "key",
        "",
        "COMMON",
        "",
        "getCOMMON",
        "()Ljava/util/List;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/airplay/WheelAction$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final forStorageKey(Ljava/lang/String;)Lcom/shilapi/xcertplay/airplay/WheelAction;
    .locals 3

    .line 105
    invoke-static {}, Lcom/shilapi/xcertplay/airplay/WheelAction;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 229
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/shilapi/xcertplay/airplay/WheelAction;

    .line 105
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/airplay/WheelAction;->getStorageKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 230
    :goto_0
    check-cast v1, Lcom/shilapi/xcertplay/airplay/WheelAction;

    return-object v1
.end method

.method public final getCOMMON()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/airplay/WheelAction;",
            ">;"
        }
    .end annotation

    .line 108
    invoke-static {}, Lcom/shilapi/xcertplay/airplay/WheelAction;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 231
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 232
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/shilapi/xcertplay/airplay/WheelAction;

    .line 108
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/airplay/WheelAction;->getCommon()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 232
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 233
    :cond_1
    check-cast v1, Ljava/util/List;

    return-object v1
.end method
