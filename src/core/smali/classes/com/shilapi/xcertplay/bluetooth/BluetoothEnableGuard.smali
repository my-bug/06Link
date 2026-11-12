.class public final Lcom/shilapi/xcertplay/bluetooth/BluetoothEnableGuard;
.super Ljava/lang/Object;
.source "BluetoothEnableGuard.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBluetoothEnableGuard.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BluetoothEnableGuard.kt\ncom/shilapi/xcertplay/bluetooth/BluetoothEnableGuard\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,79:1\n1#2:80\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0007J\u0016\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\rJ$\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\r2\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0016J\u000e\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0007J\u0006\u0010\u0018\u001a\u00020\u000fJ\u000e\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0007J\u0006\u0010\u001a\u001a\u00020\rJ\u0010\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0007H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/bluetooth/BluetoothEnableGuard;",
        "",
        "<init>",
        "()V",
        "MAX_ENABLE_ATTEMPTS",
        "",
        "WINDOW_MS",
        "",
        "COOLDOWN_MS",
        "windowStartMs",
        "attemptsInWindow",
        "brokenUntilMs",
        "announced",
        "",
        "resetForTest",
        "",
        "isBroken",
        "nowMs",
        "mayRequestEnable",
        "adapterEnabled",
        "requestEnable",
        "enable",
        "Lkotlin/Function0;",
        "noteEnableRequested",
        "noteStayedOn",
        "noteDidNotStayOn",
        "takeAnnounce",
        "rollWindow",
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
.field public static final COOLDOWN_MS:J = 0x1d4c0L

.field public static final INSTANCE:Lcom/shilapi/xcertplay/bluetooth/BluetoothEnableGuard;

.field public static final MAX_ENABLE_ATTEMPTS:I = 0x2

.field public static final WINDOW_MS:J = 0x7530L

.field private static volatile announced:Z

.field private static volatile attemptsInWindow:I

.field private static volatile brokenUntilMs:J

.field private static volatile windowStartMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/bluetooth/BluetoothEnableGuard;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/bluetooth/BluetoothEnableGuard;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/bluetooth/BluetoothEnableGuard;->INSTANCE:Lcom/shilapi/xcertplay/bluetooth/BluetoothEnableGuard;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final rollWindow(J)V
    .locals 5

    .line 73
    sget-wide v0, Lcom/shilapi/xcertplay/bluetooth/BluetoothEnableGuard;->windowStartMs:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x7530

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 74
    sput-wide p1, Lcom/shilapi/xcertplay/bluetooth/BluetoothEnableGuard;->windowStartMs:J

    const/4 p1, 0x0

    .line 75
    sput p1, Lcom/shilapi/xcertplay/bluetooth/BluetoothEnableGuard;->attemptsInWindow:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final isBroken(J)Z
    .locals 3

    .line 28
    sget-wide v0, Lcom/shilapi/xcertplay/bluetooth/BluetoothEnableGuard;->brokenUntilMs:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final mayRequestEnable(JZ)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    return v0

    .line 32
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/bluetooth/BluetoothEnableGuard;->isBroken(J)Z

    move-result p3

    if-eqz p3, :cond_1

    return v0

    .line 33
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/bluetooth/BluetoothEnableGuard;->rollWindow(J)V

    .line 34
    sget p1, Lcom/shilapi/xcertplay/bluetooth/BluetoothEnableGuard;->attemptsInWindow:I

    const/4 p2, 0x2

    if-ge p1, p2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public final noteDidNotStayOn(J)V
    .locals 2

    const-wide/32 v0, 0x1d4c0

    add-long/2addr p1, v0

    .line 62
    sput-wide p1, Lcom/shilapi/xcertplay/bluetooth/BluetoothEnableGuard;->brokenUntilMs:J

    return-void
.end method

.method public final noteEnableRequested(J)V
    .locals 2

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/bluetooth/BluetoothEnableGuard;->rollWindow(J)V

    .line 50
    sget v0, Lcom/shilapi/xcertplay/bluetooth/BluetoothEnableGuard;->attemptsInWindow:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/shilapi/xcertplay/bluetooth/BluetoothEnableGuard;->attemptsInWindow:I

    .line 51
    sget v0, Lcom/shilapi/xcertplay/bluetooth/BluetoothEnableGuard;->attemptsInWindow:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const-wide/32 v0, 0x1d4c0

    add-long/2addr p1, v0

    sput-wide p1, Lcom/shilapi/xcertplay/bluetooth/BluetoothEnableGuard;->brokenUntilMs:J

    :cond_0
    return-void
.end method

.method public final noteStayedOn()V
    .locals 3

    const/4 v0, 0x0

    .line 55
    sput v0, Lcom/shilapi/xcertplay/bluetooth/BluetoothEnableGuard;->attemptsInWindow:I

    const-wide/16 v1, 0x0

    .line 56
    sput-wide v1, Lcom/shilapi/xcertplay/bluetooth/BluetoothEnableGuard;->brokenUntilMs:J

    .line 57
    sput-boolean v0, Lcom/shilapi/xcertplay/bluetooth/BluetoothEnableGuard;->announced:Z

    return-void
.end method

.method public final requestEnable(JZLkotlin/jvm/functions/Function0;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "enable"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/bluetooth/BluetoothEnableGuard;->mayRequestEnable(JZ)Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 43
    :cond_0
    :try_start_0
    sget-object p3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object p3, p0

    check-cast p3, Lcom/shilapi/xcertplay/bluetooth/BluetoothEnableGuard;

    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {p3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p3

    sget-object p4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p3}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-static {p3}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p3, p4

    :cond_1
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/bluetooth/BluetoothEnableGuard;->noteEnableRequested(J)V

    :cond_2
    return p3
.end method

.method public final resetForTest()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 22
    sput-wide v0, Lcom/shilapi/xcertplay/bluetooth/BluetoothEnableGuard;->windowStartMs:J

    const/4 v2, 0x0

    .line 23
    sput v2, Lcom/shilapi/xcertplay/bluetooth/BluetoothEnableGuard;->attemptsInWindow:I

    .line 24
    sput-wide v0, Lcom/shilapi/xcertplay/bluetooth/BluetoothEnableGuard;->brokenUntilMs:J

    .line 25
    sput-boolean v2, Lcom/shilapi/xcertplay/bluetooth/BluetoothEnableGuard;->announced:Z

    return-void
.end method

.method public final takeAnnounce()Z
    .locals 1

    .line 67
    sget-boolean v0, Lcom/shilapi/xcertplay/bluetooth/BluetoothEnableGuard;->announced:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 68
    sput-boolean v0, Lcom/shilapi/xcertplay/bluetooth/BluetoothEnableGuard;->announced:Z

    return v0
.end method
