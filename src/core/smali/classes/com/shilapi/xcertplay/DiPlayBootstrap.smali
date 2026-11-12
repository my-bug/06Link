.class public final Lcom/shilapi/xcertplay/DiPlayBootstrap;
.super Ljava/lang/Object;
.source "DiPlayBootstrap.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDiPlayBootstrap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiPlayBootstrap.kt\ncom/shilapi/xcertplay/DiPlayBootstrap\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,79:1\n1#2:80\n1740#3,3:81\n*S KotlinDebug\n*F\n+ 1 DiPlayBootstrap.kt\ncom/shilapi/xcertplay/DiPlayBootstrap\n*L\n23#1:81,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/DiPlayBootstrap;",
        "",
        "<init>",
        "()V",
        "ready",
        "",
        "ensure",
        "",
        "context",
        "Landroid/content/Context;",
        "deviceId",
        "",
        "identity",
        "Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/DiPlayBootstrap;

.field private static volatile ready:Z


# direct methods
.method public static synthetic $r8$lambda$fSL6X5-MevgRUd4Klj3CmmbIEUE(B)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/DiPlayBootstrap;->deviceId$lambda$8(B)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/DiPlayBootstrap;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/DiPlayBootstrap;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/DiPlayBootstrap;->INSTANCE:Lcom/shilapi/xcertplay/DiPlayBootstrap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final deviceId$lambda$8(B)Ljava/lang/CharSequence;
    .locals 3

    and-int/lit16 p0, p0, 0xff

    .line 59
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%02X"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "format(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method


# virtual methods
.method public final deviceId(Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;)Ljava/lang/String;
    .locals 9

    const-string v0, "identity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;->getPublicKey()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    const-string v0, "digest(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x6

    invoke-static {p1, v0}, Lkotlin/collections/ArraysKt;->take([BI)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toByteArray(Ljava/util/Collection;)[B

    move-result-object v0

    const/4 p1, 0x0

    .line 58
    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xfc

    or-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 59
    const-string p1, ":"

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v6, Lcom/shilapi/xcertplay/DiPlayBootstrap$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/shilapi/xcertplay/DiPlayBootstrap$$ExternalSyntheticLambda0;-><init>()V

    const/16 v7, 0x1e

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v8}, Lkotlin/collections/ArraysKt;->joinToString$default([BLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized ensure(Landroid/content/Context;)V
    .locals 12

    invoke-static {p1}, Lcom/shilapi/xcertplay/E01BuildVariant;->isPreview(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0

    monitor-enter p0

    :try_start_0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 18
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/DiPlayBootstrap;

    invoke-static {p1}, Lcom/shilapi/xcertplay/E01WheelKeys;->init(Landroid/content/Context;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :goto_0
    sget-boolean v0, Lcom/shilapi/xcertplay/DiPlayBootstrap;->ready:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    .line 20
    :cond_1
    :try_start_3
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/shilapi/xcertplay/compat/Api19Kt;->getNoBackupFilesDirCompat(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "offline-mfi"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_5

    new-array v1, v2, [Ljava/lang/String;

    const-string v6, "identity.pk8"

    aput-object v6, v1, v5

    const-string v6, "certificate.p7b"

    aput-object v6, v1, v4

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 81
    instance-of v6, v1, Ljava/util/Collection;

    if-eqz v6, :cond_2

    move-object v6, v1

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    goto/16 :goto_3

    .line 82
    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_9

    .line 24
    :try_start_4
    sget-object v7, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 25
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v7}, Lkotlin/io/FilesKt;->readBytes(Ljava/io/File;)[B

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "offline-mfi/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    check-cast v6, Ljava/io/Closeable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    move-object v8, v6

    check-cast v8, Ljava/io/InputStream;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v8}, Lkotlin/io/ByteStreamsKt;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-static {v6, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 24
    invoke-static {v6}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_1

    :catchall_1
    move-exception v7

    .line 25
    :try_start_7
    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v8

    :try_start_8
    invoke-static {v6, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v6

    .line 24
    :try_start_9
    sget-object v7, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v6}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 26
    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v6}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v6, v7

    :cond_4
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_3

    .line 29
    :cond_5
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Lcom/shilapi/xcertplay/compat/Api19Kt;->getNoBackupFilesDirCompat(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    const-string v7, "offline-mfi-staging"

    invoke-direct {v1, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 30
    invoke-static {v1}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 31
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 32
    invoke-virtual {v1, v5, v5}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v1, v4, v4}, Ljava/io/File;->setReadable(ZZ)Z

    .line 33
    invoke-virtual {v1, v5, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    invoke-virtual {v1, v4, v4}, Ljava/io/File;->setExecutable(ZZ)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 35
    :try_start_a
    new-array v6, v2, [Ljava/lang/String;

    const-string v7, "identity.pk8"

    aput-object v7, v6, v5

    const-string v7, "certificate.p7b"

    aput-object v7, v6, v4

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 36
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "offline-mfi/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    check-cast v7, Ljava/io/Closeable;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    :try_start_b
    move-object v9, v7

    check-cast v9, Ljava/io/InputStream;

    new-instance v10, Ljava/io/FileOutputStream;

    .line 38
    invoke-direct {v10, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v10, Ljava/io/Closeable;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :try_start_c
    move-object v11, v10

    check-cast v11, Ljava/io/FileOutputStream;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v11, Ljava/io/OutputStream;

    invoke-static {v9, v11, v5, v2, v3}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    invoke-static {v10, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 37
    :try_start_e
    invoke-static {v7, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 40
    invoke-virtual {v8, v5, v5}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v8, v4, v4}, Ljava/io/File;->setReadable(ZZ)Z

    .line 41
    invoke-virtual {v8, v5, v5}, Ljava/io/File;->setWritable(ZZ)Z

    invoke-virtual {v8, v4, v4}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    goto :goto_2

    :catchall_4
    move-exception p1

    .line 38
    :try_start_f
    throw p1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :catchall_5
    move-exception v0

    :try_start_10
    invoke-static {v10, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :catchall_6
    move-exception p1

    .line 37
    :try_start_11
    throw p1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    :catchall_7
    move-exception v0

    :try_start_12
    invoke-static {v7, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 43
    :cond_6
    sget-object v6, Lcom/shilapi/xcertplay/mfi/LocalMfiAuthenticationClient;->Companion:Lcom/shilapi/xcertplay/mfi/LocalMfiAuthenticationClient$Companion;

    invoke-static {v6, v1, v3, v2, v3}, Lcom/shilapi/xcertplay/mfi/LocalMfiAuthenticationClient$Companion;->load$default(Lcom/shilapi/xcertplay/mfi/LocalMfiAuthenticationClient$Companion;Ljava/io/File;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/shilapi/xcertplay/mfi/LocalMfiAuthenticationClient;

    .line 44
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {v0}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 45
    :cond_7
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    if-eqz v6, :cond_9

    .line 47
    :try_start_13
    invoke-static {v1}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 50
    :cond_8
    :goto_3
    sget-object v1, Lcom/shilapi/xcertplay/mfi/LocalMfiAuthenticationClient;->Companion:Lcom/shilapi/xcertplay/mfi/LocalMfiAuthenticationClient$Companion;

    invoke-static {v1, v0, v3, v2, v3}, Lcom/shilapi/xcertplay/mfi/LocalMfiAuthenticationClient$Companion;->load$default(Lcom/shilapi/xcertplay/mfi/LocalMfiAuthenticationClient$Companion;Ljava/io/File;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/shilapi/xcertplay/mfi/LocalMfiAuthenticationClient;

    .line 51
    sget-object v0, Lcom/shilapi/xcertplay/AirPlayPersistence;->INSTANCE:Lcom/shilapi/xcertplay/AirPlayPersistence;

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/MfiTarget;->LOCAL:Lcom/shilapi/xcertplay/orchestration/MfiTarget;

    invoke-virtual {v0, p1, v1}, Lcom/shilapi/xcertplay/AirPlayPersistence;->saveMfiTarget(Landroid/content/Context;Lcom/shilapi/xcertplay/orchestration/MfiTarget;)V

    .line 52
    sget-object v0, Lcom/shilapi/xcertplay/AirPlayPersistence;->INSTANCE:Lcom/shilapi/xcertplay/AirPlayPersistence;

    invoke-virtual {v0, p1, v5}, Lcom/shilapi/xcertplay/AirPlayPersistence;->saveDebugLogsEnabled(Landroid/content/Context;Z)V

    .line 53
    sput-boolean v4, Lcom/shilapi/xcertplay/DiPlayBootstrap;->ready:Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    .line 54
    monitor-exit p0

    return-void

    .line 45
    :cond_9
    :try_start_14
    const-string p1, "Could not install local authentication"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    :catchall_8
    move-exception p1

    .line 47
    :try_start_15
    invoke-static {v1}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    throw p1

    .line 31
    :cond_a
    const-string p1, "Could not prepare local authentication"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_9
    move-exception p1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method
