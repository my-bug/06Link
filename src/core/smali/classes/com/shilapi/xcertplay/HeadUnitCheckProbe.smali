.class public final Lcom/shilapi/xcertplay/HeadUnitCheckProbe;
.super Ljava/lang/Object;
.source "HeadUnitCheckProbe.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/HeadUnitCheckProbe$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHeadUnitCheckProbe.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HeadUnitCheckProbe.kt\ncom/shilapi/xcertplay/HeadUnitCheckProbe\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 5 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,220:1\n1#2:221\n1#2:275\n295#3,2:222\n1761#3,3:224\n1761#3,3:227\n1788#3,4:230\n1761#3,3:234\n1761#3,3:237\n1374#3:240\n1460#3,5:241\n774#3:246\n865#3,2:247\n295#3,2:249\n1563#3:255\n1634#3,3:256\n1374#3:259\n1460#3,5:260\n1617#3,9:265\n1869#3:274\n1870#3:276\n1626#3:277\n12637#4:251\n12638#4:254\n1069#5,2:252\n*S KotlinDebug\n*F\n+ 1 HeadUnitCheckProbe.kt\ncom/shilapi/xcertplay/HeadUnitCheckProbe\n*L\n208#1:275\n46#1:222,2\n56#1:224,3\n60#1:227,3\n77#1:230,4\n84#1:234,3\n85#1:237,3\n178#1:240\n178#1:241,5\n190#1:246\n190#1:247,2\n190#1:249,2\n206#1:255\n206#1:256,3\n207#1:259\n207#1:260,5\n208#1:265,9\n208#1:274\n208#1:276\n208#1:277\n196#1:251\n196#1:254\n197#1:252,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u0018\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0005J\u0008\u0010\u000f\u001a\u00020\u0010H\u0002J\u0016\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\n\u001a\u00020\u000bH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/HeadUnitCheckProbe;",
        "",
        "<init>",
        "()V",
        "APPLE_VENDOR_ID",
        "",
        "CHECK_UUID",
        "",
        "read",
        "Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;",
        "context",
        "Landroid/content/Context;",
        "port",
        "Lcom/shilapi/xcertplay/HeadUnitCheck$Port;",
        "preferred",
        "gpsDaemonRunning",
        "",
        "otherApps",
        "",
        "Lcom/shilapi/xcertplay/HeadUnitCheck$OtherApp;",
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
.field private static final APPLE_VENDOR_ID:I = 0x5ac

.field private static final CHECK_UUID:Ljava/lang/String; = "6c6a2f3e-1b0f-4f7e-9c42-6b1f3d2a8e11"

