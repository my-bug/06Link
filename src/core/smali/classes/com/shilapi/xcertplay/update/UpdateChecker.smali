.class public final Lcom/shilapi/xcertplay/update/UpdateChecker;
.super Ljava/lang/Object;
.source "UpdateChecker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUpdateChecker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdateChecker.kt\ncom/shilapi/xcertplay/update/UpdateChecker\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,146:1\n1#2:147\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001!B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0005J\u0016\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0007J:\u0010\u0011\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0018\u0010\u0017\u001a\u0014\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00190\u0018J\u001d\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0016H\u0000\u00a2\u0006\u0002\u0008\u001cJ\u0010\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u0005H\u0002J\u0010\u0010\u001f\u001a\u00020 2\u0006\u0010\u001e\u001a\u00020\u0005H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/shilapi/xcertplay/update/UpdateChecker;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "CONNECT_TIMEOUT_MS",
        "",
        "READ_TIMEOUT_MS",
        "MANIFEST_MAX_BYTES",
        "looksLikeBaseUrl",
        "",
        "raw",
        "check",
        "Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome;",
        "baseUrl",
        "installedVersionCode",
        "download",
        "apkUrl",
        "dest",
        "Ljava/io/File;",
        "expectedSize",
        "",
        "onProgress",
        "Lkotlin/Function2;",
        "",
        "exceedsAnnounced",
        "bytes",
        "exceedsAnnounced$common_release",
        "fetchText",
        "url",
        "open",
        "Ljava/net/HttpURLConnection;",
        "Outcome",
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
.field private static final CONNECT_TIMEOUT_MS:I = 0x1f40

.field public static final INSTANCE:Lcom/shilapi/xcertplay/update/UpdateChecker;

.field private static final MANIFEST_MAX_BYTES:I = 0x10000

.field private static final READ_TIMEOUT_MS:I = 0x3a98

