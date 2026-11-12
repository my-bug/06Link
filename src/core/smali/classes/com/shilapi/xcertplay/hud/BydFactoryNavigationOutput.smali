.class public final Lcom/shilapi/xcertplay/hud/BydFactoryNavigationOutput;
.super Ljava/lang/Object;
.source "BydFactoryNavigationOutput.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/hud/BydFactoryNavigationOutput$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBydFactoryNavigationOutput.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BydFactoryNavigationOutput.kt\ncom/shilapi/xcertplay/hud/BydFactoryNavigationOutput\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,66:1\n1#2:67\n11228#3:68\n11563#3,3:69\n*S KotlinDebug\n*F\n+ 1 BydFactoryNavigationOutput.kt\ncom/shilapi/xcertplay/hud/BydFactoryNavigationOutput\n*L\n27#1:68\n27#1:69,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000eJ\u0006\u0010\u0011\u001a\u00020\u000cJ\u001a\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/hud/BydFactoryNavigationOutput;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "device",
        "disabled",
        "",
        "showing",
        "logged",
        "update",
        "",
        "icon",
        "",
        "exit",
        "distance",
        "clear",
        "checkResult",
        "operation",
        "",
        "result",
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
.field public static final Companion:Lcom/shilapi/xcertplay/hud/BydFactoryNavigationOutput$Companion;

.field private static final TAG:Ljava/lang/String; = "BYD-Factory-Navi"


# instance fields
.field private final context:Landroid/content/Context;

.field private device:Ljava/lang/Object;

.field private disabled:Z

.field private logged:Z

.field private showing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/hud/BydFactoryNavigationOutput$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/hud/BydFactoryNavigationOutput$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/hud/BydFactoryNavigationOutput;->Companion:Lcom/shilapi/xcertplay/hud/BydFactoryNavigationOutput$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/hud/BydFactoryNavigationOutput;->context:Landroid/content/Context;

    return-void
.end method

