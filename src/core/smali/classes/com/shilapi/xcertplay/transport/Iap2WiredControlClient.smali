.class public final Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;
.super Ljava/lang/Object;
.source "Iap2WiredControlClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000  2\u00020\u0001:\u0001 B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007Jl\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0014\u0008\u0002\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00190\u00172\u0014\u0008\u0002\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u00190\u0017J\u0018\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u001e\u001a\u00020\u001fH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;",
        "",
        "session",
        "Lcom/shilapi/xcertplay/iap2/session/Iap2Session;",
        "mfi",
        "Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationClient;",
        "<init>",
        "(Lcom/shilapi/xcertplay/iap2/session/Iap2Session;Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationClient;)V",
        "run",
        "Lcom/shilapi/xcertplay/transport/Iap2WiredControlResult;",
        "identification",
        "Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;",
        "endpoint",
        "Lcom/shilapi/xcertplay/transport/Iap2WiredCarPlayEndpoint;",
        "availableCurrentMilliAmps",
        "",
        "timeoutMillis",
        "",
        "locationProvider",
        "Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;",
        "vehicleStatusProvider",
        "Lcom/shilapi/xcertplay/transport/VehicleStatusProvider;",
        "onIncoming",
        "Lkotlin/Function1;",
        "Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;",
        "",
        "onProgress",
        "",
        "send",
        "frame",
        "deadlineNanos",
        "Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;",
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
.field private static final CARPLAY_AVAILABILITY:I = 0x4300

.field private static final CARPLAY_START_SESSION:I = 0x4301

.field public static final Companion:Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$Companion;

.field private static final DEFAULT_TIMEOUT_MILLIS:J = 0xea60L

.field private static final MAX_RECV_TIMEOUT_MILLIS:J = 0x493e0L

.field private static final MAX_TIMEOUT_MILLIS:J = 0x5265c00L

.field private static final NANOS_PER_MILLISECOND:J = 0xf4240L

.field public static final NO_TIMEOUT_MILLIS:J = 0x7fffffffffffffffL


# instance fields
.field private final mfi:Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationClient;

.field private final session:Lcom/shilapi/xcertplay/iap2/session/Iap2Session;

.field private startup:Lcom/shilapi/xcertplay/transport/WiredStartRecovery;