.field public static final INSTANCE:Lcom/shilapi/xcertplay/HeadUnitCheckProbe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/HeadUnitCheckProbe;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/HeadUnitCheckProbe;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/HeadUnitCheckProbe;->INSTANCE:Lcom/shilapi/xcertplay/HeadUnitCheckProbe;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final gpsDaemonRunning()Z
    .locals 9

    const/4 v0, 0x0

    .line 195
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/HeadUnitCheckProbe;

    .line 196
    new-instance v1, Ljava/io/File;

    const-string v2, "/proc"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 251
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 197
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getName(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    .line 252
    :goto_1
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 197
    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v7, :cond_0

    goto :goto_3

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    :try_start_1
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v6, Ljava/io/File;

    const-string v7, "cmdline"

    invoke-direct {v6, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v6, v4, v5, v4}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v0, v4, v7, v4}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "mnld"

    invoke-static {v6, v8, v0, v7, v4}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v4

    :try_start_2
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v4}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v4}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v4, v6

    :cond_2
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_4

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    .line 198
    :goto_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 195
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 199
    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v1, v0

    :cond_5
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final otherApps(Landroid/content/Context;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/HeadUnitCheck$OtherApp;",
            ">;"
        }
    .end annotation

    .line 202
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 203
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Landroid/app/ActivityManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast p1, Landroid/app/ActivityManager;

    goto :goto_0

    :cond_0
    move-object p1, v2

    .line 206
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v1, v3, :cond_4

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/HeadUnitCheckProbe;

    if-eqz p1, :cond_2

    const/16 v1, 0xc8

    invoke-virtual {p1, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Ljava/lang/Iterable;

    .line 255
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 256
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 257
    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 206
    iget-object v4, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 257
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 258
    :cond_1
    check-cast v3, Ljava/util/List;

    goto :goto_2

    :cond_2
    move-object v3, v2

    .line 206
    :goto_2
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_3
    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v1, v2

    :cond_3
    check-cast v1, Ljava/util/List;

    goto :goto_4

    :cond_4
    move-object v1, v2

    .line 207
    :goto_4
    :try_start_1
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v3, p0

    check-cast v3, Lcom/shilapi/xcertplay/HeadUnitCheckProbe;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_8

    check-cast p1, Ljava/lang/Iterable;

    .line 259
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 260
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 261
    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 207
    iget-object v4, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v4, :cond_5

    invoke-static {v4}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    goto :goto_6

    :cond_5
    move-object v4, v2

    :goto_6
    if-nez v4, :cond_6

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    :cond_6
    check-cast v4, Ljava/lang/Iterable;

    .line 262
    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_5

    .line 264
    :cond_7
    check-cast v3, Ljava/util/List;

    goto :goto_7

    :cond_8
    move-object v3, v2

    .line 207
    :goto_7
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception p1

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_8
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object p1, v2

    :cond_9
    check-cast p1, Ljava/util/List;

    .line 208
    sget-object v3, Lcom/shilapi/xcertplay/HeadUnitCheck;->INSTANCE:Lcom/shilapi/xcertplay/HeadUnitCheck;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/HeadUnitCheck;->getOTHER_CARPLAY_APPS()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 265
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .line 274
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 273
    check-cast v5, Lkotlin/Pair;

    invoke-virtual {v5}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v7, 0x0

    .line 209
    :try_start_2
    sget-object v8, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v0, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    invoke-static {v8}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_a

    :catchall_2
    move-exception v8

    sget-object v9, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v8}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    :goto_a
    invoke-static {v8}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    move-object v8, v2

    :cond_b
    check-cast v8, Landroid/content/pm/ApplicationInfo;

    if-nez v8, :cond_c

    move-object v8, v2

    goto :goto_f

    .line 210
    :cond_c
    :try_start_3
    sget-object v9, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_b

    :catchall_3
    move-exception v8

    sget-object v9, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v8}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    :goto_b
    invoke-static {v8}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    move-object v8, v2

    :cond_d
    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_10

    move-object v9, v8

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_e

    goto :goto_c

    :cond_e
    move-object v8, v2

    :goto_c
    if-nez v8, :cond_f

    goto :goto_d

    :cond_f
    move-object v5, v8

    :cond_10
    :goto_d
    const/4 v8, 0x1

    if-nez v1, :cond_12

    if-eqz p1, :cond_11

    .line 212
    invoke-interface {p1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v8, :cond_11

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_e

    :cond_11
    move-object v7, v2

    goto :goto_e

    .line 213
    :cond_12
    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13

    if-eqz p1, :cond_14

    invoke-interface {p1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-ne v9, v8, :cond_14

    :cond_13
    const/4 v7, 0x1

    :cond_14
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 215
    :goto_e
    new-instance v8, Lcom/shilapi/xcertplay/HeadUnitCheck$OtherApp;

    invoke-direct {v8, v5, v6, v7}, Lcom/shilapi/xcertplay/HeadUnitCheck$OtherApp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    :goto_f
    if-eqz v8, :cond_a

    .line 273
    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 277
    :cond_15
    check-cast v4, Ljava/util/List;

    return-object v4
.end method

.method public static synthetic port$default(Lcom/shilapi/xcertplay/HeadUnitCheckProbe;Landroid/content/Context;IILjava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Port;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/16 p2, 0x1b58

    .line 172
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/HeadUnitCheckProbe;->port(Landroid/content/Context;I)Lcom/shilapi/xcertplay/HeadUnitCheck$Port;

    move-result-object p0

    return-object p0
.end method

.method private static final port$free(I)Ljava/lang/Boolean;
    .locals 5

    const/4 v0, 0x0

    .line 173
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 174
    new-instance v1, Ljava/net/ServerSocket;

    invoke-direct {v1}, Ljava/net/ServerSocket;-><init>()V

    check-cast v1, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v2, v1

    check-cast v2, Ljava/net/ServerSocket;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, p0}, Ljava/net/InetSocketAddress;-><init>(I)V

    check-cast v4, Ljava/net/SocketAddress;

    invoke-virtual {v2, v4}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 173
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 174
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-static {v1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    .line 173
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 175
    :goto_0
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v0, p0

    goto :goto_1

    :cond_0
    sget-object p0, Lcom/shilapi/xcertplay/network/AirPlayPorts;->INSTANCE:Lcom/shilapi/xcertplay/network/AirPlayPorts;

    invoke-virtual {p0, v1}, Lcom/shilapi/xcertplay/network/AirPlayPorts;->isInUse(Ljava/lang/Throwable;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_1
    :goto_1
    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method private static final read$feature(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 1

    .line 42
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p0, p1

    :cond_0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final port(Landroid/content/Context;I)Lcom/shilapi/xcertplay/HeadUnitCheck$Port;
    .locals 12

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-static {p2}, Lcom/shilapi/xcertplay/HeadUnitCheckProbe;->port$free(I)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 177
    new-instance v2, Lcom/shilapi/xcertplay/HeadUnitCheck$Port;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/16 v9, 0x3c

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v3, p2

    invoke-direct/range {v2 .. v10}, Lcom/shilapi/xcertplay/HeadUnitCheck$Port;-><init>(ILjava/lang/Boolean;ZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_0
    move v4, p2

    const/4 p2, 0x2

    .line 178
    new-array p2, p2, [Ljava/lang/String;

    const-string v0, "/proc/net/tcp"

    aput-object v0, p2, v1

    const-string v0, "/proc/net/tcp6"

    const/4 v2, 0x1

    aput-object v0, p2, v2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    .line 241
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 242
    check-cast v0, Ljava/lang/String;

    .line 178
    :try_start_0
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v5, v2, v5}, Lkotlin/io/FilesKt;->readLines$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v0, v5

    :cond_1
    check-cast v0, Ljava/lang/Iterable;

    .line 243
    invoke-static {v3, v0}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 245
    :cond_2
    check-cast v3, Ljava/util/List;

    .line 179
    sget-object p2, Lcom/shilapi/xcertplay/HeadUnitCheck;->INSTANCE:Lcom/shilapi/xcertplay/HeadUnitCheck;

    invoke-virtual {p2, v3, v4}, Lcom/shilapi/xcertplay/HeadUnitCheck;->listenerUid(Ljava/util/List;I)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 180
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p2

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p2, :cond_3

    new-instance v3, Lcom/shilapi/xcertplay/HeadUnitCheck$Port;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v10, 0x30

    const/4 v11, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v11}, Lcom/shilapi/xcertplay/HeadUnitCheck$Port;-><init>(ILjava/lang/Boolean;ZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3

    :cond_3
    if-nez v7, :cond_5

    :cond_4
    move-object v8, v5

    goto :goto_6

    .line 183
    :cond_5
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 v0, 0x2710

    if-lt p2, v0, :cond_9

    :try_start_1
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object p2, p0

    check-cast p2, Lcom/shilapi/xcertplay/HeadUnitCheckProbe;

    .line 184
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-static {p2}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_2

    :cond_6
    move-object p2, v5

    :goto_2
    if-eqz p2, :cond_7

    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_7
    move-object p1, v5

    .line 183
    :goto_3
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object p1, v0

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 186
    :goto_4
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    move-object p1, v5

    :cond_8
    check-cast p1, Ljava/lang/String;

    goto :goto_5

    .line 187
    :cond_9
    invoke-direct {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckProbe;->gpsDaemonRunning()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "mnld"

    :goto_5
    move-object v8, p1

    .line 190
    :goto_6
    sget-object p1, Lcom/shilapi/xcertplay/network/AirPlayPorts;->INSTANCE:Lcom/shilapi/xcertplay/network/AirPlayPorts;

    invoke-virtual {p1, v4}, Lcom/shilapi/xcertplay/network/AirPlayPorts;->candidates(I)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->drop(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 246
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/Collection;

    .line 247
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 248
    :cond_b
    check-cast p2, Ljava/util/List;

    .line 246
    check-cast p2, Ljava/lang/Iterable;

    .line 249
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 190
    invoke-static {v0}, Lcom/shilapi/xcertplay/HeadUnitCheckProbe;->port$free(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v5, p2

    :cond_d
    move-object v9, v5

    check-cast v9, Ljava/lang/Integer;

    .line 191
    new-instance v3, Lcom/shilapi/xcertplay/HeadUnitCheck$Port;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v11}, Lcom/shilapi/xcertplay/HeadUnitCheck$Port;-><init>(ILjava/lang/Boolean;ZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3

    :cond_e
    move v4, p2

    .line 176
    new-instance v3, Lcom/shilapi/xcertplay/HeadUnitCheck$Port;

    const/16 v10, 0x3c

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v11}, Lcom/shilapi/xcertplay/HeadUnitCheck$Port;-><init>(ILjava/lang/Boolean;ZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3
.end method

.method public final read(Landroid/content/Context;)Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;
    .locals 50

    move-object/from16 v1, p0

    const-string v0, "context"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 41
    :goto_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    .line 45
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitCheckProbe;

    const-string/jumbo v0, "usb"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Landroid/hardware/usb/UsbManager;

    if-eqz v5, :cond_1

    check-cast v0, Landroid/hardware/usb/UsbManager;

    goto :goto_1

    :cond_1
    move-object v0, v4

    :goto_1
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v0, v4

    :cond_2
    move-object v5, v0

    check-cast v5, Landroid/hardware/usb/UsbManager;

    .line 46
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitCheckProbe;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Ljava/lang/Iterable;

    .line 222
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Landroid/hardware/usb/UsbDevice;

    .line 46
    invoke-virtual {v7}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v7

    const/16 v8, 0x5ac

    if-ne v7, v8, :cond_3

    goto :goto_3

    :cond_4
    move-object v6, v4

    .line 223
    :goto_3
    check-cast v6, Landroid/hardware/usb/UsbDevice;

    goto :goto_4

    :cond_5
    move-object v6, v4

    .line 46
    :goto_4
    invoke-static {v6}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_5
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    move-object v0, v4

    :cond_6
    move-object v6, v0

    check-cast v6, Landroid/hardware/usb/UsbDevice;

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v6, :cond_8

    .line 47
    :try_start_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lcom/shilapi/xcertplay/transport/UsbConfigCompat;->INSTANCE:Lcom/shilapi/xcertplay/transport/UsbConfigCompat;

    invoke-static {v0, v6, v4, v7, v4}, Lcom/shilapi/xcertplay/transport/UsbConfigCompat;->configurations$default(Lcom/shilapi/xcertplay/transport/UsbConfigCompat;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbManager;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    sget-object v9, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_6
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    move-object v0, v9

    :cond_7
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0, v8}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v12, v0

    goto :goto_7

    :cond_8
    move-object v12, v4

    :goto_7
    const/4 v9, 0x0

    if-eqz v6, :cond_a

    .line 48
    :try_start_3
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitCheckProbe;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_8

    :catchall_3
    move-exception v0

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_8
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    move-object v0, v5

    :cond_9
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v13, 0x1

    goto :goto_9

    :cond_a
    const/4 v13, 0x0

    :goto_9
    if-eqz v6, :cond_d

    .line 49
    :try_start_4
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitCheckProbe;

    sget-object v0, Lcom/shilapi/xcertplay/transport/IphoneCarPlayConfiguration;->INSTANCE:Lcom/shilapi/xcertplay/transport/IphoneCarPlayConfiguration;

    invoke-static {v0, v6, v4, v7, v4}, Lcom/shilapi/xcertplay/transport/IphoneCarPlayConfiguration;->find$default(Lcom/shilapi/xcertplay/transport/IphoneCarPlayConfiguration;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbManager;ILjava/lang/Object;)Lcom/shilapi/xcertplay/transport/UsbConfigView;

    move-result-object v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_a

    :cond_b
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_b

    :catchall_4
    move-exception v0

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_b
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    move-object v0, v5

    :cond_c
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v14, 0x1

    goto :goto_c

    :cond_d
    const/4 v14, 0x0

    .line 50
    :goto_c
    :try_start_5
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitCheckProbe;

    sget-object v0, Lcom/shilapi/xcertplay/VpnConsentState;->INSTANCE:Lcom/shilapi/xcertplay/VpnConsentState;

    invoke-virtual {v0, v2}, Lcom/shilapi/xcertplay/VpnConsentState;->granted(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_d

    :catchall_5
    move-exception v0

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_d
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    move-object v0, v4

    :cond_e
    move-object v15, v0

    check-cast v15, Ljava/lang/Boolean;

    .line 53
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities;->INSTANCE:Lcom/shilapi/xcertplay/HeadUnitCapabilities;

    const-string/jumbo v5, "video/avc"

    invoke-virtual {v0, v5}, Lcom/shilapi/xcertplay/HeadUnitCapabilities;->decoders$common_release(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 55
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-ge v5, v6, :cond_11

    :try_start_6
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitCheckProbe;

    sget-object v0, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;->Companion:Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Companion;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Companion;->getAvailable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_e

    :catchall_6
    move-exception v0

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_e
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    move-object v0, v5

    :cond_f
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCheck$Decoder;->SOFTWARE:Lcom/shilapi/xcertplay/HeadUnitCheck$Decoder;

    goto :goto_f

    :cond_10
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCheck$Decoder;->NONE:Lcom/shilapi/xcertplay/HeadUnitCheck$Decoder;

    goto :goto_f

    .line 56
    :cond_11
    move-object v5, v0

    check-cast v5, Ljava/lang/Iterable;

    sget-object v6, Lcom/shilapi/xcertplay/HeadUnitCapabilities;->INSTANCE:Lcom/shilapi/xcertplay/HeadUnitCapabilities;

    .line 224
    instance-of v10, v5, Ljava/util/Collection;

    if-eqz v10, :cond_12

    move-object v10, v5

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_12

    goto :goto_10

    .line 225
    :cond_12
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 56
    invoke-virtual {v6, v10}, Lcom/shilapi/xcertplay/HeadUnitCapabilities;->isHardware$common_release(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_13

    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCheck$Decoder;->HARDWARE:Lcom/shilapi/xcertplay/HeadUnitCheck$Decoder;

    :goto_f
    move-object/from16 v17, v0

    goto :goto_11

    .line 57
    :cond_14
    :goto_10
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCheck$Decoder;->SOFTWARE:Lcom/shilapi/xcertplay/HeadUnitCheck$Decoder;

    goto :goto_f

    .line 58
    :cond_15
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCheck$Decoder;->NONE:Lcom/shilapi/xcertplay/HeadUnitCheck$Decoder;

    goto :goto_f

    .line 60
    :goto_11
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities;->INSTANCE:Lcom/shilapi/xcertplay/HeadUnitCapabilities;

    const-string/jumbo v5, "video/hevc"

    invoke-virtual {v0, v5}, Lcom/shilapi/xcertplay/HeadUnitCapabilities;->decoders$common_release(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    sget-object v5, Lcom/shilapi/xcertplay/HeadUnitCapabilities;->INSTANCE:Lcom/shilapi/xcertplay/HeadUnitCapabilities;

    .line 227
    instance-of v6, v0, Ljava/util/Collection;

    if-eqz v6, :cond_17

    move-object v6, v0

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_17

    :cond_16
    const/16 v18, 0x0

    goto :goto_12

    .line 228
    :cond_17
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 60
    invoke-virtual {v5, v6}, Lcom/shilapi/xcertplay/HeadUnitCapabilities;->isHardware$common_release(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    const/16 v18, 0x1

    .line 63
    :goto_12
    :try_start_7
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitCheckProbe;

    invoke-static {v2}, Lcom/shilapi/xcertplay/compat/Api19Kt;->bluetoothAdapterCompat(Landroid/content/Context;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_13

    :catchall_7
    move-exception v0

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_13
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    move-object v0, v4

    :cond_19
    move-object v5, v0

    check-cast v5, Landroid/bluetooth/BluetoothAdapter;

    .line 64
    :try_start_8
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitCheckProbe;

    sget-object v0, Lcom/shilapi/xcertplay/compat/BluetoothStackSupport;->INSTANCE:Lcom/shilapi/xcertplay/compat/BluetoothStackSupport;

    invoke-virtual {v0, v2, v5}, Lcom/shilapi/xcertplay/compat/BluetoothStackSupport;->classify(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)Lcom/shilapi/xcertplay/compat/BluetoothStack;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    goto :goto_14

    :catchall_8
    move-exception v0

    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_14
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    move-object v0, v4

    :cond_1a
    move-object v6, v0

    check-cast v6, Lcom/shilapi/xcertplay/compat/BluetoothStack;

    .line 65
    sget-object v0, Lcom/shilapi/xcertplay/compat/BluetoothStack;->ENABLED:Lcom/shilapi/xcertplay/compat/BluetoothStack;

    if-eq v6, v0, :cond_1c

    sget-object v0, Lcom/shilapi/xcertplay/compat/BluetoothStack;->OFF:Lcom/shilapi/xcertplay/compat/BluetoothStack;

    if-ne v6, v0, :cond_1b

    goto :goto_15

    :cond_1b
    const/4 v10, 0x0

    goto :goto_16

    :cond_1c
    :goto_15
    const/4 v10, 0x1

    .line 66
    :goto_16
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtSession;

    invoke-virtual {v0, v2}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->dongle(Landroid/content/Context;)Landroid/hardware/usb/UsbDevice;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 68
    sget-object v11, Lcom/shilapi/xcertplay/HeadUnitCheck$Dongle;->NONE:Lcom/shilapi/xcertplay/HeadUnitCheck$Dongle;

    goto :goto_17

    .line 69
    :cond_1d
    sget-object v11, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtSession;

    invoke-virtual {v11, v2, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->hasPermission(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;)Z

    move-result v11

    if-eqz v11, :cond_1e

    sget-object v11, Lcom/shilapi/xcertplay/HeadUnitCheck$Dongle;->ALLOWED:Lcom/shilapi/xcertplay/HeadUnitCheck$Dongle;

    goto :goto_17

    .line 70
    :cond_1e
    sget-object v11, Lcom/shilapi/xcertplay/HeadUnitCheck$Dongle;->NOT_ALLOWED:Lcom/shilapi/xcertplay/HeadUnitCheck$Dongle;

    .line 72
    :goto_17
    sget-object v16, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtSession;

    invoke-virtual/range {v16 .. v16}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->getLastStatus()Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;

    move-result-object v16

    if-eqz v16, :cond_1f

    invoke-virtual/range {v16 .. v16}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->getController()Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;

    move-result-object v16

    goto :goto_18

    :cond_1f
    move-object/from16 v16, v4

    :goto_18
    const/16 p1, 0x1

    const/16 v8, 0x15

    if-eqz v0, :cond_22

    .line 73
    :try_start_9
    sget-object v19, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_a

    const/16 v19, 0x0

    :try_start_a
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v9, v8, :cond_20

    invoke-static {v0}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/hardware/usb/UsbDevice;)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :cond_20
    move-object v0, v4

    :goto_19
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    goto :goto_1b

    :catchall_9
    move-exception v0

    goto :goto_1a

    :catchall_a
    move-exception v0

    const/16 v19, 0x0

    :goto_1a
    sget-object v9, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1b
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_21

    move-object v0, v4

    :cond_21
    check-cast v0, Ljava/lang/String;

    move-object/from16 v25, v0

    goto :goto_1c

    :cond_22
    const/16 v19, 0x0

    move-object/from16 v25, v4

    :goto_1c
    if-eqz v10, :cond_25

    .line 74
    :try_start_b
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitCheckProbe;

    if-eqz v5, :cond_23

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1d

    :cond_23
    move-object v0, v4

    :goto_1d
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    goto :goto_1e

    :catchall_b
    move-exception v0

    sget-object v9, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1e
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    move-object v0, v4

    :cond_24
    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v9, 0x1

    goto :goto_1f

    :cond_25
    const/4 v9, 0x0

    :goto_1f
    if-eqz v9, :cond_27

    .line 75
    :try_start_c
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitCheckProbe;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    const-string v4, "getBondedDevices(...)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    goto :goto_20

    :catchall_c
    move-exception v0

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_20
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    const/4 v0, 0x0

    :cond_26
    check-cast v0, Ljava/util/List;

    move-object v4, v0

    goto :goto_21

    :cond_27
    const/4 v4, 0x0

    :goto_21
    if-eqz v10, :cond_2c

    if-eqz v4, :cond_2b

    .line 77
    move-object v0, v4

    check-cast v0, Ljava/lang/Iterable;

    .line 230
    instance-of v8, v0, Ljava/util/Collection;

    if-eqz v8, :cond_29

    move-object v8, v0

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_29

    const/4 v8, 0x0

    :cond_28
    const/16 v23, 0x2

    goto :goto_23

    .line 232
    :cond_29
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v8, 0x0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    const/16 v23, 0x2

    move-object/from16 v7, v22

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v22, v0

    .line 77
    sget-object v0, Lcom/shilapi/xcertplay/IphonePairing;->Companion:Lcom/shilapi/xcertplay/IphonePairing$Companion;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Lcom/shilapi/xcertplay/IphonePairing$Companion;->kind(Landroid/bluetooth/BluetoothDevice;)Lcom/shilapi/xcertplay/IphonePairing$Kind;

    move-result-object v0

    sget-object v7, Lcom/shilapi/xcertplay/IphonePairing$Kind;->IPHONE:Lcom/shilapi/xcertplay/IphonePairing$Kind;

    if-ne v0, v7, :cond_2a

    add-int/lit8 v8, v8, 0x1

    if-gez v8, :cond_2a

    .line 232
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    :cond_2a
    move-object/from16 v0, v22

    const/4 v7, 0x2

    goto :goto_22

    .line 233
    :goto_23
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_24
    move-object/from16 v28, v0

    goto :goto_27

    :cond_2b
    const/16 v23, 0x2

    goto :goto_26

    :cond_2c
    const/16 v23, 0x2

    .line 78
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCheck$Dongle;->NONE:Lcom/shilapi/xcertplay/HeadUnitCheck$Dongle;

    if-eq v11, v0, :cond_2e

    :try_start_d
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitCheckProbe;

    new-instance v0, Lcom/shilapi/xcertplay/usbbt/PreferencesLinkKeyStore;

    invoke-direct {v0, v2}, Lcom/shilapi/xcertplay/usbbt/PreferencesLinkKeyStore;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/PreferencesLinkKeyStore;->count()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    goto :goto_25

    :catchall_d
    move-exception v0

    sget-object v7, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_25
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    const/4 v0, 0x0

    :cond_2d
    check-cast v0, Ljava/lang/Integer;

    goto :goto_24

    :cond_2e
    :goto_26
    const/16 v28, 0x0

    :goto_27
    if-nez v9, :cond_2f

    const/16 v29, 0x0

    goto :goto_2a

    .line 81
    :cond_2f
    :try_start_e
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitCheckProbe;

    .line 82
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "06Link check"

    const-string v7, "6c6a2f3e-1b0f-4f7e-9c42-6b1f3d2a8e11"

    invoke-static {v7}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v5, v0, v7}, Landroid/bluetooth/BluetoothAdapter;->listenUsingInsecureRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->close()V

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 81
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    goto :goto_28

    :catchall_e
    move-exception v0

    sget-object v7, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 83
    :goto_28
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v7

    if-nez v7, :cond_30

    goto :goto_29

    :cond_30
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_29
    check-cast v0, Ljava/lang/Boolean;

    move-object/from16 v29, v0

    :goto_2a
    if-eqz v9, :cond_39

    if-nez v4, :cond_31

    goto/16 :goto_30

    .line 84
    :cond_31
    check-cast v4, Ljava/lang/Iterable;

    .line 234
    instance-of v0, v4, Ljava/util/Collection;

    if-eqz v0, :cond_32

    move-object v0, v4

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_32

    goto/16 :goto_2e

    .line 235
    :cond_32
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 84
    sget-object v7, Lcom/shilapi/xcertplay/IphonePairing;->Companion:Lcom/shilapi/xcertplay/IphonePairing$Companion;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7, v4}, Lcom/shilapi/xcertplay/IphonePairing$Companion;->kind(Landroid/bluetooth/BluetoothDevice;)Lcom/shilapi/xcertplay/IphonePairing$Kind;

    move-result-object v4

    sget-object v7, Lcom/shilapi/xcertplay/IphonePairing$Kind;->IPHONE:Lcom/shilapi/xcertplay/IphonePairing$Kind;

    if-ne v4, v7, :cond_37

    .line 85
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Integer;

    aput-object v0, v8, v19

    aput-object v4, v8, p1

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 237
    instance-of v4, v0, Ljava/util/Collection;

    if-eqz v4, :cond_33

    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_33

    goto :goto_2e

    .line 238
    :cond_33
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_34
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 86
    :try_start_f
    sget-object v7, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5, v0}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v0

    const/4 v7, 0x2

    if-ne v0, v7, :cond_35

    const/4 v0, 0x1

    goto :goto_2c

    :cond_35
    const/4 v0, 0x0

    :goto_2c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    goto :goto_2d

    :catchall_f
    move-exception v0

    sget-object v7, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2d
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_36

    move-object v0, v7

    :cond_36
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x1

    goto :goto_2f

    :cond_37
    const/16 v23, 0x2

    goto/16 :goto_2b

    :cond_38
    :goto_2e
    const/4 v0, 0x0

    .line 85
    :goto_2f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object/from16 v38, v0

    goto :goto_31

    :cond_39
    :goto_30
    const/16 v38, 0x0

    .line 90
    :goto_31
    :try_start_10
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitCheckProbe;

    const-string/jumbo v0, "wifi"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Landroid/net/wifi/WifiManager;

    if-eqz v4, :cond_3a

    check-cast v0, Landroid/net/wifi/WifiManager;

    goto :goto_32

    :cond_3a
    const/4 v0, 0x0

    :goto_32
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    goto :goto_33

    :catchall_10
    move-exception v0

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_33
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    const/4 v0, 0x0

    :cond_3b
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 91
    :try_start_11
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v4, v1

    check-cast v4, Lcom/shilapi/xcertplay/HeadUnitCheckProbe;

    .line 92
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_3d

    if-eqz v0, :cond_3c

    invoke-static {v0}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_34

    :cond_3c
    const/4 v0, 0x0

    goto :goto_34

    .line 93
    :cond_3d
    const-class v4, Landroid/net/wifi/WifiManager;

    const-string v5, "isDualBandSupported"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v4, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    .line 91
    :goto_34
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    goto :goto_35

    :catchall_11
    move-exception v0

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 94
    :goto_35
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    const/4 v0, 0x0

    :cond_3e
    move-object v7, v0

    check-cast v7, Ljava/lang/Boolean;

    .line 95
    const-string v0, "android.hardware.wifi"

    invoke-static {v3, v0}, Lcom/shilapi/xcertplay/HeadUnitCheckProbe;->read$feature(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v4

    .line 96
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities;->INSTANCE:Lcom/shilapi/xcertplay/HeadUnitCapabilities;

    invoke-virtual {v0, v2}, Lcom/shilapi/xcertplay/HeadUnitCapabilities;->noWifi(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_43

    .line 97
    :try_start_12
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitCheckProbe;

    .line 99
    const-class v0, Landroid/net/ConnectivityManager;

    const-string v8, "getTetherableWifiRegexs"

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 100
    const-string v8, "connectivity"

    invoke-virtual {v2, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 99
    const-string v8, "null cannot be cast to non-null type kotlin.Array<kotlin.String>"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/String;

    .line 100
    array-length v0, v0

    if-nez v0, :cond_3f

    const/4 v0, 0x1

    goto :goto_36

    :cond_3f
    const/4 v0, 0x0

    :goto_36
    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 97
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_12

    goto :goto_37

    :catchall_12
    move-exception v0

    sget-object v8, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 101
    :goto_37
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_40

    const/4 v0, 0x0

    :cond_40
    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_41

    .line 97
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_38

    .line 101
    :cond_41
    sget-object v0, Lcom/shilapi/xcertplay/network/CarHotspotStatus;->INSTANCE:Lcom/shilapi/xcertplay/network/CarHotspotStatus;

    invoke-virtual {v0, v2}, Lcom/shilapi/xcertplay/network/CarHotspotStatus;->apState(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_42

    const/4 v0, 0x1

    goto :goto_38

    :cond_42
    const/4 v0, 0x0

    :goto_38
    if-eqz v0, :cond_43

    const/4 v0, 0x1

    goto :goto_39

    :cond_43
    const/4 v0, 0x0

    .line 102
    :goto_39
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-nez v5, :cond_44

    .line 103
    const-string v9, "android.hardware.wifi.direct"

    invoke-static {v3, v9}, Lcom/shilapi/xcertplay/HeadUnitCheckProbe;->read$feature(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_44

    move-object v9, v8

    check-cast v9, Ljava/util/Collection;

    move/from16 v21, v0

    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;->WIFI_DIRECT:Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;

    invoke-interface {v9, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    :cond_44
    move/from16 v21, v0

    :goto_3a
    if-eqz v21, :cond_45

    .line 104
    move-object v0, v8

    check-cast v0, Ljava/util/Collection;

    sget-object v9, Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;->HOTSPOT:Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;

    invoke-interface {v0, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_45
    if-nez v5, :cond_46

    .line 105
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1a

    if-gt v9, v0, :cond_46

    const/16 v9, 0x1d

    if-ge v0, v9, :cond_46

    if-nez v4, :cond_47

    :cond_46
    if-eqz v21, :cond_48

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x19

    if-gt v0, v4, :cond_48

    :cond_47
    move-object v0, v8

    check-cast v0, Ljava/util/Collection;

    sget-object v4, Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;->AUTOMATIC:Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_48
    :try_start_13
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitCheckProbe;

    sget-object v0, Lcom/shilapi/xcertplay/AirPlayPersistence;->INSTANCE:Lcom/shilapi/xcertplay/AirPlayPersistence;

    invoke-virtual {v0, v2}, Lcom/shilapi/xcertplay/AirPlayPersistence;->loadWirelessHotspotAutoSelect(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_13

    goto :goto_3b

    :catchall_13
    move-exception v0

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_3b
    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_49

    move-object v0, v4

    :cond_49
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 110
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;->AUTOMATIC:Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4b

    move-object v4, v8

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4a

    goto :goto_3c

    :cond_4a
    const/4 v4, 0x0

    goto :goto_3d

    :cond_4b
    :goto_3c
    const/4 v4, 0x1

    :goto_3d
    if-eqz v4, :cond_4c

    goto :goto_3e

    :cond_4c
    const/4 v0, 0x0

    .line 111
    :goto_3e
    sget-object v4, Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;->AUTOMATIC:Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4d

    move-object v4, v8

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4d

    sget-object v4, Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;->AUTOMATIC:Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_4d
    :goto_3f
    move-object v4, v0

    goto :goto_42

    .line 113
    :cond_4e
    :try_start_14
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitCheckProbe;

    sget-object v0, Lcom/shilapi/xcertplay/AirPlayPersistence;->INSTANCE:Lcom/shilapi/xcertplay/AirPlayPersistence;

    invoke-virtual {v0, v2}, Lcom/shilapi/xcertplay/AirPlayPersistence;->loadWirelessHotspotMode(Landroid/content/Context;)Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_14

    goto :goto_40

    :catchall_14
    move-exception v0

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_40
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    const/4 v0, 0x0

    :cond_4f
    check-cast v0, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    const/4 v4, -0x1

    if-nez v0, :cond_50

    const/4 v0, -0x1

    goto :goto_41

    :cond_50
    sget-object v9, Lcom/shilapi/xcertplay/HeadUnitCheckProbe$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;->ordinal()I

    move-result v0

    aget v0, v9, v0

    :goto_41
    if-eq v0, v4, :cond_55

    const/4 v4, 0x1

    if-eq v0, v4, :cond_54

    const/4 v4, 0x2

    if-eq v0, v4, :cond_53

    const/4 v4, 0x3

    if-eq v0, v4, :cond_52

    const/4 v4, 0x4

    if-ne v0, v4, :cond_51

    .line 117
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;->HOTSPOT:Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;

    goto :goto_3f

    .line 113
    :cond_51
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 116
    :cond_52
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;->EXTERNAL:Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;

    goto :goto_3f

    .line 115
    :cond_53
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;->AUTOMATIC:Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;

    goto :goto_3f

    .line 114
    :cond_54
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;->WIFI_DIRECT:Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;

    goto :goto_3f

    :cond_55
    const/4 v4, 0x0

    .line 120
    :goto_42
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;->EXTERNAL:Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;

    if-ne v4, v0, :cond_56

    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;->EXTERNAL:Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    if-nez v5, :cond_56

    move-object v0, v8

    check-cast v0, Ljava/util/Collection;

    sget-object v9, Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;->EXTERNAL:Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;

    invoke-interface {v0, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_56
    const-string v0, "android.hardware.microphone"

    invoke-static {v3, v0}, Lcom/shilapi/xcertplay/HeadUnitCheckProbe;->read$feature(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v36

    .line 124
    :try_start_15
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitCheckProbe;

    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-virtual {v2, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_57

    const/4 v0, 0x1

    goto :goto_43

    :cond_57
    const/4 v0, 0x0

    :goto_43
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_15

    goto :goto_44

    :catchall_15
    move-exception v0

    sget-object v9, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_44
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_58

    move-object v0, v9

    :cond_58
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v37

    .line 126
    const-string v0, "android.hardware.touchscreen.multitouch.jazzhand"

    invoke-static {v3, v0}, Lcom/shilapi/xcertplay/HeadUnitCheckProbe;->read$feature(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    const/4 v0, 0x5

    const/16 v40, 0x5

    goto :goto_46

    .line 127
    :cond_59
    const-string v0, "android.hardware.touchscreen.multitouch.distinct"

    invoke-static {v3, v0}, Lcom/shilapi/xcertplay/HeadUnitCheckProbe;->read$feature(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5c

    const-string v0, "android.hardware.touchscreen.multitouch"

    invoke-static {v3, v0}, Lcom/shilapi/xcertplay/HeadUnitCheckProbe;->read$feature(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    goto :goto_45

    .line 128
    :cond_5a
    const-string v0, "android.hardware.touchscreen"

    invoke-static {v3, v0}, Lcom/shilapi/xcertplay/HeadUnitCheckProbe;->read$feature(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    const/16 v40, 0x1

    goto :goto_46

    :cond_5b
    const/16 v40, 0x0

    goto :goto_46

    :cond_5c
    :goto_45
    const/16 v40, 0x2

    .line 131
    :goto_46
    sget-object v0, Lcom/shilapi/xcertplay/ConnectionProgress;->INSTANCE:Lcom/shilapi/xcertplay/ConnectionProgress;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/ConnectionProgress;->getState()Lcom/shilapi/xcertplay/ConnectionProgress$State;

    move-result-object v9

    .line 132
    invoke-virtual {v9}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getPhase()Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    move-result-object v0

    move/from16 v21, v5

    sget-object v5, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->IDLE:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    if-eq v0, v5, :cond_5d

    const/4 v0, 0x1

    goto :goto_47

    :cond_5d
    const/4 v0, 0x0

    :goto_47
    if-eqz v0, :cond_5e

    move-object v0, v9

    goto :goto_48

    :cond_5e
    const/4 v0, 0x0

    :goto_48
    if-eqz v0, :cond_60

    .line 133
    new-instance v5, Lcom/shilapi/xcertplay/HeadUnitCheck$Live;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getWireless()Z

    move-result v0

    move-object/from16 v24, v7

    invoke-virtual/range {v22 .. v22}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getPhase()Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    move-result-object v7

    move-object/from16 v26, v9

    invoke-virtual/range {v22 .. v22}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getStep()I

    move-result v9

    invoke-virtual/range {v22 .. v22}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getStuckDetail()Ljava/lang/String;

    move-result-object v27

    if-nez v27, :cond_5f

    invoke-virtual/range {v22 .. v22}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getStuckTitle()Ljava/lang/String;

    move-result-object v27

    :cond_5f
    move/from16 v22, v10

    move-object/from16 v10, v27

    invoke-direct {v5, v0, v7, v9, v10}, Lcom/shilapi/xcertplay/HeadUnitCheck$Live;-><init>(ZLcom/shilapi/xcertplay/ConnectionProgress$Phase;ILjava/lang/String;)V

    move-object/from16 v49, v5

    goto :goto_49

    :cond_60
    move-object/from16 v24, v7

    move-object/from16 v26, v9

    move/from16 v22, v10

    const/16 v49, 0x0

    .line 136
    :goto_49
    :try_start_16
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitCheckProbe;

    sget-object v0, Lcom/shilapi/xcertplay/compat/AndroidRuntimeLevel;->INSTANCE:Lcom/shilapi/xcertplay/compat/AndroidRuntimeLevel;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/compat/AndroidRuntimeLevel;->probeDevice()Lcom/shilapi/xcertplay/compat/AndroidRuntimeLevel$Result;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_16

    goto :goto_4a

    :catchall_16
    move-exception v0

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_4a
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_61

    const/4 v0, 0x0

    :cond_61
    move-object v5, v0

    check-cast v5, Lcom/shilapi/xcertplay/compat/AndroidRuntimeLevel$Result;

    .line 138
    const-string v0, "android.hardware.usb.host"

    invoke-static {v3, v0}, Lcom/shilapi/xcertplay/HeadUnitCheckProbe;->read$feature(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v10

    new-instance v0, Ljava/io/File;

    const-string v7, "/dev/bus/usb"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    .line 140
    :try_start_17
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitCheckProbe;

    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitFixes;->INSTANCE:Lcom/shilapi/xcertplay/HeadUnitFixes;

    invoke-virtual {v0, v2, v15}, Lcom/shilapi/xcertplay/HeadUnitFixes;->forVpnConsent(Landroid/content/Context;Ljava/lang/Boolean;)Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_17

    goto :goto_4b

    :catchall_17
    move-exception v0

    sget-object v9, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_4b
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_62

    const/4 v0, 0x0

    :cond_62
    move-object v9, v0

    check-cast v9, Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;

    .line 142
    :try_start_18
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitCheckProbe;

    sget-object v0, Lcom/shilapi/xcertplay/AirPlayPersistence;->INSTANCE:Lcom/shilapi/xcertplay/AirPlayPersistence;

    invoke-virtual {v0, v2}, Lcom/shilapi/xcertplay/AirPlayPersistence;->loadFps60Unsustainable(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_18

    goto :goto_4c

    :catchall_18
    move-exception v0

    sget-object v27, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_4c
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_63

    move-object/from16 v0, v27

    :cond_63
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v27

    .line 143
    :try_start_19
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitCheckProbe;

    sget-object v0, Lcom/shilapi/xcertplay/AirPlayPersistence;->INSTANCE:Lcom/shilapi/xcertplay/AirPlayPersistence;

    sget-object v30, Lcom/shilapi/xcertplay/AirPlayPersistence;->INSTANCE:Lcom/shilapi/xcertplay/AirPlayPersistence;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1a

    move-object/from16 v31, v5

    :try_start_1a
    invoke-virtual/range {v30 .. v30}, Lcom/shilapi/xcertplay/AirPlayPersistence;->hevcDecoderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/shilapi/xcertplay/AirPlayPersistence;->loadHevcUnsustainable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_19

    goto :goto_4e

    :catchall_19
    move-exception v0

    goto :goto_4d

    :catchall_1a
    move-exception v0

    move-object/from16 v31, v5

    :goto_4d
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_4e
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_64

    move-object v0, v5

    :cond_64
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 144
    invoke-virtual/range {v26 .. v26}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getPhase()Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    move-result-object v0

    move/from16 v30, v5

    sget-object v5, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->CONNECTED:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    if-ne v0, v5, :cond_65

    invoke-virtual/range {v26 .. v26}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getFps()I

    move-result v0

    move/from16 v5, v21

    move/from16 v21, v0

    goto :goto_4f

    :cond_65
    move/from16 v5, v21

    const/16 v21, 0x0

    .line 145
    :goto_4f
    :try_start_1b
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitCheckProbe;

    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitFixes;->INSTANCE:Lcom/shilapi/xcertplay/HeadUnitFixes;

    invoke-virtual {v0, v2, v6}, Lcom/shilapi/xcertplay/HeadUnitFixes;->forBluetooth(Landroid/content/Context;Lcom/shilapi/xcertplay/compat/BluetoothStack;)Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1b

    goto :goto_50

    :catchall_1b
    move-exception v0

    sget-object v26, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_50
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_66

    const/4 v0, 0x0

    :cond_66
    move-object/from16 v26, v0

    check-cast v26, Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;

    move/from16 v32, v5

    .line 147
    const-string v5, "?"

    if-eqz v16, :cond_67

    invoke-virtual/range {v16 .. v16}, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->getVersion()Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;

    move-result-object v0

    if-eqz v0, :cond_67

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;->getCoreVersionName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_67

    move-object/from16 v16, v6

    move/from16 v33, v7

    move-object/from16 v34, v9

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static {v0, v5, v7, v6, v9}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_68

    move-object v7, v0

    goto :goto_51

    :cond_67
    move-object/from16 v16, v6

    move/from16 v33, v7

    move-object/from16 v34, v9

    :cond_68
    const/4 v7, 0x0

    :goto_51
    if-eqz v22, :cond_69

    .line 148
    const-string v0, "android.hardware.bluetooth_le"

    invoke-static {v3, v0}, Lcom/shilapi/xcertplay/HeadUnitCheckProbe;->read$feature(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_69

    const/4 v9, 0x1

    goto :goto_52

    :cond_69
    const/4 v9, 0x0

    :goto_52
    move/from16 v20, v30

    const/4 v3, 0x0

    .line 150
    move-object/from16 v30, v8

    check-cast v30, Ljava/util/List;

    if-eqz v4, :cond_6b

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    goto :goto_53

    :cond_6a
    move-object v4, v3

    :goto_53
    if-nez v4, :cond_6c

    :cond_6b
    invoke-static/range {v30 .. v30}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;

    :cond_6c
    if-eqz v32, :cond_6d

    move-object/from16 v32, v3

    goto :goto_54

    :cond_6d
    move-object/from16 v32, v24

    .line 152
    :goto_54
    :try_start_1c
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitCheckProbe;

    sget-object v0, Lcom/shilapi/xcertplay/network/CarHotspotStatus;->INSTANCE:Lcom/shilapi/xcertplay/network/CarHotspotStatus;

    invoke-virtual {v0, v2}, Lcom/shilapi/xcertplay/network/CarHotspotStatus;->isEnabled(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1c

    goto :goto_55

    :catchall_1c
    move-exception v0

    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_55
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6e

    move-object v0, v3

    :cond_6e
    check-cast v0, Ljava/lang/Boolean;

    const/4 v6, 0x0

    const/4 v8, 0x2

    .line 153
    invoke-static {v1, v2, v6, v8, v3}, Lcom/shilapi/xcertplay/HeadUnitCheckProbe;->port$default(Lcom/shilapi/xcertplay/HeadUnitCheckProbe;Landroid/content/Context;IILjava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Port;

    move-result-object v8

    .line 154
    invoke-direct {v1, v2}, Lcom/shilapi/xcertplay/HeadUnitCheckProbe;->otherApps(Landroid/content/Context;)Ljava/util/List;

    move-result-object v35

    .line 157
    sget-object v3, Lcom/shilapi/xcertplay/HeadUnitCheckSummary;->INSTANCE:Lcom/shilapi/xcertplay/HeadUnitCheckSummary;

    invoke-virtual {v3, v2}, Lcom/shilapi/xcertplay/HeadUnitCheckSummary;->backLongPressSeen(Landroid/content/Context;)Z

    move-result v39

    if-eqz v31, :cond_6f

    .line 159
    invoke-virtual/range {v31 .. v31}, Lcom/shilapi/xcertplay/compat/AndroidRuntimeLevel$Result;->getClaimedSdk()I

    move-result v2

    goto :goto_56

    :cond_6f
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    :goto_56
    move/from16 v41, v2

    if-eqz v31, :cond_70

    .line 160
    invoke-virtual/range {v31 .. v31}, Lcom/shilapi/xcertplay/compat/AndroidRuntimeLevel$Result;->getClaimedRelease()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_71

    :cond_70
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-nez v2, :cond_71

    move-object/from16 v42, v5

    goto :goto_57

    :cond_71
    move-object/from16 v42, v2

    :goto_57
    if-eqz v31, :cond_72

    .line 161
    invoke-virtual/range {v31 .. v31}, Lcom/shilapi/xcertplay/compat/AndroidRuntimeLevel$Result;->getProbedSdk()I

    move-result v2

    goto :goto_58

    :cond_72
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    :goto_58
    move/from16 v43, v2

    if-eqz v31, :cond_73

    .line 162
    invoke-virtual/range {v31 .. v31}, Lcom/shilapi/xcertplay/compat/AndroidRuntimeLevel$Result;->getMissingAt()Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v44, v2

    goto :goto_59

    :cond_73
    const/16 v44, 0x0

    :goto_59
    if-eqz v31, :cond_74

    .line 163
    invoke-virtual/range {v31 .. v31}, Lcom/shilapi/xcertplay/compat/AndroidRuntimeLevel$Result;->getPropSdk()Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v45, v2

    goto :goto_5a

    :cond_74
    const/16 v45, 0x0

    :goto_5a
    if-eqz v31, :cond_75

    .line 164
    invoke-virtual/range {v31 .. v31}, Lcom/shilapi/xcertplay/compat/AndroidRuntimeLevel$Result;->getPropRelease()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v46, v2

    goto :goto_5b

    :cond_75
    const/16 v46, 0x0

    :goto_5b
    if-eqz v31, :cond_76

    .line 165
    invoke-virtual/range {v31 .. v31}, Lcom/shilapi/xcertplay/compat/AndroidRuntimeLevel$Result;->getClaimTooHigh()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_77

    const/16 v47, 0x1

    goto :goto_5c

    :cond_76
    const/4 v3, 0x1

    :cond_77
    const/16 v47, 0x0

    :goto_5c
    if-eqz v31, :cond_78

    .line 166
    invoke-virtual/range {v31 .. v31}, Lcom/shilapi/xcertplay/compat/AndroidRuntimeLevel$Result;->getPropDisagree()Z

    move-result v2

    if-ne v2, v3, :cond_78

    move/from16 v19, v27

    const/16 v48, 0x1

    goto :goto_5d

    :cond_78
    move/from16 v19, v27

    const/16 v48, 0x0

    :goto_5d
    move/from16 v27, v9

    .line 137
    new-instance v9, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;

    move-object/from16 v31, v4

    move-object/from16 v24, v11

    move-object/from16 v22, v16

    move-object/from16 v23, v26

    move/from16 v11, v33

    move-object/from16 v16, v34

    move-object/from16 v33, v0

    move-object/from16 v26, v7

    move-object/from16 v34, v8

    invoke-direct/range {v9 .. v49}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;-><init>(ZZLjava/lang/Integer;ZZLjava/lang/Boolean;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;Lcom/shilapi/xcertplay/HeadUnitCheck$Decoder;ZZZILcom/shilapi/xcertplay/compat/BluetoothStack;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;Lcom/shilapi/xcertplay/HeadUnitCheck$Dongle;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/Boolean;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/shilapi/xcertplay/HeadUnitCheck$Port;Ljava/util/List;ZZLjava/lang/Boolean;ZIILjava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ZZLcom/shilapi/xcertplay/HeadUnitCheck$Live;)V

    return-object v9
.end method
