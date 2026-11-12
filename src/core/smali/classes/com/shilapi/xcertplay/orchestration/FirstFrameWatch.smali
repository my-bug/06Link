.class public final Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch;
.super Ljava/lang/Object;
.source "FirstFrameWatch.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;,
        Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;,
        Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;,
        Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;,
        Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0004\u001a\u001b\u001c\u001dB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rJ\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000c\u001a\u00020\rJ\u000e\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000c\u001a\u00020\rJ\u000e\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u000c\u001a\u00020\rJ&\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\rJ\u001c\u0010\u0017\u001a\u00020\n*\u00020\n2\u0006\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0010H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch;",
        "",
        "<init>",
        "()V",
        "NO_DATA_MS",
        "",
        "NO_DECODE_MS",
        "NO_SURFACE_FORCE_FRONT_MS",
        "TOTAL_BUDGET_MS",
        "start",
        "Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;",
        "nowElapsed",
        "wireless",
        "",
        "behindHome",
        "noDataCode",
        "",
        "decodeCode",
        "noSurfaceCode",
        "tick",
        "state",
        "counters",
        "Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;",
        "keyFrame",
        "now",
        "code",
        "SubStep",
        "Action",
        "Counters",
        "State",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch;

.field public static final NO_DATA_MS:J = 0x2710L

.field public static final NO_DECODE_MS:J = 0x1388L

.field public static final NO_SURFACE_FORCE_FRONT_MS:J = 0xfa0L

