.class public final Lcom/shilapi/xcertplay/network/RootShell;
.super Ljava/lang/Object;
.source "RootShell.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/network/RootShell$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRootShell.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RootShell.kt\ncom/shilapi/xcertplay/network/RootShell\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,73:1\n295#2:74\n296#2:76\n774#2:77\n865#2,2:78\n1563#2:80\n1634#2,3:81\n295#2,2:84\n1869#2,2:86\n1#3:75\n*S KotlinDebug\n*F\n+ 1 RootShell.kt\ncom/shilapi/xcertplay/network/RootShell\n*L\n22#1:74\n22#1:76\n23#1:77\n23#1:78,2\n24#1:80\n24#1:81,3\n24#1:84,2\n42#1:86,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0014B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006J\u0006\u0010\u0008\u001a\u00020\tJ\u001e\u0010\n\u001a\u00020\u000b2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0008\u0008\u0002\u0010\r\u001a\u00020\u000eJ\u001f\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u000eH\u0002\u00a2\u0006\u0002\u0010\u0013R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/RootShell;",
        "",
        "<init>",
        "()V",
        "SU_PATHS",
        "",
        "",
        "suPath",
        "available",
        "",
        "run",
        "Lcom/shilapi/xcertplay/network/RootShell$Result;",
        "commands",
        "timeoutMillis",
        "",
        "waitFor",
        "",
        "process",
        "Ljava/lang/Process;",
        "(Ljava/lang/Process;J)Ljava/lang/Integer;",
        "Result",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/network/RootShell;

