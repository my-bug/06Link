.class public final Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;
.super Ljava/lang/Object;
.source "Iap2LocationClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/transport/Iap2LocationReporter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIap2LocationClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Iap2LocationClient.kt\ncom/shilapi/xcertplay/transport/Iap2LocationReporter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,283:1\n1#2:284\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 !2\u00020\u0001:\u0001!BK\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u0012\u000e\u0008\u0002\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\"\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u00182\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00070\u0005J\u001a\u0010\u001a\u001a\u00020\u00072\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00070\u0005J\u000e\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u000eJ\u0008\u0010\u001d\u001a\u00020\u000eH\u0002J\u001c\u0010\u001e\u001a\u00020\u00072\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00070\u0005H\u0002J\u0008\u0010\u001f\u001a\u00020\u000bH\u0002J\u001c\u0010 \u001a\u00020\u00072\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00070\u0005H\u0002R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;",
        "",
        "provider",
        "Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;",
        "onProgress",
        "Lkotlin/Function1;",
        "",
        "",
        "request",
        "Lcom/shilapi/xcertplay/transport/Iap2LocationRequest;",
        "continueRequest",
        "",
        "nanoTime",
        "Lkotlin/Function0;",
        "",
        "<init>",
        "(Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;Lkotlin/jvm/functions/Function1;Lcom/shilapi/xcertplay/transport/Iap2LocationRequest;ZLkotlin/jvm/functions/Function0;)V",
        "active",
        "sentLogged",
        "noFixLogged",
        "continued",
        "lastAttemptNanos",
        "handle",
        "frame",
        "Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;",
        "send",
        "tick",
        "pollTimeout",
        "remainingMillis",
        "sinceAttemptMillis",
        "start",
        "startProvider",
        "sendLatest",
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
.field private static final Companion:Lcom/shilapi/xcertplay/transport/Iap2LocationReporter$Companion;

.field public static final POLL_INTERVAL_MILLIS:J = 0x3e8L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private active:Z

.field private final continueRequest:Z

.field private continued:Z

.field private lastAttemptNanos:J

.field private final nanoTime:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private noFixLogged:Z

.field private final onProgress:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final provider:Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;

.field private final request:Lcom/shilapi/xcertplay/transport/Iap2LocationRequest;

