.class public final Lcom/shilapi/xcertplay/ConnectionProgress;
.super Ljava/lang/Object;
.source "ConnectionFlow.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/ConnectionProgress$Phase;,
        Lcom/shilapi/xcertplay/ConnectionProgress$Picture;,
        Lcom/shilapi/xcertplay/ConnectionProgress$State;,
        Lcom/shilapi/xcertplay/ConnectionProgress$WaitReason;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConnectionFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectionFlow.kt\ncom/shilapi/xcertplay/ConnectionProgress\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,535:1\n1#2:536\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u00c0\u0002\u0018\u00002\u00020\u0001:\u00042345B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0010\u001a\u00020\u000bJ\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0005H\u0002J\u0016\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0016J\u000e\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u001aJ\u0010\u0010\u001b\u001a\u00020\u00122\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u001cJ\u0006\u0010\u001d\u001a\u00020\u0012J\u0016\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\u001fJ(\u0010 \u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u001a2\u0008\u0010#\u001a\u0004\u0018\u00010\u001aJ\u0006\u0010$\u001a\u00020\u0012J\u0006\u0010%\u001a\u00020\u0012J\u0006\u0010&\u001a\u00020\u0012J\u0006\u0010\'\u001a\u00020\u0012J\u000e\u0010(\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0016J\u000e\u0010)\u001a\u00020\u00122\u0006\u0010*\u001a\u00020\u0016J\u0016\u0010+\u001a\u00020\u00122\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020\u0016J\u0006\u0010/\u001a\u00020\u0012J\r\u00100\u001a\u00020\u0012H\u0000\u00a2\u0006\u0002\u00081R\u001e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R \u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u00066"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/ConnectionProgress;",
        "",
        "<init>",
        "()V",
        "value",
        "Lcom/shilapi/xcertplay/ConnectionProgress$State;",
        "state",
        "getState",
        "()Lcom/shilapi/xcertplay/ConnectionProgress$State;",
        "clock",
        "Lkotlin/Function0;",
        "",
        "getClock$common_release",
        "()Lkotlin/jvm/functions/Function0;",
        "setClock$common_release",
        "(Lkotlin/jvm/functions/Function0;)V",
        "now",
        "set",
        "",
        "next",
        "begin",
        "wireless",
        "",
        "automatic",
        "handled",
        "text",
        "",
        "picture",
        "Lcom/shilapi/xcertplay/ConnectionProgress$Picture;",
        "toggleWifiCard",
        "status",
        "Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;",
        "problem",
        "Lcom/shilapi/xcertplay/orchestration/SetupProblem;",
        "title",
        "detail",
        "toggleStepsExpanded",
        "collapseSteps",
        "noteIphonePluggedAfterCancel",
        "clearIphoneAfterCancel",
        "connected",
        "lost",
        "restart",
        "video",
        "fps",
        "",
        "hevc",
        "stopped",
        "reset",
        "reset$common_release",
        "Phase",
        "WaitReason",
        "State",
        "Picture",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/ConnectionProgress;

.field private static volatile clock:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile state:Lcom/shilapi/xcertplay/ConnectionProgress$State;