.field private static final TAG:Ljava/lang/String; = "DiPlayUpdate"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/update/UpdateChecker;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/update/UpdateChecker;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/update/UpdateChecker;->INSTANCE:Lcom/shilapi/xcertplay/update/UpdateChecker;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final fetchText(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "HTTP "

    .line 115
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/update/UpdateChecker;->open(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p1

    .line 117
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    .line 120
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v1, v0

    check-cast v1, Ljava/io/InputStream;

    const/16 v2, 0x2000

    .line 121
    new-array v2, v2, [B

    .line 122
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 124
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ltz v4, :cond_1

    const/4 v5, 0x0

    .line 126
    invoke-virtual {v3, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 127
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    const/high16 v5, 0x10000

    if-gt v4, v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "manifest too large"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    :cond_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    .line 120
    :try_start_2
    invoke-static {v0, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/String;

    .line 131
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 133
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    :catchall_0
    move-exception v1

    .line 120
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    .line 118
    :cond_2
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    .line 133
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private final open(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 1

    .line 138
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/net/HttpURLConnection;

    const/16 v0, 0x1f40

    .line 139
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v0, 0x3a98

    .line 140
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v0, 0x0

    .line 141
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 142
    const-string v0, "GET"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final check(Ljava/lang/String;I)Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome;
    .locals 2

    const-string v0, "baseUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/update/UpdateChecker;->looksLikeBaseUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$Failed;

    const-string p2, "invalid URL"

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$Failed;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome;

    return-object p1

    .line 42
    :cond_0
    sget-object v0, Lcom/shilapi/xcertplay/update/UpdateManifest;->Companion:Lcom/shilapi/xcertplay/update/UpdateManifest$Companion;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/update/UpdateManifest$Companion;->manifestUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    :try_start_0
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/update/UpdateChecker;->fetchText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 50
    :try_start_1
    sget-object v1, Lcom/shilapi/xcertplay/update/UpdateManifest;->Companion:Lcom/shilapi/xcertplay/update/UpdateManifest$Companion;

    invoke-virtual {v1, v0}, Lcom/shilapi/xcertplay/update/UpdateManifest$Companion;->parse(Ljava/lang/String;)Lcom/shilapi/xcertplay/update/UpdateManifest;

    move-result-object v0
    :try_end_1
    .catch Lcom/shilapi/xcertplay/update/UpdateManifest$MalformedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 54
    invoke-virtual {v0, p2}, Lcom/shilapi/xcertplay/update/UpdateManifest;->isNewerThan(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    new-instance p2, Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$Available;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/update/UpdateManifest;->apkUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$Available;-><init>(Lcom/shilapi/xcertplay/update/UpdateManifest;Ljava/lang/String;)V

    check-cast p2, Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome;

    return-object p2

    .line 57
    :cond_1
    new-instance p1, Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$UpToDate;

    invoke-direct {p1, p2, v0}, Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$UpToDate;-><init>(ILcom/shilapi/xcertplay/update/UpdateManifest;)V

    check-cast p1, Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome;

    return-object p1

    :catch_0
    move-exception p1

    .line 52
    new-instance p2, Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$Failed;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/update/UpdateManifest$MalformedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bad manifest: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$Failed;-><init>(Ljava/lang/String;)V

    check-cast p2, Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome;

    return-object p2

    :catch_1
    move-exception p1

    .line 46
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "manifest fetch failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DiPlayUpdate"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance p2, Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$Failed;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cannot reach server: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$Failed;-><init>(Ljava/lang/String;)V

    check-cast p2, Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome;

    return-object p2
.end method

.method public final download(Ljava/lang/String;Ljava/io/File;JLkotlin/jvm/functions/Function2;)Ljava/lang/String;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "J",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v1, p2

    move-wide/from16 v2, p3

    move-object/from16 v0, p5

    const-string v4, "server sends "

    const-string v5, "server returned HTTP "

    const-string v6, "apkUrl"

    move-object/from16 v7, p1

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "dest"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "onProgress"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/shilapi/xcertplay/update/UpdateChecker;->open(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 73
    :try_start_1
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    const/16 v8, 0xc8

    if-eq v7, v8, :cond_0

    .line 74
    :try_start_2
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    .line 107
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    :catch_0
    move-exception v0

    move-object v2, v0

    move-object/from16 p1, v6

    goto/16 :goto_7

    .line 76
    :cond_0
    :try_start_3
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    int-to-long v7, v5

    const-wide/16 v9, 0x0

    cmp-long v5, v2, v9

    if-lez v5, :cond_1

    cmp-long v5, v7, v2

    if-lez v5, :cond_1

    .line 79
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " bytes, more than the "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " announced"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    .line 107
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    :cond_1
    cmp-long v4, v7, v9

    if-lez v4, :cond_2

    goto :goto_0

    :cond_2
    move-wide v7, v2

    .line 81
    :goto_0
    :try_start_5
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    if-eqz v4, :cond_3

    :try_start_6
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    .line 82
    :cond_3
    :try_start_7
    new-instance v4, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 83
    new-instance v5, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 84
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    check-cast v9, Ljava/io/Closeable;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    :try_start_8
    move-object v10, v9

    check-cast v10, Ljava/io/InputStream;

    new-instance v11, Ljava/io/FileOutputStream;

    .line 85
    invoke-direct {v11, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v11, Ljava/io/Closeable;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :try_start_9
    move-object v12, v11

    check-cast v12, Ljava/io/FileOutputStream;

    const/high16 v13, 0x10000

    .line 86
    new-array v13, v13, [B

    .line 88
    :goto_1
    invoke-virtual {v10, v13}, Ljava/io/InputStream;->read([B)I

    move-result v14

    if-ltz v14, :cond_5

    .line 90
    sget-object v15, Lcom/shilapi/xcertplay/update/UpdateChecker;->INSTANCE:Lcom/shilapi/xcertplay/update/UpdateChecker;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object/from16 p1, v6

    move-wide/from16 v16, v7

    :try_start_a
    iget-wide v6, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    move-wide/from16 v18, v6

    int-to-long v6, v14

    move-wide/from16 v20, v6

    add-long v6, v18, v20

    invoke-virtual {v15, v6, v7, v2, v3}, Lcom/shilapi/xcertplay/update/UpdateChecker;->exceedsAnnounced$common_release(JJ)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, v5, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    .line 91
    invoke-virtual {v12, v13, v6, v14}, Ljava/io/FileOutputStream;->write([BII)V

    .line 92
    iget-wide v6, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    add-long v6, v6, v20

    iput-wide v6, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 93
    iget-wide v6, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, p1

    move-wide/from16 v7, v16

    goto :goto_1

    :cond_5
    move-object/from16 p1, v6

    .line 95
    :goto_2
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->flush()V

    .line 96
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    const/4 v0, 0x0

    .line 85
    :try_start_b
    invoke-static {v11, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 97
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 84
    :try_start_c
    invoke-static {v9, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 98
    iget-boolean v4, v5, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    if-eqz v4, :cond_6

    .line 99
    :try_start_d
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object/from16 v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/update/UpdateChecker;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_e
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download is larger than the "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " bytes announced"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    .line 107
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object/from16 p1, v6

    :goto_4
    move-object v2, v0

    .line 85
    :try_start_f
    throw v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_10
    invoke-static {v11, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :catchall_4
    move-exception v0

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object/from16 p1, v6

    :goto_5
    move-object v2, v0

    .line 84
    :try_start_11
    throw v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :catchall_6
    move-exception v0

    :try_start_12
    invoke-static {v9, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    :catch_1
    move-exception v0

    goto :goto_6

    :catchall_7
    move-exception v0

    move-object/from16 p1, v6

    goto :goto_9

    :catch_2
    move-exception v0

    move-object/from16 p1, v6

    :goto_6
    move-object v2, v0

    .line 104
    :goto_7
    :try_start_13
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    goto :goto_8

    :catchall_8
    move-exception v0

    :try_start_14
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :goto_8
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    .line 107
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    :catchall_9
    move-exception v0

    :goto_9
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0

    :catch_3
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cannot reach server: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final exceedsAnnounced$common_release(JJ)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_0

    cmp-long v0, p1, p3

    if-lez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final looksLikeBaseUrl(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "/"

    const-string v1, "raw"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 33
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 34
    :cond_0
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/update/UpdateChecker;

    .line 35
    new-instance v1, Ljava/net/URL;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {p1, v0, v2, v3, v4}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p1

    const-string v0, "http"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p1

    const-string v0, "https"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x1

    :goto_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 34
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 37
    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object p1, v0

    :cond_4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
