.class public final Lcom/shilapi/xcertplay/airplay/PeerHeartbeat;
.super Ljava/lang/Object;
.source "PeerHeartbeat.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/airplay/PeerHeartbeat$Change;,
        Lcom/shilapi/xcertplay/airplay/PeerHeartbeat$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 \u00152\u00020\u0001:\u0002\u0014\u0015B)\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000bJ\u0006\u0010\u0011\u001a\u00020\u0003J\u0006\u0010\u0012\u001a\u00020\u0013R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/PeerHeartbeat;",
        "",
        "warnAfterMs",
        "",
        "loseAfterMs",
        "now",
        "Lkotlin/Function0;",
        "<init>",
        "(JJLkotlin/jvm/functions/Function0;)V",
        "lastBeatMs",
        "armed",
        "",
        "warned",
        "lost",
        "beat",
        "",
        "arms",
        "silentMs",
        "check",
        "Lcom/shilapi/xcertplay/airplay/PeerHeartbeat$Change;",
        "Change",
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
.field public static final CHECK_INTERVAL_MS:J = 0xfaL

.field public static final Companion:Lcom/shilapi/xcertplay/airplay/PeerHeartbeat$Companion;

.field public static final LOSE_AFTER_MS:J = 0x1770L

.field public static final WARN_AFTER_MS:J = 0xbb8L

.field private static volatile testSilenceUntilMs:J


# instance fields
.field private volatile armed:Z

.field private volatile lastBeatMs:J

.field private final loseAfterMs:J

.field private lost:Z

.field private final now:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final warnAfterMs:J

.field private warned:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/airplay/PeerHeartbeat$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/airplay/PeerHeartbeat$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/airplay/PeerHeartbeat;->Companion:Lcom/shilapi/xcertplay/airplay/PeerHeartbeat$Companion;

    return-void
.end method

.method public constructor <init>(JJLkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "now"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide p1, p0, Lcom/shilapi/xcertplay/airplay/PeerHeartbeat;->warnAfterMs:J

    .line 16
    iput-wide p3, p0, Lcom/shilapi/xcertplay/airplay/PeerHeartbeat;->loseAfterMs:J

    .line 17
    iput-object p5, p0, Lcom/shilapi/xcertplay/airplay/PeerHeartbeat;->now:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(JJLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    const-wide/16 p1, 0xbb8

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    const-wide/16 p3, 0x1770

    :cond_1
    move-object v0, p0

    move-wide v3, p3

    move-object v5, p5

    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/airplay/PeerHeartbeat;-><init>(JJLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic access$getTestSilenceUntilMs$cp()J
    .locals 2

    .line 14
    sget-wide v0, Lcom/shilapi/xcertplay/airplay/PeerHeartbeat;->testSilenceUntilMs:J

    return-wide v0
.end method

.method public static final synthetic access$setTestSilenceUntilMs$cp(J)V
    .locals 0

    .line 14
    sput-wide p0, Lcom/shilapi/xcertplay/airplay/PeerHeartbeat;->testSilenceUntilMs:J

    return-void
.end method


# virtual methods
.method public final beat(Z)V
    .locals 4

    .line 28
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/airplay/PeerHeartbeat;->armed:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    iget-object p1, p0, Lcom/shilapi/xcertplay/airplay/PeerHeartbeat;->now:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 30
    sget-wide v2, Lcom/shilapi/xcertplay/airplay/PeerHeartbeat;->testSilenceUntilMs:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    :goto_0
    return-void

    .line 31
    :cond_1
    iput-wide v0, p0, Lcom/shilapi/xcertplay/airplay/PeerHeartbeat;->lastBeatMs:J

    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/airplay/PeerHeartbeat;->armed:Z

    return-void
.end method

.method public final declared-synchronized check()Lcom/shilapi/xcertplay/airplay/PeerHeartbeat$Change;
    .locals 6

    monitor-enter p0

    .line 41
    :try_start_0
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/airplay/PeerHeartbeat;->armed:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/airplay/PeerHeartbeat;->lost:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/airplay/PeerHeartbeat;->silentMs()J

    move-result-wide v0

    .line 44
    iget-wide v2, p0, Lcom/shilapi/xcertplay/airplay/PeerHeartbeat;->loseAfterMs:J

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-ltz v5, :cond_1

    iput-boolean v4, p0, Lcom/shilapi/xcertplay/airplay/PeerHeartbeat;->lost:Z

    sget-object v0, Lcom/shilapi/xcertplay/airplay/PeerHeartbeat$Change;->LOST:Lcom/shilapi/xcertplay/airplay/PeerHeartbeat$Change;

    goto :goto_0

    .line 45
    :cond_1
    iget-wide v2, p0, Lcom/shilapi/xcertplay/airplay/PeerHeartbeat;->warnAfterMs:J

    cmp-long v5, v0, v2

    if-ltz v5, :cond_2

    iget-boolean v5, p0, Lcom/shilapi/xcertplay/airplay/PeerHeartbeat;->warned:Z

    if-nez v5, :cond_2

    iput-boolean v4, p0, Lcom/shilapi/xcertplay/airplay/PeerHeartbeat;->warned:Z

    sget-object v0, Lcom/shilapi/xcertplay/airplay/PeerHeartbeat$Change;->WARN:Lcom/shilapi/xcertplay/airplay/PeerHeartbeat$Change;

    goto :goto_0

    :cond_2
    cmp-long v4, v0, v2

    if-gez v4, :cond_3

    .line 46
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/airplay/PeerHeartbeat;->warned:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shilapi/xcertplay/airplay/PeerHeartbeat;->warned:Z

    sget-object v0, Lcom/shilapi/xcertplay/airplay/PeerHeartbeat$Change;->RECOVER:Lcom/shilapi/xcertplay/airplay/PeerHeartbeat$Change;

    goto :goto_0

    .line 47
    :cond_3
    sget-object v0, Lcom/shilapi/xcertplay/airplay/PeerHeartbeat$Change;->NONE:Lcom/shilapi/xcertplay/airplay/PeerHeartbeat$Change;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :goto_0
    monitor-exit p0

    return-object v0

    .line 41
    :cond_4
    :goto_1
    :try_start_1
    sget-object v0, Lcom/shilapi/xcertplay/airplay/PeerHeartbeat$Change;->NONE:Lcom/shilapi/xcertplay/airplay/PeerHeartbeat$Change;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final silentMs()J
    .locals 7

    .line 36
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/airplay/PeerHeartbeat;->armed:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/PeerHeartbeat;->now:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/shilapi/xcertplay/airplay/PeerHeartbeat;->lastBeatMs:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4, v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    return-wide v1
.end method