# direct methods
.method public static synthetic $r8$lambda$8k1KKa4OCw7-k9vgpFXgCxlT1k0(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;->run$lambda$1(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HkrrKzp4OPosChyDQJ2HpJSVYXM(Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;->run$lambda$7(Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YIedxNido2YhDDf7-78AfKjL5UQ(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;->run$lambda$0(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cT3_xW45kkov9eE8WJfVb220yVU(Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;->run$lambda$5(Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qjNchIr9sMIkz3jLMmskAOd_cZw(Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;->run$lambda$4(Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rUeBdQEV-Yan1Q7qsjz5ylViyZM(Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;->run$lambda$6(Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;->Companion:Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/shilapi/xcertplay/iap2/session/Iap2Session;Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationClient;)V
    .locals 1

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mfi"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;->session:Lcom/shilapi/xcertplay/iap2/session/Iap2Session;

    .line 21
    iput-object p2, p0, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;->mfi:Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationClient;

    return-void
.end method

.method private final noteWiredStart()V
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;->startup:Lcom/shilapi/xcertplay/transport/WiredStartRecovery;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/WiredStartRecovery;->startSent()V

    :cond_0
    return-void
.end method

.method private final pollWiredStart(Lcom/shilapi/xcertplay/transport/Iap2WiredCarPlayEndpoint;Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;Lkotlin/jvm/functions/Function1;)V
    .locals 3

    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;->startup:Lcom/shilapi/xcertplay/transport/WiredStartRecovery;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/WiredStartRecovery;->poll()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;->session:Lcom/shilapi/xcertplay/iap2/session/Iap2Session;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/WiredStartRecovery;->canSendAgain()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;->Companion:Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$Companion;

    invoke-virtual {v1, p1}, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$Companion;->carPlayStartSession(Lcom/shilapi/xcertplay/transport/Iap2WiredCarPlayEndpoint;)Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;->send(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;)V

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/WiredStartRecovery;->sentAgain()V

    const-string p1, "start: repeated request after USB network opened"

    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    new-instance p1, Ljava/net/SocketTimeoutException;

    const-string p2, "iPhone did not open CarPlay over USB after start request"

    invoke-direct {p1, p2}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    const-string p1, "start: waiting up to 45s for late USB network"

    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public static synthetic run$default(Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;Lcom/shilapi/xcertplay/transport/Iap2WiredCarPlayEndpoint;IJLcom/shilapi/xcertplay/transport/Iap2LocationProvider;Lcom/shilapi/xcertplay/transport/VehicleStatusProvider;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/shilapi/xcertplay/transport/Iap2WiredControlResult;
    .locals 13

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_0

    const-wide/32 v1, 0xea60

    move-wide v7, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v7, p4

    :goto_0
    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v9, v2

    goto :goto_1

    :cond_1
    move-object/from16 v9, p6

    :goto_1
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_2

    move-object v10, v2

    goto :goto_2

    :cond_2
    move-object/from16 v10, p7

    :goto_2
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_3

    .line 30
    new-instance v1, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$$ExternalSyntheticLambda0;-><init>()V

    move-object v11, v1

    goto :goto_3

    :cond_3
    move-object/from16 v11, p8

    :goto_3
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_4

    .line 31
    new-instance v0, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$$ExternalSyntheticLambda1;-><init>()V

    move-object v12, v0

    goto :goto_4

    :cond_4
    move-object/from16 v12, p9

    :goto_4
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move/from16 v6, p3

    .line 23
    invoke-virtual/range {v3 .. v12}, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;->run(Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;Lcom/shilapi/xcertplay/transport/Iap2WiredCarPlayEndpoint;IJLcom/shilapi/xcertplay/transport/Iap2LocationProvider;Lcom/shilapi/xcertplay/transport/VehicleStatusProvider;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/transport/Iap2WiredControlResult;

    move-result-object p0

    return-object p0
.end method

.method private static final run$lambda$0(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final run$lambda$1(Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final run$lambda$4(Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0, p2, p1}, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;->send(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final run$lambda$5(Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0, p2, p1}, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;->send(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final run$lambda$6(Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-direct {p0, p2, p1}, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;->send(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final run$lambda$7(Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-direct {p0, p2, p1}, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;->send(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final send(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;)V
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;->session:Lcom/shilapi/xcertplay/iap2/session/Iap2Session;

    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;->Companion:Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$Companion;

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$Companion;->requireRemaining(Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;)J
    invoke-static {v1, p2}, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$Companion;->access$requireRemaining(Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$Companion;Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;->send(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;J)V

    return-void
.end method

.method private final wiredPollTimeout(J)J
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;->startup:Lcom/shilapi/xcertplay/transport/WiredStartRecovery;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/shilapi/xcertplay/transport/WiredStartRecovery;->pollTimeout(J)J

    move-result-wide p1

    :cond_0
    return-wide p1
.end method


# virtual methods
.method public final configureStartup(Lcom/shilapi/xcertplay/transport/WiredStartRecovery;I)V
    .locals 0

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;->startup:Lcom/shilapi/xcertplay/transport/WiredStartRecovery;

    invoke-virtual {p1, p2}, Lcom/shilapi/xcertplay/transport/WiredStartRecovery;->preparePort(I)V

    return-void
.end method

.method public final run(Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;Lcom/shilapi/xcertplay/transport/Iap2WiredCarPlayEndpoint;IJLcom/shilapi/xcertplay/transport/Iap2LocationProvider;Lcom/shilapi/xcertplay/transport/VehicleStatusProvider;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/transport/Iap2WiredControlResult;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;",
            "Lcom/shilapi/xcertplay/transport/Iap2WiredCarPlayEndpoint;",
            "IJ",
            "Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;",
            "Lcom/shilapi/xcertplay/transport/VehicleStatusProvider;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/shilapi/xcertplay/transport/Iap2WiredControlResult;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p8

    move-object/from16 v7, p9

    const-string v5, "identification"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "endpoint"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "onIncoming"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "onProgress"

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz v3, :cond_c

    const/high16 v5, 0x10000

    if-ge v3, v5, :cond_c

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v8, p4, v5

    if-eqz v8, :cond_1

    const-wide/16 v5, 0x1

    cmp-long v8, v5, p4

    if-gtz v8, :cond_0

    const-wide/32 v5, 0x5265c01

    cmp-long v8, p4, v5

    if-gez v8, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "timeoutMillis must be in 1..86400000 or NO_TIMEOUT_MILLIS"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_1
    :goto_0
    new-instance v8, Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v11, 0x0

    move-wide/from16 v9, p4

    invoke-direct/range {v8 .. v13}, Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;-><init>(JLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v13, p7

    move-object v14, v8

    .line 41
    invoke-static {v0, v13}, Lcom/shilapi/xcertplay/transport/Iap2VehicleStatusKt;->withVehicleStatusFrom(Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;Lcom/shilapi/xcertplay/transport/VehicleStatusProvider;)Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;

    move-result-object v5

    .line 42
    invoke-virtual {v5}, Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;->getVehicleStatusEnabled()Z

    move-result v6

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;->getVehicleStatusEnabled()Z

    move-result v0

    if-eq v6, v0, :cond_2

    .line 43
    const-string v0, "iap2 no battery reading: not declaring an electric vehicle"

    invoke-interface {v7, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_2
    new-instance v0, Lcom/shilapi/xcertplay/transport/Iap2IdentificationClient;

    iget-object v6, v1, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;->session:Lcom/shilapi/xcertplay/iap2/session/Iap2Session;

    invoke-direct {v0, v6}, Lcom/shilapi/xcertplay/transport/Iap2IdentificationClient;-><init>(Lcom/shilapi/xcertplay/iap2/session/Iap2Session;)V

    sget-object v6, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;->Companion:Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$Companion;

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$Companion;->requireRemaining(Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;)J
    invoke-static {v6, v14}, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$Companion;->access$requireRemaining(Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$Companion;Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;)J

    move-result-wide v8

    invoke-virtual {v0, v5, v8, v9}, Lcom/shilapi/xcertplay/transport/Iap2IdentificationClient;->identify(Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;J)V

    .line 46
    const-string v0, "iap2 identification accepted"

    invoke-interface {v7, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/shilapi/xcertplay/transport/Iap2WiredControlStage;->IDENTIFIED:Lcom/shilapi/xcertplay/transport/Iap2WiredControlStage;

    .line 48
    iget-object v0, v1, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;->mfi:Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationClient;

    iget-object v5, v1, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;->session:Lcom/shilapi/xcertplay/iap2/session/Iap2Session;

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$Companion;->requireRemaining(Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;)J
    invoke-static {v6, v14}, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$Companion;->access$requireRemaining(Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$Companion;Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;)J

    move-result-wide v8

    invoke-virtual {v0, v5, v8, v9, v7}, Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationClient;->run(Lcom/shilapi/xcertplay/iap2/session/Iap2Session;JLkotlin/jvm/functions/Function1;)V

    .line 49
    sget-object v0, Lcom/shilapi/xcertplay/transport/Iap2WiredControlStage;->AUTHENTICATED:Lcom/shilapi/xcertplay/transport/Iap2WiredControlStage;

    .line 50
    const-string v0, "iap2 authentication accepted"

    invoke-interface {v7, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-virtual {v14}, Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;->authenticated()V

    .line 53
    invoke-virtual {v6, v3}, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$Companion;->powerSourceUpdate(I)Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;

    move-result-object v0

    invoke-direct {v1, v0, v14}, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;->send(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;)V

    .line 54
    invoke-virtual {v6}, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$Companion;->subscriptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;

    invoke-direct {v1, v3, v14}, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;->send(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;)V

    goto :goto_1

    .line 55
    :cond_3
    sget-object v0, Lcom/shilapi/xcertplay/transport/Iap2WiredControlStage;->SUBSCRIBED:Lcom/shilapi/xcertplay/transport/Iap2WiredControlStage;

    .line 56
    const-string v3, "iap2 power/subscriptions sent"

    invoke-interface {v7, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance v5, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;

    const/16 v11, 0x1c

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p6

    invoke-direct/range {v5 .. v12}, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;-><init>(Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;Lkotlin/jvm/functions/Function1;Lcom/shilapi/xcertplay/transport/Iap2LocationRequest;ZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v3, v5

    .line 61
    new-instance v5, Lcom/shilapi/xcertplay/transport/Iap2VehicleStatusReporter;

    const/4 v9, 0x4

    move-object/from16 v7, p9

    move-object v6, v13

    invoke-direct/range {v5 .. v10}, Lcom/shilapi/xcertplay/transport/Iap2VehicleStatusReporter;-><init>(Lcom/shilapi/xcertplay/transport/VehicleStatusProvider;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 64
    :cond_4
    :goto_2
    :try_start_0
    invoke-direct {v1, v2, v14, v7}, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;->pollWiredStart(Lcom/shilapi/xcertplay/transport/Iap2WiredCarPlayEndpoint;Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;Lkotlin/jvm/functions/Function1;)V

    sget-object v9, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;->Companion:Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$Companion;

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$Companion;->remainingMillis(Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;)J
    invoke-static {v9, v14}, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$Companion;->access$remainingMillis(Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$Companion;Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v15, v10, v12

    if-nez v15, :cond_6

    .line 66
    new-instance v2, Lcom/shilapi/xcertplay/transport/Iap2WiredControlResult;

    sget-object v3, Lcom/shilapi/xcertplay/transport/Iap2WiredControlTerminal;->TIMED_OUT:Lcom/shilapi/xcertplay/transport/Iap2WiredControlTerminal;

    invoke-direct {v2, v3, v0, v6, v8}, Lcom/shilapi/xcertplay/transport/Iap2WiredControlResult;-><init>(Lcom/shilapi/xcertplay/transport/Iap2WiredControlTerminal;Lcom/shilapi/xcertplay/transport/Iap2WiredControlStage;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p6, :cond_5

    .line 120
    invoke-interface/range {p6 .. p6}, Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;->stop()V

    :cond_5
    return-object v2

    .line 68
    :cond_6
    :try_start_1
    new-instance v15, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$$ExternalSyntheticLambda2;

    invoke-direct {v15, v1, v14}, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$$ExternalSyntheticLambda2;-><init>(Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;)V

    invoke-virtual {v3, v15}, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->tick(Lkotlin/jvm/functions/Function1;)V

    .line 69
    new-instance v15, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$$ExternalSyntheticLambda3;

    invoke-direct {v15, v1, v14}, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$$ExternalSyntheticLambda3;-><init>(Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;)V

    invoke-virtual {v5, v15}, Lcom/shilapi/xcertplay/transport/Iap2VehicleStatusReporter;->tick(Lkotlin/jvm/functions/Function1;)V

    .line 70
    invoke-virtual {v3, v10, v11}, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->pollTimeout(J)J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Lcom/shilapi/xcertplay/transport/Iap2VehicleStatusReporter;->pollTimeout(J)J

    move-result-wide v10

    .line 71
    iget-object v15, v1, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;->session:Lcom/shilapi/xcertplay/iap2/session/Iap2Session;

    invoke-direct {v1, v10, v11}, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;->wiredPollTimeout(J)J

    move-result-wide v10

    invoke-virtual {v15, v10, v11}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;->recv(J)Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;

    move-result-object v10

    if-nez v10, :cond_a

    .line 73
    iget-object v10, v1, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;->session:Lcom/shilapi/xcertplay/iap2/session/Iap2Session;

    invoke-virtual {v10}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;->isClosed()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 74
    new-instance v2, Lcom/shilapi/xcertplay/transport/Iap2WiredControlResult;

    .line 75
    sget-object v3, Lcom/shilapi/xcertplay/transport/Iap2WiredControlTerminal;->CHANNEL_CLOSED:Lcom/shilapi/xcertplay/transport/Iap2WiredControlTerminal;

    .line 74
    invoke-direct {v2, v3, v0, v6, v8}, Lcom/shilapi/xcertplay/transport/Iap2WiredControlResult;-><init>(Lcom/shilapi/xcertplay/transport/Iap2WiredControlTerminal;Lcom/shilapi/xcertplay/transport/Iap2WiredControlStage;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p6, :cond_7

    .line 120
    invoke-interface/range {p6 .. p6}, Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;->stop()V

    :cond_7
    return-object v2

    .line 81
    :cond_8
    :try_start_2
    # invokes: Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$Companion;->remainingMillis(Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;)J
    invoke-static {v9, v14}, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$Companion;->access$remainingMillis(Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$Companion;Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;)J

    move-result-wide v9

    cmp-long v11, v9, v12

    if-nez v11, :cond_4

    .line 82
    new-instance v2, Lcom/shilapi/xcertplay/transport/Iap2WiredControlResult;

    .line 83
    sget-object v3, Lcom/shilapi/xcertplay/transport/Iap2WiredControlTerminal;->TIMED_OUT:Lcom/shilapi/xcertplay/transport/Iap2WiredControlTerminal;

    .line 82
    invoke-direct {v2, v3, v0, v6, v8}, Lcom/shilapi/xcertplay/transport/Iap2WiredControlResult;-><init>(Lcom/shilapi/xcertplay/transport/Iap2WiredControlTerminal;Lcom/shilapi/xcertplay/transport/Iap2WiredControlStage;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p6, :cond_9

    .line 120
    invoke-interface/range {p6 .. p6}, Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;->stop()V

    :cond_9
    return-object v2

    .line 92
    :cond_a
    :try_start_3
    invoke-virtual {v10}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;->getMessageId()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    .line 113
    invoke-virtual {v10}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;->getMessageId()I

    move-result v9

    goto :goto_3

    .line 105
    :sswitch_0
    new-instance v9, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$$ExternalSyntheticLambda4;

    invoke-direct {v9, v1, v14}, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$$ExternalSyntheticLambda4;-><init>(Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;)V

    invoke-virtual {v3, v10, v9}, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->handle(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;Lkotlin/jvm/functions/Function1;)Z

    goto :goto_2

    .line 109
    :sswitch_1
    new-instance v9, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$$ExternalSyntheticLambda5;

    invoke-direct {v9, v1, v14}, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$$ExternalSyntheticLambda5;-><init>(Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;)V

    invoke-virtual {v5, v10, v9}, Lcom/shilapi/xcertplay/transport/Iap2VehicleStatusReporter;->handle(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;Lkotlin/jvm/functions/Function1;)Z

    goto/16 :goto_2

    .line 94
    :sswitch_2
    const-string v0, "iap2 rx=0x4300 carplay-availability"

    invoke-interface {v7, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-virtual {v10}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;->getPayload()[B

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$Companion;->carPlayAvailabilitySummary([B)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-virtual {v9, v2}, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$Companion;->carPlayStartSession(Lcom/shilapi/xcertplay/transport/Iap2WiredCarPlayEndpoint;)Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;

    move-result-object v0

    invoke-direct {v1, v0, v14}, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;->send(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;)V

    .line 99
    sget-object v0, Lcom/shilapi/xcertplay/transport/Iap2WiredControlStage;->CARPLAY_START_SENT:Lcom/shilapi/xcertplay/transport/Iap2WiredControlStage;

    add-int/lit8 v8, v8, 0x1

    .line 101
    invoke-direct {v1}, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;->noteWiredStart()V

    const-string v9, "iap2 tx=0x4301 carplay-start-session"

    invoke-interface {v7, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :goto_3
    const/16 v11, 0x10

    .line 113
    invoke-static {v11}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v11

    invoke-static {v9, v11}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v11, "toString(...)"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x4

    const/16 v12, 0x30

    invoke-static {v9, v11, v12}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "iap2 rx=0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-interface {v4, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    if-eqz p6, :cond_b

    .line 120
    invoke-interface/range {p6 .. p6}, Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;->stop()V

    :cond_b
    throw v0

    .line 33
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "availableCurrentMilliAmps must be in 0..65535"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4

    :sswitch_data_0
    .sparse-switch
        0x4300 -> :sswitch_2
        0xa100 -> :sswitch_1
        0xa102 -> :sswitch_1
        0xfffa -> :sswitch_0
        0xfffc -> :sswitch_0
    .end sparse-switch
.end method
