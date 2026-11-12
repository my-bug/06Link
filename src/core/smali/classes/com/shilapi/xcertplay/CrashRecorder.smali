.class public final Lcom/shilapi/xcertplay/CrashRecorder;
.super Ljava/lang/Object;
.source "CrashRecorder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;,
        Lcom/shilapi/xcertplay/CrashRecorder$StartedActivities;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCrashRecorder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CrashRecorder.kt\ncom/shilapi/xcertplay/CrashRecorder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,285:1\n1#2:286\n6482#3:287\n6482#3:295\n1563#4:288\n1634#4,3:289\n774#4:292\n865#4,2:293\n1869#4,2:296\n*S KotlinDebug\n*F\n+ 1 CrashRecorder.kt\ncom/shilapi/xcertplay/CrashRecorder\n*L\n80#1:287\n116#1:295\n82#1:288\n82#1:289,3\n82#1:292\n82#1:293,2\n119#1:296,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u000245B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fJ\u0014\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00190!2\u0006\u0010\u001e\u001a\u00020\u001fJ\'\u0010\"\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u00052\u0006\u0010$\u001a\u00020%2\u0008\u0008\u0002\u0010&\u001a\u00020\u000cH\u0000\u00a2\u0006\u0002\u0008\'J\'\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u000c2\u0006\u0010+\u001a\u00020\u000c2\u0008\u0008\u0002\u0010,\u001a\u00020\u000cH\u0000\u00a2\u0006\u0002\u0008-J \u0010.\u001a\u00020\u001d2\u0006\u0010/\u001a\u00020\u00192\u0006\u0010#\u001a\u0002002\u0006\u0010$\u001a\u00020%H\u0002J\u0010\u00101\u001a\u00020\u001d2\u0006\u0010/\u001a\u00020\u0019H\u0002J\u0010\u00102\u001a\u00020\u00132\u0006\u0010/\u001a\u00020\u0019H\u0002J\u0018\u00103\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010/\u001a\u00020\u0019H\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000cX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000cX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000cX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\"\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013@BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u0017\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00066"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/CrashRecorder;",
        "",
        "<init>",
        "()V",
        "DIR",
        "",
        "PREFIX",
        "STALL_FILE",
        "EXIT_INFO_FILE",
        "MAX_CRASH_FILES",
        "",
        "MAX_CRASH_BYTES",
        "",
        "STALL_MILLIS",
        "BEAT_MILLIS",
        "SLEEP_SLACK_MILLIS",
        "installed",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "value",
        "Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;",
        "watch",
        "getWatch$common_release",
        "()Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;",
        "folderRef",
        "Ljava/util/concurrent/atomic/AtomicReference;",
        "Ljava/io/File;",
        "previousHandler",
        "Ljava/lang/Thread$UncaughtExceptionHandler;",
        "install",
        "",
        "context",
        "Landroid/content/Context;",
        "reportFiles",
        "",
        "formatCrash",
        "thread",
        "error",
        "",
        "nowElapsedMs",
        "formatCrash$common_release",
        "shouldRecordStall",
        "",
        "gapMs",
        "lastWrittenAgoMs",
        "thresholdMs",
        "shouldRecordStall$common_release",
        "writeCrash",
        "folder",
        "Ljava/lang/Thread;",
        "rotateCrashes",
        "startMainWatch",
        "writeExitInfo",
        "MainStallWatch",
        "StartedActivities",
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
.field public static final BEAT_MILLIS:J = 0x1f4L

.field public static final DIR:Ljava/lang/String; = "logs"

.field public static final EXIT_INFO_FILE:Ljava/lang/String; = "last-exit-info.log"

.field public static final INSTANCE:Lcom/shilapi/xcertplay/CrashRecorder;

.field public static final MAX_CRASH_BYTES:J = 0x10000L

.field public static final MAX_CRASH_FILES:I = 0x5

.field public static final PREFIX:Ljava/lang/String; = "crash-"

.field public static final SLEEP_SLACK_MILLIS:J = 0x3e8L

