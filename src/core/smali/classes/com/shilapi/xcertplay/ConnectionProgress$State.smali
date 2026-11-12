.class public final Lcom/shilapi/xcertplay/ConnectionProgress$State;
.super Ljava/lang/Object;
.source "ConnectionFlow.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/ConnectionProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "State"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u00088\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u00db\u0001\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b\u0012\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\t\u0010:\u001a\u00020\u0003H\u00c6\u0003J\t\u0010;\u001a\u00020\u0005H\u00c6\u0003J\t\u0010<\u001a\u00020\u0007H\u00c6\u0003J\t\u0010=\u001a\u00020\tH\u00c6\u0003J\t\u0010>\u001a\u00020\tH\u00c6\u0003J\u000b\u0010?\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003J\u000b\u0010@\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003J\u000b\u0010A\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003J\t\u0010B\u001a\u00020\tH\u00c6\u0003J\t\u0010C\u001a\u00020\u0007H\u00c6\u0003J\t\u0010D\u001a\u00020\u0005H\u00c6\u0003J\t\u0010E\u001a\u00020\u0013H\u00c6\u0003J\t\u0010F\u001a\u00020\u0005H\u00c6\u0003J\t\u0010G\u001a\u00020\u0005H\u00c6\u0003J\t\u0010H\u001a\u00020\u0005H\u00c6\u0003J\t\u0010I\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010J\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003J\u000b\u0010K\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003J\u000b\u0010L\u001a\u0004\u0018\u00010\u001bH\u00c6\u0003J\t\u0010M\u001a\u00020\u0005H\u00c6\u0003J\u00dd\u0001\u0010N\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\t2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00052\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010O\u001a\u00020\u00052\u0008\u0010P\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010Q\u001a\u00020\u0007H\u00d6\u0001J\t\u0010R\u001a\u00020\u000cH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010&R\u0011\u0010\n\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010&R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010)R\u0013\u0010\r\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010)R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010)R\u0011\u0010\u000f\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010&R\u0011\u0010\u0010\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010$R\u0011\u0010\u0011\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010\"R\u0011\u0010\u0012\u001a\u00020\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u00100R\u0011\u0010\u0014\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u0010\"R\u0011\u0010\u0015\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u0010\"R\u0011\u0010\u0016\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00083\u0010\"R\u0011\u0010\u0017\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u0010\"R\u0013\u0010\u0018\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00085\u0010)R\u0013\u0010\u0019\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00086\u0010)R\u0013\u0010\u001a\u001a\u0004\u0018\u00010\u001b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00087\u00108R\u0011\u0010\u001c\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00089\u0010\"\u00a8\u0006S"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/ConnectionProgress$State;",
        "",
        "phase",
        "Lcom/shilapi/xcertplay/ConnectionProgress$Phase;",
        "wireless",
        "",
        "step",
        "",
        "startedAt",
        "",
        "stepSince",
        "note",
        "",
        "stuckTitle",
        "stuckDetail",
        "connectedAt",
        "fps",
        "hevc",
        "waitReason",
        "Lcom/shilapi/xcertplay/ConnectionProgress$WaitReason;",
        "waited",
        "automatic",
        "stepsExpanded",
        "iphoneAfterCancel",
        "errorCode",
        "handled",
        "picture",
        "Lcom/shilapi/xcertplay/ConnectionProgress$Picture;",
        "wifiCardShown",
        "<init>",
        "(Lcom/shilapi/xcertplay/ConnectionProgress$Phase;ZIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZLcom/shilapi/xcertplay/ConnectionProgress$WaitReason;ZZZZLjava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionProgress$Picture;Z)V",
        "getPhase",
        "()Lcom/shilapi/xcertplay/ConnectionProgress$Phase;",
        "getWireless",
        "()Z",
        "getStep",
        "()I",
        "getStartedAt",
        "()J",
        "getStepSince",
        "getNote",
        "()Ljava/lang/String;",
        "getStuckTitle",
        "getStuckDetail",
        "getConnectedAt",
        "getFps",
        "getHevc",
        "getWaitReason",
        "()Lcom/shilapi/xcertplay/ConnectionProgress$WaitReason;",
        "getWaited",
        "getAutomatic",
        "getStepsExpanded",
        "getIphoneAfterCancel",
        "getErrorCode",
        "getHandled",
        "getPicture",
        "()Lcom/shilapi/xcertplay/ConnectionProgress$Picture;",
        "getWifiCardShown",
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
        "component16",
        "component17",
        "component18",
        "component19",
        "component20",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
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