.field private static final SU_PATHS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$WrUUs4h-SixZnfZkwnYO3LR9pkA(Lcom/shilapi/xcertplay/network/RootShell;Ljava/lang/Process;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/network/RootShell;->run$lambda$14$lambda$11(Lcom/shilapi/xcertplay/network/RootShell;Ljava/lang/Process;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u1Sy1gLZnUX3qEhDTZr13awxPkw(Ljava/lang/StringBuilder;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/network/RootShell;->run$lambda$14$lambda$11$lambda$10$lambda$9(Ljava/lang/StringBuilder;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/shilapi/xcertplay/network/RootShell;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/network/RootShell;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/network/RootShell;->INSTANCE:Lcom/shilapi/xcertplay/network/RootShell;

    const/16 v0, 0xb

    .line 17
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/system/xbin/su"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "/system/bin/su"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "/sbin/su"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "/su/bin/su"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "/su/xbin/su"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "/system/sbin/su"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "/vendor/bin/su"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "/vendor/xbin/su"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "/data/local/xbin/su"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "/data/local/bin/su"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "/debug_ramdisk/su"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 15
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/network/RootShell;->SU_PATHS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic run$default(Lcom/shilapi/xcertplay/network/RootShell;Ljava/util/List;JILjava/lang/Object;)Lcom/shilapi/xcertplay/network/RootShell$Result;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0x4e20

    .line 37
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/network/RootShell;->run(Ljava/util/List;J)Lcom/shilapi/xcertplay/network/RootShell$Result;

    move-result-object p0

    return-object p0
.end method

.method private static final run$lambda$14$lambda$11(Lcom/shilapi/xcertplay/network/RootShell;Ljava/lang/Process;Ljava/lang/StringBuilder;)V
    .locals 1

    .line 48
    :try_start_0
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    const-string p1, "getInputStream(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v0, Ljava/io/Reader;

    instance-of p0, v0, Ljava/io/BufferedReader;

    if-eqz p0, :cond_0

    check-cast v0, Ljava/io/BufferedReader;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/BufferedReader;

    const/16 p1, 0x2000

    invoke-direct {p0, v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v0, p0

    :goto_0
    check-cast v0, Ljava/io/Reader;

    new-instance p0, Lcom/shilapi/xcertplay/network/RootShell$$ExternalSyntheticLambda1;

    invoke-direct {p0, p2}, Lcom/shilapi/xcertplay/network/RootShell$$ExternalSyntheticLambda1;-><init>(Ljava/lang/StringBuilder;)V

    invoke-static {v0, p0}, Lkotlin/io/TextStreamsKt;->forEachLine(Ljava/io/Reader;Lkotlin/jvm/functions/Function1;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final run$lambda$14$lambda$11$lambda$10$lambda$9(Ljava/lang/StringBuilder;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "line"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final waitFor(Ljava/lang/Process;J)Ljava/lang/Integer;
    .locals 4

    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 60
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p2, p3, v0}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Ljava/lang/Process;JLjava/util/concurrent/TimeUnit;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Process;->exitValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v2

    .line 62
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p2

    .line 63
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    cmp-long v3, p2, v0

    if-gez v3, :cond_2

    .line 65
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Process;->exitValue()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-wide/16 p2, 0x64

    .line 67
    invoke-static {p2, p3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :cond_2
    return-object v2
.end method


# virtual methods
.method public final available()Z
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/network/RootShell;->suPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final run(Ljava/util/List;J)Lcom/shilapi/xcertplay/network/RootShell$Result;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)",
            "Lcom/shilapi/xcertplay/network/RootShell$Result;"
        }
    .end annotation

    const-string v0, "commands"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/network/RootShell;->suPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance p1, Lcom/shilapi/xcertplay/network/RootShell$Result;

    const-string/jumbo p2, "su not found"

    invoke-direct {p1, v2, v1, p2}, Lcom/shilapi/xcertplay/network/RootShell$Result;-><init>(ZLjava/lang/Integer;Ljava/lang/String;)V

    return-object p1

    .line 39
    :cond_0
    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v3, p0

    check-cast v3, Lcom/shilapi/xcertplay/network/RootShell;

    .line 40
    new-instance v3, Ljava/lang/ProcessBuilder;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    aput-object v0, v5, v2

    invoke-direct {v3, v5}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    const-string v5, "getOutputStream(...)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, v3, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    check-cast v6, Ljava/io/Writer;

    instance-of v3, v6, Ljava/io/BufferedWriter;

    if-eqz v3, :cond_1

    check-cast v6, Ljava/io/BufferedWriter;

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/io/BufferedWriter;

    const/16 v5, 0x2000

    invoke-direct {v3, v6, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    move-object v6, v3

    :goto_0
    check-cast v6, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    move-object v3, v6

    check-cast v3, Ljava/io/BufferedWriter;

    .line 42
    check-cast p1, Ljava/lang/Iterable;

    .line 86
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 42
    invoke-virtual {v3, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 43
    :cond_2
    const-string p1, "exit\n"

    invoke-virtual {v3, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 44
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 41
    :try_start_2
    invoke-static {v6, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    new-instance v3, Ljava/lang/Thread;

    .line 49
    new-instance v5, Lcom/shilapi/xcertplay/network/RootShell$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v0, p1}, Lcom/shilapi/xcertplay/network/RootShell$$ExternalSyntheticLambda0;-><init>(Lcom/shilapi/xcertplay/network/RootShell;Ljava/lang/Process;Ljava/lang/StringBuilder;)V

    const-string v6, "root-shell-output"

    .line 47
    invoke-direct {v3, v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 50
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/shilapi/xcertplay/network/RootShell;->waitFor(Ljava/lang/Process;J)Ljava/lang/Integer;

    move-result-object p2

    if-nez p2, :cond_3

    .line 51
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    :cond_3
    const-wide/16 v5, 0x1f4

    .line 52
    invoke-virtual {v3, v5, v6}, Ljava/lang/Thread;->join(J)V

    if-nez p2, :cond_4

    goto :goto_2

    .line 53
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-nez p3, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v4, 0x0

    :goto_3
    monitor-enter p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v0, "toString(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit p1

    new-instance p1, Lcom/shilapi/xcertplay/network/RootShell$Result;

    invoke-direct {p1, v4, p2, p3}, Lcom/shilapi/xcertplay/network/RootShell$Result;-><init>(ZLjava/lang/Integer;Ljava/lang/String;)V

    .line 39
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_4

    :catchall_0
    move-exception p2

    .line 53
    monitor-exit p1

    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_1
    move-exception p1

    .line 41
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p2

    :try_start_6
    invoke-static {v6, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception p1

    .line 39
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 54
    :goto_4
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_6

    goto :goto_5

    :cond_6
    new-instance p1, Lcom/shilapi/xcertplay/network/RootShell$Result;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v2, v1, p2}, Lcom/shilapi/xcertplay/network/RootShell$Result;-><init>(ZLjava/lang/Integer;Ljava/lang/String;)V

    :goto_5
    check-cast p1, Lcom/shilapi/xcertplay/network/RootShell$Result;

    return-object p1
.end method

.method public final suPath()Ljava/lang/String;
    .locals 10

    .line 22
    sget-object v0, Lcom/shilapi/xcertplay/network/RootShell;->SU_PATHS:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 74
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    .line 22
    :try_start_0
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v0, v5

    :cond_1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_2
    move-object v4, v3

    :goto_1
    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_a

    .line 23
    const-string v0, "PATH"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, ""

    :cond_3
    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v0, 0x1

    new-array v5, v0, [C

    const/16 v0, 0x3a

    aput-char v0, v5, v2

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 78
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    .line 23
    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 78
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 79
    :cond_5
    check-cast v1, Ljava/util/List;

    .line 23
    check-cast v1, Ljava/lang/Iterable;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 81
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 82
    check-cast v4, Ljava/lang/String;

    .line 24
    new-instance v5, Ljava/io/File;

    const-string/jumbo v6, "su"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 83
    :cond_6
    check-cast v0, Ljava/util/List;

    .line 24
    check-cast v0, Ljava/lang/Iterable;

    .line 84
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/io/File;

    .line 24
    :try_start_1
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    move-object v0, v5

    :cond_8
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_9
    move-object v4, v3

    :goto_5
    check-cast v4, Ljava/io/File;

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_a
    move-object v3, v4

    :cond_b
    :goto_6
    return-object v3
.end method
