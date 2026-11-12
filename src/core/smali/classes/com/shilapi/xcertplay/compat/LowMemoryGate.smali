.class public final Lcom/shilapi/xcertplay/compat/LowMemoryGate;
.super Ljava/lang/Object;
.source "LowMemoryGate.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLowMemoryGate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LowMemoryGate.kt\ncom/shilapi/xcertplay/compat/LowMemoryGate\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ReadWrite.kt\nkotlin/io/TextStreamsKt\n+ 4 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,113:1\n1#2:114\n1#2:116\n57#3:115\n183#4,2:117\n*S KotlinDebug\n*F\n+ 1 LowMemoryGate.kt\ncom/shilapi/xcertplay/compat/LowMemoryGate\n*L\n106#1:116\n106#1:115\n107#1:117,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000c\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001%B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\r\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\nJ\u001e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u000cJ\u0016\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u000cJ \u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u000cJ\u000e\u0010\u0016\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u0017\u001a\u00020\u00182\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0005J\u0017\u0010\u001c\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\t\u001a\u00020\nH\u0002\u00a2\u0006\u0002\u0010\u001dJ\u0017\u0010\u001e\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\t\u001a\u00020\nH\u0002\u00a2\u0006\u0002\u0010\u001dJ\u000f\u0010\u001f\u001a\u0004\u0018\u00010\u000cH\u0002\u00a2\u0006\u0002\u0010 J\u000f\u0010!\u001a\u0004\u0018\u00010\u000cH\u0002\u00a2\u0006\u0002\u0010 J\u0017\u0010\"\u001a\u0004\u0018\u00010\u000c2\u0006\u0010#\u001a\u00020\u0018H\u0002\u00a2\u0006\u0002\u0010$R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/compat/LowMemoryGate;",
        "",
        "<init>",
        "()V",
        "TIGHT_HEAP_MB",
        "",
        "TIGHT_AVAIL_MB",
        "CRITICAL_AVAIL_MB",
        "memoryClassMb",
        "context",
        "Landroid/content/Context;",
        "availableRamMb",
        "",
        "totalRamMb",
        "snapshot",
        "Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;",
        "isTight",
        "",
        "sdkInt",
        "heapClassMb",
        "availMb",
        "isCritical",
        "postponeHeavyStartup",
        "summary",
        "",
        "trimForPressure",
        "",
        "level",
        "activityManagerAvailMb",
        "(Landroid/content/Context;)Ljava/lang/Long;",
        "activityManagerTotalMb",
        "procMemAvailableMb",
        "()Ljava/lang/Long;",
        "procMemTotalMb",
        "procMemFieldMb",
        "key",
        "(Ljava/lang/String;)Ljava/lang/Long;",
        "Snapshot",
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
.field public static final CRITICAL_AVAIL_MB:I = 0x180

.field public static final INSTANCE:Lcom/shilapi/xcertplay/compat/LowMemoryGate;

.field public static final TIGHT_AVAIL_MB:I = 0x300