# instance fields
.field private final automatic:Z

.field private final connectedAt:J

.field private final errorCode:Ljava/lang/String;

.field private final fps:I

.field private final handled:Ljava/lang/String;

.field private final hevc:Z

.field private final iphoneAfterCancel:Z

.field private final note:Ljava/lang/String;

.field private final phase:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

.field private final picture:Lcom/shilapi/xcertplay/ConnectionProgress$Picture;

.field private final startedAt:J

.field private final step:I

.field private final stepSince:J

.field private final stepsExpanded:Z

.field private final stuckDetail:Ljava/lang/String;

.field private final stuckTitle:Ljava/lang/String;

.field private final waitReason:Lcom/shilapi/xcertplay/ConnectionProgress$WaitReason;

.field private final waited:Z

.field private final wifiCardShown:Z

.field private final wireless:Z


# direct methods
.method public constructor <init>()V
    .locals 26

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

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v25}, Lcom/shilapi/xcertplay/ConnectionProgress$State;-><init>(Lcom/shilapi/xcertplay/ConnectionProgress$Phase;ZIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZLcom/shilapi/xcertplay/ConnectionProgress$WaitReason;ZZZZLjava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionProgress$Picture;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/shilapi/xcertplay/ConnectionProgress$Phase;ZIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZLcom/shilapi/xcertplay/ConnectionProgress$WaitReason;ZZZZLjava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionProgress$Picture;Z)V
    .locals 2

    move-object/from16 v0, p15

    const-string v1, "phase"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "waitReason"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->phase:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    .line 139
    iput-boolean p2, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->wireless:Z

    .line 140
    iput p3, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->step:I

    .line 145
    iput-wide p4, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->startedAt:J

    .line 147
    iput-wide p6, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->stepSince:J

    .line 149
    iput-object p8, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->note:Ljava/lang/String;

    .line 151
    iput-object p9, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->stuckTitle:Ljava/lang/String;

    .line 152
    iput-object p10, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->stuckDetail:Ljava/lang/String;

    .line 153
    iput-wide p11, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->connectedAt:J

    .line 154
    iput p13, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->fps:I

    move/from16 p1, p14

    .line 155
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->hevc:Z

    .line 156
    iput-object v0, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->waitReason:Lcom/shilapi/xcertplay/ConnectionProgress$WaitReason;

    move/from16 p1, p16

    .line 158
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->waited:Z

    move/from16 p1, p17

    .line 160
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->automatic:Z

    move/from16 p1, p18

    .line 162
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->stepsExpanded:Z

    move/from16 p1, p19

    .line 167
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->iphoneAfterCancel:Z

    move-object/from16 p1, p20

    .line 169
    iput-object p1, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->errorCode:Ljava/lang/String;

    move-object/from16 p1, p21

    .line 174
    iput-object p1, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->handled:Ljava/lang/String;

    move-object/from16 p1, p22

    .line 176
    iput-object p1, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->picture:Lcom/shilapi/xcertplay/ConnectionProgress$Picture;

    move/from16 p1, p23

    .line 178
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->wifiCardShown:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/ConnectionProgress$Phase;ZIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZLcom/shilapi/xcertplay/ConnectionProgress$WaitReason;ZZZZLjava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionProgress$Picture;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 22

    move/from16 v0, p24

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 138
    sget-object v1, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->IDLE:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move/from16 v2, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    move/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_3

    move-wide v8, v6

    goto :goto_3

    :cond_3
    move-wide/from16 v8, p4

    :goto_3
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_4

    move-wide v10, v6

    goto :goto_4

    :cond_4
    move-wide/from16 v10, p6

    :goto_4
    and-int/lit8 v5, v0, 0x20

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v5, p8

    :goto_5
    and-int/lit8 v13, v0, 0x40

    if-eqz v13, :cond_6

    const/4 v13, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v13, p9

    :goto_6
    and-int/lit16 v14, v0, 0x80

    if-eqz v14, :cond_7

    const/4 v14, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v14, p10

    :goto_7
    and-int/lit16 v15, v0, 0x100

    if-eqz v15, :cond_8

    goto :goto_8

    :cond_8
    move-wide/from16 v6, p11

    :goto_8
    and-int/lit16 v15, v0, 0x200

    const/16 v16, 0x0

    if-eqz v15, :cond_9

    const/4 v15, 0x0

    goto :goto_9

    :cond_9
    move/from16 v15, p13

    :goto_9
    and-int/lit16 v3, v0, 0x400

    if-eqz v3, :cond_a

    const/4 v3, 0x0

    goto :goto_a

    :cond_a
    move/from16 v3, p14

    :goto_a
    and-int/lit16 v12, v0, 0x800

    if-eqz v12, :cond_b

    .line 156
    sget-object v12, Lcom/shilapi/xcertplay/ConnectionProgress$WaitReason;->STARTUP:Lcom/shilapi/xcertplay/ConnectionProgress$WaitReason;

    goto :goto_b

    :cond_b
    move-object/from16 v12, p15

    :goto_b
    move-object/from16 p25, v1

    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    goto :goto_c

    :cond_c
    move/from16 v1, p16

    :goto_c
    move/from16 p3, v1

    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_d

    :cond_d
    move/from16 v1, p17

    :goto_d
    move/from16 p1, v1

    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    goto :goto_e

    :cond_e
    move/from16 v1, p18

    :goto_e
    const v17, 0x8000

    and-int v17, v0, v17

    if-eqz v17, :cond_f

    const/16 v17, 0x0

    goto :goto_f

    :cond_f
    move/from16 v17, p19

    :goto_f
    const/high16 v18, 0x10000

    and-int v18, v0, v18

    if-eqz v18, :cond_10

    const/16 v18, 0x0

    goto :goto_10

    :cond_10
    move-object/from16 v18, p20

    :goto_10
    const/high16 v19, 0x20000

    and-int v19, v0, v19

    if-eqz v19, :cond_11

    const/16 v19, 0x0

    goto :goto_11

    :cond_11
    move-object/from16 v19, p21

    :goto_11
    const/high16 v20, 0x40000

    and-int v20, v0, v20

    if-eqz v20, :cond_12

    const/16 v20, 0x0

    goto :goto_12

    :cond_12
    move-object/from16 v20, p22

    :goto_12
    const/high16 v21, 0x80000

    and-int v0, v0, v21

    if-eqz v0, :cond_13

    const/16 p24, 0x0

    goto :goto_13

    :cond_13
    move/from16 p24, p23

    :goto_13
    move/from16 p18, p1

    move/from16 p17, p3

    move-object/from16 p2, p25

    move/from16 p19, v1

    move/from16 p3, v2

    move/from16 p15, v3

    move/from16 p4, v4

    move-object/from16 p9, v5

    move-wide/from16 p12, v6

    move-wide/from16 p5, v8

    move-wide/from16 p7, v10

    move-object/from16 p16, v12

    move-object/from16 p10, v13

    move-object/from16 p11, v14

    move/from16 p14, v15

    move/from16 p20, v17

    move-object/from16 p21, v18

    move-object/from16 p22, v19

    move-object/from16 p23, v20

    move-object/from16 p1, p0

    .line 137
    invoke-direct/range {p1 .. p24}, Lcom/shilapi/xcertplay/ConnectionProgress$State;-><init>(Lcom/shilapi/xcertplay/ConnectionProgress$Phase;ZIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZLcom/shilapi/xcertplay/ConnectionProgress$WaitReason;ZZZZLjava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionProgress$Picture;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/ConnectionProgress$State;Lcom/shilapi/xcertplay/ConnectionProgress$Phase;ZIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZLcom/shilapi/xcertplay/ConnectionProgress$WaitReason;ZZZZLjava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionProgress$Picture;ZILjava/lang/Object;)Lcom/shilapi/xcertplay/ConnectionProgress$State;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p24

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->phase:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->wireless:Z

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->step:I

    goto :goto_2

    :cond_2
    move/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-wide v5, v0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->startedAt:J

    goto :goto_3

    :cond_3
    move-wide/from16 v5, p4

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-wide v7, v0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->stepSince:J

    goto :goto_4

    :cond_4
    move-wide/from16 v7, p6

    :goto_4
    and-int/lit8 v9, v1, 0x20

    if-eqz v9, :cond_5

    iget-object v9, v0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->note:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v9, p8

    :goto_5
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_6

    iget-object v10, v0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->stuckTitle:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v10, p9

    :goto_6
    and-int/lit16 v11, v1, 0x80

    if-eqz v11, :cond_7

    iget-object v11, v0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->stuckDetail:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v11, p10

    :goto_7
    and-int/lit16 v12, v1, 0x100

    if-eqz v12, :cond_8

    iget-wide v12, v0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->connectedAt:J

    goto :goto_8

    :cond_8
    move-wide/from16 v12, p11

    :goto_8
    and-int/lit16 v14, v1, 0x200

    if-eqz v14, :cond_9

    iget v14, v0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->fps:I

    goto :goto_9

    :cond_9
    move/from16 v14, p13

    :goto_9
    and-int/lit16 v15, v1, 0x400

    if-eqz v15, :cond_a

    iget-boolean v15, v0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->hevc:Z

    goto :goto_a

    :cond_a
    move/from16 v15, p14

    :goto_a
    move-object/from16 p1, v2

    and-int/lit16 v2, v1, 0x800

    if-eqz v2, :cond_b

    iget-object v2, v0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->waitReason:Lcom/shilapi/xcertplay/ConnectionProgress$WaitReason;

    goto :goto_b

    :cond_b
    move-object/from16 v2, p15

    :goto_b
    move-object/from16 p2, v2

    and-int/lit16 v2, v1, 0x1000

    if-eqz v2, :cond_c

    iget-boolean v2, v0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->waited:Z

    goto :goto_c

    :cond_c
    move/from16 v2, p16

    :goto_c
    move/from16 p3, v2

    and-int/lit16 v2, v1, 0x2000

    if-eqz v2, :cond_d

    iget-boolean v2, v0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->automatic:Z

    goto :goto_d

    :cond_d
    move/from16 v2, p17

    :goto_d
    move/from16 p4, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    iget-boolean v2, v0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->stepsExpanded:Z

    goto :goto_e

    :cond_e
    move/from16 v2, p18

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_f

    iget-boolean v1, v0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->iphoneAfterCancel:Z

    goto :goto_f

    :cond_f
    move/from16 v1, p19

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, p24, v16

    move/from16 p5, v1

    if-eqz v16, :cond_10

    iget-object v1, v0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->errorCode:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 v1, p20

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, p24, v16

    move-object/from16 p6, v1

    if-eqz v16, :cond_11

    iget-object v1, v0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->handled:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 v1, p21

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, p24, v16

    move-object/from16 p7, v1

    if-eqz v16, :cond_12

    iget-object v1, v0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->picture:Lcom/shilapi/xcertplay/ConnectionProgress$Picture;

    goto :goto_12

    :cond_12
    move-object/from16 v1, p22

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, p24, v16

    if-eqz v16, :cond_13

    move-object/from16 p8, v1

    iget-boolean v1, v0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->wifiCardShown:Z

    move-object/from16 p23, p8

    move/from16 p24, v1

    goto :goto_13

    :cond_13
    move/from16 p24, p23

    move-object/from16 p23, v1

    :goto_13
    move-object/from16 p16, p2

    move/from16 p17, p3

    move/from16 p18, p4

    move/from16 p20, p5

    move-object/from16 p21, p6

    move-object/from16 p22, p7

    move/from16 p19, v2

    move/from16 p3, v3

    move/from16 p4, v4

    move-wide/from16 p5, v5

    move-wide/from16 p7, v7

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-wide/from16 p12, v12

    move/from16 p14, v14

    move/from16 p15, v15

    move-object/from16 p2, p1

    move-object/from16 p1, v0

    invoke-virtual/range {p1 .. p24}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->copy(Lcom/shilapi/xcertplay/ConnectionProgress$Phase;ZIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZLcom/shilapi/xcertplay/ConnectionProgress$WaitReason;ZZZZLjava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionProgress$Picture;Z)Lcom/shilapi/xcertplay/ConnectionProgress$State;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Lcom/shilapi/xcertplay/ConnectionProgress$Phase;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->phase:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    return-object v0