.field public static final TOTAL_BUDGET_MS:J = 0x7530L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final keyFrame(Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;JLjava/lang/String;)Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;
    .locals 25

    .line 118
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->getKeyFrameRequests()I

    move-result v0

    add-int/lit8 v16, v0, 0x1

    sget-object v22, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;->REQUEST_KEYFRAME:Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;

    const/16 v23, 0x19ff

    const/16 v24, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v1, p1

    move-wide/from16 v17, p2

    move-object/from16 v21, p4

    invoke-static/range {v1 .. v24}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->copy$default(Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;ZLcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;JJJJJZZIJZZLjava/lang/String;Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;ILjava/lang/Object;)Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final decodeCode(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 73
    const-string p1, "WL-40-DECODE"

    return-object p1

    :cond_0
    const-string p1, "WD-25-DECODE"

    return-object p1
.end method

.method public final noDataCode(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 72
    const-string p1, "WL-40-NODATA"

    return-object p1

    :cond_0
    const-string p1, "WD-25-NODATA"

    return-object p1
.end method

.method public final noSurfaceCode(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 74
    const-string p1, "WL-40-NOSURFACE"

    return-object p1

    :cond_0
    const-string p1, "WD-25-NOSURFACE"

    return-object p1
.end method

.method public final start(JZZ)Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;
    .locals 24

    .line 68
    new-instance v0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;

    const/16 v22, 0x7ee2

    const/16 v23, 0x0

    const/4 v2, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p1

    move-wide/from16 v3, p1

    move/from16 v1, p3

    move/from16 v14, p4

    invoke-direct/range {v0 .. v23}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;-><init>(ZLcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;JJJJJZZIJZZLjava/lang/String;Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final tick(Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;JZ)Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;
    .locals 27

    move-object/from16 v0, p0

    const-string/jumbo v1, "state"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "counters"

    move-object/from16 v3, p2

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->getDone()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v23, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;->NONE:Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;

    const/16 v24, 0x3fff

    const/16 v25, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v2 .. v25}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->copy$default(Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;ZLcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;JJJJJZZIJZZLjava/lang/String;Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;ILjava/lang/Object;)Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;

    move-result-object v1

    return-object v1

    .line 78
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->getLastTickElapsed()J

    move-result-wide v1

    sub-long v1, p3, v1

    const-wide/16 v4, 0x1

    invoke-static {v1, v2, v4, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v1

    .line 79
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;->getBytes()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->getBytes()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v4

    const-wide/16 v8, 0x3e8

    mul-long v4, v4, v8

    div-long v12, v4, v1

    .line 80
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;->getBytes()J

    move-result-wide v10

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;->getHasSurface()Z

    move-result v14

    .line 81
    sget-object v22, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;->NONE:Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;

    const/16 v23, 0x3e0f

    const/16 v24, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-wide v8, v6

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v1, p1

    move/from16 v15, p5

    move-wide/from16 v25, v8

    move-wide/from16 v8, p3

    .line 80
    invoke-static/range {v1 .. v24}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->copy$default(Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;ZLcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;JJJJJZZIJZZLjava/lang/String;Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;ILjava/lang/Object;)Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;

    move-result-object v1

    .line 84
    invoke-virtual/range {p2 .. p2}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;->getRendered()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;->SHOWN:Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;

    :goto_0
    move-object v3, v2

    goto :goto_1

    .line 85
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;->getDecoded()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;->WAITING_DISPLAY:Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;

    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;->getBytes()J

    move-result-wide v2

    cmp-long v4, v2, v25

    if-lez v4, :cond_3

    sget-object v2, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;->WAITING_DECODE:Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;

    goto :goto_0

    .line 87
    :cond_3
    sget-object v2, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;->WAITING_DATA:Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;

    goto :goto_0

    .line 89
    :goto_1
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;->ordinal()I

    move-result v2

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->getSubStep()Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;->ordinal()I

    move-result v4

    if-le v2, v4, :cond_4

    const/16 v23, 0x5ff9

    const/16 v24, 0x0

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-wide/from16 v4, p3

    invoke-static/range {v1 .. v24}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->copy$default(Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;ZLcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;JJJJJZZIJZZLjava/lang/String;Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;ILjava/lang/Object;)Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;

    move-result-object v1

    goto :goto_2

    :cond_4
    move-wide/from16 v4, p3

    :goto_2
    move-object v2, v1

    .line 90
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->getSubStep()Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;

    move-result-object v1

    sget-object v3, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;->SHOWN:Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;

    if-ne v1, v3, :cond_5

    goto/16 :goto_5

    .line 91
    :cond_5
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->getAttemptSinceElapsed()J

    move-result-wide v6

    sub-long v6, v4, v6

    .line 92
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->getStageSinceElapsed()J

    move-result-wide v8

    sub-long v8, v4, v8

    const-wide/16 v10, 0x7530

    const/4 v1, 0x2

    const/4 v3, 0x1

    cmp-long v12, v6, v10

    if-ltz v12, :cond_9

    .line 94
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->getSubStep()Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;

    move-result-object v4

    sget-object v5, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;->ordinal()I

    move-result v4

    aget v4, v5, v4

    if-eq v4, v3, :cond_8

    if-eq v4, v1, :cond_6

    .line 97
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->getWireless()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch;->noSurfaceCode(Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 96
    :cond_6
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->getHasSurface()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->getWireless()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch;->decodeCode(Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_7
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->getWireless()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch;->noSurfaceCode(Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 95
    :cond_8
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->getWireless()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch;->noDataCode(Z)Ljava/lang/String;

    move-result-object v1

    :goto_3
    move-object/from16 v22, v1

    .line 99
    sget-object v4, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;->FAILED:Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;

    sget-object v23, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;->STOP_WITH_TIMEOUT:Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;

    const/16 v24, 0x1ffd

    const/16 v25, 0x0

    const/4 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v2 .. v25}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->copy$default(Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;ZLcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;JJJJJZZIJZZLjava/lang/String;Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;ILjava/lang/Object;)Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;

    move-result-object v1

    return-object v1

    .line 101
    :cond_9
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->getKeyFrameRequests()I

    move-result v6

    if-nez v6, :cond_a

    const-wide v6, 0x7fffffffffffffffL

    goto :goto_4

    :cond_a
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->getKeyFrameAtElapsed()J

    move-result-wide v6

    sub-long v6, v4, v6

    .line 102
    :goto_4
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->getSubStep()Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;

    move-result-object v10

    sget-object v11, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v10}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;->ordinal()I

    move-result v10

    aget v10, v11, v10

    if-eq v10, v3, :cond_e

    if-eq v10, v1, :cond_b

    const/4 v1, 0x3

    if-eq v10, v1, :cond_b

    goto/16 :goto_5

    .line 105
    :cond_b
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->getHasSurface()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->getForcedFront()Z

    move-result v1

    if-nez v1, :cond_c

    const-wide/16 v10, 0xfa0

    cmp-long v1, v8, v10

    if-ltz v1, :cond_c

    .line 106
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->getWireless()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch;->noSurfaceCode(Z)Ljava/lang/String;

    move-result-object v22

    sget-object v23, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;->FORCE_HOST_FRONT:Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;

    const/16 v24, 0x17ff

    const/16 v25, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    invoke-static/range {v2 .. v25}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->copy$default(Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;ZLcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;JJJJJZZIJZZLjava/lang/String;Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;ILjava/lang/Object;)Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;

    move-result-object v1

    return-object v1

    .line 107
    :cond_c
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->getSubStep()Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;

    move-result-object v1

    sget-object v3, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;->WAITING_DECODE:Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;

    const-wide/16 v10, 0x1388

    if-ne v1, v3, :cond_d

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->getHasSurface()Z

    move-result v1

    if-eqz v1, :cond_d

    cmp-long v1, v8, v10

    if-ltz v1, :cond_d

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->getKeyFrameRequests()I

    move-result v1

    if-nez v1, :cond_d

    .line 108
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->getWireless()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch;->decodeCode(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v4, v5, v1}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch;->keyFrame(Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;JLjava/lang/String;)Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;

    move-result-object v1

    return-object v1

    .line 109
    :cond_d
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->getSubStep()Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;

    move-result-object v1

    sget-object v3, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;->WAITING_DECODE:Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;

    if-ne v1, v3, :cond_f

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->getHasSurface()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->getDowngraded()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->getKeyFrameRequests()I

    move-result v1

    if-lez v1, :cond_f

    cmp-long v1, v6, v10

    if-ltz v1, :cond_f

    .line 110
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->getWireless()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch;->decodeCode(Z)Ljava/lang/String;

    move-result-object v22

    sget-object v23, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;->DOWNGRADE_CODEC:Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;

    const/16 v24, 0xfff

    const/16 v25, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-static/range {v2 .. v25}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->copy$default(Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;ZLcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;JJJJJZZIJZZLjava/lang/String;Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;ILjava/lang/Object;)Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;

    move-result-object v1

    return-object v1

    :cond_e
    const-wide/16 v10, 0x2710

    cmp-long v1, v8, v10

    if-ltz v1, :cond_f

    cmp-long v1, v6, v10

    if-ltz v1, :cond_f

    .line 103
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->getWireless()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch;->noDataCode(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v4, v5, v1}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch;->keyFrame(Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;JLjava/lang/String;)Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;

    move-result-object v1

    return-object v1

    :cond_f
    :goto_5
    return-object v2
.end method
