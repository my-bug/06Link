.class public final Lcom/shilapi/xcertplay/LogcatRecorder;
.super Ljava/lang/Object;
.source "LogcatRecorder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLogcatRecorder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LogcatRecorder.kt\ncom/shilapi/xcertplay/LogcatRecorder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,94:1\n1#2:95\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/LogcatRecorder;",
        "",
        "<init>",
        "()V",
        "CURRENT",
        "",
        "PREVIOUS",
        "MAX_BYTES",
        "",
        "FLUSH_MILLIS",
        "started",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "start",
        "",
        "context",
        "Landroid/content/Context;",
        "record",
        "folder",
        "Ljava/io/File;",
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
.field public static final CURRENT:Ljava/lang/String; = "logcat.log"

.field public static final FLUSH_MILLIS:J = 0xbb8L

.field public static final INSTANCE:Lcom/shilapi/xcertplay/LogcatRecorder;

.field private static final MAX_BYTES:J = 0x100000L

.field public static final PREVIOUS:Ljava/lang/String; = "logcat-previous.log"

.field private static final started:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static synthetic $r8$lambda$3Vl4zvx_3gdO_2APU9mtqCMUvD0(Lkotlin/text/Regex;Lcom/shilapi/xcertplay/LogcatRecorder;Ljava/io/OutputStreamWriter;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Ljava/io/File;Ljava/io/File;Ljava/io/FileOutputStream;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p8}, Lcom/shilapi/xcertplay/LogcatRecorder;->record$lambda$8$lambda$5(Lkotlin/text/Regex;Lcom/shilapi/xcertplay/LogcatRecorder;Ljava/io/OutputStreamWriter;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Ljava/io/File;Ljava/io/File;Ljava/io/FileOutputStream;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZQUgOaLm05SGXbcvdyLqWMMVBTc(Ljava/io/File;)V
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/LogcatRecorder;->start$lambda$0(Ljava/io/File;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/LogcatRecorder;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/LogcatRecorder;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/LogcatRecorder;->INSTANCE:Lcom/shilapi/xcertplay/LogcatRecorder;

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/shilapi/xcertplay/LogcatRecorder;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final record(Ljava/io/File;)V
    .locals 13

    const-string v0, "\\(\\s*"

    const-string v1, "--pid="

    const-string v2, "06Link logcat recording started pid="

    .line 43
    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v3, p0

    check-cast v3, Lcom/shilapi/xcertplay/LogcatRecorder;

    .line 44
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 45
    new-instance v4, Ljava/io/File;

    const-string v3, "logcat.log"

    invoke-direct {v4, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 46
    new-instance v5, Ljava/io/File;

    const-string v3, "logcat-previous.log"

    invoke-direct {v5, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long p1, v6, v8

    if-lez p1, :cond_0

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/io/FilesKt;->copyTo$default(Ljava/io/File;Ljava/io/File;ZIILjava/lang/Object;)Ljava/io/File;

    .line 49
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    .line 50
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " api="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v6, 0x0

    invoke-static {v4, v2, v6, v3, v6}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    const/4 v2, 0x3

    .line 52
    new-array v2, v2, [Ljava/lang/String;

    const-string v6, "logcat"

    const/4 v7, 0x0

    aput-object v6, v2, v7

    const-string v6, "-v"

    const/4 v7, 0x1

    aput-object v6, v2, v7

    const-string/jumbo v6, "time"

    aput-object v6, v2, v3

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 53
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v3, v6, :cond_1

    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_1
    new-instance v1, Ljava/lang/ProcessBuilder;

    invoke-direct {v1, v2}, Ljava/lang/ProcessBuilder;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v7}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    move-object v11, v5

    .line 55
    new-instance v5, Lkotlin/text/Regex;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\\)"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, p1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 56
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 57
    new-instance v7, Ljava/io/OutputStreamWriter;

    move-object p1, v12

    check-cast p1, Ljava/io/OutputStream;

    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, p1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 58
    new-instance v8, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, v8, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 59
    new-instance v9, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v9, Lkotlin/jvm/internal/Ref$LongRef;->element:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 61
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    const-string v0, "getInputStream(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v2, Ljava/io/Reader;

    instance-of p1, v2, Ljava/io/BufferedReader;

    if-eqz p1, :cond_2

    check-cast v2, Ljava/io/BufferedReader;

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/io/BufferedReader;

    const/16 v0, 0x2000

    invoke-direct {p1, v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v2, p1

    :goto_0
    check-cast v2, Ljava/io/Reader;

    move-object v10, v4

    new-instance v4, Lcom/shilapi/xcertplay/LogcatRecorder$$ExternalSyntheticLambda1;

    move-object v6, p0

    invoke-direct/range {v4 .. v12}, Lcom/shilapi/xcertplay/LogcatRecorder$$ExternalSyntheticLambda1;-><init>(Lkotlin/text/Regex;Lcom/shilapi/xcertplay/LogcatRecorder;Ljava/io/OutputStreamWriter;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Ljava/io/File;Ljava/io/File;Ljava/io/FileOutputStream;)V

    invoke-static {v2, v4}, Lkotlin/io/TextStreamsKt;->forEachLine(Ljava/io/Reader;Lkotlin/jvm/functions/Function1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 87
    :try_start_2
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->flush()V

    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->close()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_3
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 88
    :goto_1
    :try_start_4
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p1, v0

    :try_start_5
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 91
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 43
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object p1, v0

    .line 87
    :try_start_6
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->flush()V

    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->close()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    :try_start_7
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 88
    :goto_3
    :try_start_8
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v0

    :try_start_9
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :catchall_5
    move-exception v0

    move-object p1, v0

    .line 43
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    return-void
.end method

.method private static final record$lambda$8$lambda$5(Lkotlin/text/Regex;Lcom/shilapi/xcertplay/LogcatRecorder;Ljava/io/OutputStreamWriter;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Ljava/io/File;Ljava/io/File;Ljava/io/FileOutputStream;Ljava/lang/String;)Lkotlin/Unit;
    .locals 7

    const-string p1, "line"

    invoke-static {p8, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_0

    move-object p1, p8

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 63
    :cond_0
    sget-object p0, Lcom/shilapi/xcertplay/DiagnosticEnvironment;->INSTANCE:Lcom/shilapi/xcertplay/DiagnosticEnvironment;

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiagnosticEnvironment;->getGraphicsNoise$common_release()Lkotlin/text/Regex;

    move-result-object p0

    move-object p1, p8

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 64
    :cond_1
    :try_start_0
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object p0, Lcom/shilapi/xcertplay/DiagnosticRedactor;->INSTANCE:Lcom/shilapi/xcertplay/DiagnosticRedactor;

    invoke-virtual {p0, p8}, Lcom/shilapi/xcertplay/DiagnosticRedactor;->redact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p0, 0x0

    :cond_2
    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_3

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 65
    :cond_3
    invoke-virtual {p2, p0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 66
    const-string p1, "\n"

    invoke-virtual {p2, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 67
    iget-wide v0, p3, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    int-to-long p0, p0

    add-long/2addr v0, p0

    iput-wide v0, p3, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 68
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    .line 69
    iget-wide v0, p4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    sub-long v0, p0, v0

    const-wide/16 v2, 0xbb8

    cmp-long p8, v0, v2

    if-ltz p8, :cond_4

    .line 70
    invoke-virtual {p2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 71
    :try_start_1
    sget-object p8, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p7}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p8

    invoke-virtual {p8}, Ljava/io/FileDescriptor;->sync()V

    sget-object p8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p8}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p8, v0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p8}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p8

    invoke-static {p8}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :goto_1
    iput-wide p0, p4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    goto :goto_2

    .line 74
    :cond_4
    invoke-virtual {p2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 76
    :goto_2
    iget-wide v0, p3, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    const-wide/32 v2, 0x100000

    cmp-long p8, v0, v2

    if-lez p8, :cond_5

    .line 77
    invoke-virtual {p2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 78
    :try_start_2
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p7}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/FileDescriptor;->sync()V

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object p2, v0

    sget-object p8, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p5

    move-object v2, p6

    .line 79
    invoke-static/range {v1 .. v6}, Lkotlin/io/FilesKt;->copyTo$default(Ljava/io/File;Ljava/io/File;ZIILjava/lang/Object;)Ljava/io/File;

    .line 81
    invoke-virtual {p7}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p2

    const-wide/16 p5, 0x0

    invoke-virtual {p2, p5, p6}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 82
    iput-wide p5, p3, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 83
    iput-wide p0, p4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 85
    :cond_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final start$lambda$0(Ljava/io/File;)V
    .locals 1

    .line 35
    sget-object v0, Lcom/shilapi/xcertplay/LogcatRecorder;->INSTANCE:Lcom/shilapi/xcertplay/LogcatRecorder;

    invoke-direct {v0, p0}, Lcom/shilapi/xcertplay/LogcatRecorder;->record(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public final start(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
