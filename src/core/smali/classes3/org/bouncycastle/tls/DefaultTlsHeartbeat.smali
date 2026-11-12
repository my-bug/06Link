.class public Lorg/bouncycastle/tls/DefaultTlsHeartbeat;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/TlsHeartbeat;


# instance fields
.field private counter:I

.field private final idleMillis:I

.field private final timeoutMillis:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/tls/DefaultTlsHeartbeat;->counter:I

    if-lez p1, :cond_1

    if-lez p2, :cond_0

    iput p1, p0, Lorg/bouncycastle/tls/DefaultTlsHeartbeat;->idleMillis:I

    iput p2, p0, Lorg/bouncycastle/tls/DefaultTlsHeartbeat;->timeoutMillis:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'timeoutMillis\' must be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'idleMillis\' must be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public declared-synchronized generatePayload()[B
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/bouncycastle/tls/DefaultTlsHeartbeat;->counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/tls/DefaultTlsHeartbeat;->counter:I

    invoke-static {v0}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getIdleMillis()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/tls/DefaultTlsHeartbeat;->idleMillis:I

    return v0
.end method

.method public getTimeoutMillis()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/tls/DefaultTlsHeartbeat;->timeoutMillis:I

    return v0
.end method
