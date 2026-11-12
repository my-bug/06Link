.class public final Lcom/shilapi/xcertplay/orchestration/WiredUsbPromptPolicy;
.super Ljava/lang/Object;
.source "WiredUsbPromptPolicy.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u0005J\u0010\u0010\u0010\u001a\u00020\u000c2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012J\u001e\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0007J \u0010\u0017\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0007J\u001e\u0010\u0019\u001a\u00020\u000c2\u0006\u0010\u001a\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/orchestration/WiredUsbPromptPolicy;",
        "",
        "<init>",
        "()V",
        "MAX_AUTO_RECONNECTS",
        "",
        "GRANT_GRACE_MILLIS",
        "",
        "GRANT_POLL_MILLIS",
        "FOREGROUND_DELAY_MILLIS",
        "REASK_AFTER_MILLIS",
        "stopAutoReconnect",
        "",
        "wireless",
        "tunnelReconnect",
        "attempts",
        "iphoneNotInCarPlayMode",
        "failureMessage",
        "",
        "promptOutstanding",
        "sinceNanos",
        "nowNanos",
        "timeoutMillis",
        "mayReask",
        "reaskAfterMillis",
        "inGrantGrace",
        "hasPermission",
        "graceDeadlineNanos",
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
.field public static final FOREGROUND_DELAY_MILLIS:J = 0x190L

.field public static final GRANT_GRACE_MILLIS:J = 0x7d0L

.field public static final GRANT_POLL_MILLIS:J = 0xc8L

.field public static final INSTANCE:Lcom/shilapi/xcertplay/orchestration/WiredUsbPromptPolicy;

.field public static final MAX_AUTO_RECONNECTS:I = 0x3

.field public static final REASK_AFTER_MILLIS:J = 0xfa0L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/orchestration/WiredUsbPromptPolicy;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/orchestration/WiredUsbPromptPolicy;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/orchestration/WiredUsbPromptPolicy;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/WiredUsbPromptPolicy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic mayReask$default(Lcom/shilapi/xcertplay/orchestration/WiredUsbPromptPolicy;JJJILjava/lang/Object;)Z
    .locals 7

    and-int/lit8 p7, p7, 0x4

    if-eqz p7, :cond_0

    const-wide/16 p5, 0xfa0

    :cond_0
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    .line 53
    invoke-virtual/range {v0 .. v6}, Lcom/shilapi/xcertplay/orchestration/WiredUsbPromptPolicy;->mayReask(JJJ)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final inGrantGrace(ZJJ)Z
    .locals 0

    if-nez p1, :cond_0

    cmp-long p1, p2, p4

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final iphoneNotInCarPlayMode(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 41
    :cond_0
    check-cast p1, Ljava/lang/CharSequence;

    const-string v1, "did not expose a complete CarPlay USB configuration"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 42
    const-string v1, "exposes no CarPlay configuration"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {p1, v1, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v2
.end method

.method public final mayReask(JJJ)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    sub-long/2addr p3, p1

    const-wide/32 p1, 0xf4240

    mul-long p5, p5, p1

    cmp-long p1, p3, p5

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final promptOutstanding(JJJ)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    sub-long/2addr p3, p1

    const-wide/32 p1, 0xf4240

    mul-long p5, p5, p1

    cmp-long p1, p3, p5

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final stopAutoReconnect(ZZI)Z
    .locals 0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x3

    if-lt p3, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
