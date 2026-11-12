.class public final Lcom/shilapi/xcertplay/hud/BydAdbShell;
.super Ljava/lang/Object;
.source "BydAdbShell.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/hud/BydAdbShell$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBydAdbShell.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BydAdbShell.kt\ncom/shilapi/xcertplay/hud/BydAdbShell\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,63:1\n1#2:64\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0018\u0010\u000c\u001a\u0004\u0018\u00010\u00032\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0003J\u0006\u0010\u0010\u001a\u00020\u0011R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/hud/BydAdbShell;",
        "",
        "tag",
        "",
        "<init>",
        "(Ljava/lang/String;)V",
        "adb",
        "Lcom/shilapi/xcertplay/adb/LocalAdb;",
        "retryAtMillis",
        "",
        "unavailableLogged",
        "",
        "run",
        "context",
        "Landroid/content/Context;",
        "command",
        "close",
        "",
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
.field private static final Companion:Lcom/shilapi/xcertplay/hud/BydAdbShell$Companion;

.field public static final RETRY_MILLIS:J = 0x7530L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private adb:Lcom/shilapi/xcertplay/adb/LocalAdb;

.field private retryAtMillis:J

.field private final tag:Ljava/lang/String;

.field private unavailableLogged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/hud/BydAdbShell$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/hud/BydAdbShell$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/hud/BydAdbShell;->Companion:Lcom/shilapi/xcertplay/hud/BydAdbShell$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/hud/BydAdbShell;->tag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final declared-synchronized close()V
    .locals 1

    monitor-enter p0

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/hud/BydAdbShell;->adb:Lcom/shilapi/xcertplay/adb/LocalAdb;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/adb/LocalAdb;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/shilapi/xcertplay/hud/BydAdbShell;->adb:Lcom/shilapi/xcertplay/adb/LocalAdb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
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

.method public final declared-synchronized run(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const-string v0, "ADB access "

    monitor-enter p0

    :try_start_0
    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "command"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 21
    iget-wide v3, p0, Lcom/shilapi/xcertplay/hud/BydAdbShell;->retryAtMillis:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-gez v6, :cond_0

    monitor-exit p0

    return-object v5

    .line 22
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/shilapi/xcertplay/hud/BydAdbShell;->adb:Lcom/shilapi/xcertplay/adb/LocalAdb;

    if-nez v3, :cond_1

    new-instance v6, Lcom/shilapi/xcertplay/adb/LocalAdb;

    sget-object v3, Lcom/shilapi/xcertplay/adb/AdbKeys;->INSTANCE:Lcom/shilapi/xcertplay/adb/AdbKeys;

    invoke-virtual {v3, p1}, Lcom/shilapi/xcertplay/adb/AdbKeys;->load(Landroid/content/Context;)Ljava/security/KeyPair;

    move-result-object v7

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v6 .. v11}, Lcom/shilapi/xcertplay/adb/LocalAdb;-><init>(Ljava/security/KeyPair;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v6, p0, Lcom/shilapi/xcertplay/hud/BydAdbShell;->adb:Lcom/shilapi/xcertplay/adb/LocalAdb;

    move-object v3, v6

    :cond_1
    const/4 p1, 0x0

    .line 23
    invoke-virtual {v3, p1}, Lcom/shilapi/xcertplay/adb/LocalAdb;->connect(Z)Lcom/shilapi/xcertplay/adb/LocalAdb$Access;

    move-result-object v4

    .line 24
    sget-object v6, Lcom/shilapi/xcertplay/adb/LocalAdb$Access;->READY:Lcom/shilapi/xcertplay/adb/LocalAdb$Access;

    if-eq v4, v6, :cond_3

    const-wide/16 p1, 0x7530

    add-long/2addr v1, p1

    .line 25
    iput-wide v1, p0, Lcom/shilapi/xcertplay/hud/BydAdbShell;->retryAtMillis:J

    .line 26
    iget-boolean p1, p0, Lcom/shilapi/xcertplay/hud/BydAdbShell;->unavailableLogged:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/hud/BydAdbShell;->unavailableLogged:Z

    .line 28
    iget-object p1, p0, Lcom/shilapi/xcertplay/hud/BydAdbShell;->tag:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    :cond_2
    monitor-exit p0

    return-object v5

    .line 32
    :cond_3
    :try_start_2
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/hud/BydAdbShell;->unavailableLogged:Z

    .line 33
    invoke-virtual {v3, p2}, Lcom/shilapi/xcertplay/adb/LocalAdb;->shell(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method