.method private final checkResult(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " returned "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public final clear()V
    .locals 9

    .line 46
    const-string v0, "BYD-Factory-Navi"

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/hud/BydFactoryNavigationOutput;->showing:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 47
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/hud/BydFactoryNavigationOutput;->showing:Z

    .line 48
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/hud/BydFactoryNavigationOutput;->logged:Z

    const/4 v2, 0x1

    .line 50
    :try_start_0
    iget-object v3, p0, Lcom/shilapi/xcertplay/hud/BydFactoryNavigationOutput;->device:Ljava/lang/Object;

    if-nez v3, :cond_1

    :goto_0
    return-void

    .line 51
    :cond_1
    const-string v4, "end"

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "sendAutoNaviStatus"

    new-array v7, v2, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v6, v7, v1

    invoke-virtual {v5, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v4, v1}, Lcom/shilapi/xcertplay/hud/BydFactoryNavigationOutput;->checkResult(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    const-string v1, "Factory navigation ended"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 54
    iput-boolean v2, p0, Lcom/shilapi/xcertplay/hud/BydFactoryNavigationOutput;->disabled:Z

    .line 55
    instance-of v2, v1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Ljava/lang/reflect/InvocationTargetException;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_4

    :cond_3
    move-object v2, v1

    check-cast v2, Ljava/lang/Throwable;

    .line 56
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Factory navigation cleanup failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final update(III)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v0, p3

    .line 15
    const-string v2, "BYD-Factory-Navi"

    iget-boolean v3, v1, Lcom/shilapi/xcertplay/hud/BydFactoryNavigationOutput;->disabled:Z

    if-nez v3, :cond_9

    iget-object v3, v1, Lcom/shilapi/xcertplay/hud/BydFactoryNavigationOutput;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getPackageName(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, ".bydhudtest"

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v3, v5, v6, v7, v8}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v1, Lcom/shilapi/xcertplay/hud/BydFactoryNavigationOutput;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, ".hudtest"

    invoke-static {v3, v4, v6, v7, v8}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 16
    :cond_0
    sget-object v3, Lcom/shilapi/xcertplay/hud/BydFactoryTurnCode;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydFactoryTurnCode;

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-virtual {v3, v4, v5}, Lcom/shilapi/xcertplay/hud/BydFactoryTurnCode;->map(II)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v0, :cond_7

    const v4, 0xffffff

    if-ge v0, v4, :cond_7

    const/4 v4, 0x1

    .line 19
    :try_start_0
    iget-object v5, v1, Lcom/shilapi/xcertplay/hud/BydFactoryNavigationOutput;->device:Ljava/lang/Object;

    if-nez v5, :cond_1

    const-string v5, "android.hardware.bydauto.instrument.BYDAutoInstrumentDevice"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 20
    const-string v9, "getInstance"

    new-array v10, v4, [Ljava/lang/Class;

    const-class v11, Landroid/content/Context;

    aput-object v11, v10, v6

    invoke-virtual {v5, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iget-object v9, v1, Lcom/shilapi/xcertplay/hud/BydFactoryNavigationOutput;->context:Landroid/content/Context;

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v9, v10, v6

    invoke-virtual {v5, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v1, Lcom/shilapi/xcertplay/hud/BydFactoryNavigationOutput;->device:Ljava/lang/Object;

    .line 21
    :cond_1
    iget-boolean v9, v1, Lcom/shilapi/xcertplay/hud/BydFactoryNavigationOutput;->showing:Z

    if-nez v9, :cond_2

    .line 22
    const-string/jumbo v9, "start"

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "sendAutoNaviStatus"

    new-array v12, v4, [Ljava/lang/Class;

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v12, v6

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-array v12, v4, [Ljava/lang/Object;

    aput-object v11, v12, v6

    invoke-virtual {v10, v5, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-direct {v1, v9, v10}, Lcom/shilapi/xcertplay/hud/BydFactoryNavigationOutput;->checkResult(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    iput-boolean v4, v1, Lcom/shilapi/xcertplay/hud/BydFactoryNavigationOutput;->showing:Z

    .line 25
    :cond_2
    const-string v9, "android.hardware.bydauto.BYDAutoFeatureIds$Instrument"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const/4 v10, 0x3

    .line 26
    new-array v11, v10, [Ljava/lang/String;

    const-string v12, "INSTRUMENT_FRONT_CROSSING_DISTANCE_SET"

    aput-object v12, v11, v6

    const-string v12, "INSTRUMENT_GUIDE_INFO_SIMPLE_SET"

    aput-object v12, v11, v4

    const-string v12, "INSTRUMENT_GUIDE_INFO_AND_ROAD_AHEAD_DISTANCE_SET"

    aput-object v12, v11, v7

    .line 68
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v10}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v12, Ljava/util/Collection;

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v10, :cond_3

    .line 69
    aget-object v14, v11, v13

    .line 27
    invoke-virtual {v9, v14}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 70
    invoke-interface {v12, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 71
    :cond_3
    check-cast v12, Ljava/util/List;

    .line 68
    check-cast v12, Ljava/util/Collection;

    .line 27
    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v9

    .line 28
    const-string v10, "android.hardware.bydauto.BYDAutoEventValue"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 29
    invoke-virtual {v10, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 30
    const-string v12, "intArrayValue"

    invoke-virtual {v10, v12}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    filled-new-array {v0, v3, v3}, [I

    move-result-object v13

    invoke-virtual {v12, v11, v13}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    const-string v12, "guidance"

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    const-string v14, "set"

    new-array v15, v7, [Ljava/lang/Class;

    const-class v16, [I

    aput-object v16, v15, v6

    aput-object v10, v15, v4

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v9, v7, v6

    aput-object v11, v7, v4

    invoke-virtual {v10, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v1, v12, v5}, Lcom/shilapi/xcertplay/hud/BydFactoryNavigationOutput;->checkResult(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    iget-boolean v5, v1, Lcom/shilapi/xcertplay/hud/BydFactoryNavigationOutput;->logged:Z

    if-nez v5, :cond_9

    .line 33
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Factory navigation accepted turn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " distance="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; visible HUD output unconfirmed"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iput-boolean v4, v1, Lcom/shilapi/xcertplay/hud/BydFactoryNavigationOutput;->logged:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 38
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/hud/BydFactoryNavigationOutput;->clear()V

    .line 39
    iput-boolean v4, v1, Lcom/shilapi/xcertplay/hud/BydFactoryNavigationOutput;->disabled:Z

    .line 40
    instance-of v3, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v3, :cond_4

    move-object v8, v0

    check-cast v8, Ljava/lang/reflect/InvocationTargetException;

    :cond_4
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_6

    :cond_5
    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    .line 41
    :cond_6
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Factory navigation disabled: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 17
    :cond_7
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/hud/BydFactoryNavigationOutput;->clear()V

    return-void

    .line 16
    :cond_8
    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/hud/BydFactoryNavigationOutput;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/hud/BydFactoryNavigationOutput;->clear()V

    :cond_9
    :goto_1
    return-void
.end method
