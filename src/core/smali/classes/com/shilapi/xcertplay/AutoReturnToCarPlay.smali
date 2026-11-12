.class public final Lcom/shilapi/xcertplay/AutoReturnToCarPlay;
.super Ljava/lang/Object;
.source "AutoReturnToCarPlay.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/AutoReturnToCarPlay$Companion;,
        Lcom/shilapi/xcertplay/AutoReturnToCarPlay$Pause;,
        Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAutoReturnToCarPlay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AutoReturnToCarPlay.kt\ncom/shilapi/xcertplay/AutoReturnToCarPlay\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,85:1\n1#2:86\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000 \u00182\u00020\u0001:\u0003\u0016\u0017\u0018B\u0011\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0003J\u0006\u0010\u000f\u001a\u00020\rJ\u000e\u0010\u0010\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0003J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\u00032\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014J\u0006\u0010\u0015\u001a\u00020\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0007@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/AutoReturnToCarPlay;",
        "",
        "timeoutMillis",
        "",
        "<init>",
        "(J)V",
        "value",
        "",
        "armed",
        "getArmed",
        "()Z",
        "idleSince",
        "arm",
        "",
        "now",
        "disarm",
        "touched",
        "tick",
        "Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State;",
        "pause",
        "Lcom/shilapi/xcertplay/AutoReturnToCarPlay$Pause;",
        "attention",
        "Pause",
        "State",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/shilapi/xcertplay/AutoReturnToCarPlay$Companion;

.field public static final TIMEOUT_MILLIS:J = 0x7530L

.field private static final shared:Lcom/shilapi/xcertplay/AutoReturnToCarPlay;


# instance fields
.field private volatile armed:Z

.field private idleSince:J

.field private final timeoutMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/shilapi/xcertplay/AutoReturnToCarPlay$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/AutoReturnToCarPlay$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/AutoReturnToCarPlay;->Companion:Lcom/shilapi/xcertplay/AutoReturnToCarPlay$Companion;

    .line 59
    new-instance v0, Lcom/shilapi/xcertplay/AutoReturnToCarPlay;

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/shilapi/xcertplay/AutoReturnToCarPlay;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/AutoReturnToCarPlay;->shared:Lcom/shilapi/xcertplay/AutoReturnToCarPlay;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/shilapi/xcertplay/AutoReturnToCarPlay;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/shilapi/xcertplay/AutoReturnToCarPlay;->timeoutMillis:J

    return-void
.end method

.method public synthetic constructor <init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-wide/16 p1, 0x7530

    .line 16
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/AutoReturnToCarPlay;-><init>(J)V

    return-void
.end method

.method public static final synthetic access$getShared$cp()Lcom/shilapi/xcertplay/AutoReturnToCarPlay;
    .locals 1

    .line 16
    sget-object v0, Lcom/shilapi/xcertplay/AutoReturnToCarPlay;->shared:Lcom/shilapi/xcertplay/AutoReturnToCarPlay;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized arm(J)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 33
    :try_start_0
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/AutoReturnToCarPlay;->armed:Z

    iput-wide p1, p0, Lcom/shilapi/xcertplay/AutoReturnToCarPlay;->idleSince:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized attention()Z
    .locals 2

    monitor-enter p0

    .line 53
    :try_start_0
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/AutoReturnToCarPlay;->armed:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/shilapi/xcertplay/AutoReturnToCarPlay;->armed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized disarm()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 36
    :try_start_0
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/AutoReturnToCarPlay;->armed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getArmed()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/AutoReturnToCarPlay;->armed:Z

    return v0
.end method

.method public final declared-synchronized tick(JLcom/shilapi/xcertplay/AutoReturnToCarPlay$Pause;)Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State;
    .locals 4

    monitor-enter p0

    .line 42
    :try_start_0
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/AutoReturnToCarPlay;->armed:Z

    if-nez v0, :cond_0

    sget-object p1, Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State$Off;->INSTANCE:Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State$Off;

    check-cast p1, Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    if-eqz p3, :cond_1

    .line 43
    :try_start_1
    iput-wide p1, p0, Lcom/shilapi/xcertplay/AutoReturnToCarPlay;->idleSince:J

    new-instance p1, Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State$Paused;

    invoke-direct {p1, p3}, Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State$Paused;-><init>(Lcom/shilapi/xcertplay/AutoReturnToCarPlay$Pause;)V

    check-cast p1, Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 44
    :cond_1
    :try_start_2
    iget-wide v0, p0, Lcom/shilapi/xcertplay/AutoReturnToCarPlay;->timeoutMillis:J

    iget-wide v2, p0, Lcom/shilapi/xcertplay/AutoReturnToCarPlay;->idleSince:J

    sub-long/2addr p1, v2

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x0

    cmp-long p3, v0, p1

    if-gtz p3, :cond_2

    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/AutoReturnToCarPlay;->armed:Z

    sget-object p1, Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State$ReturnNow;->INSTANCE:Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State$ReturnNow;

    check-cast p1, Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 46
    :cond_2
    :try_start_3
    new-instance p1, Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State$Counting;

    const/16 p2, 0x3e7

    int-to-long p2, p2

    add-long/2addr v0, p2

    const/16 p2, 0x3e8

    int-to-long p2, p2

    div-long/2addr v0, p2

    long-to-int p2, v0

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State$Counting;-><init>(I)V

    check-cast p1, Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final declared-synchronized touched(J)V
    .locals 0

    monitor-enter p0

    .line 39
    :try_start_0
    iput-wide p1, p0, Lcom/shilapi/xcertplay/AutoReturnToCarPlay;->idleSince:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
