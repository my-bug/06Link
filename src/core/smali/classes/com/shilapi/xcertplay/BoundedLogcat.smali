.class public final Lcom/shilapi/xcertplay/BoundedLogcat;
.super Ljava/lang/Object;
.source "BoundedLogcat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static close(Ljava/io/Closeable;)V
    .locals 0

    .line 80
    if-nez p0, :cond_0

    return-void

    .line 81
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 82
    :goto_0
    return-void
.end method

.method public static read(Ljava/lang/Process;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Process;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 15
    const-wide/16 v0, 0xbb8

    const/high16 v2, 0x40000

    invoke-static {p0, v0, v1, v2}, Lcom/shilapi/xcertplay/BoundedLogcat;->read(Ljava/lang/Process;JI)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static read(Ljava/lang/Process;JI)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Process;",
            "JI)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 19
    const-string v0, "logcat collection interrupted; partial output retained"

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 20
    nop

    .line 21
    nop

    .line 22
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 24
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    const/16 v6, 0x1000

    :try_start_1
    new-array v7, v6, [B

    .line 27
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 28
    nop

    .line 29
    goto :goto_2

    .line 31
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long/2addr v8, v2

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    cmp-long v10, v8, p1

    if-ltz v10, :cond_2

    .line 32
    const-string p1, "logcat collection timed out; partial output retained"

    .line 33
    move-object v0, p1

    goto :goto_2

    .line 35
    :cond_2
    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v8

    .line 36
    if-lez v8, :cond_4

    .line 37
    nop

    .line 38
    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    sub-int v9, p3, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 37
    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    .line 39
    if-gez v8, :cond_3

    goto :goto_1

    .line 40
    :cond_3
    invoke-virtual {v1, v7, v9, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 41
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    if-lt v8, p3, :cond_0

    .line 42
    const-string p1, "logcat snapshot truncated at byte limit"
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    move-object v0, p1

    goto :goto_2

    .line 48
    :cond_4
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Process;->exitValue()I

    .line 50
    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v8
    :try_end_2
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v8, :cond_5

    .line 62
    :goto_1
    move-object v0, v4

    :goto_2
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 63
    :goto_3
    invoke-static {v5}, Lcom/shilapi/xcertplay/BoundedLogcat;->close(Ljava/io/Closeable;)V

    .line 64
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/shilapi/xcertplay/BoundedLogcat;->close(Ljava/io/Closeable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 65
    :goto_4
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    :goto_5
    invoke-static {p0}, Lcom/shilapi/xcertplay/BoundedLogcat;->close(Ljava/io/Closeable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_d

    :catch_2
    move-exception p0

    .line 66
    goto/16 :goto_d

    .line 53
    :cond_5
    goto :goto_6

    .line 51
    :catch_3
    move-exception v8

    .line 54
    :goto_6
    const-wide/16 v8, 0x14

    :try_start_6
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 55
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p1

    move-object v4, v5

    goto/16 :goto_f

    .line 59
    :catch_4
    move-exception p1

    move-object v4, v5

    goto :goto_7

    .line 56
    :catch_5
    move-exception p1

    move-object v4, v5

    goto :goto_a

    .line 62
    :catchall_1
    move-exception p1

    goto/16 :goto_f

    .line 59
    :catch_6
    move-exception p1

    .line 60
    :goto_7
    :try_start_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "logcat collection failed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 62
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_8

    :catch_7
    move-exception p1

    .line 63
    :goto_8
    invoke-static {v4}, Lcom/shilapi/xcertplay/BoundedLogcat;->close(Ljava/io/Closeable;)V

    .line 64
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/shilapi/xcertplay/BoundedLogcat;->close(Ljava/io/Closeable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_9

    :catch_8
    move-exception p1

    .line 65
    :goto_9
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_5

    .line 56
    :catch_9
    move-exception p1

    .line 57
    :goto_a
    :try_start_b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 58
    nop

    .line 62
    :try_start_c
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    goto :goto_b

    :catch_a
    move-exception p1

    .line 63
    :goto_b
    invoke-static {v4}, Lcom/shilapi/xcertplay/BoundedLogcat;->close(Ljava/io/Closeable;)V

    .line 64
    :try_start_d
    invoke-virtual {p0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/shilapi/xcertplay/BoundedLogcat;->close(Ljava/io/Closeable;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b

    goto :goto_c

    :catch_b
    move-exception p1

    .line 65
    :goto_c
    :try_start_e
    invoke-virtual {p0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    goto :goto_5

    .line 67
    :goto_d
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    :try_start_f
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 70
    new-instance p1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    const-string p3, "UTF-8"

    invoke-direct {p1, p2, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string p2, "\\r?\\n"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c

    .line 74
    :cond_6
    goto :goto_e

    .line 72
    :catch_c
    move-exception p1

    .line 73
    const-string v0, "logcat output could not be decoded"

    .line 75
    :goto_e
    if-eqz v0, :cond_7

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_7
    return-object p0

    .line 62
    :goto_f
    :try_start_10
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_d

    goto :goto_10

    :catch_d
    move-exception p2

    .line 63
    :goto_10
    invoke-static {v4}, Lcom/shilapi/xcertplay/BoundedLogcat;->close(Ljava/io/Closeable;)V

    .line 64
    :try_start_11
    invoke-virtual {p0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-static {p2}, Lcom/shilapi/xcertplay/BoundedLogcat;->close(Ljava/io/Closeable;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_e

    goto :goto_11

    :catch_e
    move-exception p2

    .line 65
    :goto_11
    :try_start_12
    invoke-virtual {p0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/shilapi/xcertplay/BoundedLogcat;->close(Ljava/io/Closeable;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_f

    goto :goto_12

    :catch_f
    move-exception p0

    .line 66
    :goto_12
    goto :goto_14

    :goto_13
    throw p1

    :goto_14
    goto :goto_13
.end method
