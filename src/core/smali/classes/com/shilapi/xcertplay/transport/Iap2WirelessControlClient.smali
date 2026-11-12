.class public final Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;
.super Ljava/lang/Object;
.source "Iap2WirelessControlClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u0000 #2\u00020\u0001:\u0001#B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u008a\u0001\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172\u000e\u0008\u0002\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00192\u0014\u0008\u0002\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001a0\u001c2\u0014\u0008\u0002\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\u001a0\u001cJ\u0018\u0010 \u001a\u00020\u001a2\u0006\u0010!\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020\u000fH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;",
        "",
        "session",
        "Lcom/shilapi/xcertplay/iap2/session/Iap2Session;",
        "mfi",
        "Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationClient;",
        "<init>",
        "(Lcom/shilapi/xcertplay/iap2/session/Iap2Session;Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationClient;)V",
        "run",
        "Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;",
        "identification",
        "Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;",
        "endpoint",
        "Lcom/shilapi/xcertplay/transport/Iap2WirelessCarPlayEndpoint;",
        "timeoutMillis",
        "",
        "locationProvider",
        "Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;",
        "vehicleStatusProvider",
        "Lcom/shilapi/xcertplay/transport/VehicleStatusProvider;",
        "locationRequest",
        "Lcom/shilapi/xcertplay/transport/Iap2LocationRequest;",
        "continueLocationRequest",
        "",
        "onReady",
        "Lkotlin/Function0;",
        "",
        "onIncoming",
        "Lkotlin/Function1;",
        "Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;",
        "onProgress",
        "",
        "send",
        "frame",
        "deadlineNanos",
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
.field private static final ACCESSORY_WIFI_CONFIGURATION:I = 0x5703

.field private static final CARPLAY_AVAILABILITY:I = 0x4300

.field private static final CARPLAY_START_SESSION:I = 0x4301

.field public static final Companion:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$Companion;

.field private static final DEFAULT_TIMEOUT_MILLIS:J = 0xea60L

.field private static final DEVICE_TRANSPORT_IDENTIFIER_NOTIFICATION:I = 0x4e0e

.field private static final MAX_POST_TRANSPORT_WIFI_CONFIGURATION_SENDS:I = 0x2

.field private static final MAX_PRE_TRANSPORT_WIFI_CONFIGURATION_SENDS:I = 0x5

.field private static final MAX_RECV_TIMEOUT_MILLIS:J = 0x493e0L

.field private static final MAX_TIMEOUT_MILLIS:J = 0x5265c00L

.field private static final NANOS_PER_MILLISECOND:J = 0xf4240L

.field public static final NO_TIMEOUT_MILLIS:J = 0x7fffffffffffffffL

.field private static final REQUEST_ACCESSORY_WIFI_CONFIGURATION:I = 0x5702

.field private static final WIRELESS_CARPLAY_UPDATE:I = 0x4e0d


# instance fields
.field private final mfi:Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationClient;

.field private final session:Lcom/shilapi/xcertplay/iap2/session/Iap2Session;


