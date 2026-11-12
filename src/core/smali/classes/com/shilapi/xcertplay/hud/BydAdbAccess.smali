.class public final Lcom/shilapi/xcertplay/hud/BydAdbAccess;
.super Ljava/lang/Object;
.source "BydAdbAccess.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/hud/BydAdbAccess$State;,
        Lcom/shilapi/xcertplay/hud/BydAdbAccess$Status;,
        Lcom/shilapi/xcertplay/hud/BydAdbAccess$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBydAdbAccess.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BydAdbAccess.kt\ncom/shilapi/xcertplay/hud/BydAdbAccess\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,41:1\n1#2:42\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\u000f\u0010B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tJ+\u0010\n\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0014\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000cH\u0000\u00a2\u0006\u0002\u0008\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/hud/BydAdbAccess;",
        "",
        "<init>",
        "()V",
        "check",
        "Lcom/shilapi/xcertplay/hud/BydAdbAccess$Status;",
        "context",
        "Landroid/content/Context;",
        "mayAsk",
        "",
        "readStatus",
        "shell",
        "Lkotlin/Function1;",
        "",
        "readStatus$shared_release",
        "State",
        "Status",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/hud/BydAdbAccess;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/hud/BydAdbAccess;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/hud/BydAdbAccess;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/hud/BydAdbAccess;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydAdbAccess;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final check(Landroid/content/Context;Z)Lcom/shilapi/xcertplay/hud/BydAdbAccess$Status;
    .locals 11

    .line 21
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/shilapi/xcertplay/adb/LocalAdb;

    sget-object v0, Lcom/shilapi/xcertplay/adb/AdbKeys;->INSTANCE:Lcom/shilapi/xcertplay/adb/AdbKeys;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/adb/AdbKeys;->load(Landroid/content/Context;)Ljava/security/KeyPair;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/shilapi/xcertplay/adb/LocalAdb;-><init>(Ljava/security/KeyPair;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Ljava/io/Closeable;

    :try_start_0
    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/adb/LocalAdb;

    .line 22
    invoke-virtual {v0, p2}, Lcom/shilapi/xcertplay/adb/LocalAdb;->connect(Z)Lcom/shilapi/xcertplay/adb/LocalAdb$Access;

    move-result-object p2

    sget-object v2, Lcom/shilapi/xcertplay/hud/BydAdbAccess$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/adb/LocalAdb$Access;->ordinal()I

    move-result p2

    aget p2, v2, p2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_3

    const/4 v2, 0x2

    if-eq p2, v2, :cond_2

    const/4 v2, 0x3

    if-eq p2, v2, :cond_1

    const/4 v2, 0x4

    if-ne p2, v2, :cond_0

    .line 26
    sget-object p2, Lcom/shilapi/xcertplay/hud/BydAdbAccess$State;->PAIRING_ONLY:Lcom/shilapi/xcertplay/hud/BydAdbAccess$State;

    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 25
    :cond_1
    sget-object p2, Lcom/shilapi/xcertplay/hud/BydAdbAccess$State;->ADB_OFF:Lcom/shilapi/xcertplay/hud/BydAdbAccess$State;

    goto :goto_0

    .line 24
    :cond_2
    sget-object p2, Lcom/shilapi/xcertplay/hud/BydAdbAccess$State;->NOT_APPROVED:Lcom/shilapi/xcertplay/hud/BydAdbAccess$State;

    goto :goto_0

    .line 23
    :cond_3
    sget-object p2, Lcom/shilapi/xcertplay/hud/BydAdbAccess$State;->READY:Lcom/shilapi/xcertplay/hud/BydAdbAccess$State;

    :goto_0
    move-object v3, p2

    .line 28
    sget-object p2, Lcom/shilapi/xcertplay/hud/BydAdbAccess$State;->READY:Lcom/shilapi/xcertplay/hud/BydAdbAccess$State;

    const/4 v10, 0x0

    if-eq v3, p2, :cond_4

    new-instance v2, Lcom/shilapi/xcertplay/hud/BydAdbAccess$Status;

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/shilapi/xcertplay/hud/BydAdbAccess$Status;-><init>(Lcom/shilapi/xcertplay/hud/BydAdbAccess$State;Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;ZLjava/lang/Double;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v2

    .line 29
    :cond_4
    :try_start_1
    sget-object p2, Lcom/shilapi/xcertplay/hud/BydAdbAccess;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydAdbAccess;

    new-instance v2, Lcom/shilapi/xcertplay/hud/BydAdbAccess$check$1$1;

    invoke-direct {v2, v0}, Lcom/shilapi/xcertplay/hud/BydAdbAccess$check$1$1;-><init>(Ljava/lang/Object;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p2, p1, v2}, Lcom/shilapi/xcertplay/hud/BydAdbAccess;->readStatus$shared_release(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/hud/BydAdbAccess$Status;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object p2, v0

    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final readStatus$shared_release(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/hud/BydAdbAccess$Status;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/shilapi/xcertplay/hud/BydAdbAccess$Status;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "shell"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;->Companion:Lcom/shilapi/xcertplay/hud/BydClusterNaviMode$Companion;

    const-string v1, "service call autoservice 5 i32 1007 i32 1086337074"

    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode$Companion;->parseRead(Ljava/lang/String;)Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;

    move-result-object v4

    .line 36
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydBattery;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydBattery;

    invoke-virtual {v0, p2}, Lcom/shilapi/xcertplay/hud/BydBattery;->read(Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/hud/BydBatteryReading;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 37
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydBatteryStatus;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydBatteryStatus;

    invoke-virtual {v0, p1, p2}, Lcom/shilapi/xcertplay/hud/BydBatteryStatus;->accept(Landroid/content/Context;Lcom/shilapi/xcertplay/hud/BydBatteryReading;)V

    .line 38
    :cond_0
    new-instance v2, Lcom/shilapi/xcertplay/hud/BydAdbAccess$Status;

    sget-object v3, Lcom/shilapi/xcertplay/hud/BydAdbAccess$State;->READY:Lcom/shilapi/xcertplay/hud/BydAdbAccess$State;

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;->getShowsMap()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    xor-int/lit8 v5, v0, 0x1

    const/4 p1, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/hud/BydBatteryReading;->getPercent()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    :cond_2
    move-object v6, p1

    :goto_0
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/hud/BydBatteryReading;->getRangeKm()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_3
    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/shilapi/xcertplay/hud/BydAdbAccess$Status;-><init>(Lcom/shilapi/xcertplay/hud/BydAdbAccess$State;Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;ZLjava/lang/Double;Ljava/lang/Integer;)V

    return-object v2
.end method
