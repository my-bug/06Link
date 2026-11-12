.class public final Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;
.super Ljava/lang/Object;
.source "FirstFrameWatch.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "State"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008.\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u009f\u0001\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\t\u00100\u001a\u00020\u0003H\u00c6\u0003J\t\u00101\u001a\u00020\u0005H\u00c6\u0003J\t\u00102\u001a\u00020\u0007H\u00c6\u0003J\t\u00103\u001a\u00020\u0007H\u00c6\u0003J\t\u00104\u001a\u00020\u0007H\u00c6\u0003J\t\u00105\u001a\u00020\u0007H\u00c6\u0003J\t\u00106\u001a\u00020\u0007H\u00c6\u0003J\t\u00107\u001a\u00020\u0003H\u00c6\u0003J\t\u00108\u001a\u00020\u0003H\u00c6\u0003J\t\u00109\u001a\u00020\u000fH\u00c6\u0003J\t\u0010:\u001a\u00020\u0007H\u00c6\u0003J\t\u0010;\u001a\u00020\u0003H\u00c6\u0003J\t\u0010<\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010=\u001a\u0004\u0018\u00010\u0014H\u00c6\u0003J\t\u0010>\u001a\u00020\u0016H\u00c6\u0003J\u00a1\u0001\u0010?\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u00072\u0008\u0008\u0002\u0010\n\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00032\u0008\u0008\u0002\u0010\r\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00032\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0016H\u00c6\u0001J\u0013\u0010@\u001a\u00020\u00032\u0008\u0010A\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010B\u001a\u00020\u000fH\u00d6\u0001J\t\u0010C\u001a\u00020\u0014H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u0011\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u001eR\u0011\u0010\t\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u001eR\u0011\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u001eR\u0011\u0010\u000b\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u001eR\u0011\u0010\u000c\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u001aR\u0011\u0010\r\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\u001aR\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010&R\u0011\u0010\u0010\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010\u001eR\u0011\u0010\u0011\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010\u001aR\u0011\u0010\u0012\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010\u001aR\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010+R\u0011\u0010\u0015\u001a\u00020\u0016\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010-R\u0011\u0010.\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008/\u0010\u001a\u00a8\u0006D"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;",
        "",
        "wireless",
        "",
        "subStep",
        "Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;",
        "stageSinceElapsed",
        "",
        "attemptSinceElapsed",
        "lastTickElapsed",
        "bytes",
        "bytesPerSec",
        "hasSurface",
        "behindHome",
        "keyFrameRequests",
        "",
        "keyFrameAtElapsed",
        "forcedFront",
        "downgraded",
        "errorCode",
        "",
        "lastAction",
        "Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;",
        "<init>",
        "(ZLcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;JJJJJZZIJZZLjava/lang/String;Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;)V",
        "getWireless",
        "()Z",
        "getSubStep",
        "()Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;",
        "getStageSinceElapsed",
        "()J",
        "getAttemptSinceElapsed",
        "getLastTickElapsed",
        "getBytes",
        "getBytesPerSec",
        "getHasSurface",
        "getBehindHome",
        "getKeyFrameRequests",
        "()I",
        "getKeyFrameAtElapsed",
        "getForcedFront",
        "getDowngraded",
        "getErrorCode",
        "()Ljava/lang/String;",
        "getLastAction",
        "()Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;",
        "done",
        "getDone",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
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


# instance fields
.field private final attemptSinceElapsed:J

.field private final behindHome:Z

.field private final bytes:J

.field private final bytesPerSec:J

.field private final downgraded:Z

.field private final errorCode:Ljava/lang/String;

.field private final forcedFront:Z

.field private final hasSurface:Z

.field private final keyFrameAtElapsed:J

.field private final keyFrameRequests:I

.field private final lastAction:Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;

.field private final lastTickElapsed:J

.field private final stageSinceElapsed:J

.field private final subStep:Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;

.field private final wireless:Z