# direct methods
.method public static synthetic $r8$lambda$AyWBdpI5mr_zlClrh5hniixp9CY(Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;JLcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;->run$lambda$6(Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;JLcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$CqlNRfJVD4byVbd9YtlzOwwkCM4(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;->run$lambda$1(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JfIdk30pdtvPudPlJg17zLwtTig()Lkotlin/Unit;
    .locals 1

    invoke-static {}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;->run$lambda$0()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$SfdjkfXb6_I_237f57jhlmh5ALQ(Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;JLcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;->run$lambda$5(Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;JLcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mvRDWaujlAt_auL9VwDsvduWmXE(Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;JLcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;->run$lambda$7(Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;JLcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oZERNPoLkTBHBg6yJnZlZbDkbBc(Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;JLcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;->run$lambda$8(Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;JLcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$viaW9ZcXDPXEDx-tiCNmslQkAmI(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;->run$lambda$2(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;->Companion:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$Companion;

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
    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;->session:Lcom/shilapi/xcertplay/iap2/session/Iap2Session;

    .line 21
    iput-object p2, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;->mfi:Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationClient;

    return-void
.end method

.method public static synthetic run$default(Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;Lcom/shilapi/xcertplay/transport/Iap2WirelessCarPlayEndpoint;JLcom/shilapi/xcertplay/transport/Iap2LocationProvider;Lcom/shilapi/xcertplay/transport/VehicleStatusProvider;Lcom/shilapi/xcertplay/transport/Iap2LocationRequest;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;
    .locals 15

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    const-wide/32 v1, 0xea60

    move-wide v6, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v6, p3

    :goto_0
    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v8, v2

    goto :goto_1

    :cond_1
    move-object/from16 v8, p5

    :goto_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    move-object v9, v2

    goto :goto_2

    :cond_2
    move-object/from16 v9, p6

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    move-object v10, v2

    goto :goto_3

    :cond_3
    move-object/from16 v10, p7

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    const/4 v11, 0x0

    goto :goto_4

    :cond_4
    move/from16 v11, p8

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    .line 31
    new-instance v1, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$$ExternalSyntheticLambda0;-><init>()V

    move-object v12, v1

    goto :goto_5

    :cond_5
    move-object/from16 v12, p9

    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    .line 32
    new-instance v1, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$$ExternalSyntheticLambda1;-><init>()V

    move-object v13, v1

    goto :goto_6

    :cond_6
    move-object/from16 v13, p10

    :goto_6
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_7

    .line 33
    new-instance v0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$$ExternalSyntheticLambda2;-><init>()V

    move-object v14, v0

    goto :goto_7

    :cond_7
    move-object/from16 v14, p11

    :goto_7
    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    .line 23
    invoke-virtual/range {v3 .. v14}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;->run(Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;Lcom/shilapi/xcertplay/transport/Iap2WirelessCarPlayEndpoint;JLcom/shilapi/xcertplay/transport/Iap2LocationProvider;Lcom/shilapi/xcertplay/transport/VehicleStatusProvider;Lcom/shilapi/xcertplay/transport/Iap2LocationRequest;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;

    move-result-object p0

    return-object p0
.end method

.method private static final run$lambda$0()Lkotlin/Unit;
    .locals 1

    .line 31
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final run$lambda$1(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final run$lambda$2(Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final run$lambda$5(Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;JLcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0, p3, p1, p2}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;->send(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;J)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final run$lambda$6(Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;JLcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0, p3, p1, p2}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;->send(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;J)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final run$lambda$7(Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;JLcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    invoke-direct {p0, p3, p1, p2}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;->send(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;J)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final run$lambda$8(Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;JLcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    invoke-direct {p0, p3, p1, p2}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;->send(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;J)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final send(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;J)V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;->session:Lcom/shilapi/xcertplay/iap2/session/Iap2Session;

    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;->Companion:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$Companion;

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$Companion;->requireRemaining(J)J
    invoke-static {v1, p2, p3}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$Companion;->access$requireRemaining(Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$Companion;J)J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;->send(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;J)V

    return-void
.end method


# virtual methods
.method public final run(Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;Lcom/shilapi/xcertplay/transport/Iap2WirelessCarPlayEndpoint;JLcom/shilapi/xcertplay/transport/Iap2LocationProvider;Lcom/shilapi/xcertplay/transport/VehicleStatusProvider;Lcom/shilapi/xcertplay/transport/Iap2LocationRequest;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;
    .locals 44
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;",
            "Lcom/shilapi/xcertplay/transport/Iap2WirelessCarPlayEndpoint;",
            "J",
            "Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;",
            "Lcom/shilapi/xcertplay/transport/VehicleStatusProvider;",
            "Lcom/shilapi/xcertplay/transport/Iap2LocationRequest;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
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
            "Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p10

    move-object/from16 v8, p11

    const-string v6, "identification"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "endpoint"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "onReady"

    move-object/from16 v7, p9

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "onIncoming"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "onProgress"

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;->getWireless()Lcom/shilapi/xcertplay/transport/Iap2WirelessIdentification;

    move-result-object v6

    if-eqz v6, :cond_14

    const-wide v9, 0x7fffffffffffffffL

    cmp-long v6, v3, v9

    if-eqz v6, :cond_1

    const-wide/16 v11, 0x1

    cmp-long v6, v11, v3

    if-gtz v6, :cond_0

    const-wide/32 v11, 0x5265c01

    cmp-long v6, v3, v11

    if-gez v6, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "timeoutMillis must be in 1..86400000 or NO_TIMEOUT_MILLIS"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    cmp-long v6, v3, v9

    if-nez v6, :cond_2

    goto :goto_1

    .line 45
    :cond_2
    sget-object v6, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;->Companion:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$Companion;

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$Companion;->deadlineAfter(J)J
    invoke-static {v6, v3, v4}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$Companion;->access$deadlineAfter(Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$Companion;J)J

    move-result-wide v9

    :goto_1
    move-object/from16 v14, p6

    move-wide v3, v9

    .line 47
    invoke-static {v1, v14}, Lcom/shilapi/xcertplay/transport/Iap2VehicleStatusKt;->withVehicleStatusFrom(Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;Lcom/shilapi/xcertplay/transport/VehicleStatusProvider;)Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;

    move-result-object v6

    .line 48
    invoke-virtual {v6}, Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;->getVehicleStatusEnabled()Z

    move-result v9

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;->getVehicleStatusEnabled()Z

    move-result v1

    if-eq v9, v1, :cond_3

    .line 49
    const-string v1, "iap2 no battery reading: not declaring an electric vehicle"

    invoke-interface {v8, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_3
    new-instance v1, Lcom/shilapi/xcertplay/transport/Iap2IdentificationClient;

    iget-object v9, v0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;->session:Lcom/shilapi/xcertplay/iap2/session/Iap2Session;

    invoke-direct {v1, v9}, Lcom/shilapi/xcertplay/transport/Iap2IdentificationClient;-><init>(Lcom/shilapi/xcertplay/iap2/session/Iap2Session;)V

    sget-object v9, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;->Companion:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$Companion;

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$Companion;->requireRemaining(J)J
    invoke-static {v9, v3, v4}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$Companion;->access$requireRemaining(Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$Companion;J)J

    move-result-wide v10

    invoke-virtual {v1, v6, v10, v11}, Lcom/shilapi/xcertplay/transport/Iap2IdentificationClient;->identify(Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;J)V

    .line 52
    const-string v1, "iap2 identification accepted"

    invoke-interface {v8, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;->IDENTIFIED:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

    .line 55
    iget-object v1, v0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;->mfi:Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationClient;

    iget-object v6, v0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;->session:Lcom/shilapi/xcertplay/iap2/session/Iap2Session;

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$Companion;->requireRemaining(J)J
    invoke-static {v9, v3, v4}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$Companion;->access$requireRemaining(Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$Companion;J)J

    move-result-wide v9

    invoke-virtual {v1, v6, v9, v10, v8}, Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationClient;->run(Lcom/shilapi/xcertplay/iap2/session/Iap2Session;JLkotlin/jvm/functions/Function1;)V

    .line 56
    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;->AUTHENTICATED:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

    .line 57
    const-string v1, "iap2 authentication accepted"

    invoke-interface {v8, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;->Companion:Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$Companion;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$Companion;->subscriptions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;

    .line 60
    invoke-direct {v0, v6, v3, v4}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;->send(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;J)V

    goto :goto_2

    .line 62
    :cond_4
    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;->SUBSCRIBED:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

    .line 63
    const-string v6, "iap2 subscriptions sent"

    invoke-interface {v8, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-interface {v7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 73
    new-instance v6, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;

    const/16 v12, 0x10

    const/4 v13, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p5

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v6 .. v13}, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;-><init>(Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;Lkotlin/jvm/functions/Function1;Lcom/shilapi/xcertplay/transport/Iap2LocationRequest;ZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v12, v6

    .line 74
    new-instance v6, Lcom/shilapi/xcertplay/transport/Iap2VehicleStatusReporter;

    const/4 v10, 0x4

    const/4 v9, 0x0

    move-object/from16 v8, p11

    move-object v7, v14

    invoke-direct/range {v6 .. v11}, Lcom/shilapi/xcertplay/transport/Iap2VehicleStatusReporter;-><init>(Lcom/shilapi/xcertplay/transport/VehicleStatusProvider;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 76
    :goto_3
    sget-object v7, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;->Companion:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$Companion;

    move/from16 p4, v9

    move/from16 p5, v10

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$Companion;->remainingMillis(J)J
    invoke-static {v7, v3, v4}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$Companion;->access$remainingMillis(Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$Companion;J)J

    move-result-wide v9

    const-wide/16 v17, 0x0

    cmp-long v19, v9, v17

    if-nez v19, :cond_5

    .line 78
    new-instance v2, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;

    .line 79
    sget-object v3, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlTerminal;->TIMED_OUT:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlTerminal;

    move-object/from16 p3, v1

    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move/from16 p6, v11

    move/from16 p7, v13

    move/from16 p8, v14

    move/from16 p9, v15

    .line 78
    invoke-direct/range {p1 .. p9}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;-><init>(Lcom/shilapi/xcertplay/transport/Iap2WirelessControlTerminal;Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;IIIZIZ)V

    move-object/from16 v1, p1

    return-object v1

    :cond_5
    move-object/from16 p3, v1

    move/from16 v19, v14

    move/from16 v20, v15

    move v14, v11

    move v15, v13

    move/from16 v11, p4

    move/from16 v13, p5

    .line 89
    new-instance v1, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0, v3, v4}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$$ExternalSyntheticLambda3;-><init>(Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;J)V

    invoke-virtual {v12, v1}, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->tick(Lkotlin/jvm/functions/Function1;)V

    .line 90
    new-instance v1, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0, v3, v4}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$$ExternalSyntheticLambda4;-><init>(Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;J)V

    invoke-virtual {v6, v1}, Lcom/shilapi/xcertplay/transport/Iap2VehicleStatusReporter;->tick(Lkotlin/jvm/functions/Function1;)V

    .line 91
    invoke-virtual {v12, v9, v10}, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->pollTimeout(J)J

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Lcom/shilapi/xcertplay/transport/Iap2VehicleStatusReporter;->pollTimeout(J)J

    move-result-wide v9

    .line 92
    iget-object v1, v0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;->session:Lcom/shilapi/xcertplay/iap2/session/Iap2Session;

    invoke-virtual {v1, v9, v10}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;->recv(J)Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;

    move-result-object v1

    if-nez v1, :cond_8

    .line 94
    iget-object v1, v0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;->session:Lcom/shilapi/xcertplay/iap2/session/Iap2Session;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 95
    new-instance v1, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;

    .line 96
    sget-object v2, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlTerminal;->CHANNEL_CLOSED:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlTerminal;

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move/from16 p4, v11

    move/from16 p5, v13

    move/from16 p6, v14

    move/from16 p7, v15

    move/from16 p8, v19

    move/from16 p9, v20

    .line 95
    invoke-direct/range {p1 .. p9}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;-><init>(Lcom/shilapi/xcertplay/transport/Iap2WirelessControlTerminal;Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;IIIZIZ)V

    return-object v1

    :cond_6
    move-object/from16 v1, p3

    .line 106
    # invokes: Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$Companion;->remainingMillis(J)J
    invoke-static {v7, v3, v4}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$Companion;->access$remainingMillis(Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$Companion;J)J

    move-result-wide v9

    cmp-long v7, v9, v17

    if-nez v7, :cond_7

    .line 107
    new-instance v2, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;

    .line 108
    sget-object v3, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlTerminal;->TIMED_OUT:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlTerminal;

    move-object/from16 p3, v1

    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move/from16 p4, v11

    move/from16 p5, v13

    move/from16 p6, v14

    move/from16 p7, v15

    move/from16 p8, v19

    move/from16 p9, v20

    .line 107
    invoke-direct/range {p1 .. p9}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;-><init>(Lcom/shilapi/xcertplay/transport/Iap2WirelessControlTerminal;Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;IIIZIZ)V

    move-object/from16 v1, p1

    return-object v1

    :cond_7
    move-object v9, v1

    move/from16 v10, v19

    move/from16 p4, v11

    goto/16 :goto_6

    :cond_8
    move-object/from16 v9, p3

    move/from16 v10, v19

    .line 121
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;->getMessageId()I

    move-result v17

    move/from16 p4, v11

    sparse-switch v17, :sswitch_data_0

    move-object/from16 v17, v6

    .line 242
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;->getMessageId()I

    move-result v6

    const/16 v7, 0x10

    invoke-static {v7}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "toString(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x30

    const/4 v11, 0x4

    invoke-static {v6, v11, v7}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v11, "iap2 rx=0x"

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    invoke-interface {v5, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, p4, 0x1

    move-object v6, v9

    move v9, v1

    move-object v1, v6

    move v11, v14

    move-object/from16 v6, v17

    goto :goto_8

    .line 238
    :sswitch_0
    new-instance v7, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$$ExternalSyntheticLambda6;

    invoke-direct {v7, v0, v3, v4}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$$ExternalSyntheticLambda6;-><init>(Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;J)V

    invoke-virtual {v12, v1, v7}, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->handle(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;Lkotlin/jvm/functions/Function1;)Z

    goto :goto_6

    .line 233
    :sswitch_1
    new-instance v7, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$$ExternalSyntheticLambda5;

    invoke-direct {v7, v0, v3, v4}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$$ExternalSyntheticLambda5;-><init>(Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;J)V

    invoke-virtual {v6, v1, v7}, Lcom/shilapi/xcertplay/transport/Iap2VehicleStatusReporter;->handle(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;Lkotlin/jvm/functions/Function1;)Z

    goto :goto_6

    .line 123
    :sswitch_2
    const-string v1, "iap2 rx=0x5702 request-wifi-configuration"

    invoke-interface {v8, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v21, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/ConnectionLog;

    .line 126
    sget-object v22, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;->IAP2:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;

    const/16 v28, 0x18

    const/16 v29, 0x0

    .line 125
    const-string v23, "0x5702"

    const-string v24, "ok"

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    invoke-static/range {v21 .. v29}, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->rx$default(Lcom/shilapi/xcertplay/orchestration/ConnectionLog;Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;Ljava/lang/String;Ljava/lang/String;IJILjava/lang/Object;)Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;

    if-eqz v15, :cond_9

    move v1, v10

    goto :goto_4

    :cond_9
    move/from16 v1, v16

    :goto_4
    if-eqz v15, :cond_a

    const/4 v11, 0x2

    goto :goto_5

    :cond_a
    const/16 v17, 0x5

    const/4 v11, 0x5

    :goto_5
    if-lt v1, v11, :cond_b

    .line 140
    const-string v1, "iap2 0x5703 ignored: maximum Wi-Fi configuration sends reached"

    .line 139
    invoke-interface {v8, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    move-object v1, v9

    move v11, v14

    :goto_7
    move/from16 v9, p4

    :goto_8
    move v14, v10

    move v10, v13

    move v13, v15

    goto/16 :goto_10

    .line 143
    :cond_b
    invoke-virtual {v7, v2}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$Companion;->accessoryWiFiConfiguration(Lcom/shilapi/xcertplay/transport/Iap2WirelessCarPlayEndpoint;)Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;

    move-result-object v1

    invoke-direct {v0, v1, v3, v4}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;->send(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;J)V

    if-eqz v15, :cond_c

    .line 147
    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;->POST_TRANSPORT_WIFI_CONFIG_SENT:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

    goto :goto_9

    .line 149
    :cond_c
    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;->WIFI_CONFIG_SENT:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

    .line 144
    :goto_9
    # invokes: Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$Companion;->later(Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;)Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;
    invoke-static {v7, v9, v1}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$Companion;->access$later(Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$Companion;Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;)Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

    move-result-object v1

    add-int/lit8 v9, v13, 0x1

    if-eqz v15, :cond_d

    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    :cond_d
    add-int/lit8 v16, v16, 0x1

    .line 158
    :goto_a
    invoke-virtual {v7, v2}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$Companion;->wifiConfigurationSummary(Lcom/shilapi/xcertplay/transport/Iap2WirelessCarPlayEndpoint;)Ljava/lang/String;

    move-result-object v7

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "iap2 tx=0x5703 accessory-wifi-configuration "

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v7, Lcom/shilapi/xcertplay/orchestration/WifiCredentialQr;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/WifiCredentialQr;

    .line 160
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/transport/Iap2WirelessCarPlayEndpoint;->getSsid()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/transport/Iap2WirelessCarPlayEndpoint;->getPassphrase()Ljava/lang/String;

    move-result-object v13

    .line 159
    invoke-virtual {v7, v11, v13}, Lcom/shilapi/xcertplay/orchestration/WifiCredentialQr;->fingerprint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 161
    sget-object v21, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/ConnectionLog;

    .line 162
    sget-object v22, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;->IAP2:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;

    .line 163
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/transport/Iap2WirelessCarPlayEndpoint;->getChannel()I

    move-result v11

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 p3, v1

    const-string v1, "channel="

    invoke-direct {v13, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v28, 0x18

    const/16 v29, 0x0

    .line 161
    const-string v23, "0x5703"

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    invoke-static/range {v21 .. v29}, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->tx$default(Lcom/shilapi/xcertplay/orchestration/ConnectionLog;Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;Ljava/lang/String;Ljava/lang/String;IJILjava/lang/Object;)Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;

    .line 164
    sget-object v30, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/ConnectionLog;

    .line 165
    sget-object v31, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;->WIFI:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;

    .line 167
    sget-object v1, Lcom/shilapi/xcertplay/orchestration/WifiHandoff;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/WifiHandoff;

    .line 168
    sget-object v21, Lcom/shilapi/xcertplay/orchestration/WifiHandoff;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/WifiHandoff;

    .line 169
    new-instance v22, Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;

    const/16 v42, 0x1ff

    const/16 v43, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v32, v22

    invoke-direct/range {v32 .. v43}, Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;-><init>(Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Step;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 170
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/transport/Iap2WirelessCarPlayEndpoint;->getSecurity()Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    move-result-object v11

    invoke-virtual {v11}, Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;->name()Ljava/lang/String;

    move-result-object v23

    .line 171
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/transport/Iap2WirelessCarPlayEndpoint;->getChannel()I

    move-result v11

    const/4 v13, 0x1

    if-gt v13, v11, :cond_e

    const/16 v13, 0xf

    if-ge v11, v13, :cond_e

    const-string v11, "2.4GHz"

    goto :goto_b

    :cond_e
    const-string v11, "5GHz"

    :goto_b
    move-object/from16 v24, v11

    .line 172
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/transport/Iap2WirelessCarPlayEndpoint;->getChannel()I

    move-result v25

    .line 173
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/transport/Iap2WirelessCarPlayEndpoint;->getSsid()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v26

    .line 174
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/transport/Iap2WirelessCarPlayEndpoint;->getPassphrase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v27

    const/4 v11, 0x4

    .line 175
    invoke-static {v7, v11}, Lkotlin/text/StringsKt;->takeLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    .line 176
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/transport/Iap2WirelessCarPlayEndpoint;->getChannel()I

    move-result v7

    if-lez v7, :cond_f

    const/16 v29, 0x1

    goto :goto_c

    :cond_f
    const/16 v29, 0x0

    .line 168
    :goto_c
    invoke-virtual/range {v21 .. v29}, Lcom/shilapi/xcertplay/orchestration/WifiHandoff;->on5703(Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Z)Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;

    move-result-object v7

    .line 167
    invoke-virtual {v1, v7}, Lcom/shilapi/xcertplay/orchestration/WifiHandoff;->summary(Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;)Ljava/lang/String;

    move-result-object v33

    const/16 v37, 0x18

    const/16 v38, 0x0

    .line 164
    const-string v32, "handoff"

    const/16 v34, 0x0

    const-wide/16 v35, 0x0

    invoke-static/range {v30 .. v38}, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->note$default(Lcom/shilapi/xcertplay/orchestration/ConnectionLog;Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;Ljava/lang/String;Ljava/lang/String;IJILjava/lang/Object;)Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;

    move-object/from16 v1, p3

    move v11, v14

    move v13, v15

    move/from16 v15, v20

    move v14, v10

    move v10, v9

    goto/16 :goto_f

    :sswitch_3
    const/4 v11, 0x1

    .line 200
    sget-object v15, Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessMessages;->INSTANCE:Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessMessages;

    invoke-virtual {v15, v1}, Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessMessages;->deviceTransportIdentifier(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lcom/shilapi/xcertplay/iap2/message/Iap2DeviceTransportIdentifier;

    move-result-object v1

    .line 201
    sget-object v15, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;->TRANSPORT_NOTIFIED:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$Companion;->later(Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;)Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;
    invoke-static {v7, v9, v15}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$Companion;->access$later(Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$Companion;Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;)Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

    move-result-object v9

    .line 205
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/iap2/message/Iap2DeviceTransportIdentifier;->getBluetoothMac()Ljava/lang/String;

    move-result-object v15

    const-string v17, "set"

    const-string v18, "none"

    if-eqz v15, :cond_10

    move-object/from16 v15, v17

    goto :goto_d

    :cond_10
    move-object/from16 v15, v18

    .line 206
    :goto_d
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/iap2/message/Iap2DeviceTransportIdentifier;->getUsbTransportIdentifier()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    move-object/from16 v1, v17

    goto :goto_e

    :cond_11
    move-object/from16 v1, v18

    :goto_e
    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v17, v6

    const-string v6, "iap2 rx=0x4e0e device-transport-identifier bluetooth="

    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " usb="

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; resending 0x5703"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 202
    invoke-interface {v8, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    if-lt v10, v1, :cond_12

    .line 214
    const-string v1, "iap2 post-transport 0x5703 ignored: maximum Wi-Fi configuration sends reached"

    .line 213
    invoke-interface {v8, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v9

    move v11, v14

    move-object/from16 v6, v17

    move/from16 v15, v20

    move/from16 v9, p4

    move v14, v10

    move v10, v13

    const/4 v13, 0x1

    goto/16 :goto_3

    .line 218
    :cond_12
    invoke-virtual {v7, v2}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$Companion;->accessoryWiFiConfiguration(Lcom/shilapi/xcertplay/transport/Iap2WirelessCarPlayEndpoint;)Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;

    move-result-object v1

    invoke-direct {v0, v1, v3, v4}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;->send(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;J)V

    .line 221
    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;->POST_TRANSPORT_WIFI_CONFIG_SENT:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

    .line 219
    # invokes: Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$Companion;->later(Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;)Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;
    invoke-static {v7, v9, v1}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$Companion;->access$later(Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$Companion;Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;)Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

    move-result-object v1

    add-int/lit8 v6, v13, 0x1

    add-int/lit8 v9, v10, 0x1

    .line 227
    invoke-virtual {v7, v2}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$Companion;->wifiConfigurationSummary(Lcom/shilapi/xcertplay/transport/Iap2WirelessCarPlayEndpoint;)Ljava/lang/String;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "iap2 tx=0x5703 post-transport accessory-wifi-configuration "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 225
    invoke-interface {v8, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move v10, v6

    move v11, v14

    move-object/from16 v6, v17

    move/from16 v15, v20

    const/4 v13, 0x1

    move v14, v9

    :goto_f
    move/from16 v9, p4

    goto/16 :goto_3

    :sswitch_4
    move-object/from16 v17, v6

    .line 192
    sget-object v6, Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessMessages;->INSTANCE:Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessMessages;

    invoke-virtual {v6, v1}, Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessMessages;->wirelessCarPlayAvailability(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Z

    move-result v6

    if-eqz v6, :cond_13

    const/16 v20, 0x1

    .line 195
    :cond_13
    sget-object v7, Lcom/shilapi/xcertplay/transport/Iap2DiagnosticSummary;->INSTANCE:Lcom/shilapi/xcertplay/transport/Iap2DiagnosticSummary;

    invoke-virtual {v7, v1}, Lcom/shilapi/xcertplay/transport/Iap2DiagnosticSummary;->of(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v11, "iap2 rx=0x4e0d wireless-carplay-update available="

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " params="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-interface {v8, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v9

    move v11, v14

    move-object/from16 v6, v17

    goto/16 :goto_7

    :sswitch_5
    move-object/from16 v17, v6

    .line 184
    sget-object v6, Lcom/shilapi/xcertplay/transport/Iap2DiagnosticSummary;->INSTANCE:Lcom/shilapi/xcertplay/transport/Iap2DiagnosticSummary;

    invoke-virtual {v6, v1}, Lcom/shilapi/xcertplay/transport/Iap2DiagnosticSummary;->of(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "iap2 rx=0x4300 carplay-availability params="

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-virtual {v7, v2}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$Companion;->carPlayStartSession(Lcom/shilapi/xcertplay/transport/Iap2WirelessCarPlayEndpoint;)Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;

    move-result-object v1

    invoke-direct {v0, v1, v3, v4}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;->send(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;J)V

    .line 186
    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;->CARPLAY_START_SENT:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$Companion;->later(Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;)Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;
    invoke-static {v7, v9, v1}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$Companion;->access$later(Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$Companion;Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;)Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

    move-result-object v1

    add-int/lit8 v11, v14, 0x1

    .line 188
    invoke-virtual {v7, v2}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$Companion;->startSessionSummary(Lcom/shilapi/xcertplay/transport/Iap2WirelessCarPlayEndpoint;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "iap2 tx=0x4301 carplay-start-session "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v9, p4

    move v14, v10

    move v10, v13

    move v13, v15

    move-object/from16 v6, v17

    :goto_10
    move/from16 v15, v20

    goto/16 :goto_3

    .line 35
    :cond_14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Wireless control requires an Iap2IdentificationConfig with wireless transport"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_12

    :goto_11
    throw v1

    :goto_12
    goto :goto_11

    :sswitch_data_0
    .sparse-switch
        0x4300 -> :sswitch_5
        0x4e0d -> :sswitch_4
        0x4e0e -> :sswitch_3
        0x5702 -> :sswitch_2
        0xa100 -> :sswitch_1
        0xa102 -> :sswitch_1
        0xfffa -> :sswitch_0
        0xfffc -> :sswitch_0
    .end sparse-switch
.end method
