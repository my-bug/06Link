.class public final Lcom/shilapi/xcertplay/DiagnosticSafeReport;
.super Ljava/lang/Object;
.source "DiagnosticSafeReport.java"


# static fields
.field static final FILE_LIMIT:I = 0x10000

.field private static final NAMES:[Ljava/lang/String;

.field static final REPORT_LIMIT:I = 0x80000


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 13
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "06link.log"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "logcat.log"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "previous.log"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "logcat-previous.log"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "previous-2.log"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "previous-3.log"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "previous-4.log"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "previous-5.log"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "previous-6.log"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "previous-7.log"

    aput-object v2, v0, v1

    sput-object v0, Lcom/shilapi/xcertplay/DiagnosticSafeReport;->NAMES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Landroid/content/Context;)Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    const-string v1, "06Link fix7 diagnostic report\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, "Captured: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    const-string v1, "Android: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "11"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " SDK "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x1e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    const-string v1, "Head unit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "test"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, "Transport: wireless CarPlay / USB Bluetooth only\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    const-string v1, "Video policy: automatic 30 fps; latest decoded frame during backlog\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    const-string v1, "FPS preference: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/shilapi/xcertplay/AirPlayPersistence;->INSTANCE:Lcom/shilapi/xcertplay/AirPlayPersistence;

    invoke-virtual {v3, p0}, Lcom/shilapi/xcertplay/AirPlayPersistence;->fpsSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    const-string v1, "Report uses recorded logs; live root, kernel and capability probes are skipped.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v3, "logs"

    invoke-direct {v1, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 31
    nop

    .line 32
    sget-object p0, Lcom/shilapi/xcertplay/DiagnosticSafeReport;->NAMES:[Ljava/lang/String;

    array-length v3, p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v3, :cond_6

    aget-object v7, p0, v5

    .line 33
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v8

    if-nez v8, :cond_5

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    const/high16 v9, 0x80000

    if-lt v8, v9, :cond_0

    goto/16 :goto_5

    .line 35
    :cond_0
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v10

    if-nez v10, :cond_1

    goto :goto_4

    .line 37
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 38
    const-string v10, "\n--- "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " (bounded tail) ---\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const/high16 v7, 0x10000

    :try_start_0
    invoke-static {v8, v7}, Lcom/shilapi/xcertplay/DiagnosticSafeReport;->tail(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v7

    .line 41
    const-string v8, "\\r?\\n"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v8, :cond_4

    aget-object v11, v7, v10

    .line 42
    sget-object v12, Lcom/shilapi/xcertplay/DiagnosticRedactor;->INSTANCE:Lcom/shilapi/xcertplay/DiagnosticRedactor;

    invoke-virtual {v12, v11}, Lcom/shilapi/xcertplay/DiagnosticRedactor;->redact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 43
    if-nez v11, :cond_2

    goto :goto_2

    .line 44
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    add-int/lit8 v12, v12, 0x1

    if-le v12, v9, :cond_3

    .line 45
    const-string v7, "\n[report size limit reached]\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    goto :goto_3

    .line 48
    :cond_3
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 52
    :cond_4
    :goto_3
    goto :goto_4

    .line 50
    :catch_0
    move-exception v7

    .line 51
    const-string v8, "[file read failed: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 33
    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Diagnostic export interrupted"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 54
    :cond_6
    :goto_5
    if-nez v6, :cond_7

    const-string p0, "\nNo recorded log files found. Reproduce the issue with logging enabled, then export again.\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static tail(Ljava/io/File;I)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 61
    :try_start_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    .line 62
    int-to-long p0, p1

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    long-to-int p1, p0

    .line 63
    int-to-long v3, p1

    sub-long/2addr v1, v3

    .line 64
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 65
    new-array p0, p1, [B

    .line 66
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 67
    :goto_0
    if-ge v4, p1, :cond_2

    .line 68
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_1

    .line 69
    sub-int v5, p1, v4

    invoke-virtual {v0, p0, v4, v5}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v5

    .line 70
    if-gez v5, :cond_0

    goto :goto_1

    .line 71
    :cond_0
    add-int/2addr v4, v5

    .line 72
    goto :goto_0

    .line 68
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Interrupted"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 73
    :cond_2
    :goto_1
    new-instance p1, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {p1, p0, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 74
    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-lez p0, :cond_4

    .line 76
    const/16 p0, 0xa

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    .line 77
    if-ltz p0, :cond_3

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_3
    const-string p0, ""

    .line 78
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[older log content omitted]\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_4
    nop

    .line 82
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 80
    return-object p1

    .line 82
    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 83
    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method