.field public static final STALL_FILE:Ljava/lang/String; = "main-stall.log"

.field public static final STALL_MILLIS:J = 0x7d0L

.field private static final folderRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static final installed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static previousHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static volatile watch:Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;


# direct methods
.method public static synthetic $r8$lambda$-g6b40BrpVL0muh2zsGhN5vpRc8(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/CrashRecorder;->formatCrash$lambda$12(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$8z2UFl8MYRPsd90jwWzgNfZO2-U(Landroid/os/Handler;Ljava/lang/Runnable;J)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/CrashRecorder;->startMainWatch$lambda$18(Landroid/os/Handler;Ljava/lang/Runnable;J)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$L8uN6S68VpmgX4d-jWYyze2ZjvU(Landroid/os/Handler;Ljava/lang/Runnable;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/CrashRecorder;->startMainWatch$lambda$19(Landroid/os/Handler;Ljava/lang/Runnable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$W4M2ClVsyUSZ_8JYGQsxzvvPd_o(Ljava/io/File;)Z
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/CrashRecorder;->reportFiles$lambda$5(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_NcmD-ajlPL-g14GdCSHYUIasxM(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/CrashRecorder;->writeExitInfo$lambda$24(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ikwbSt-0tM0XcP79J3sFt5XiSsI(Ljava/io/File;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/CrashRecorder;->install$lambda$3(Ljava/io/File;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ol1m7pS__SI9PhyZLnbBscY6IPE(Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;Ljava/io/File;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/CrashRecorder;->startMainWatch$lambda$21(Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zcfPR_G-FFeVdpVxrRTuBSWegnk(Ljava/io/File;)Z
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/CrashRecorder;->rotateCrashes$lambda$15(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/CrashRecorder;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/CrashRecorder;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/CrashRecorder;->INSTANCE:Lcom/shilapi/xcertplay/CrashRecorder;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/shilapi/xcertplay/CrashRecorder;->installed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/shilapi/xcertplay/CrashRecorder;->folderRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic formatCrash$common_release$default(Lcom/shilapi/xcertplay/CrashRecorder;Ljava/lang/String;Ljava/lang/Throwable;JILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 87
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/CrashRecorder;->formatCrash$common_release(Ljava/lang/String;Ljava/lang/Throwable;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final formatCrash$lambda$12(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lcom/shilapi/xcertplay/DiagnosticRedactor;->INSTANCE:Lcom/shilapi/xcertplay/DiagnosticRedactor;

    invoke-virtual {v0, p0}, Lcom/shilapi/xcertplay/DiagnosticRedactor;->redact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static final install$lambda$3(Ljava/io/File;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .line 56
    sget-object v0, Lcom/shilapi/xcertplay/CrashRecorder;->INSTANCE:Lcom/shilapi/xcertplay/CrashRecorder;

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, p0, p1, p2}, Lcom/shilapi/xcertplay/CrashRecorder;->writeCrash(Ljava/io/File;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :goto_0
    sget-object p0, Lcom/shilapi/xcertplay/CrashRecorder;->previousHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 60
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    const/16 p0, 0xa

    .line 61
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    :goto_1
    return-void
.end method

.method private static final reportFiles$lambda$5(Ljava/io/File;)Z
    .locals 6

    .line 79
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "getName(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "crash-"

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v0, v3, v1, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ".log"

    invoke-static {p0, v0, v1, v4, v5}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method private final rotateCrashes(Ljava/io/File;)V
    .locals 1

    .line 115
    new-instance v0, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticLambda11;-><init>()V

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 295
    new-instance v0, Lcom/shilapi/xcertplay/CrashRecorder$rotateCrashes$$inlined$sortedBy$1;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/CrashRecorder$rotateCrashes$$inlined$sortedBy$1;-><init>()V

    check-cast v0, Ljava/util/Comparator;

    invoke-static {p1, v0}, Lkotlin/collections/ArraysKt;->sortedWith([Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 117
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 118
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    if-lez v0, :cond_2

    .line 119
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 296
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 119
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static final rotateCrashes$lambda$15(Ljava/io/File;)Z
    .locals 4

    .line 115
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getName(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v2, 0x0

    const-string v3, "crash-"

    invoke-static {p0, v3, v1, v0, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public static synthetic shouldRecordStall$common_release$default(Lcom/shilapi/xcertplay/CrashRecorder;JJJILjava/lang/Object;)Z
    .locals 7

    and-int/lit8 p7, p7, 0x4

    if-eqz p7, :cond_0

    const-wide/16 p5, 0x7d0

    :cond_0
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    .line 101
    invoke-virtual/range {v0 .. v6}, Lcom/shilapi/xcertplay/CrashRecorder;->shouldRecordStall$common_release(JJJ)Z

    move-result p0

    return p0
.end method

.method private final startMainWatch(Ljava/io/File;)Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;
    .locals 11

    .line 123
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 124
    new-instance v2, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;

    .line 125
    sget-object v1, Lcom/shilapi/xcertplay/CrashRecorder$startMainWatch$stallWatch$1;->INSTANCE:Lcom/shilapi/xcertplay/CrashRecorder$startMainWatch$stallWatch$1;

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 126
    sget-object v1, Lcom/shilapi/xcertplay/CrashRecorder$startMainWatch$stallWatch$2;->INSTANCE:Lcom/shilapi/xcertplay/CrashRecorder$startMainWatch$stallWatch$2;

    move-object v4, v1

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 124
    new-instance v5, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticLambda14;

    invoke-direct {v5, v0}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticLambda14;-><init>(Landroid/os/Handler;)V

    new-instance v6, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticLambda7;

    invoke-direct {v6, v0}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticLambda7;-><init>(Landroid/os/Handler;)V

    const/16 v9, 0x10

    const/4 v10, 0x0

    const-wide/16 v7, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 130
    sput-object v2, Lcom/shilapi/xcertplay/CrashRecorder;->watch:Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;

    .line 131
    new-instance v0, Ljava/lang/Thread;

    .line 149
    new-instance v1, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticLambda8;

    invoke-direct {v1, v2, p1}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticLambda8;-><init>(Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;Ljava/io/File;)V

    const-string p1, "06Link-main-watch"

    .line 131
    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 150
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 151
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setPriority(I)V

    .line 152
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-object v2
.end method

.method private static final startMainWatch$lambda$18(Landroid/os/Handler;Ljava/lang/Runnable;J)Lkotlin/Unit;
    .locals 1

    const-string v0, "r"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final startMainWatch$lambda$19(Landroid/os/Handler;Ljava/lang/Runnable;)Lkotlin/Unit;
    .locals 1

    const-string v0, "r"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final startMainWatch$lambda$21(Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;Ljava/io/File;)V
    .locals 9

    .line 132
    :cond_0
    :goto_0
    sget-object v0, Lcom/shilapi/xcertplay/CrashRecorder;->installed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 134
    :try_start_0
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->awaitForeground()V

    const-wide/16 v0, 0x1f4

    .line 135
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->check()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 140
    :try_start_1
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 141
    sget-object v2, Lcom/shilapi/xcertplay/DiagnosticRedactor;->INSTANCE:Lcom/shilapi/xcertplay/DiagnosticRedactor;

    .line 142
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "main-thread stall gapMs="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " pid="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " (possible ANR)"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-virtual {v2, v0}, Lcom/shilapi/xcertplay/DiagnosticRedactor;->redact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 144
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v2, "main-stall.log"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x10000

    const/4 v6, 0x2

    const/4 v7, 0x0

    cmp-long v8, v2, v4

    if-lez v8, :cond_2

    const-string v2, ""

    invoke-static {v1, v2, v7, v6, v7}, Lcom/shilapi/xcertplay/E01LogPolicy;->writeText(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 146
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v7, v6, v7}, Lcom/shilapi/xcertplay/E01LogPolicy;->appendText(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    invoke-static {p1}, Lcom/shilapi/xcertplay/E01LogPolicy;->maintain(Ljava/io/File;)V

    .line 147
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 140
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :catch_0
    :cond_3
    return-void
.end method

.method private final writeCrash(Ljava/io/File;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 9

    .line 105
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/CrashRecorder;->rotateCrashes(Ljava/io/File;)V

    .line 106
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "crash-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ".log"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    const-string p1, "getName(...)"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-wide/16 v5, 0x0

    move-object v2, p0

    move-object v4, p3

    invoke-static/range {v2 .. v8}, Lcom/shilapi/xcertplay/CrashRecorder;->formatCrash$common_release$default(Lcom/shilapi/xcertplay/CrashRecorder;Ljava/lang/String;Ljava/lang/Throwable;JILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    const/4 p3, 0x0

    .line 109
    invoke-static {v1, p1, p3, p2, p3}, Lcom/shilapi/xcertplay/E01LogPolicy;->writeText(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/shilapi/xcertplay/E01LogPolicy;->maintain(Ljava/io/File;)V

    .line 111
    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object p1, v2

    check-cast p1, Lcom/shilapi/xcertplay/CrashRecorder;

    new-instance p1, Ljava/io/RandomAccessFile;

    const-string p2, "rw"

    invoke-direct {p1, v1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    check-cast p1, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object p2, p1

    check-cast p2, Ljava/io/RandomAccessFile;

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/FileDescriptor;->sync()V

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {p1, p3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :catchall_0
    move-exception v0

    move-object p2, v0

    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object p3, v0

    :try_start_4
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    move-object p1, v0

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final writeExitInfo(Landroid/content/Context;Ljava/io/File;)V
    .locals 12

    .line 270
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/app/ActivityManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/ActivityManager;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 271
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v3, 0x3

    invoke-static {v0, p1, v1, v3}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/ActivityManager;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    const-string v0, "getHistoricalProcessExitReasons(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    return-void

    .line 273
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "06Link last ApplicationExitInfo (API 30+)\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 275
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/app/ApplicationExitInfo;

    move-result-object v1

    .line 277
    invoke-static {v1}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/ApplicationExitInfo;)I

    move-result v3

    invoke-static {v1}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/app/ApplicationExitInfo;)I

    move-result v4

    invoke-static {v1}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m$2(Landroid/app/ApplicationExitInfo;)I

    move-result v5

    .line 278
    invoke-static {v1}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/app/ApplicationExitInfo;)J

    move-result-wide v6

    invoke-static {v1}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/app/ApplicationExitInfo;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, ""

    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "reason="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " status="

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " importance="

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " timestamp="

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " description="

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 273
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    .line 281
    invoke-static {p1}, Lkotlin/text/StringsKt;->lineSequence(Ljava/lang/CharSequence;)Lkotlin/sequences/Sequence;

    move-result-object p1

    new-instance v0, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v3

    const-string p1, "\n"

    move-object v4, p1

    check-cast v4, Ljava/lang/CharSequence;

    const/16 v10, 0x3e

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/sequences/SequencesKt;->joinToString$default(Lkotlin/sequences/Sequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 282
    new-instance v0, Ljava/io/File;

    const-string v1, "last-exit-info.log"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p2, 0x2

    invoke-static {v0, p1, v2, p2, v2}, Lcom/shilapi/xcertplay/E01LogPolicy;->writeText(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    return-void
.end method

.method private static final writeExitInfo$lambda$24(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    sget-object v0, Lcom/shilapi/xcertplay/DiagnosticRedactor;->INSTANCE:Lcom/shilapi/xcertplay/DiagnosticRedactor;

    invoke-virtual {v0, p0}, Lcom/shilapi/xcertplay/DiagnosticRedactor;->redact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final formatCrash$common_release(Ljava/lang/String;Ljava/lang/Throwable;J)Ljava/lang/String;
    .locals 9

    const-string/jumbo v0, "thread"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    move-object v2, v0

    check-cast v2, Ljava/io/Writer;

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "06Link crash\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "elapsedRealtimeMs="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " api="

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " thread="

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v2, "exception="

    invoke-direct {p4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 94
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->lineSequence(Ljava/lang/CharSequence;)Lkotlin/sequences/Sequence;

    move-result-object p1

    new-instance p2, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticLambda13;

    invoke-direct {p2}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticLambda13;-><init>()V

    .line 95
    invoke-static {p1, p2}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 96
    const-string p1, "\n"

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const/16 v7, 0x3e

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v8}, Lkotlin/sequences/SequencesKt;->joinToString$default(Lkotlin/sequences/Sequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/high16 p2, 0x10000

    .line 97
    invoke-static {p1, p2}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getWatch$common_release()Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;
    .locals 1

    .line 45
    sget-object v0, Lcom/shilapi/xcertplay/CrashRecorder;->watch:Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;

    return-object v0
.end method

.method public final install(Landroid/content/Context;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    sget-object v0, Lcom/shilapi/xcertplay/CrashRecorder;->installed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 52
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "logs"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 53
    sget-object v1, Lcom/shilapi/xcertplay/CrashRecorder;->folderRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 54
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    sput-object v1, Lcom/shilapi/xcertplay/CrashRecorder;->previousHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 55
    new-instance v1, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticLambda10;

    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticLambda10;-><init>(Ljava/io/File;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 64
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/CrashRecorder;->startMainWatch(Ljava/io/File;)Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;

    move-result-object v1

    .line 67
    new-instance v2, Lcom/shilapi/xcertplay/CrashRecorder$StartedActivities;

    new-instance v3, Lcom/shilapi/xcertplay/CrashRecorder$install$counter$1;

    invoke-direct {v3, v1}, Lcom/shilapi/xcertplay/CrashRecorder$install$counter$1;-><init>(Ljava/lang/Object;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    new-instance v4, Lcom/shilapi/xcertplay/CrashRecorder$install$counter$2;

    invoke-direct {v4, v1}, Lcom/shilapi/xcertplay/CrashRecorder$install$counter$2;-><init>(Ljava/lang/Object;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-direct {v2, v3, v4}, Lcom/shilapi/xcertplay/CrashRecorder$StartedActivities;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v3, v1, Landroid/app/Application;

    if-eqz v3, :cond_1

    check-cast v1, Landroid/app/Application;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    move-object v3, v2

    check-cast v3, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v1, v3}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 69
    :cond_2
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/CrashRecorder$StartedActivities;->started()V

    .line 70
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_4

    .line 71
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/CrashRecorder;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "getApplicationContext(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/shilapi/xcertplay/CrashRecorder;->writeExitInfo(Landroid/content/Context;Ljava/io/File;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    return-void
.end method

.method public final reportFiles(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v1, "logs"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 79
    :cond_0
    new-instance p1, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticLambda12;

    invoke-direct {p1}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticLambda12;-><init>()V

    invoke-virtual {v0, p1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 287
    new-instance v1, Lcom/shilapi/xcertplay/CrashRecorder$reportFiles$$inlined$sortedBy$1;

    invoke-direct {v1}, Lcom/shilapi/xcertplay/CrashRecorder$reportFiles$$inlined$sortedBy$1;-><init>()V

    check-cast v1, Ljava/util/Comparator;

    invoke-static {p1, v1}, Lkotlin/collections/ArraysKt;->sortedWith([Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    .line 81
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_2
    const/4 v1, 0x2

    .line 82
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "main-stall.log"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "last-exit-info.log"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 288
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 289
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 290
    check-cast v3, Ljava/lang/String;

    .line 82
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 290
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 291
    :cond_3
    check-cast v2, Ljava/util/List;

    .line 288
    check-cast v2, Ljava/lang/Iterable;

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 293
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/io/File;

    .line 82
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_4

    .line 293
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 294
    :cond_5
    check-cast v0, Ljava/util/List;

    .line 83
    check-cast p1, Ljava/util/Collection;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final shouldRecordStall$common_release(JJJ)Z
    .locals 1

    cmp-long v0, p1, p5

    if-ltz v0, :cond_0

    cmp-long p1, p3, p5

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