# direct methods
.method public static synthetic $r8$lambda$5T4v1igewcYoZjmZq1YwAYXXZ8A()J
    .locals 2

    invoke-static {}, Lcom/shilapi/xcertplay/ConnectionProgress;->reset$lambda$2()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic $r8$lambda$M-MnI5Uxa_Fo2x82-aNTAmiDBC4()J
    .locals 2

    invoke-static {}, Lcom/shilapi/xcertplay/ConnectionProgress;->clock$lambda$0()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 27

    new-instance v0, Lcom/shilapi/xcertplay/ConnectionProgress;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/ConnectionProgress;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/ConnectionProgress;->INSTANCE:Lcom/shilapi/xcertplay/ConnectionProgress;

    .line 187
    new-instance v1, Lcom/shilapi/xcertplay/ConnectionProgress$State;

    const v25, 0xfffff

    const/16 v26, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v1 .. v26}, Lcom/shilapi/xcertplay/ConnectionProgress$State;-><init>(Lcom/shilapi/xcertplay/ConnectionProgress$Phase;ZIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZLcom/shilapi/xcertplay/ConnectionProgress$WaitReason;ZZZZLjava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionProgress$Picture;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/shilapi/xcertplay/ConnectionProgress;->state:Lcom/shilapi/xcertplay/ConnectionProgress$State;

    .line 190
    new-instance v0, Lcom/shilapi/xcertplay/ConnectionProgress$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/ConnectionProgress$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/ConnectionProgress;->clock:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final clock$lambda$0()J
    .locals 2

    .line 190
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private static final reset$lambda$2()J
    .locals 2

    .line 303
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private final declared-synchronized set(Lcom/shilapi/xcertplay/ConnectionProgress$State;)V
    .locals 0

    monitor-enter p0

    .line 199
    :try_start_0
    sput-object p1, Lcom/shilapi/xcertplay/ConnectionProgress;->state:Lcom/shilapi/xcertplay/ConnectionProgress$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized begin(ZZ)V
    .locals 28

    move-object/from16 v1, p0

    monitor-enter p0

    .line 203
    :try_start_0
    sget-object v0, Lcom/shilapi/xcertplay/ConnectionProgress;->clock:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    .line 204
    sget-object v3, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->CONNECTING:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    sget-object v0, Lcom/shilapi/xcertplay/ConnectionProgress;->state:Lcom/shilapi/xcertplay/ConnectionProgress$State;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getWaitReason()Lcom/shilapi/xcertplay/ConnectionProgress$WaitReason;

    move-result-object v17

    .line 205
    sget-object v0, Lcom/shilapi/xcertplay/ConnectionProgress;->state:Lcom/shilapi/xcertplay/ConnectionProgress$State;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getFps()I

    move-result v15

    sget-object v0, Lcom/shilapi/xcertplay/ConnectionProgress;->state:Lcom/shilapi/xcertplay/ConnectionProgress$State;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getHevc()Z

    move-result v16

    sget-object v0, Lcom/shilapi/xcertplay/ConnectionProgress;->state:Lcom/shilapi/xcertplay/ConnectionProgress$State;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getStepsExpanded()Z

    move-result v20

    .line 204
    new-instance v2, Lcom/shilapi/xcertplay/ConnectionProgress$State;

    const v26, 0xf11e0

    const/16 v27, 0x0

    const/4 v5, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-wide v8, v6

    move/from16 v4, p1

    move/from16 v19, p2

    invoke-direct/range {v2 .. v27}, Lcom/shilapi/xcertplay/ConnectionProgress$State;-><init>(Lcom/shilapi/xcertplay/ConnectionProgress$Phase;ZIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZLcom/shilapi/xcertplay/ConnectionProgress$WaitReason;ZZZZLjava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionProgress$Picture;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v1, v2}, Lcom/shilapi/xcertplay/ConnectionProgress;->set(Lcom/shilapi/xcertplay/ConnectionProgress$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized clearIphoneAfterCancel()V
    .locals 28

    move-object/from16 v1, p0

    monitor-enter p0

    .line 272
    :try_start_0
    sget-object v0, Lcom/shilapi/xcertplay/ConnectionProgress;->state:Lcom/shilapi/xcertplay/ConnectionProgress$State;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getIphoneAfterCancel()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/shilapi/xcertplay/ConnectionProgress;->state:Lcom/shilapi/xcertplay/ConnectionProgress$State;

    const v26, 0xf7fff

    const/16 v27, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v2 .. v27}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->copy$default(Lcom/shilapi/xcertplay/ConnectionProgress$State;Lcom/shilapi/xcertplay/ConnectionProgress$Phase;ZIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZLcom/shilapi/xcertplay/ConnectionProgress$WaitReason;ZZZZLjava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionProgress$Picture;ZILjava/lang/Object;)Lcom/shilapi/xcertplay/ConnectionProgress$State;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/ConnectionProgress;->set(Lcom/shilapi/xcertplay/ConnectionProgress$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized collapseSteps()V
    .locals 28

    move-object/from16 v1, p0

    monitor-enter p0

    .line 262
    :try_start_0
    sget-object v0, Lcom/shilapi/xcertplay/ConnectionProgress;->state:Lcom/shilapi/xcertplay/ConnectionProgress$State;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getStepsExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/shilapi/xcertplay/ConnectionProgress;->state:Lcom/shilapi/xcertplay/ConnectionProgress$State;

    const v26, 0xfbfff

    const/16 v27, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v2 .. v27}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->copy$default(Lcom/shilapi/xcertplay/ConnectionProgress$State;Lcom/shilapi/xcertplay/ConnectionProgress$Phase;ZIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZLcom/shilapi/xcertplay/ConnectionProgress$WaitReason;ZZZZLjava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionProgress$Picture;ZILjava/lang/Object;)Lcom/shilapi/xcertplay/ConnectionProgress$State;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/ConnectionProgress;->set(Lcom/shilapi/xcertplay/ConnectionProgress$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized connected(Z)V
    .locals 28

    move-object/from16 v1, p0

    monitor-enter p0

    .line 277
    :try_start_0
    sget-object v2, Lcom/shilapi/xcertplay/ConnectionProgress;->state:Lcom/shilapi/xcertplay/ConnectionProgress$State;

    .line 278
    sget-object v3, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->CONNECTED:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    sget-object v0, Lcom/shilapi/xcertplay/ConnectionSteps;->INSTANCE:Lcom/shilapi/xcertplay/ConnectionSteps;

    move/from16 v4, p1

    invoke-virtual {v0, v4}, Lcom/shilapi/xcertplay/ConnectionSteps;->count(Z)I

    move-result v5

    .line 279
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getPhase()Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    move-result-object v0

    sget-object v6, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->CONNECTED:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    if-ne v0, v6, :cond_0

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getConnectedAt()J

    move-result-wide v6

    :goto_0
    move-wide v13, v6

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/shilapi/xcertplay/ConnectionProgress;->clock:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    goto :goto_0

    :goto_1
    const v26, 0x4ee18

    const/16 v27, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 278
    invoke-static/range {v2 .. v27}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->copy$default(Lcom/shilapi/xcertplay/ConnectionProgress$State;Lcom/shilapi/xcertplay/ConnectionProgress$Phase;ZIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZLcom/shilapi/xcertplay/ConnectionProgress$WaitReason;ZZZZLjava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionProgress$Picture;ZILjava/lang/Object;)Lcom/shilapi/xcertplay/ConnectionProgress$State;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/ConnectionProgress;->set(Lcom/shilapi/xcertplay/ConnectionProgress$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public final getClock$common_release()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 190
    sget-object v0, Lcom/shilapi/xcertplay/ConnectionProgress;->clock:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getState()Lcom/shilapi/xcertplay/ConnectionProgress$State;
    .locals 1

    .line 187
    sget-object v0, Lcom/shilapi/xcertplay/ConnectionProgress;->state:Lcom/shilapi/xcertplay/ConnectionProgress$State;

    return-object v0
.end method

.method public final declared-synchronized handled(Ljava/lang/String;)V
    .locals 28

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "text"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    sget-object v2, Lcom/shilapi/xcertplay/ConnectionProgress;->state:Lcom/shilapi/xcertplay/ConnectionProgress$State;

    const v26, 0xdffff

    const/16 v27, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v23, p1

    invoke-static/range {v2 .. v27}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->copy$default(Lcom/shilapi/xcertplay/ConnectionProgress$State;Lcom/shilapi/xcertplay/ConnectionProgress$Phase;ZIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZLcom/shilapi/xcertplay/ConnectionProgress$WaitReason;ZZZZLjava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionProgress$Picture;ZILjava/lang/Object;)Lcom/shilapi/xcertplay/ConnectionProgress$State;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/ConnectionProgress;->set(Lcom/shilapi/xcertplay/ConnectionProgress$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized lost(Z)V
    .locals 28

    move-object/from16 v1, p0

    monitor-enter p0

    .line 285
    :try_start_0
    sget-object v2, Lcom/shilapi/xcertplay/ConnectionProgress;->state:Lcom/shilapi/xcertplay/ConnectionProgress$State;

    .line 286
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getPhase()Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    move-result-object v0

    sget-object v3, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->CONNECTED:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v3, :cond_0

    monitor-exit p0

    return-void

    .line 287
    :cond_0
    :try_start_1
    sget-object v0, Lcom/shilapi/xcertplay/ConnectionProgress;->clock:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    .line 288
    sget-object v3, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->RECONNECTING:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    if-eqz p1, :cond_1

    .line 289
    sget-object v0, Lcom/shilapi/xcertplay/ConnectionProgress$WaitReason;->RESTART:Lcom/shilapi/xcertplay/ConnectionProgress$WaitReason;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/shilapi/xcertplay/ConnectionProgress$WaitReason;->LOST:Lcom/shilapi/xcertplay/ConnectionProgress$WaitReason;

    :goto_0
    move-object/from16 v17, v0

    const v26, 0xbc7c2

    const/16 v27, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-wide v8, v6

    .line 288
    invoke-static/range {v2 .. v27}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->copy$default(Lcom/shilapi/xcertplay/ConnectionProgress$State;Lcom/shilapi/xcertplay/ConnectionProgress$Phase;ZIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZLcom/shilapi/xcertplay/ConnectionProgress$WaitReason;ZZZZLjava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionProgress$Picture;ZILjava/lang/Object;)Lcom/shilapi/xcertplay/ConnectionProgress$State;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/ConnectionProgress;->set(Lcom/shilapi/xcertplay/ConnectionProgress$State;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized noteIphonePluggedAfterCancel()V
    .locals 30

    move-object/from16 v1, p0

    monitor-enter p0

    .line 266
    :try_start_0
    sget-object v0, Lcom/shilapi/xcertplay/ConnectionProgress;->clock:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 267
    sget-object v4, Lcom/shilapi/xcertplay/ConnectionProgress;->state:Lcom/shilapi/xcertplay/ConnectionProgress$State;

    sget-object v0, Lcom/shilapi/xcertplay/ConnectionProgress;->state:Lcom/shilapi/xcertplay/ConnectionProgress$State;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getPhase()Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    move-result-object v0

    sget-object v5, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->CONNECTED:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    if-ne v0, v5, :cond_0

    sget-object v0, Lcom/shilapi/xcertplay/ConnectionProgress;->state:Lcom/shilapi/xcertplay/ConnectionProgress$State;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getPhase()Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->IDLE:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    :goto_0
    move-object v5, v0

    .line 268
    sget-object v0, Lcom/shilapi/xcertplay/ConnectionProgress;->state:Lcom/shilapi/xcertplay/ConnectionProgress$State;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getStartedAt()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-nez v0, :cond_1

    :goto_1
    move-wide v8, v2

    goto :goto_2

    :cond_1
    sget-object v0, Lcom/shilapi/xcertplay/ConnectionProgress;->state:Lcom/shilapi/xcertplay/ConnectionProgress$State;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getStartedAt()J

    move-result-wide v2

    goto :goto_1

    :goto_2
    const v28, 0xf7fd6

    const/16 v29, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    .line 267
    invoke-static/range {v4 .. v29}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->copy$default(Lcom/shilapi/xcertplay/ConnectionProgress$State;Lcom/shilapi/xcertplay/ConnectionProgress$Phase;ZIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZLcom/shilapi/xcertplay/ConnectionProgress$WaitReason;ZZZZLjava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionProgress$Picture;ZILjava/lang/Object;)Lcom/shilapi/xcertplay/ConnectionProgress$State;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/ConnectionProgress;->set(Lcom/shilapi/xcertplay/ConnectionProgress$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public final now()J
    .locals 2

    .line 197
    sget-object v0, Lcom/shilapi/xcertplay/ConnectionProgress;->clock:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final declared-synchronized picture(Lcom/shilapi/xcertplay/ConnectionProgress$Picture;)V
    .locals 28

    move-object/from16 v1, p0

    monitor-enter p0

    .line 212
    :try_start_0
    sget-object v2, Lcom/shilapi/xcertplay/ConnectionProgress;->state:Lcom/shilapi/xcertplay/ConnectionProgress$State;

    const v26, 0xbffff

    const/16 v27, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    move-object/from16 v24, p1

    invoke-static/range {v2 .. v27}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->copy$default(Lcom/shilapi/xcertplay/ConnectionProgress$State;Lcom/shilapi/xcertplay/ConnectionProgress$Phase;ZIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZLcom/shilapi/xcertplay/ConnectionProgress$WaitReason;ZZZZLjava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionProgress$Picture;ZILjava/lang/Object;)Lcom/shilapi/xcertplay/ConnectionProgress$State;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/ConnectionProgress;->set(Lcom/shilapi/xcertplay/ConnectionProgress$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized problem(ZLcom/shilapi/xcertplay/orchestration/SetupProblem;Ljava/lang/String;Ljava/lang/String;)V
    .locals 29

    move-object/from16 v1, p0

    move/from16 v4, p1

    move-object/from16 v0, p2

    monitor-enter p0

    :try_start_0
    const-string v2, "problem"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "title"

    move-object/from16 v3, p3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    sget-object v2, Lcom/shilapi/xcertplay/ConnectionProgress;->state:Lcom/shilapi/xcertplay/ConnectionProgress$State;

    .line 245
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getPhase()Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    move-result-object v5

    sget-object v6, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->CONNECTED:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v5, v6, :cond_0

    monitor-exit p0

    return-void

    .line 246
    :cond_0
    :try_start_1
    sget-object v5, Lcom/shilapi/xcertplay/ConnectionProgress;->clock:Lkotlin/jvm/functions/Function0;

    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    .line 247
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getPhase()Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    move-result-object v5

    sget-object v8, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->IDLE:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    if-eq v5, v8, :cond_2

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getWireless()Z

    move-result v5

    if-eq v5, v4, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move-object v3, v2

    goto :goto_2

    :cond_2
    :goto_1
    new-instance v2, Lcom/shilapi/xcertplay/ConnectionProgress$State;

    sget-object v3, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->CONNECTING:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    const v26, 0xfffe0

    const/16 v27, 0x0

    const/4 v5, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-wide v8, v6

    invoke-direct/range {v2 .. v27}, Lcom/shilapi/xcertplay/ConnectionProgress$State;-><init>(Lcom/shilapi/xcertplay/ConnectionProgress$Phase;ZIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZLcom/shilapi/xcertplay/ConnectionProgress$WaitReason;ZZZZLjava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionProgress$Picture;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    .line 248
    :goto_2
    sget-object v2, Lcom/shilapi/xcertplay/ConnectionStepMap;->INSTANCE:Lcom/shilapi/xcertplay/ConnectionStepMap;

    invoke-virtual {v2, v4, v0}, Lcom/shilapi/xcertplay/ConnectionStepMap;->forProblem(ZLcom/shilapi/xcertplay/orchestration/SetupProblem;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getStep()I

    move-result v2

    .line 249
    :goto_3
    sget-object v4, Lcom/shilapi/xcertplay/orchestration/ConnectionError;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/ConnectionError;

    invoke-virtual {v4, v0}, Lcom/shilapi/xcertplay/orchestration/ConnectionError;->codeOf(Lcom/shilapi/xcertplay/orchestration/SetupProblem;)Ljava/lang/String;

    move-result-object v23

    .line 250
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->getWorking()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getStep()I

    move-result v0

    if-eq v2, v0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getStepSince()J

    move-result-wide v6

    :goto_4
    move-wide v9, v6

    const v27, 0xeffcb

    const/16 v28, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v11, p3

    move v6, v2

    invoke-static/range {v3 .. v28}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->copy$default(Lcom/shilapi/xcertplay/ConnectionProgress$State;Lcom/shilapi/xcertplay/ConnectionProgress$Phase;ZIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZLcom/shilapi/xcertplay/ConnectionProgress$WaitReason;ZZZZLjava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionProgress$Picture;ZILjava/lang/Object;)Lcom/shilapi/xcertplay/ConnectionProgress$State;

    move-result-object v0

    goto :goto_5

    :cond_5
    move v6, v2

    .line 251
    sget-object v4, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->STUCK:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    const/4 v0, 0x2

    .line 252
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v23, v0, v2

    const/4 v2, 0x1

    aput-object p4, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/Iterable;

    const-string v0, " \u00b7 "

    move-object v8, v0

    check-cast v8, Ljava/lang/CharSequence;

    const/16 v14, 0x3e

    const/4 v15, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v7 .. v15}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const v27, 0xeff1a

    const/16 v28, 0x0

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v12, p3

    .line 251
    invoke-static/range {v3 .. v28}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->copy$default(Lcom/shilapi/xcertplay/ConnectionProgress$State;Lcom/shilapi/xcertplay/ConnectionProgress$Phase;ZIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZLcom/shilapi/xcertplay/ConnectionProgress$WaitReason;ZZZZLjava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionProgress$Picture;ZILjava/lang/Object;)Lcom/shilapi/xcertplay/ConnectionProgress$State;

    move-result-object v0

    .line 250
    :goto_5
    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/ConnectionProgress;->set(Lcom/shilapi/xcertplay/ConnectionProgress$State;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method public final reset$common_release()V
    .locals 26

    .line 303
    new-instance v0, Lcom/shilapi/xcertplay/ConnectionProgress$State;

    const v24, 0xfffff

    const/16 v25, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v0 .. v25}, Lcom/shilapi/xcertplay/ConnectionProgress$State;-><init>(Lcom/shilapi/xcertplay/ConnectionProgress$Phase;ZIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZLcom/shilapi/xcertplay/ConnectionProgress$WaitReason;ZZZZLjava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionProgress$Picture;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/ConnectionProgress;->state:Lcom/shilapi/xcertplay/ConnectionProgress$State;

    new-instance v0, Lcom/shilapi/xcertplay/ConnectionProgress$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/ConnectionProgress$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/ConnectionProgress;->clock:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setClock$common_release(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    sput-object p1, Lcom/shilapi/xcertplay/ConnectionProgress;->clock:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final declared-synchronized status(ZLcom/shilapi/xcertplay/orchestration/CarPlayStatus;)V
    .locals 32

    move-object/from16 v1, p0

    move/from16 v4, p1

    move-object/from16 v0, p2

    monitor-enter p0

    :try_start_0
    const-string/jumbo v2, "status"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    sget-object v2, Lcom/shilapi/xcertplay/ConnectionProgress;->state:Lcom/shilapi/xcertplay/ConnectionProgress$State;

    .line 222
    sget-object v3, Lcom/shilapi/xcertplay/ConnectionProgress;->clock:Lkotlin/jvm/functions/Function0;

    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    .line 223
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getPhase()Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    move-result-object v3

    sget-object v5, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->CONNECTED:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    if-ne v3, v5, :cond_0

    instance-of v3, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneReconnect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    monitor-exit p0

    return-void

    .line 224
    :cond_0
    :try_start_1
    sget-object v3, Lcom/shilapi/xcertplay/ConnectionStepMap;->INSTANCE:Lcom/shilapi/xcertplay/ConnectionStepMap;

    invoke-virtual {v3, v4, v0}, Lcom/shilapi/xcertplay/ConnectionStepMap;->forStatus(ZLcom/shilapi/xcertplay/orchestration/CarPlayStatus;)Ljava/lang/Integer;

    move-result-object v28
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v28, :cond_1

    .line 226
    monitor-exit p0

    return-void

    .line 227
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getPhase()Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    move-result-object v3

    sget-object v5, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->IDLE:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    const/16 v29, 0x1

    const/16 v30, 0x0

    if-eq v3, v5, :cond_3

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getPhase()Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    move-result-object v3

    sget-object v5, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->STUCK:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    if-eq v3, v5, :cond_3

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getWireless()Z

    move-result v3

    if-eq v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const/16 v31, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/16 v31, 0x1

    :goto_1
    if-eqz v31, :cond_4

    .line 228
    sget-object v3, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->CONNECTING:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getWaitReason()Lcom/shilapi/xcertplay/ConnectionProgress$WaitReason;

    move-result-object v17

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getFps()I

    move-result v15

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getHevc()Z

    move-result v16

    new-instance v2, Lcom/shilapi/xcertplay/ConnectionProgress$State;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const v26, 0xff1e0

    const/16 v27, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-wide v8, v6

    invoke-direct/range {v2 .. v27}, Lcom/shilapi/xcertplay/ConnectionProgress$State;-><init>(Lcom/shilapi/xcertplay/ConnectionProgress$Phase;ZIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZLcom/shilapi/xcertplay/ConnectionProgress$WaitReason;ZZZZLjava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionProgress$Picture;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 230
    :cond_4
    instance-of v0, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneReconnect;

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 232
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getPhase()Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    move-result-object v4

    sget-object v5, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->RECONNECTING:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    if-eq v4, v5, :cond_5

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getAutomatic()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    sget-object v4, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->RECONNECTING:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    goto :goto_3

    .line 233
    :cond_6
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getPhase()Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    move-result-object v4

    sget-object v5, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->RECONNECTING:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    if-ne v4, v5, :cond_7

    goto :goto_2

    :cond_7
    move-object v4, v3

    :goto_2
    if-nez v4, :cond_8

    sget-object v4, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->CONNECTING:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    .line 237
    :cond_8
    :goto_3
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getStep()I

    move-result v8

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v8, :cond_a

    if-eqz v31, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getStepSince()J

    move-result-wide v6

    :cond_a
    :goto_4
    move-wide v8, v6

    .line 238
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getWaited()Z

    move-result v6

    if-nez v6, :cond_c

    if-eqz v0, :cond_b

    goto :goto_5

    :cond_b
    const/16 v18, 0x0

    goto :goto_6

    :cond_c
    :goto_5
    const/16 v18, 0x1

    :goto_6
    if-eqz v31, :cond_d

    goto :goto_7

    .line 239
    :cond_d
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getHandled()Ljava/lang/String;

    move-result-object v3

    :goto_7
    move-object/from16 v23, v3

    if-eqz v31, :cond_e

    const/16 v25, 0x0

    goto :goto_8

    :cond_e
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getWifiCardShown()Z

    move-result v30

    move/from16 v25, v30

    :goto_8
    const v26, 0x4ef0a

    const/16 v27, 0x0

    move-object v3, v4

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    .line 237
    invoke-static/range {v2 .. v27}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->copy$default(Lcom/shilapi/xcertplay/ConnectionProgress$State;Lcom/shilapi/xcertplay/ConnectionProgress$Phase;ZIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZLcom/shilapi/xcertplay/ConnectionProgress$WaitReason;ZZZZLjava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionProgress$Picture;ZILjava/lang/Object;)Lcom/shilapi/xcertplay/ConnectionProgress$State;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/ConnectionProgress;->set(Lcom/shilapi/xcertplay/ConnectionProgress$State;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 240
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final declared-synchronized stopped()V
    .locals 28

    move-object/from16 v1, p0

    monitor-enter p0

    .line 298
    :try_start_0
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor;->clearWait()Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;

    .line 299
    sget-object v17, Lcom/shilapi/xcertplay/ConnectionProgress$WaitReason;->STARTUP:Lcom/shilapi/xcertplay/ConnectionProgress$WaitReason;

    sget-object v0, Lcom/shilapi/xcertplay/ConnectionProgress;->state:Lcom/shilapi/xcertplay/ConnectionProgress$State;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getFps()I

    move-result v15

    sget-object v0, Lcom/shilapi/xcertplay/ConnectionProgress;->state:Lcom/shilapi/xcertplay/ConnectionProgress$State;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getHevc()Z

    move-result v16

    sget-object v0, Lcom/shilapi/xcertplay/ConnectionProgress;->state:Lcom/shilapi/xcertplay/ConnectionProgress$State;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getStepsExpanded()Z

    move-result v20

    new-instance v2, Lcom/shilapi/xcertplay/ConnectionProgress$State;

    const v26, 0xfb1ff

    const/16 v27, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-direct/range {v2 .. v27}, Lcom/shilapi/xcertplay/ConnectionProgress$State;-><init>(Lcom/shilapi/xcertplay/ConnectionProgress$Phase;ZIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZLcom/shilapi/xcertplay/ConnectionProgress$WaitReason;ZZZZLjava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionProgress$Picture;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v1, v2}, Lcom/shilapi/xcertplay/ConnectionProgress;->set(Lcom/shilapi/xcertplay/ConnectionProgress$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized toggleStepsExpanded()V
    .locals 28

    move-object/from16 v1, p0

    monitor-enter p0

    .line 258
    :try_start_0
    sget-object v0, Lcom/shilapi/xcertplay/ConnectionProgress;->state:Lcom/shilapi/xcertplay/ConnectionProgress$State;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getStepsExpanded()Z

    move-result v0

    xor-int/lit8 v20, v0, 0x1

    .line 259
    sget-object v2, Lcom/shilapi/xcertplay/ConnectionProgress;->state:Lcom/shilapi/xcertplay/ConnectionProgress$State;

    sget-object v3, Lcom/shilapi/xcertplay/ConnectionProgress;->state:Lcom/shilapi/xcertplay/ConnectionProgress$State;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getWifiCardShown()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/16 v25, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/16 v25, 0x0

    :goto_0
    const v26, 0x7bfff

    const/16 v27, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v2 .. v27}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->copy$default(Lcom/shilapi/xcertplay/ConnectionProgress$State;Lcom/shilapi/xcertplay/ConnectionProgress$Phase;ZIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZLcom/shilapi/xcertplay/ConnectionProgress$WaitReason;ZZZZLjava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionProgress$Picture;ZILjava/lang/Object;)Lcom/shilapi/xcertplay/ConnectionProgress$State;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/ConnectionProgress;->set(Lcom/shilapi/xcertplay/ConnectionProgress$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized toggleWifiCard()V
    .locals 28

    move-object/from16 v1, p0

    monitor-enter p0

    .line 216
    :try_start_0
    sget-object v0, Lcom/shilapi/xcertplay/ConnectionProgress;->state:Lcom/shilapi/xcertplay/ConnectionProgress$State;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getWifiCardShown()Z

    move-result v0

    xor-int/lit8 v25, v0, 0x1

    .line 217
    sget-object v2, Lcom/shilapi/xcertplay/ConnectionProgress;->state:Lcom/shilapi/xcertplay/ConnectionProgress$State;

    sget-object v3, Lcom/shilapi/xcertplay/ConnectionProgress;->state:Lcom/shilapi/xcertplay/ConnectionProgress$State;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getStepsExpanded()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/16 v20, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/16 v20, 0x0

    :goto_0
    const v26, 0x7bfff

    const/16 v27, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v2 .. v27}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->copy$default(Lcom/shilapi/xcertplay/ConnectionProgress$State;Lcom/shilapi/xcertplay/ConnectionProgress$Phase;ZIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZLcom/shilapi/xcertplay/ConnectionProgress$WaitReason;ZZZZLjava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionProgress$Picture;ZILjava/lang/Object;)Lcom/shilapi/xcertplay/ConnectionProgress$State;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/ConnectionProgress;->set(Lcom/shilapi/xcertplay/ConnectionProgress$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized video(IZ)V
    .locals 28

    move-object/from16 v1, p0

    monitor-enter p0

    .line 292
    :try_start_0
    sget-object v2, Lcom/shilapi/xcertplay/ConnectionProgress;->state:Lcom/shilapi/xcertplay/ConnectionProgress$State;

    const v26, 0xff9ff

    const/16 v27, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v15, p1

    move/from16 v16, p2

    invoke-static/range {v2 .. v27}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->copy$default(Lcom/shilapi/xcertplay/ConnectionProgress$State;Lcom/shilapi/xcertplay/ConnectionProgress$Phase;ZIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZLcom/shilapi/xcertplay/ConnectionProgress$WaitReason;ZZZZLjava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionProgress$Picture;ZILjava/lang/Object;)Lcom/shilapi/xcertplay/ConnectionProgress$State;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/ConnectionProgress;->set(Lcom/shilapi/xcertplay/ConnectionProgress$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
