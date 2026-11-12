.class public final Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$Companion;
.super Ljava/lang/Object;
.source "Iap2WiredControlClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0007J\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0011J\u000e\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018J\u0010\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u0010\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u001bH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$Companion;",
        "",
        "<init>",
        "()V",
        "NO_TIMEOUT_MILLIS",
        "",
        "CARPLAY_AVAILABILITY",
        "",
        "CARPLAY_START_SESSION",
        "DEFAULT_TIMEOUT_MILLIS",
        "MAX_TIMEOUT_MILLIS",
        "MAX_RECV_TIMEOUT_MILLIS",
        "NANOS_PER_MILLISECOND",
        "powerSourceUpdate",
        "Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;",
        "availableCurrentMilliAmps",
        "subscriptions",
        "",
        "carPlayStartSession",
        "endpoint",
        "Lcom/shilapi/xcertplay/transport/Iap2WiredCarPlayEndpoint;",
        "carPlayAvailabilitySummary",
        "",
        "payload",
        "",
        "requireRemaining",
        "deadlineNanos",
        "Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;",
        "remainingMillis",
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

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$remainingMillis(Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$Companion;Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;)J
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$Companion;->remainingMillis(Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$requireRemaining(Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$Companion;Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;)J
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$Companion;->requireRemaining(Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;)J

    move-result-wide p0

    return-wide p0
.end method

.method private final remainingMillis(Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;)J
    .locals 2

    .line 169
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;->remainingMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private final requireRemaining(Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;)J
    .locals 4

    .line 165
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$Companion;->remainingMillis(Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    return-wide v0

    .line 166
    :cond_0
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$TimedOut;

    const-string v0, "Timed out during wired iAP2 control bring-up"

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2, v1, v2}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$TimedOut;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
.end method


# virtual methods
.method public final carPlayAvailabilitySummary([B)Ljava/lang/String;
    .locals 3

    const-string v0, "iap2 4300 wiredAvailable="

    const-string v1, "payload"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    :try_start_0
    sget-object v1, Lcom/shilapi/xcertplay/iap2/message/Iap2CarPlayMessages;->INSTANCE:Lcom/shilapi/xcertplay/iap2/message/Iap2CarPlayMessages;

    invoke-virtual {v1, p1}, Lcom/shilapi/xcertplay/iap2/message/Iap2CarPlayMessages;->availability([B)Lcom/shilapi/xcertplay/iap2/message/Iap2CarPlayAvailability;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/iap2/message/Iap2CarPlayAvailability;->getWired()Lcom/shilapi/xcertplay/iap2/message/Iap2AvailabilityState;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 157
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/iap2/message/Iap2AvailabilityState;->getAvailable()Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 158
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/iap2/message/Iap2AvailabilityState;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    .line 159
    const-string v1, "none"

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " usbTransport="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 161
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "iap2 4300 decode failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final carPlayStartSession(Lcom/shilapi/xcertplay/transport/Iap2WiredCarPlayEndpoint;)Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;
    .locals 14

    const-string v0, "endpoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    sget-object v1, Lcom/shilapi/xcertplay/iap2/message/Iap2CarPlayMessages;->INSTANCE:Lcom/shilapi/xcertplay/iap2/message/Iap2CarPlayMessages;

    .line 147
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/Iap2WiredCarPlayEndpoint;->getIpv6Addresses()Ljava/util/List;

    move-result-object v5

    .line 148
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/Iap2WiredCarPlayEndpoint;->getAirPlayPort()I

    move-result v2

    .line 149
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/Iap2WiredCarPlayEndpoint;->getDeviceIdentifier()Ljava/lang/String;

    move-result-object v8

    .line 150
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/Iap2WiredCarPlayEndpoint;->getPublicKey()Ljava/lang/String;

    move-result-object v3

    .line 151
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/Iap2WiredCarPlayEndpoint;->getSourceVersion()Ljava/lang/String;

    move-result-object v4

    const/16 v12, 0x3b0

    const/4 v13, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 146
    invoke-static/range {v1 .. v13}, Lcom/shilapi/xcertplay/iap2/message/Iap2CarPlayMessages;->startSession$default(Lcom/shilapi/xcertplay/iap2/message/Iap2CarPlayMessages;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters;Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/iap2/message/Iap2ClusterAsset;Ljava/lang/Boolean;ILjava/lang/Object;)Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;

    move-result-object p1

    return-object p1
.end method

.method public final powerSourceUpdate(I)Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;
    .locals 8

    .line 139
    sget-object v0, Lcom/shilapi/xcertplay/iap2/message/Iap2ControlMessages;->INSTANCE:Lcom/shilapi/xcertplay/iap2/message/Iap2ControlMessages;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v6, 0x1c

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p1

    invoke-static/range {v0 .. v7}, Lcom/shilapi/xcertplay/iap2/message/Iap2ControlMessages;->powerSourceUpdate$default(Lcom/shilapi/xcertplay/iap2/message/Iap2ControlMessages;ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;ZILjava/lang/Object;)Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;

    move-result-object p1

    return-object p1
.end method

.method public final subscriptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;",
            ">;"
        }
    .end annotation

    .line 142
    sget-object v0, Lcom/shilapi/xcertplay/iap2/message/Iap2ControlMessages;->INSTANCE:Lcom/shilapi/xcertplay/iap2/message/Iap2ControlMessages;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/iap2/message/Iap2ControlMessages;->subscriptions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