.end method

.method public final component10()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->fps:I

    return v0
.end method

.method public final component11()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->hevc:Z

    return v0
.end method

.method public final component12()Lcom/shilapi/xcertplay/ConnectionProgress$WaitReason;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->waitReason:Lcom/shilapi/xcertplay/ConnectionProgress$WaitReason;

    return-object v0
.end method

.method public final component13()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->waited:Z

    return v0
.end method

.method public final component14()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->automatic:Z

    return v0
.end method

.method public final component15()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->stepsExpanded:Z

    return v0
.end method

.method public final component16()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->iphoneAfterCancel:Z

    return v0
.end method

.method public final component17()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component18()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->handled:Ljava/lang/String;

    return-object v0
.end method

.method public final component19()Lcom/shilapi/xcertplay/ConnectionProgress$Picture;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->picture:Lcom/shilapi/xcertplay/ConnectionProgress$Picture;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->wireless:Z

    return v0
.end method

.method public final component20()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->wifiCardShown:Z

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->step:I

    return v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->startedAt:J

    return-wide v0
.end method

.method public final component5()J
    .locals 2

    iget-wide v0, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->stepSince:J

    return-wide v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->note:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->stuckTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->stuckDetail:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()J
    .locals 2

    iget-wide v0, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->connectedAt:J

    return-wide v0