# direct methods
.method public constructor <init>()V
    .locals 24

    const/16 v22, 0x7fff

    const/16 v23, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v23}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;-><init>(ZLcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;JJJJJZZIJZZLjava/lang/String;Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZLcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;JJJJJZZIJZZLjava/lang/String;Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;)V
    .locals 2

    move-object/from16 v0, p21

    const-string/jumbo v1, "subStep"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "lastAction"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->wireless:Z

    .line 49
    iput-object p2, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->subStep:Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;

    .line 50
    iput-wide p3, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->stageSinceElapsed:J

    .line 51
    iput-wide p5, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->attemptSinceElapsed:J

    .line 52
    iput-wide p7, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->lastTickElapsed:J

    .line 53
    iput-wide p9, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->bytes:J

    .line 54
    iput-wide p11, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->bytesPerSec:J

    .line 55
    iput-boolean p13, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->hasSurface:Z

    move/from16 p1, p14

    .line 56
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->behindHome:Z

    move/from16 p1, p15

    .line 57
    iput p1, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->keyFrameRequests:I

    move-wide/from16 p1, p16

    .line 58
    iput-wide p1, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->keyFrameAtElapsed:J

    move/from16 p1, p18

    .line 59
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->forcedFront:Z

    move/from16 p1, p19

    .line 60
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->downgraded:Z

    move-object/from16 p1, p20

    .line 61
    iput-object p1, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->errorCode:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->lastAction:Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;JJJJJZZIJZZLjava/lang/String;Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 19

    move/from16 v0, p22

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move/from16 v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    .line 49
    sget-object v2, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;->WAITING_DATA:Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;

    goto :goto_1

    :cond_1
    move-object/from16 v2, p2

    :goto_1
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_2

    const-wide/16 v6, 0x0

    goto :goto_2

    :cond_2
    move-wide/from16 v6, p3

    :goto_2
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_3

    const-wide/16 v8, 0x0

    goto :goto_3

    :cond_3
    move-wide/from16 v8, p5

    :goto_3
    and-int/lit8 v3, v0, 0x10

    if-eqz v3, :cond_4

    const-wide/16 v10, 0x0

    goto :goto_4

    :cond_4
    move-wide/from16 v10, p7

    :goto_4
    and-int/lit8 v3, v0, 0x20

    if-eqz v3, :cond_5

    const-wide/16 v12, 0x0

    goto :goto_5

    :cond_5
    move-wide/from16 v12, p9

    :goto_5
    and-int/lit8 v3, v0, 0x40

    if-eqz v3, :cond_6

    const-wide/16 v14, 0x0

    goto :goto_6

    :cond_6
    move-wide/from16 v14, p11

    :goto_6
    and-int/lit16 v3, v0, 0x80

    const/16 v16, 0x0

    if-eqz v3, :cond_7

    const/4 v3, 0x0

    goto :goto_7

    :cond_7
    move/from16 v3, p13

    :goto_7
    and-int/lit16 v4, v0, 0x100

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    goto :goto_8

    :cond_8
    move/from16 v4, p14

    :goto_8
    and-int/lit16 v5, v0, 0x200

    if-eqz v5, :cond_9

    const/4 v5, 0x0

    goto :goto_9

    :cond_9
    move/from16 v5, p15

    :goto_9
    move/from16 p23, v1

    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_a

    const-wide/16 v17, 0x0

    goto :goto_a

    :cond_a
    move-wide/from16 v17, p16

    :goto_a
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    goto :goto_b

    :cond_b
    move/from16 v1, p18

    :goto_b
    move/from16 p1, v1

    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_c

    goto :goto_c

    :cond_c
    move/from16 v16, p19

    :goto_c
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_d

    const/4 v1, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v1, p20

    :goto_d
    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_e

    .line 62
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;->NONE:Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;

    move-object/from16 p22, v0

    goto :goto_e

    :cond_e
    move-object/from16 p22, p21

    :goto_e
    move/from16 p19, p1

    move/from16 p2, p23

    move-object/from16 p21, v1

    move-object/from16 p3, v2

    move/from16 p14, v3

    move/from16 p15, v4

    move/from16 p16, v5

    move-wide/from16 p4, v6

    move-wide/from16 p6, v8

    move-wide/from16 p8, v10

    move-wide/from16 p10, v12

    move-wide/from16 p12, v14

    move/from16 p20, v16

    move-wide/from16 p17, v17

    move-object/from16 p1, p0

    .line 47
    invoke-direct/range {p1 .. p22}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;-><init>(ZLcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;JJJJJZZIJZZLjava/lang/String;Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;ZLcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;JJJJJZZIJZZLjava/lang/String;Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;ILjava/lang/Object;)Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p22

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->wireless:Z

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->subStep:Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-wide v4, v0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->stageSinceElapsed:J

    goto :goto_2

    :cond_2
    move-wide/from16 v4, p3

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-wide v6, v0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->attemptSinceElapsed:J

    goto :goto_3

    :cond_3
    move-wide/from16 v6, p5

    :goto_3
    and-int/lit8 v8, v1, 0x10

    if-eqz v8, :cond_4

    iget-wide v8, v0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->lastTickElapsed:J

    goto :goto_4

    :cond_4
    move-wide/from16 v8, p7

    :goto_4
    and-int/lit8 v10, v1, 0x20

    if-eqz v10, :cond_5

    iget-wide v10, v0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->bytes:J

    goto :goto_5

    :cond_5
    move-wide/from16 v10, p9

    :goto_5
    and-int/lit8 v12, v1, 0x40

    if-eqz v12, :cond_6

    iget-wide v12, v0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->bytesPerSec:J

    goto :goto_6

    :cond_6
    move-wide/from16 v12, p11

    :goto_6
    and-int/lit16 v14, v1, 0x80

    if-eqz v14, :cond_7

    iget-boolean v14, v0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->hasSurface:Z

    goto :goto_7

    :cond_7
    move/from16 v14, p13

    :goto_7
    and-int/lit16 v15, v1, 0x100

    if-eqz v15, :cond_8

    iget-boolean v15, v0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->behindHome:Z

    goto :goto_8

    :cond_8
    move/from16 v15, p14

    :goto_8
    move/from16 p1, v2

    and-int/lit16 v2, v1, 0x200

    if-eqz v2, :cond_9

    iget v2, v0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->keyFrameRequests:I

    goto :goto_9

    :cond_9
    move/from16 v2, p15

    :goto_9
    move/from16 p2, v2

    and-int/lit16 v2, v1, 0x400

    move-object/from16 p23, v3

    if-eqz v2, :cond_a

    iget-wide v2, v0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->keyFrameAtElapsed:J

    goto :goto_a

    :cond_a
    move-wide/from16 v2, p16

    :goto_a
    move-wide/from16 p3, v2

    and-int/lit16 v2, v1, 0x800

    if-eqz v2, :cond_b

    iget-boolean v2, v0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->forcedFront:Z

    goto :goto_b

    :cond_b
    move/from16 v2, p18

    :goto_b
    and-int/lit16 v3, v1, 0x1000

    if-eqz v3, :cond_c

    iget-boolean v3, v0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->downgraded:Z

    goto :goto_c

    :cond_c
    move/from16 v3, p19

    :goto_c
    move/from16 p5, v2

    and-int/lit16 v2, v1, 0x2000

    if-eqz v2, :cond_d

    iget-object v2, v0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->errorCode:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v2, p20

    :goto_d
    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->lastAction:Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;

    move-object/from16 p22, v1

    goto :goto_e

    :cond_e
    move-object/from16 p22, p21

    :goto_e
    move/from16 p16, p2

    move-wide/from16 p17, p3

    move/from16 p19, p5

    move-object/from16 p3, p23

    move-object/from16 p21, v2

    move/from16 p20, v3

    move-wide/from16 p4, v4

    move-wide/from16 p6, v6

    move-wide/from16 p8, v8

    move-wide/from16 p10, v10

    move-wide/from16 p12, v12

    move/from16 p14, v14

    move/from16 p15, v15

    move/from16 p2, p1

    move-object/from16 p1, v0

    invoke-virtual/range {p1 .. p22}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->copy(ZLcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;JJJJJZZIJZZLjava/lang/String;Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;)Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->wireless:Z

    return v0
