.class public final Lcom/shilapi/xcertplay/SessionLogFile;
.super Ljava/lang/Object;
.source "SessionLogFile.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/SessionLogFile$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSessionLogFile.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SessionLogFile.kt\ncom/shilapi/xcertplay/SessionLogFile\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,49:1\n1#2:50\n1563#3:51\n1634#3,3:52\n*S KotlinDebug\n*F\n+ 1 SessionLogFile.kt\ncom/shilapi/xcertplay/SessionLogFile\n*L\n43#1:51\n43#1:52,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0000\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u000fJ\u0008\u0010\u0012\u001a\u00020\rH\u0002J\u0008\u0010\u0013\u001a\u00020\rH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/SessionLogFile;",
        "Ljava/io/Closeable;",
        "file",
        "Ljava/io/File;",
        "<init>",
        "(Ljava/io/File;)V",
        "getFile",
        "()Ljava/io/File;",
        "lock",
        "",
        "closed",
        "",
        "reset",
        "",
        "header",
        "",
        "append",
        "line",
        "rotate",
        "close",
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
.field private static final ARCHIVE_NAMES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CURRENT:Ljava/lang/String; = "06link.log"

.field public static final Companion:Lcom/shilapi/xcertplay/SessionLogFile$Companion;

.field public static final MAX_BYTES:J = 0x80000L

.field private static final REPORT_NAMES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private closed:Z

.field private final file:Ljava/io/File;

.field private final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/shilapi/xcertplay/SessionLogFile$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/SessionLogFile$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/SessionLogFile;->Companion:Lcom/shilapi/xcertplay/SessionLogFile$Companion;

    .line 43
    const-string v0, "previous.log"

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/SessionLogFile;->ARCHIVE_NAMES:Ljava/util/List;

    .line 46
    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    const-string v1, "06link.log"

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/SessionLogFile;->REPORT_NAMES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/SessionLogFile;->file:Ljava/io/File;

    .line 8
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/SessionLogFile;->lock:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$getREPORT_NAMES$cp()Ljava/util/List;
    .locals 1

    .line 7
    sget-object v0, Lcom/shilapi/xcertplay/SessionLogFile;->REPORT_NAMES:Ljava/util/List;

    return-object v0
.end method

.method private final rotate()V
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/SessionLogFile;->file:Ljava/io/File;

    invoke-static {v0}, Lcom/shilapi/xcertplay/E01LogPolicy;->rotate(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public final append(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/shilapi/xcertplay/SessionLogFile;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/SessionLogFile;->closed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/shilapi/xcertplay/SessionLogFile;->file:Ljava/io/File;

    invoke-static {v1, p1}, Lcom/shilapi/xcertplay/E01LogPolicy;->session(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public close()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/shilapi/xcertplay/SessionLogFile;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/SessionLogFile;->closed:Z

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

.method public final getFile()Ljava/io/File;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/shilapi/xcertplay/SessionLogFile;->file:Ljava/io/File;

    return-object v0
.end method

.method public final reset(Ljava/lang/String;)V
    .locals 2

    const-string v0, "header"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shilapi/xcertplay/SessionLogFile;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/SessionLogFile;->closed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/shilapi/xcertplay/SessionLogFile;->file:Ljava/io/File;

    invoke-static {v1, p1}, Lcom/shilapi/xcertplay/E01LogPolicy;->startSession(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