.end method

.method public final copy(Lcom/shilapi/xcertplay/ConnectionProgress$Phase;ZIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZLcom/shilapi/xcertplay/ConnectionProgress$WaitReason;ZZZZLjava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionProgress$Picture;Z)Lcom/shilapi/xcertplay/ConnectionProgress$State;
    .locals 25

    const-string v0, "phase"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "waitReason"

    move-object/from16 v1, p15

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/shilapi/xcertplay/ConnectionProgress$State;

    move/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-wide/from16 v12, p11

    move/from16 v14, p13

    move/from16 v15, p14

    move-object/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move/from16 v19, p18

    move/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move/from16 v24, p23

    invoke-direct/range {v1 .. v24}, Lcom/shilapi/xcertplay/ConnectionProgress$State;-><init>(Lcom/shilapi/xcertplay/ConnectionProgress$Phase;ZIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZLcom/shilapi/xcertplay/ConnectionProgress$WaitReason;ZZZZLjava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionProgress$Picture;Z)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/ConnectionProgress$State;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/ConnectionProgress$State;

    iget-object v1, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->phase:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    iget-object v3, p1, Lcom/shilapi/xcertplay/ConnectionProgress$State;->phase:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->wireless:Z

    iget-boolean v3, p1, Lcom/shilapi/xcertplay/ConnectionProgress$State;->wireless:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->step:I

    iget v3, p1, Lcom/shilapi/xcertplay/ConnectionProgress$State;->step:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->startedAt:J

    iget-wide v5, p1, Lcom/shilapi/xcertplay/ConnectionProgress$State;->startedAt:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->stepSince:J

    iget-wide v5, p1, Lcom/shilapi/xcertplay/ConnectionProgress$State;->stepSince:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->note:Ljava/lang/String;

    iget-object v3, p1, Lcom/shilapi/xcertplay/ConnectionProgress$State;->note:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->stuckTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/shilapi/xcertplay/ConnectionProgress$State;->stuckTitle:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->stuckDetail:Ljava/lang/String;

    iget-object v3, p1, Lcom/shilapi/xcertplay/ConnectionProgress$State;->stuckDetail:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->connectedAt:J

    iget-wide v5, p1, Lcom/shilapi/xcertplay/ConnectionProgress$State;->connectedAt:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_a

    return v2

    :cond_a
    iget v1, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->fps:I

    iget v3, p1, Lcom/shilapi/xcertplay/ConnectionProgress$State;->fps:I

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->hevc:Z

    iget-boolean v3, p1, Lcom/shilapi/xcertplay/ConnectionProgress$State;->hevc:Z

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->waitReason:Lcom/shilapi/xcertplay/ConnectionProgress$WaitReason;

    iget-object v3, p1, Lcom/shilapi/xcertplay/ConnectionProgress$State;->waitReason:Lcom/shilapi/xcertplay/ConnectionProgress$WaitReason;

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->waited:Z

    iget-boolean v3, p1, Lcom/shilapi/xcertplay/ConnectionProgress$State;->waited:Z

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->automatic:Z

    iget-boolean v3, p1, Lcom/shilapi/xcertplay/ConnectionProgress$State;->automatic:Z

    if-eq v1, v3, :cond_f

    return v2

    :cond_f
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->stepsExpanded:Z

    iget-boolean v3, p1, Lcom/shilapi/xcertplay/ConnectionProgress$State;->stepsExpanded:Z

    if-eq v1, v3, :cond_10

    return v2

    :cond_10
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->iphoneAfterCancel:Z

    iget-boolean v3, p1, Lcom/shilapi/xcertplay/ConnectionProgress$State;->iphoneAfterCancel:Z

    if-eq v1, v3, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->errorCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/shilapi/xcertplay/ConnectionProgress$State;->errorCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->handled:Ljava/lang/String;

    iget-object v3, p1, Lcom/shilapi/xcertplay/ConnectionProgress$State;->handled:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->picture:Lcom/shilapi/xcertplay/ConnectionProgress$Picture;

    iget-object v3, p1, Lcom/shilapi/xcertplay/ConnectionProgress$State;->picture:Lcom/shilapi/xcertplay/ConnectionProgress$Picture;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->wifiCardShown:Z

    iget-boolean p1, p1, Lcom/shilapi/xcertplay/ConnectionProgress$State;->wifiCardShown:Z

    if-eq v1, p1, :cond_15

    return v2

    :cond_15
    return v0
