.class public final Lcom/shilapi/xcertplay/goc/GocPresence;
.super Ljava/lang/Object;
.source "GocPresence.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGocPresence.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GocPresence.kt\ncom/shilapi/xcertplay/goc/GocPresence\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ReadWrite.kt\nkotlin/io/TextStreamsKt\n*L\n1#1,111:1\n1#2:112\n1#2:114\n57#3:113\n*S KotlinDebug\n*F\n+ 1 GocPresence.kt\ncom/shilapi/xcertplay/goc/GocPresence\n*L\n89#1:114\n89#1:113\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u000c\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\\\u0010\n\u001a\u00020\u00052\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00052\u0010\u0008\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u00102\u000e\u0008\u0002\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00122\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0005J\u0006\u0010\u0015\u001a\u00020\u0016J\u0010\u0010\u0017\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u000cJ\u0014\u0010\u0019\u001a\u00020\u00052\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0010J0\u0010\u001b\u001a\u00020\u000c2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u0005J\u0008\u0010\u001e\u001a\u00020\u0005H\u0002J\u0008\u0010\u001f\u001a\u00020\u0005H\u0002J\u0012\u0010 \u001a\u0004\u0018\u00010\u000c2\u0006\u0010!\u001a\u00020\u000cH\u0002R\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/shilapi/xcertplay/goc/GocPresence;",
        "",
        "<init>",
        "()V",
        "cachedReady",
        "",
        "Ljava/lang/Boolean;",
        "cachedAtElapsed",
        "",
        "CACHE_MS",
        "sppListenerReady",
        "serviceState",
        "",
        "binaryPresent",
        "allowProbe",
        "unixLines",
        "Lkotlin/sequences/Sequence;",
        "probeSocket",
        "Lkotlin/Function0;",
        "nowElapsed",
        "useCache",
        "invalidateCache",
        "",
        "systemBinaryPresent",
        "path",
        "hasGocSppListener",
        "lines",
        "signals",
        "sppReady",
        "geelyBoard",
        "readUnixHasListener",
        "probeReservedSocket",
        "systemProperty",
        "name",
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
.field private static final CACHE_MS:J = 0x1388L

.field public static final INSTANCE:Lcom/shilapi/xcertplay/goc/GocPresence;

.field private static volatile cachedAtElapsed:J

.field private static volatile cachedReady:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/goc/GocPresence;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/goc/GocPresence;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/goc/GocPresence;->INSTANCE:Lcom/shilapi/xcertplay/goc/GocPresence;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$probeReservedSocket(Lcom/shilapi/xcertplay/goc/GocPresence;)Z
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/shilapi/xcertplay/goc/GocPresence;->probeReservedSocket()Z

    move-result p0

    return p0
.end method

