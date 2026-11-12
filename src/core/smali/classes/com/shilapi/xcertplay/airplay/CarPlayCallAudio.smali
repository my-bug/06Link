.class public final Lcom/shilapi/xcertplay/airplay/CarPlayCallAudio;
.super Ljava/lang/Object;
.source "CarPlayPhoneButton.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCarPlayPhoneButton.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CarPlayPhoneButton.kt\ncom/shilapi/xcertplay/airplay/CarPlayCallAudio\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,43:1\n1#2:44\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0008J\u0006\u0010\u000f\u001a\u00020\u000cR\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/CarPlayCallAudio;",
        "",
        "<init>",
        "()V",
        "streams",
        "",
        "Lcom/shilapi/xcertplay/airplay/AudioStreamId;",
        "running",
        "",
        "getRunning",
        "()Z",
        "update",
        "",
        "id",
        "active",
        "clear",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/airplay/CarPlayCallAudio;

.field private static final streams:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/shilapi/xcertplay/airplay/AudioStreamId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/airplay/CarPlayCallAudio;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/airplay/CarPlayCallAudio;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/airplay/CarPlayCallAudio;->INSTANCE:Lcom/shilapi/xcertplay/airplay/CarPlayCallAudio;

    .line 30
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    sput-object v0, Lcom/shilapi/xcertplay/airplay/CarPlayCallAudio;->streams:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 2

    .line 40
    sget-object v0, Lcom/shilapi/xcertplay/airplay/CarPlayCallAudio;->streams:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final getRunning()Z
    .locals 2

    .line 33
    sget-object v0, Lcom/shilapi/xcertplay/airplay/CarPlayCallAudio;->streams:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v1, v1, 0x1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final update(Lcom/shilapi/xcertplay/airplay/AudioStreamId;Z)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sget-object v0, Lcom/shilapi/xcertplay/airplay/CarPlayCallAudio;->streams:Ljava/util/Set;

    monitor-enter v0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