.end method

.method public final getAutomatic()Z
    .locals 1

    .line 160
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->automatic:Z

    return v0
.end method

.method public final getConnectedAt()J
    .locals 2

    .line 153
    iget-wide v0, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->connectedAt:J

    return-wide v0
.end method

.method public final getErrorCode()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getFps()I
    .locals 1

    .line 154
    iget v0, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->fps:I

    return v0
.end method

.method public final getHandled()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->handled:Ljava/lang/String;

    return-object v0
.end method

.method public final getHevc()Z
    .locals 1

    .line 155
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->hevc:Z

    return v0
.end method

.method public final getIphoneAfterCancel()Z
    .locals 1

    .line 167
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->iphoneAfterCancel:Z

    return v0
.end method

.method public final getNote()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->note:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhase()Lcom/shilapi/xcertplay/ConnectionProgress$Phase;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->phase:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    return-object v0
.end method

.method public final getPicture()Lcom/shilapi/xcertplay/ConnectionProgress$Picture;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->picture:Lcom/shilapi/xcertplay/ConnectionProgress$Picture;

    return-object v0
.end method

.method public final getStartedAt()J
    .locals 2

    .line 145
    iget-wide v0, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->startedAt:J

    return-wide v0
.end method

.method public final getStep()I
    .locals 1

    .line 140
    iget v0, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->step:I

    return v0