.field private sentLogged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->Companion:Lcom/shilapi/xcertplay/transport/Iap2LocationReporter$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;Lkotlin/jvm/functions/Function1;Lcom/shilapi/xcertplay/transport/Iap2LocationRequest;ZLkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/shilapi/xcertplay/transport/Iap2LocationRequest;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onProgress"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nanoTime"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->provider:Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;

    .line 158
    iput-object p2, p0, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->onProgress:Lkotlin/jvm/functions/Function1;

    .line 159
    iput-object p3, p0, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->request:Lcom/shilapi/xcertplay/transport/Iap2LocationRequest;

    .line 160
    iput-boolean p4, p0, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->continueRequest:Z

    .line 161
    iput-object p5, p0, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->nanoTime:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;Lkotlin/jvm/functions/Function1;Lcom/shilapi/xcertplay/transport/Iap2LocationRequest;ZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const/4 p3, 0x0

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    const/4 p4, 0x0

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    move v4, p4

    :goto_0
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    .line 161
    sget-object p3, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter$1;->INSTANCE:Lcom/shilapi/xcertplay/transport/Iap2LocationReporter$1;

    move-object p5, p3

    check-cast p5, Lkotlin/jvm/functions/Function0;

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    .line 156
    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;-><init>(Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;Lkotlin/jvm/functions/Function1;Lcom/shilapi/xcertplay/transport/Iap2LocationRequest;ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final sendLatest(Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->nanoTime:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->lastAttemptNanos:J

    .line 244
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->provider:Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;->latestNmea()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-nez v0, :cond_1

    :try_start_0
    invoke-static {p0}, Lcom/shilapi/xcertplay/E01GpsDiagnostic;->noFix(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 248
    :goto_1
    iget-boolean p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->noFixLogged:Z

    if-nez p1, :cond_2

    .line 249
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->noFixLogged:Z

    .line 250
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->onProgress:Lkotlin/jvm/functions/Function1;

    const-string v0, "iap2 location: no fresh fix yet, nothing sent"

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 254
    :cond_1
    move-object v1, v0

    sget-object v2, Lcom/shilapi/xcertplay/transport/Iap2LocationMessages;->INSTANCE:Lcom/shilapi/xcertplay/transport/Iap2LocationMessages;

    invoke-virtual {v2, v0}, Lcom/shilapi/xcertplay/transport/Iap2LocationMessages;->locationInformation(Ljava/lang/String;)Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;

    move-result-object v0

    :try_start_1
    invoke-static {p0, v0, v1}, Lcom/shilapi/xcertplay/E01GpsDiagnostic;->framePrepared(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    :goto_2
    const/4 v1, 0x1

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_2
    invoke-static {p0}, Lcom/shilapi/xcertplay/E01GpsDiagnostic;->submitted(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    .line 255
    :goto_3
    iget-boolean p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->sentLogged:Z

    if-nez p1, :cond_2

    .line 256
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->sentLogged:Z

    .line 257
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->onProgress:Lkotlin/jvm/functions/Function1;

    const-string v0, "iap2 tx=0xfffb location-information"

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method private final sinceAttemptMillis()J
    .locals 4

    .line 223
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->nanoTime:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->lastAttemptNanos:J

    sub-long/2addr v0, v2

    const v2, 0xf4240

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private final start(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 226
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->startProvider()Z

    move-result v0

    iput-boolean v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->active:Z

    const/4 v1, 0x0

    .line 227
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->sentLogged:Z

    .line 228
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->noFixLogged:Z

    if-eqz v0, :cond_0

    .line 229
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->sendLatest(Lkotlin/jvm/functions/Function1;)V

    :cond_0
    return-void
.end method

.method private final startProvider()Z
    .locals 5

    .line 233
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->provider:Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 235
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;->start()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->onProgress:Lkotlin/jvm/functions/Function1;

    const-string v3, "iap2 location provider did not start"

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return v0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->provider:Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;

    const/4 v3, 0x4

    instance-of v4, v0, Ljava/lang/SecurityException;

    if-eqz v4, :cond_2

    const/4 v3, 0x2

    :cond_2
    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lcom/shilapi/xcertplay/E01GpsDiagnostic;->providerIssue(Ljava/lang/Object;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 237
    :goto_0
    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->onProgress:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "iap2 location provider start failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return v1
.end method


# virtual methods
.method public final handle(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;Lkotlin/jvm/functions/Function1;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "frame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "send"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;->getMessageId()I

    move-result v0

    const v1, 0xfffa

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    const p1, 0xfffc

    const/4 p2, 0x0

    if-eq v0, p1, :cond_0

    return p2

    .line 180
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->provider:Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shilapi/xcertplay/E01GpsDiagnostic;->request(Ljava/lang/Object;Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :goto_0
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->onProgress:Lkotlin/jvm/functions/Function1;

    const-string v0, "iap2 rx=0xfffc stop-location-information"

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->request:Lcom/shilapi/xcertplay/transport/Iap2LocationRequest;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/shilapi/xcertplay/transport/Iap2LocationRequest;->setComponents(Ljava/util/Set;)V

    .line 182
    :cond_1
    iput-boolean p2, p0, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->active:Z

    .line 183
    iput-boolean p2, p0, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->sentLogged:Z

    .line 184
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->provider:Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;->stop()V

    :cond_2
    return v2

    .line 172
    :cond_3
    sget-object v0, Lcom/shilapi/xcertplay/transport/Iap2LocationMessages;->INSTANCE:Lcom/shilapi/xcertplay/transport/Iap2LocationMessages;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/transport/Iap2LocationMessages;->requestedComponents(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Ljava/util/Set;

    move-result-object p1

    :try_start_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->provider:Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/shilapi/xcertplay/E01GpsDiagnostic;->request(Ljava/lang/Object;Ljava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    .line 173
    :goto_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->onProgress:Lkotlin/jvm/functions/Function1;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "iap2 rx=0xfffa start-location-information components="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->request:Lcom/shilapi/xcertplay/transport/Iap2LocationRequest;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/transport/Iap2LocationRequest;->setComponents(Ljava/util/Set;)V

    .line 175
    :cond_4
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->provider:Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;

    if-eqz v0, :cond_5

    invoke-interface {v0, p1}, Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;->onRequested(Ljava/util/Set;)V

    .line 176
    :cond_5
    invoke-direct {p0, p2}, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->start(Lkotlin/jvm/functions/Function1;)V

    return v2
.end method

.method public final pollTimeout(J)J
    .locals 5

    .line 218
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->active:Z

    const-wide/16 v1, 0x3e8

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->sinceAttemptMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1

    invoke-static {v1, v2, v3, v4}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    return-wide p1

    .line 219
    :cond_0
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->continueRequest:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->continued:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->provider:Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;

    if-eqz v0, :cond_1

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    :cond_1
    return-wide p1
.end method

.method public final tick(Lkotlin/jvm/functions/Function1;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "send"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->continueRequest:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->continued:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->request:Lcom/shilapi/xcertplay/transport/Iap2LocationRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/Iap2LocationRequest;->getComponents()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 199
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->active:Z

    .line 200
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->sentLogged:Z

    return-void

    .line 203
    :cond_1
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->continueRequest:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->active:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->continued:Z

    if-nez v0, :cond_4

    .line 204
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->request:Lcom/shilapi/xcertplay/transport/Iap2LocationRequest;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/Iap2LocationRequest;->getComponents()Ljava/util/Set;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_4

    const/4 v0, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->provider:Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;

    const/4 v3, 0x2

    invoke-static {p0, v2, v3}, Lcom/shilapi/xcertplay/E01GpsDiagnostic;->request(Ljava/lang/Object;Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    .line 206
    :goto_1
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->continued:Z

    .line 207
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->onProgress:Lkotlin/jvm/functions/Function1;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "iap2 location request continues from the Bluetooth link components="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->provider:Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;

    if-eqz v0, :cond_3

    invoke-interface {v0, v1}, Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;->onRequested(Ljava/util/Set;)V

    .line 209
    :cond_3
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->start(Lkotlin/jvm/functions/Function1;)V

    return-void

    .line 213
    :cond_4
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->active:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->sinceAttemptMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_5

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2LocationReporter;->sendLatest(Lkotlin/jvm/functions/Function1;)V

    :cond_5
    return-void
.end method