.field public static final TIGHT_HEAP_MB:I = 0x40


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/compat/LowMemoryGate;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/compat/LowMemoryGate;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/compat/LowMemoryGate;->INSTANCE:Lcom/shilapi/xcertplay/compat/LowMemoryGate;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final activityManagerAvailMb(Landroid/content/Context;)Ljava/lang/Long;
    .locals 5

    const/4 v0, 0x0

    .line 83
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/compat/LowMemoryGate;

    .line 84
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Landroid/app/ActivityManager;

    if-eqz v1, :cond_0

    check-cast p1, Landroid/app/ActivityManager;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    return-object v0

    .line 85
    :cond_1
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 86
    invoke-virtual {p1, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 87
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v2, "availMem"

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 88
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_2

    const-wide/32 v3, 0x100000

    .line 89
    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v0

    .line 83
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 90
    :goto_2
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move-object v0, p1

    :goto_3
    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method private final activityManagerTotalMb(Landroid/content/Context;)Ljava/lang/Long;
    .locals 5

    const/4 v0, 0x0

    .line 92
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/compat/LowMemoryGate;

    .line 93
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    return-object v0

    .line 94
    :cond_0
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Landroid/app/ActivityManager;

    if-eqz v1, :cond_1

    check-cast p1, Landroid/app/ActivityManager;

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_2

    return-object v0

    .line 95
    :cond_2
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 96
    invoke-virtual {p1, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 97
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string/jumbo v2, "totalMem"

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 98
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_3

    const-wide/32 v3, 0x100000

    .line 99
    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_1

    :cond_3
    move-object p1, v0

    .line 92
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 100
    :goto_2
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    move-object v0, p1

    :goto_3
    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public static synthetic postponeHeavyStartup$default(Lcom/shilapi/xcertplay/compat/LowMemoryGate;IIJILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const-wide p3, 0x7fffffffffffffffL

    .line 60
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/compat/LowMemoryGate;->postponeHeavyStartup(IIJ)Z

    move-result p0

    return p0
.end method

.method private final procMemAvailableMb()Ljava/lang/Long;
    .locals 1

    .line 102
    const-string v0, "MemAvailable"

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/compat/LowMemoryGate;->procMemFieldMb(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "MemFree"

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/compat/LowMemoryGate;->procMemFieldMb(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private final procMemFieldMb(Ljava/lang/String;)Ljava/lang/Long;
    .locals 7

    const/4 v0, 0x0

    .line 105
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/compat/LowMemoryGate;

    .line 106
    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/meminfo"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v4, Ljava/io/InputStream;

    invoke-direct {v3, v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v3, Ljava/io/Reader;

    instance-of v1, v3, Ljava/io/BufferedReader;

    const/16 v2, 0x2000

    if-eqz v1, :cond_0

    check-cast v3, Ljava/io/BufferedReader;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v3, v1

    :goto_0
    check-cast v3, Ljava/io/Reader;

    .line 115
    instance-of v1, v3, Ljava/io/BufferedReader;

    if-eqz v1, :cond_1

    check-cast v3, Ljava/io/BufferedReader;

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v3, v1

    :goto_1
    check-cast v3, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v1, v3

    check-cast v1, Ljava/io/BufferedReader;

    invoke-static {v1}, Lkotlin/io/TextStreamsKt;->lineSequence(Ljava/io/BufferedReader;)Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 117
    invoke-interface {v1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    .line 107
    invoke-static {v6, p1, v5, v4, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_3
    move-object v2, v0

    :goto_2
    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_4
    move-object p1, v0

    goto :goto_3

    .line 108
    :cond_5
    new-instance p1, Lkotlin/text/Regex;

    const-string v1, "(\\d+)"

    invoke-direct {p1, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {p1, v2, v5, v4, v0}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_4

    invoke-static {p1}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v4, 0x400

    .line 109
    div-long/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    :goto_3
    :try_start_2
    invoke-static {v3, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 105
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 115
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-static {v3, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    .line 105
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 111
    :goto_4
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_5

    :cond_6
    move-object v0, p1

    :goto_5
    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method private final procMemTotalMb()Ljava/lang/Long;
    .locals 1

    .line 103
    const-string v0, "MemTotal"

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/compat/LowMemoryGate;->procMemFieldMb(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final availableRamMb(Landroid/content/Context;)J
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/compat/LowMemoryGate;->activityManagerAvailMb(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-direct {p0}, Lcom/shilapi/xcertplay/compat/LowMemoryGate;->procMemAvailableMb()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final isCritical(IJ)Z
    .locals 2

    const/16 v0, 0x30

    if-le p1, v0, :cond_1

    const-wide/16 v0, 0x1

    cmp-long p1, v0, p2

    if-gtz p1, :cond_0

    const-wide/16 v0, 0x180

    cmp-long p1, p2, v0

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final isTight(IIJ)Z
    .locals 1

    const/16 v0, 0x13

    if-lt p1, v0, :cond_1

    const/16 p1, 0x40

    if-le p2, p1, :cond_1

    const-wide/16 p1, 0x1

    cmp-long v0, p1, p3

    if-gtz v0, :cond_0

    const-wide/16 p1, 0x300

    cmp-long v0, p3, p1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final memoryClassMb(Landroid/content/Context;)I
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Landroid/app/ActivityManager;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/ActivityManager;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const/16 p1, 0x40

    return p1

    .line 32
    :cond_1
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result p1

    return p1
.end method

.method public final postponeHeavyStartup(IIJ)Z
    .locals 0

    .line 61
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/compat/LowMemoryGate;->isTight(IIJ)Z

    move-result p1

    return p1
.end method

.method public final postponeHeavyStartup(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/compat/LowMemoryGate;->snapshot(Landroid/content/Context;)Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;

    move-result-object p1

    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;->getHeapClassMb()I

    move-result v1

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;->getAvailMb()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/shilapi/xcertplay/compat/LowMemoryGate;->postponeHeavyStartup(IIJ)Z

    move-result p1

    return p1
.end method

.method public final snapshot(Landroid/content/Context;)Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/compat/LowMemoryGate;->memoryClassMb(Landroid/content/Context;)I

    move-result v2

    .line 43
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/compat/LowMemoryGate;->availableRamMb(Landroid/content/Context;)J

    move-result-wide v3

    .line 44
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/compat/LowMemoryGate;->totalRamMb(Landroid/content/Context;)J

    move-result-wide v5

    .line 45
    new-instance v1, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;

    .line 49
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/shilapi/xcertplay/compat/LowMemoryGate;->isTight(IIJ)Z

    move-result v7

    .line 50
    invoke-virtual {p0, v2, v3, v4}, Lcom/shilapi/xcertplay/compat/LowMemoryGate;->isCritical(IJ)Z

    move-result v8

    .line 45
    invoke-direct/range {v1 .. v8}, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;-><init>(IJJZZ)V

    return-object v1
.end method

.method public final summary(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/compat/LowMemoryGate;->snapshot(Landroid/content/Context;)Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;

    move-result-object p1

    .line 70
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/compat/LowMemoryGate;

    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    :cond_0
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 71
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;->getHeapClassMb()I

    move-result v2

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;->getAvailMb()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;->getTotalMb()J

    move-result-wide v5

    .line 72
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;->getTight()Z

    move-result v7

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/compat/LowMemoryGate$Snapshot;->getCritical()Z

    move-result p1

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "mem heapClass="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "MB avail="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "MB total="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "MB nativeHeap\u2248"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "MB tight="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " critical="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final totalRamMb(Landroid/content/Context;)J
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/compat/LowMemoryGate;->activityManagerTotalMb(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-direct {p0}, Lcom/shilapi/xcertplay/compat/LowMemoryGate;->procMemTotalMb()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final trimForPressure(I)V
    .locals 1

    const/16 v0, 0x14

    if-ge p1, v0, :cond_0

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    return-void

    .line 79
    :cond_0
    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object p1, p0

    check-cast p1, Lcom/shilapi/xcertplay/compat/LowMemoryGate;

    invoke-static {}, Ljava/lang/System;->gc()V

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

    return-void
.end method