.end method

.method public final getStepSince()J
    .locals 2

    .line 147
    iget-wide v0, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->stepSince:J

    return-wide v0
.end method

.method public final getStepsExpanded()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->stepsExpanded:Z

    return v0
.end method

.method public final getStuckDetail()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->stuckDetail:Ljava/lang/String;

    return-object v0
.end method

.method public final getStuckTitle()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->stuckTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getWaitReason()Lcom/shilapi/xcertplay/ConnectionProgress$WaitReason;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->waitReason:Lcom/shilapi/xcertplay/ConnectionProgress$WaitReason;

    return-object v0
.end method

.method public final getWaited()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->waited:Z

    return v0
.end method

.method public final getWifiCardShown()Z
    .locals 1

    .line 178
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->wifiCardShown:Z

    return v0
.end method

.method public final getWireless()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->wireless:Z

    return v0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->phase:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->wireless:Z

    invoke-static {v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->step:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->startedAt:J

    invoke-static {v1, v2}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->stepSince:J

    invoke-static {v1, v2}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->note:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->stuckTitle:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->stuckDetail:Ljava/lang/String;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->connectedAt:J

    invoke-static {v3, v4}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->fps:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->hevc:Z

    invoke-static {v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->waitReason:Lcom/shilapi/xcertplay/ConnectionProgress$WaitReason;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/ConnectionProgress$WaitReason;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->waited:Z

    invoke-static {v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->automatic:Z

    invoke-static {v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->stepsExpanded:Z

    invoke-static {v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->iphoneAfterCancel:Z

    invoke-static {v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->errorCode:Ljava/lang/String;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->handled:Ljava/lang/String;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->picture:Lcom/shilapi/xcertplay/ConnectionProgress$Picture;

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/ConnectionProgress$Picture;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->wifiCardShown:Z

    invoke-static {v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->phase:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    iget-boolean v2, v0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->wireless:Z

    iget v3, v0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->step:I

    iget-wide v4, v0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->startedAt:J

    iget-wide v6, v0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->stepSince:J

    iget-object v8, v0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->note:Ljava/lang/String;

    iget-object v9, v0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->stuckTitle:Ljava/lang/String;

    iget-object v10, v0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->stuckDetail:Ljava/lang/String;

    iget-wide v11, v0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->connectedAt:J

    iget v13, v0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->fps:I

    iget-boolean v14, v0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->hevc:Z

    iget-object v15, v0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->waitReason:Lcom/shilapi/xcertplay/ConnectionProgress$WaitReason;

    move-object/from16 v16, v15

    iget-boolean v15, v0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->waited:Z

    move/from16 v17, v15

    iget-boolean v15, v0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->automatic:Z

    move/from16 v18, v15

    iget-boolean v15, v0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->stepsExpanded:Z

    move/from16 v19, v15

    iget-boolean v15, v0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->iphoneAfterCancel:Z

    move/from16 v20, v15

    iget-object v15, v0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->errorCode:Ljava/lang/String;

    move-object/from16 v21, v15

    iget-object v15, v0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->handled:Ljava/lang/String;

    move-object/from16 v22, v15

    iget-object v15, v0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->picture:Lcom/shilapi/xcertplay/ConnectionProgress$Picture;

    move-object/from16 v23, v15

    iget-boolean v15, v0, Lcom/shilapi/xcertplay/ConnectionProgress$State;->wifiCardShown:Z

    new-instance v0, Ljava/lang/StringBuilder;

    move/from16 v24, v15

    const-string v15, "State(phase="

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", wireless="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", step="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", stepSince="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", note="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", stuckTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", stuckDetail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", connectedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", fps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hevc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", waitReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", waited="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", automatic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", stepsExpanded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", iphoneAfterCancel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", handled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", picture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", wifiCardShown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