.method private final probeReservedSocket()Z
    .locals 4

    .line 94
    new-instance v0, Landroid/net/LocalSocket;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/net/LocalSocket;-><init>(I)V

    .line 96
    :try_start_0
    new-instance v1, Landroid/net/LocalSocketAddress;

    const-string v2, "goc_spp"

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v1, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 101
    :try_start_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/goc/GocPresence;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

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

    :goto_0
    const/4 v0, 0x1

    goto :goto_2

    :catchall_1
    :try_start_2
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method private final readUnixHasListener()Z
    .locals 4

    .line 88
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/goc/GocPresence;

    .line 89
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/net/unix"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v3, Ljava/io/InputStream;

    invoke-direct {v2, v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v2, Ljava/io/Reader;

    instance-of v0, v2, Ljava/io/BufferedReader;

    const/16 v1, 0x2000

    if-eqz v0, :cond_0

    check-cast v2, Ljava/io/BufferedReader;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v2, v0

    :goto_0
    check-cast v2, Ljava/io/Reader;

    .line 113
    instance-of v0, v2, Ljava/io/BufferedReader;

    if-eqz v0, :cond_1

    check-cast v2, Ljava/io/BufferedReader;

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v2, v0

    :goto_1
    check-cast v2, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v0, v2

    check-cast v0, Ljava/io/BufferedReader;

    invoke-static {v0}, Lkotlin/io/TextStreamsKt;->lineSequence(Ljava/io/BufferedReader;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 89
    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/goc/GocPresence;->hasGocSppListener(Lkotlin/sequences/Sequence;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    .line 113
    :try_start_2
    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 89
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 88
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 113
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    .line 88
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    const/4 v1, 0x0

    .line 90
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    :cond_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static synthetic signals$default(Lcom/shilapi/xcertplay/goc/GocPresence;Ljava/lang/String;ZZZILjava/lang/Object;)Ljava/lang/String;
    .locals 13

    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_0

    .line 78
    const-string p1, "init.svc.gocsdk"

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/goc/GocPresence;->systemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    move-object v1, p1

    and-int/lit8 p1, p5, 0x2

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 79
    invoke-static {p0, p1, v0, p1}, Lcom/shilapi/xcertplay/goc/GocPresence;->systemBinaryPresent$default(Lcom/shilapi/xcertplay/goc/GocPresence;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result p1

    move v2, p1

    goto :goto_0

    :cond_1
    move v2, p2

    :goto_0
    and-int/lit8 p1, p5, 0x4

    if-eqz p1, :cond_2

    const/16 v9, 0x7c

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    .line 80
    invoke-static/range {v0 .. v10}, Lcom/shilapi/xcertplay/goc/GocPresence;->sppListenerReady$default(Lcom/shilapi/xcertplay/goc/GocPresence;Ljava/lang/String;ZZLkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function0;JZILjava/lang/Object;)Z

    move-result p1

    goto :goto_1

    :cond_2
    move/from16 p1, p3

    :goto_1
    and-int/lit8 v3, p5, 0x8

    if-eqz v3, :cond_3

    .line 81
    sget-object v4, Lcom/shilapi/xcertplay/goc/GocBoard;->INSTANCE:Lcom/shilapi/xcertplay/goc/GocBoard;

    const/16 v11, 0x3f

    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v12}, Lcom/shilapi/xcertplay/goc/GocBoard;->looksGeelyFamily$default(Lcom/shilapi/xcertplay/goc/GocBoard;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v3

    goto :goto_2

    :cond_3
    move/from16 v3, p4

    .line 77
    :goto_2
    invoke-virtual {p0, v1, v2, p1, v3}, Lcom/shilapi/xcertplay/goc/GocPresence;->signals(Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic sppListenerReady$default(Lcom/shilapi/xcertplay/goc/GocPresence;Ljava/lang/String;ZZLkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function0;JZILjava/lang/Object;)Z
    .locals 3

    and-int/lit8 p10, p9, 0x1

    if-eqz p10, :cond_0

    .line 24
    const-string p1, "init.svc.gocsdk"

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/goc/GocPresence;->systemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    and-int/lit8 p10, p9, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p10, :cond_1

    .line 25
    invoke-static {p0, v0, v1, v0}, Lcom/shilapi/xcertplay/goc/GocPresence;->systemBinaryPresent$default(Lcom/shilapi/xcertplay/goc/GocPresence;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result p2

    :cond_1
    and-int/lit8 p10, p9, 0x4

    const/4 v2, 0x0

    if-eqz p10, :cond_2

    .line 26
    sget-object p3, Lcom/shilapi/xcertplay/goc/GocBoard;->INSTANCE:Lcom/shilapi/xcertplay/goc/GocBoard;

    invoke-static {p3, v2, v1, v0}, Lcom/shilapi/xcertplay/goc/GocBoard;->shouldProbeGoc$default(Lcom/shilapi/xcertplay/goc/GocBoard;ZILjava/lang/Object;)Z

    move-result p3

    :cond_2
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_4

    .line 28
    new-instance p5, Lcom/shilapi/xcertplay/goc/GocPresence$sppListenerReady$1;

    invoke-direct {p5, p0}, Lcom/shilapi/xcertplay/goc/GocPresence$sppListenerReady$1;-><init>(Ljava/lang/Object;)V

    check-cast p5, Lkotlin/jvm/functions/Function0;

    :cond_4
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_6

    .line 29
    :try_start_0
    sget-object p6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p6

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p6

    invoke-static {p6}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p6, v0

    sget-object p7, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p6}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p6

    invoke-static {p6}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    :goto_0
    invoke-static {p6}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p7

    if-nez p7, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p6

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p6

    :goto_1
    check-cast p6, Ljava/lang/Number;

    invoke-virtual {p6}, Ljava/lang/Number;->longValue()J

    move-result-wide p6

    :cond_6
    and-int/lit8 p9, p9, 0x40

    if-eqz p9, :cond_8

    if-nez p4, :cond_7

    const/4 p8, 0x1

    goto :goto_2

    :cond_7
    const/4 p8, 0x0

    :cond_8
    :goto_2
    move p10, p8

    move-wide p8, p6

    move-object p6, p4

    move-object p7, p5

    move p4, p2

    move p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 23
    invoke-virtual/range {p2 .. p10}, Lcom/shilapi/xcertplay/goc/GocPresence;->sppListenerReady(Ljava/lang/String;ZZLkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function0;JZ)Z

    move-result p0

    return p0
.end method

.method public static synthetic systemBinaryPresent$default(Lcom/shilapi/xcertplay/goc/GocPresence;Ljava/lang/String;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 60
    const-string p1, "/system/bin/gocsdk"

    :cond_0
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/goc/GocPresence;->systemBinaryPresent(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private final systemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    .line 105
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/goc/GocPresence;

    .line 106
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 107
    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 108
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 106
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 105
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 109
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p1, v0

    :cond_1
    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_2

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object v0, p1

    :cond_2
    return-object v0
.end method


# virtual methods
.method public final hasGocSppListener(Lkotlin/sequences/Sequence;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/Sequence<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "lines"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 65
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v2, Lkotlin/text/Regex;

    const-string v3, "\\s+"

    invoke-direct {v2, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v0

    .line 66
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    const/4 v1, 0x7

    .line 67
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 68
    const-string v2, "/dev/socket/goc_spp"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "@goc_spp"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    const/4 v1, 0x3

    .line 69
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_0

    :cond_2
    move-wide v4, v2

    :goto_0
    const-wide/32 v6, 0x10000

    and-long/2addr v4, v6

    cmp-long v1, v4, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    .line 71
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "0001"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public final invalidateCache()V
    .locals 2

    const/4 v0, 0x0

    .line 56
    sput-object v0, Lcom/shilapi/xcertplay/goc/GocPresence;->cachedReady:Ljava/lang/Boolean;

    const-wide/16 v0, 0x0

    .line 57
    sput-wide v0, Lcom/shilapi/xcertplay/goc/GocPresence;->cachedAtElapsed:J

    return-void
.end method

.method public final signals(Ljava/lang/String;ZZZ)Ljava/lang/String;
    .locals 2

    .line 83
    const-string/jumbo v0, "unset"

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    check-cast v0, Ljava/lang/String;

    .line 84
    :cond_1
    const-string/jumbo p1, "yes"

    const-string v1, "no"

    if-eqz p2, :cond_2

    move-object p2, p1

    goto :goto_1

    :cond_2
    move-object p2, v1

    :goto_1
    if-eqz p3, :cond_3

    .line 85
    const-string p3, "ready"

    goto :goto_2

    :cond_3
    move-object p3, v1

    :goto_2
    if-eqz p4, :cond_4

    goto :goto_3

    :cond_4
    move-object p1, v1

    .line 86
    :goto_3
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v1, "gocsdk="

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " binary="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " spp="

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " geely="

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final sppListenerReady(Ljava/lang/String;ZZLkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function0;JZ)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Lkotlin/sequences/Sequence<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;JZ)Z"
        }
    .end annotation

    const-string v0, "probeSocket"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    .line 33
    const-string p3, "running"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 34
    move-object p3, p1

    check-cast p3, Ljava/lang/CharSequence;

    invoke-static {p3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    return v0

    .line 37
    :cond_1
    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    if-nez p2, :cond_3

    return v0

    :cond_3
    if-eqz p8, :cond_4

    .line 40
    sget-object p1, Lcom/shilapi/xcertplay/goc/GocPresence;->cachedReady:Ljava/lang/Boolean;

    if-eqz p1, :cond_4

    .line 41
    sget-wide p2, Lcom/shilapi/xcertplay/goc/GocPresence;->cachedAtElapsed:J

    sub-long p2, p6, p2

    const-wide/16 v1, 0x0

    cmp-long v3, v1, p2

    if-gtz v3, :cond_4

    const-wide/16 v1, 0x1388

    cmp-long v3, p2, v1

    if-gez v3, :cond_4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_4
    if-eqz p4, :cond_5

    .line 44
    invoke-virtual {p0, p4}, Lcom/shilapi/xcertplay/goc/GocPresence;->hasGocSppListener(Lkotlin/sequences/Sequence;)Z

    move-result p1

    goto :goto_1

    .line 45
    :cond_5
    invoke-direct {p0}, Lcom/shilapi/xcertplay/goc/GocPresence;->readUnixHasListener()Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_1

    .line 46
    :cond_6
    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object p1, p0

    check-cast p1, Lcom/shilapi/xcertplay/goc/GocPresence;

    invoke-interface {p5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    move-object p1, p2

    :cond_7
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_1
    if-eqz p8, :cond_8

    .line 49
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    sput-object p2, Lcom/shilapi/xcertplay/goc/GocPresence;->cachedReady:Ljava/lang/Boolean;

    .line 50
    sput-wide p6, Lcom/shilapi/xcertplay/goc/GocPresence;->cachedAtElapsed:J

    :cond_8
    return p1
.end method

.method public final systemBinaryPresent(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/goc/GocPresence;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p1, v0

    :cond_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