.end method

.method public final component10()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->keyFrameRequests:I

    return v0
.end method

.method public final component11()J
    .locals 2

    iget-wide v0, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->keyFrameAtElapsed:J

    return-wide v0
.end method

.method public final component12()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->forcedFront:Z

    return v0
.end method

.method public final component13()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->downgraded:Z

    return v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component15()Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->lastAction:Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;

    return-object v0
.end method

.method public final component2()Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->subStep:Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;

    return-object v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->stageSinceElapsed:J

    return-wide v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->attemptSinceElapsed:J

    return-wide v0
.end method

.method public final component5()J
    .locals 2

    iget-wide v0, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->lastTickElapsed:J

    return-wide v0
.end method

.method public final component6()J
    .locals 2

    iget-wide v0, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->bytes:J

    return-wide v0
.end method

.method public final component7()J
    .locals 2

    iget-wide v0, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->bytesPerSec:J

    return-wide v0
.end method

.method public final component8()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->hasSurface:Z

    return v0
.end method

.method public final component9()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->behindHome:Z

    return v0
.end method

.method public final copy(ZLcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;JJJJJZZIJZZLjava/lang/String;Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;)Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;
    .locals 23

    const-string/jumbo v0, "subStep"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lastAction"

    move-object/from16 v1, p21

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;

    move/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move-wide/from16 v17, p16

    move/from16 v19, p18

    move/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    invoke-direct/range {v1 .. v22}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;-><init>(ZLcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;JJJJJZZIJZZLjava/lang/String;Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->wireless:Z

    iget-boolean v3, p1, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->wireless:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->subStep:Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;

    iget-object v3, p1, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->subStep:Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->stageSinceElapsed:J

    iget-wide v5, p1, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->stageSinceElapsed:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->attemptSinceElapsed:J

    iget-wide v5, p1, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->attemptSinceElapsed:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->lastTickElapsed:J

    iget-wide v5, p1, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->lastTickElapsed:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->bytes:J

    iget-wide v5, p1, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->bytes:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->bytesPerSec:J

    iget-wide v5, p1, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->bytesPerSec:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->hasSurface:Z

    iget-boolean v3, p1, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->hasSurface:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->behindHome:Z

    iget-boolean v3, p1, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->behindHome:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget v1, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->keyFrameRequests:I

    iget v3, p1, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->keyFrameRequests:I

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-wide v3, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->keyFrameAtElapsed:J

    iget-wide v5, p1, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->keyFrameAtElapsed:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_c

    return v2

    :cond_c
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->forcedFront:Z

    iget-boolean v3, p1, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->forcedFront:Z

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->downgraded:Z

    iget-boolean v3, p1, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->downgraded:Z

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->errorCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->errorCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->lastAction:Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;

    iget-object p1, p1, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->lastAction:Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;

    if-eq v1, p1, :cond_10

    return v2

    :cond_10
    return v0
.end method

.method public final getAttemptSinceElapsed()J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->attemptSinceElapsed:J

    return-wide v0
.end method

.method public final getBehindHome()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->behindHome:Z

    return v0
.end method

.method public final getBytes()J
    .locals 2

    .line 53
    iget-wide v0, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->bytes:J

    return-wide v0
.end method

.method public final getBytesPerSec()J
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->bytesPerSec:J

    return-wide v0
.end method

.method public final getDone()Z
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->subStep:Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;->SHOWN:Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->subStep:Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;->FAILED:Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final getDowngraded()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->downgraded:Z

    return v0
.end method

.method public final getErrorCode()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getForcedFront()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->forcedFront:Z

    return v0
.end method

.method public final getHasSurface()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->hasSurface:Z

    return v0
.end method

.method public final getKeyFrameAtElapsed()J
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->keyFrameAtElapsed:J

    return-wide v0
.end method

.method public final getKeyFrameRequests()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->keyFrameRequests:I

    return v0
.end method

.method public final getLastAction()Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->lastAction:Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;

    return-object v0
.end method

.method public final getLastTickElapsed()J
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->lastTickElapsed:J

    return-wide v0
.end method

.method public final getStageSinceElapsed()J
    .locals 2

    .line 50
    iget-wide v0, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->stageSinceElapsed:J

    return-wide v0
.end method

.method public final getSubStep()Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->subStep:Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;

    return-object v0
.end method

.method public final getWireless()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->wireless:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->wireless:Z

    invoke-static {v0}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->subStep:Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->stageSinceElapsed:J

    invoke-static {v1, v2}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->attemptSinceElapsed:J

    invoke-static {v1, v2}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->lastTickElapsed:J

    invoke-static {v1, v2}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->bytes:J

    invoke-static {v1, v2}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->bytesPerSec:J

    invoke-static {v1, v2}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->hasSurface:Z

    invoke-static {v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->behindHome:Z

    invoke-static {v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->keyFrameRequests:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->keyFrameAtElapsed:J

    invoke-static {v1, v2}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->forcedFront:Z

    invoke-static {v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->downgraded:Z

    invoke-static {v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->errorCode:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->lastAction:Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 23

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->wireless:Z

    iget-object v2, v0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->subStep:Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;

    iget-wide v3, v0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->stageSinceElapsed:J

    iget-wide v5, v0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->attemptSinceElapsed:J

    iget-wide v7, v0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->lastTickElapsed:J

    iget-wide v9, v0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->bytes:J

    iget-wide v11, v0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->bytesPerSec:J

    iget-boolean v13, v0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->hasSurface:Z

    iget-boolean v14, v0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->behindHome:Z

    iget v15, v0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->keyFrameRequests:I

    move/from16 v16, v14

    move/from16 v17, v15

    iget-wide v14, v0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->keyFrameAtElapsed:J

    move-wide/from16 v18, v14

    iget-boolean v14, v0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->forcedFront:Z

    iget-boolean v15, v0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->downgraded:Z

    move/from16 v20, v15

    iget-object v15, v0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->errorCode:Ljava/lang/String;

    move-object/from16 v21, v15

    iget-object v15, v0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->lastAction:Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v22, v15

    const-string v15, "State(wireless="

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", subStep="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", stageSinceElapsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", attemptSinceElapsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lastTickElapsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", bytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", bytesPerSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", hasSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", behindHome="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", keyFrameRequests="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", keyFrameAtElapsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", forcedFront="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", downgraded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lastAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
