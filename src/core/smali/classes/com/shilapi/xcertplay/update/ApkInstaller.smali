.class public final Lcom/shilapi/xcertplay/update/ApkInstaller;
.super Ljava/lang/Object;
.source "ApkInstaller.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/update/ApkInstaller$RootInstall;,
        Lcom/shilapi/xcertplay/update/ApkInstaller$Verification;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nApkInstaller.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApkInstaller.kt\ncom/shilapi/xcertplay/update/ApkInstaller\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 5 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,358:1\n1#2:359\n774#3:360\n865#3,2:361\n11228#4:363\n11563#4,3:364\n11228#4:367\n11563#4,3:368\n1255#5,2:371\n*S KotlinDebug\n*F\n+ 1 ApkInstaller.kt\ncom/shilapi/xcertplay/update/ApkInstaller\n*L\n121#1:360\n121#1:361,2\n333#1:363\n333#1:364,3\n335#1:367\n335#1:368,3\n341#1:371,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u000f\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u000278B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\nJ\u0010\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u000e\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0015H\u0002J\u0006\u0010\u0016\u001a\u00020\u0017J2\u0010\u0018\u001a\u00020\u00192\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u001a\u0010\u001a\u001a\u0016\u0012\u0004\u0012\u00020\u0017\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00190\u001bJ4\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u001a\u0010\u001a\u001a\u0016\u0012\u0004\u0012\u00020\u0017\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00190\u001bH\u0003J\u0018\u0010 \u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020\n2\u0006\u0010!\u001a\u00020\u001fH\u0002J,\u0010\"\u001a\u00020\u001f2\u0006\u0010\u001d\u001a\u00020\n2\u001a\u0010\u001a\u001a\u0016\u0012\u0004\u0012\u00020\u0017\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00190\u001bH\u0003J\u0016\u0010#\u001a\u00020\u00192\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cJ\u001d\u0010$\u001a\u00020\u00192\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0000\u00a2\u0006\u0002\u0008%J\u001e\u0010&\u001a\u00020\'2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010(\u001a\u00020\u0017J\u0014\u0010)\u001a\u0008\u0012\u0004\u0012\u00020*0\u00152\u0006\u0010\t\u001a\u00020\nJ\u0018\u0010+\u001a\u0004\u0018\u00010\u00052\u0006\u0010\t\u001a\u00020\n2\u0006\u0010,\u001a\u00020\u0005J\u001c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020*0\u00152\u0006\u0010\t\u001a\u00020\n2\u0006\u0010,\u001a\u00020\u0005J\u0018\u0010.\u001a\u0008\u0012\u0004\u0012\u00020*0\u00152\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0002J\u0012\u00100\u001a\u00020\u00172\u0008\u00101\u001a\u0004\u0018\u00010\u0005H\u0002J\u0018\u00102\u001a\u00020\u00052\u0006\u00103\u001a\u00020\u00052\u0006\u00104\u001a\u00020\u0005H\u0002J\u0010\u00105\u001a\u00020\u00052\u0006\u00106\u001a\u00020\u000cH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u00069"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/update/ApkInstaller;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "INSTALL_STATUS_ACTION",
        "verify",
        "Lcom/shilapi/xcertplay/update/ApkInstaller$Verification;",
        "context",
        "Landroid/content/Context;",
        "apk",
        "Ljava/io/File;",
        "manifest",
        "Lcom/shilapi/xcertplay/update/UpdateManifest;",
        "installedVersionCode",
        "",
        "versionCodeOf",
        "info",
        "Landroid/content/pm/PackageInfo;",
        "deviceAbis",
        "",
        "packageInstallerAvailable",
        "",
        "installWithPackageInstaller",
        "",
        "onResult",
        "Lkotlin/Function2;",
        "installSession",
        "app",
        "statusReceiver",
        "Landroid/content/BroadcastReceiver;",
        "unregisterStatusReceiver",
        "receiver",
        "registerStatusReceiver",
        "installWithIntent",
        "shareWithInstaller",
        "shareWithInstaller$common_release",
        "installViaRootAdb",
        "Lcom/shilapi/xcertplay/update/ApkInstaller$RootInstall;",
        "allowPrompt",
        "installedSignatures",
        "",
        "archivePackageName",
        "path",
        "archiveSignatures",
        "signaturesOf",
        "RC",
        "ranOk",
        "output",
        "wrapSu",
        "form",
        "command",
        "sha256OfFile",
        "file",
        "Verification",
        "RootInstall",
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
.field public static final INSTALL_STATUS_ACTION:Ljava/lang/String; = "com.sixlink.car.update.INSTALL_STATUS"

.field public static final INSTANCE:Lcom/shilapi/xcertplay/update/ApkInstaller;

.field private static final RC:Ljava/lang/String; = "FA_RC"

.field private static final TAG:Ljava/lang/String; = "DiPlayUpdate"

.field private static statusReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static synthetic $r8$lambda$D9RoWbBLF78YZ2f8umsDSWK3doU(Landroid/content/Context;Ljava/io/File;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/update/ApkInstaller;->installWithPackageInstaller$lambda$6(Landroid/content/Context;Ljava/io/File;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k7nqfV7Z-urPQNOQlZuEhjOdBBE(B)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/update/ApkInstaller;->sha256OfFile$lambda$30(B)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$l41tyYczUWefW6Vh1GUHQu2-83E(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/update/ApkInstaller;->installViaRootAdb$lambda$20(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xbHyPsQ3xeMuXWvO01_UqU-yRbE(Ljava/util/zip/ZipEntry;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/update/ApkInstaller;->verify$lambda$2$lambda$1(Ljava/util/zip/ZipEntry;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/update/ApkInstaller;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/update/ApkInstaller;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/update/ApkInstaller;->INSTANCE:Lcom/shilapi/xcertplay/update/ApkInstaller;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$unregisterStatusReceiver(Lcom/shilapi/xcertplay/update/ApkInstaller;Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/update/ApkInstaller;->unregisterStatusReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private final deviceAbis()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "SUPPORTED_ABIS"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x2

    .line 121
    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 360
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 361
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 121
    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "unknown"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 361
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 362
    :cond_3
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method private final installSession(Landroid/content/Context;Ljava/io/File;Lkotlin/jvm/functions/Function2;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/PackageManager;)Landroid/content/pm/PackageInstaller;

    move-result-object v0

    const-string v1, "getPackageInstaller(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    new-instance v1, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 147
    :try_start_0
    invoke-static {v0, v1}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/PackageInstaller;Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v1

    .line 148
    invoke-static {v0, v1}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/PackageInstaller;I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v4}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v5

    new-instance v0, Ljava/io/FileInputStream;

    .line 149
    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v11, v0

    check-cast v11, Ljava/io/Closeable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :try_start_2
    move-object v0, v11

    check-cast v0, Ljava/io/FileInputStream;

    .line 150
    const-string v6, "base.apk"

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v9

    const-wide/16 v7, 0x0

    invoke-static/range {v5 .. v10}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/PackageInstaller$Session;Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object p2

    check-cast p2, Ljava/io/Closeable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    move-object v6, p2

    check-cast v6, Ljava/io/OutputStream;

    .line 151
    check-cast v0, Ljava/io/InputStream;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v7, 0x2

    invoke-static {v0, v6, v2, v7, v3}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J

    .line 152
    invoke-static {v5, v6}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/PackageInstaller$Session;Ljava/io/OutputStream;)V

    .line 153
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 150
    :try_start_4
    invoke-static {p2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 154
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 149
    :try_start_5
    invoke-static {v11, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 155
    sget-object p2, Lcom/shilapi/xcertplay/update/ApkInstaller;->INSTANCE:Lcom/shilapi/xcertplay/update/ApkInstaller;

    invoke-direct {p2, p1, p3}, Lcom/shilapi/xcertplay/update/ApkInstaller;->registerStatusReceiver(Landroid/content/Context;Lkotlin/jvm/functions/Function2;)Landroid/content/BroadcastReceiver;

    move-result-object p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 156
    :try_start_6
    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.sixlink.car.update.INSTALL_STATUS"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v6, "setPackage(...)"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1f

    if-lt v6, v7, :cond_0

    const/high16 v6, 0x2000000

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 158
    :goto_0
    invoke-static {p1, v1, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/PackageInstaller$Session;Landroid/content/IntentSender;)V

    .line 160
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 148
    :try_start_7
    invoke-static {v4, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object v3, p2

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v3, p2

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, v0

    .line 150
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_9
    invoke-static {p2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception v0

    move-object p2, v0

    .line 149
    :try_start_a
    throw p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception v0

    :try_start_b
    invoke-static {v11, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :catchall_5
    move-exception v0

    :goto_1
    move-object p2, v0

    .line 148
    :try_start_c
    throw p2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :catchall_6
    move-exception v0

    :try_start_d
    invoke-static {v4, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    :catch_1
    move-exception v0

    .line 162
    :goto_2
    const-string p2, "PackageInstaller failed"

    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    const-string v4, "DiPlayUpdate"

    invoke-static {v4, p2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    move-object p2, v3

    check-cast p2, Landroid/content/BroadcastReceiver;

    if-eqz v3, :cond_1

    sget-object p2, Lcom/shilapi/xcertplay/update/ApkInstaller;->INSTANCE:Lcom/shilapi/xcertplay/update/ApkInstaller;

    invoke-direct {p2, p1, v3}, Lcom/shilapi/xcertplay/update/ApkInstaller;->unregisterStatusReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 165
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final installViaRootAdb$lambda$20(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "command"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    sget-object v0, Lcom/shilapi/xcertplay/update/ApkInstaller;->INSTANCE:Lcom/shilapi/xcertplay/update/ApkInstaller;

    invoke-direct {v0, p1, p2}, Lcom/shilapi/xcertplay/update/ApkInstaller;->wrapSu(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static final installWithPackageInstaller$lambda$6(Landroid/content/Context;Ljava/io/File;Lkotlin/jvm/functions/Function2;)V
    .locals 1

    .line 137
    sget-object v0, Lcom/shilapi/xcertplay/update/ApkInstaller;->INSTANCE:Lcom/shilapi/xcertplay/update/ApkInstaller;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, p0, p1, p2}, Lcom/shilapi/xcertplay/update/ApkInstaller;->installSession(Landroid/content/Context;Ljava/io/File;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private final ranOk(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 341
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->lineSequence(Ljava/lang/CharSequence;)Lkotlin/sequences/Sequence;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 371
    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 341
    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FA_RC=0"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method private final declared-synchronized registerStatusReceiver(Landroid/content/Context;Lkotlin/jvm/functions/Function2;)Landroid/content/BroadcastReceiver;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroid/content/BroadcastReceiver;"
        }
    .end annotation

    monitor-enter p0

    .line 181
    :try_start_0
    sget-object v0, Lcom/shilapi/xcertplay/update/ApkInstaller;->statusReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    :try_start_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
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

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    :cond_0
    const/4 v0, 0x0

    .line 182
    sput-object v0, Lcom/shilapi/xcertplay/update/ApkInstaller;->statusReceiver:Landroid/content/BroadcastReceiver;

    .line 183
    new-instance v0, Lcom/shilapi/xcertplay/update/ApkInstaller$registerStatusReceiver$receiver$1;

    invoke-direct {v0, p1, p2}, Lcom/shilapi/xcertplay/update/ApkInstaller$registerStatusReceiver$receiver$1;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function2;)V

    .line 202
    new-instance p2, Landroid/content/IntentFilter;

    const-string v1, "com.sixlink.car.update.INSTALL_STATUS"

    invoke-direct {p2, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 203
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_1

    .line 204
    move-object v1, v0

    check-cast v1, Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-static {p1, v1, p2, v2}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_1

    .line 206
    :cond_1
    move-object v1, v0

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 208
    :goto_1
    move-object p1, v0

    check-cast p1, Landroid/content/BroadcastReceiver;

    sput-object p1, Lcom/shilapi/xcertplay/update/ApkInstaller;->statusReceiver:Landroid/content/BroadcastReceiver;

    .line 209
    check-cast v0, Landroid/content/BroadcastReceiver;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method private final sha256OfFile(Ljava/io/File;)Ljava/lang/String;
    .locals 11

    .line 346
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    new-instance v1, Ljava/io/FileInputStream;

    .line 347
    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v1, Ljava/io/Closeable;

    :try_start_0
    move-object p1, v1

    check-cast p1, Ljava/io/FileInputStream;

    const/high16 v2, 0x10000

    .line 348
    new-array v2, v2, [B

    .line 350
    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_0

    const/4 v4, 0x0

    .line 352
    invoke-virtual {v0, v2, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 354
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 347
    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 355
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    const-string p1, "digest(...)"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, ""

    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    new-instance v8, Lcom/shilapi/xcertplay/update/ApkInstaller$$ExternalSyntheticLambda14;

    invoke-direct {v8}, Lcom/shilapi/xcertplay/update/ApkInstaller$$ExternalSyntheticLambda14;-><init>()V

    const/16 v9, 0x1e

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/ArraysKt;->joinToString$default([BLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 347
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private static final sha256OfFile$lambda$30(B)Ljava/lang/CharSequence;
    .locals 3

    and-int/lit16 p0, p0, 0xff

    .line 355
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%02x"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "format(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private final signaturesOf(Landroid/content/pm/PackageInfo;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 328
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 329
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-lt v0, v1, :cond_6

    .line 330
    invoke-static {p1}, Landroidx/core/app/NavUtils$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/PackageInfo;)Landroid/content/pm/SigningInfo;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 331
    :cond_1
    invoke-static {p1}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/SigningInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/content/pm/SigningInfo;)[Landroid/content/pm/Signature;

    move-result-object p1

    goto :goto_0

    .line 332
    :cond_2
    invoke-static {p1}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/SigningInfo;)[Landroid/content/pm/Signature;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_4

    .line 363
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 364
    array-length v1, p1

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    .line 333
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    .line 365
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 366
    :cond_3
    move-object v3, v0

    check-cast v3, Ljava/util/List;

    :cond_4
    if-nez v3, :cond_5

    .line 333
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_5
    return-object v3

    .line 335
    :cond_6
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p1, :cond_8

    .line 367
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 368
    array-length v1, p1

    :goto_2
    if-ge v2, v1, :cond_7

    aget-object v3, p1, v2

    .line 335
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    .line 369
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 370
    :cond_7
    move-object v3, v0

    check-cast v3, Ljava/util/List;

    :cond_8
    if-nez v3, :cond_9

    .line 335
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_9
    return-object v3
.end method

.method private final declared-synchronized unregisterStatusReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 1

    monitor-enter p0

    .line 174
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/update/ApkInstaller;

    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :goto_0
    sget-object p1, Lcom/shilapi/xcertplay/update/ApkInstaller;->statusReceiver:Landroid/content/BroadcastReceiver;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    sput-object p1, Lcom/shilapi/xcertplay/update/ApkInstaller;->statusReceiver:Landroid/content/BroadcastReceiver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 176
    :cond_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method private static final verify$lambda$2$lambda$1(Ljava/util/zip/ZipEntry;)Ljava/lang/String;
    .locals 0

    .line 97
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final versionCodeOf(Landroid/content/pm/PackageInfo;)J
    .locals 2

    .line 115
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-static {p1}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/content/pm/PackageInfo;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v0, p1

    return-wide v0
.end method

.method private final wrapSu(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 343
    sget-object v0, Lcom/shilapi/xcertplay/update/ApkInstallStrategy;->INSTANCE:Lcom/shilapi/xcertplay/update/ApkInstallStrategy;

    invoke-virtual {v0, p1, p2}, Lcom/shilapi/xcertplay/update/ApkInstallStrategy;->suWrapped(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final archivePackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 315
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/update/ApkInstaller;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_2

    :cond_1
    move-object v0, p1

    :goto_2
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final archiveSignatures(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 319
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/update/ApkInstaller;

    .line 320
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const/high16 v0, 0x8000000

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/16 v0, 0x40

    .line 321
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 319
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 322
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    :cond_1
    check-cast p1, Landroid/content/pm/PackageInfo;

    .line 323
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/update/ApkInstaller;->signaturesOf(Landroid/content/pm/PackageInfo;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final installViaRootAdb(Landroid/content/Context;Ljava/io/File;Z)Lcom/shilapi/xcertplay/update/ApkInstaller$RootInstall;
    .locals 16

    move-object/from16 v1, p0

    const-string v2, "id"

    const-string v3, "adb "

    const-string v0, "context"

    move-object/from16 v4, p1

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apk"

    move-object/from16 v5, p2

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 266
    sget-object v6, Lcom/shilapi/xcertplay/update/ApkInstallStrategy;->INSTANCE:Lcom/shilapi/xcertplay/update/ApkInstallStrategy;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v7, "getAbsolutePath(...)"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "getPackageName(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string/jumbo v8, "sourceDir"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v5, v7, v0}, Lcom/shilapi/xcertplay/update/ApkInstallStrategy;->rootBypassCommands(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 267
    new-instance v0, Lcom/shilapi/xcertplay/update/ApkInstaller$RootInstall$Failed;

    const-string/jumbo v2, "unexpected install path"

    invoke-direct {v0, v2}, Lcom/shilapi/xcertplay/update/ApkInstaller$RootInstall$Failed;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/shilapi/xcertplay/update/ApkInstaller$RootInstall;

    return-object v0

    :cond_0
    const/4 v5, 0x2

    .line 268
    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->dropLast(Ljava/util/List;I)Ljava/util/List;

    move-result-object v6

    .line 269
    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->takeLast(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/Iterable;

    const-string v0, "; "

    move-object v8, v0

    check-cast v8, Ljava/lang/CharSequence;

    const/16 v14, 0x3e

    const/4 v15, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v7 .. v15}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    .line 270
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/update/ApkInstaller;

    sget-object v0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->INSTANCE:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v8, "getApplicationContext(...)"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    sget-object v8, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->INSTANCE:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;

    invoke-virtual {v8}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->claimAdbPrompt()Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_0
    invoke-virtual {v0, v4, v8}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->openAdb(Landroid/content/Context;Z)Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 271
    :goto_1
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-nez v4, :cond_b

    move-object v4, v0

    check-cast v4, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;

    .line 273
    :try_start_1
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;->getShell()Lkotlin/jvm/functions/Function1;

    move-result-object v8

    .line 274
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;->getAccess()Lcom/shilapi/xcertplay/adb/LocalAdb$Access;

    move-result-object v0

    sget-object v9, Lcom/shilapi/xcertplay/adb/LocalAdb$Access;->READY:Lcom/shilapi/xcertplay/adb/LocalAdb$Access;

    if-ne v0, v9, :cond_a

    if-nez v8, :cond_2

    goto/16 :goto_8

    .line 277
    :cond_2
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-interface {v8, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 278
    sget-object v0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->INSTANCE:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;

    iget-object v9, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v0, v9}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->isRoot(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;->getRestartAsRoot()Lkotlin/jvm/functions/Function0;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    if-eqz v0, :cond_4

    .line 279
    :try_start_2
    sget-object v9, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_3
    sget-object v9, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v0, v7

    :cond_3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 283
    :cond_4
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;->getSlowShell()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-nez v0, :cond_5

    move-object v0, v8

    .line 284
    :cond_5
    sget-object v2, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->INSTANCE:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;

    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->isRoot(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_4

    .line 287
    :cond_6
    sget-object v2, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->INSTANCE:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;

    invoke-virtual {v2, v8}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->suForm(Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    new-instance v0, Lcom/shilapi/xcertplay/update/ApkInstaller$RootInstall$Unavailable;

    const-string v2, "no root on head unit ADB"

    invoke-direct {v0, v2}, Lcom/shilapi/xcertplay/update/ApkInstaller$RootInstall$Unavailable;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Lcom/shilapi/xcertplay/update/ApkInstaller$RootInstall;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 297
    :try_start_4
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/update/ApkInstaller;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;->getClose()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    return-object v2

    .line 284
    :cond_7
    :try_start_5
    new-instance v3, Lcom/shilapi/xcertplay/update/ApkInstaller$$ExternalSyntheticLambda11;

    invoke-direct {v3, v0, v2}, Lcom/shilapi/xcertplay/update/ApkInstaller$$ExternalSyntheticLambda11;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V

    move-object v0, v3

    .line 290
    :goto_4
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 291
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "; echo FA_RC=$?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v1, v6}, Lcom/shilapi/xcertplay/update/ApkInstaller;->ranOk(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    new-instance v0, Lcom/shilapi/xcertplay/update/ApkInstaller$RootInstall$Failed;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "step failed: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/shilapi/xcertplay/update/ApkInstaller$RootInstall$Failed;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Lcom/shilapi/xcertplay/update/ApkInstaller$RootInstall;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    .line 297
    :try_start_6
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/update/ApkInstaller;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;->getClose()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    return-object v2

    .line 294
    :cond_9
    :try_start_7
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v2, v1

    check-cast v2, Lcom/shilapi/xcertplay/update/ApkInstaller;

    invoke-interface {v0, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception v0

    :try_start_8
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    :goto_6
    sget-object v0, Lcom/shilapi/xcertplay/update/ApkInstaller$RootInstall$Dispatched;->INSTANCE:Lcom/shilapi/xcertplay/update/ApkInstaller$RootInstall$Dispatched;

    move-object v2, v0

    check-cast v2, Lcom/shilapi/xcertplay/update/ApkInstaller$RootInstall;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 297
    :try_start_9
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/update/ApkInstaller;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;->getClose()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    return-object v2

    .line 275
    :cond_a
    :goto_8
    :try_start_a
    new-instance v0, Lcom/shilapi/xcertplay/update/ApkInstaller$RootInstall$Unavailable;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;->getAccess()Lcom/shilapi/xcertplay/adb/LocalAdb$Access;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/shilapi/xcertplay/update/ApkInstaller$RootInstall$Unavailable;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Lcom/shilapi/xcertplay/update/ApkInstaller$RootInstall;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 297
    :try_start_b
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/update/ApkInstaller;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;->getClose()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    goto :goto_9

    :catchall_6
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    return-object v2

    :catchall_7
    move-exception v0

    move-object v2, v0

    :try_start_c
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;->getClose()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    goto :goto_a

    :catchall_8
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_a
    throw v2

    .line 271
    :cond_b
    new-instance v0, Lcom/shilapi/xcertplay/update/ApkInstaller$RootInstall$Unavailable;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "adb error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/shilapi/xcertplay/update/ApkInstaller$RootInstall$Unavailable;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/shilapi/xcertplay/update/ApkInstaller$RootInstall;

    return-object v0
.end method

.method public final installWithIntent(Landroid/content/Context;Ljava/io/File;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apk"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSTALL_PACKAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 222
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 223
    const-string v1, "android.intent.extra.NOT_UNKNOWN_SOURCE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 224
    const-string v1, "android.intent.extra.RETURN_RESULT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 225
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    const-string v4, "application/vnd.android.package-archive"

    if-lt v1, v3, :cond_0

    .line 227
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".updateprovider"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 226
    invoke-static {p1, v1, p2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    .line 229
    invoke-virtual {v0, p2, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 235
    :cond_0
    sget-object v1, Lcom/shilapi/xcertplay/update/ApkInstaller;->INSTANCE:Lcom/shilapi/xcertplay/update/ApkInstaller;

    invoke-virtual {v1, p1, p2}, Lcom/shilapi/xcertplay/update/ApkInstaller;->shareWithInstaller$common_release(Landroid/content/Context;Ljava/io/File;)V

    .line 236
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final installWithPackageInstaller(Landroid/content/Context;Ljava/io/File;Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apk"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onResult"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 136
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "PackageInstaller needs Android 5.0"

    invoke-interface {p3, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/shilapi/xcertplay/update/ApkInstaller$$ExternalSyntheticLambda13;

    invoke-direct {v1, p1, p2, p3}, Lcom/shilapi/xcertplay/update/ApkInstaller$$ExternalSyntheticLambda13;-><init>(Landroid/content/Context;Ljava/io/File;Lkotlin/jvm/functions/Function2;)V

    const-string/jumbo p1, "update-session"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final installedSignatures(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 305
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 306
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/update/ApkInstaller;

    .line 307
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/16 v1, 0x40

    .line 308
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 306
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 309
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    check-cast p1, Landroid/content/pm/PackageInfo;

    .line 310
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/update/ApkInstaller;->signaturesOf(Landroid/content/pm/PackageInfo;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final installedVersionCode(Landroid/content/Context;)J
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/update/ApkInstaller;

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    const-string v0, "getPackageInfo(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/update/ApkInstaller;->versionCodeOf(Landroid/content/pm/PackageInfo;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 109
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
    const-wide/16 v0, 0x0

    .line 112
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p1, v0

    :cond_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final packageInstallerAvailable()Z
    .locals 2

    .line 124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final shareWithInstaller$common_release(Landroid/content/Context;Ljava/io/File;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apk"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 247
    invoke-virtual {p2, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 248
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 249
    :goto_0
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    :goto_1
    if-eqz p2, :cond_1

    .line 251
    invoke-virtual {p2, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 252
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 253
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final verify(Landroid/content/Context;Ljava/io/File;Lcom/shilapi/xcertplay/update/UpdateManifest;)Lcom/shilapi/xcertplay/update/ApkInstaller$Verification;
    .locals 8

    const-string v0, "cannot read download: "

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "apk"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "manifest"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    :try_start_0
    invoke-direct {p0, p2}, Lcom/shilapi/xcertplay/update/ApkInstaller;->sha256OfFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    sget-object v2, Lcom/shilapi/xcertplay/update/ApkUpdateVerification;->INSTANCE:Lcom/shilapi/xcertplay/update/ApkUpdateVerification;

    invoke-virtual {p3}, Lcom/shilapi/xcertplay/update/UpdateManifest;->getSha256()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/shilapi/xcertplay/update/ApkUpdateVerification;->sha256Matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    new-instance p1, Lcom/shilapi/xcertplay/update/ApkInstaller$Verification$ShaMismatch;

    invoke-virtual {p3}, Lcom/shilapi/xcertplay/update/UpdateManifest;->getSha256()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v1}, Lcom/shilapi/xcertplay/update/ApkInstaller$Verification$ShaMismatch;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Lcom/shilapi/xcertplay/update/ApkInstaller$Verification;

    return-object p1

    .line 69
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getAbsolutePath(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v2}, Lcom/shilapi/xcertplay/update/ApkInstaller;->archivePackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    sget-object v4, Lcom/shilapi/xcertplay/update/ApkUpdateVerification;->INSTANCE:Lcom/shilapi/xcertplay/update/ApkUpdateVerification;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v1, v2}, Lcom/shilapi/xcertplay/update/ApkUpdateVerification;->packageMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    const-string v5, " downloaded="

    const-string v6, "DiPlayUpdate"

    if-nez v4, :cond_1

    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "package mismatch: installed="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance p1, Lcom/shilapi/xcertplay/update/ApkInstaller$Verification$PackageMismatch;

    invoke-direct {p1, v1, v2}, Lcom/shilapi/xcertplay/update/ApkInstaller$Verification$PackageMismatch;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Lcom/shilapi/xcertplay/update/ApkInstaller$Verification;

    return-object p1

    .line 75
    :cond_1
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/update/ApkInstaller;->installedSignatures(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 76
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v2}, Lcom/shilapi/xcertplay/update/ApkInstaller;->archiveSignatures(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 77
    sget-object v3, Lcom/shilapi/xcertplay/update/ApkUpdateVerification;->INSTANCE:Lcom/shilapi/xcertplay/update/ApkUpdateVerification;

    invoke-virtual {v3, v1, v2}, Lcom/shilapi/xcertplay/update/ApkUpdateVerification;->signaturesMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 78
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "signature mismatch: installed="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    sget-object p1, Lcom/shilapi/xcertplay/update/ApkInstaller$Verification$SignatureMismatch;->INSTANCE:Lcom/shilapi/xcertplay/update/ApkInstaller$Verification$SignatureMismatch;

    check-cast p1, Lcom/shilapi/xcertplay/update/ApkInstaller$Verification;

    return-object p1

    .line 82
    :cond_2
    :try_start_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/update/ApkInstaller;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    move-object v1, v3

    :cond_3
    check-cast v1, Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_4

    .line 83
    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/update/ApkInstaller;->versionCodeOf(Landroid/content/pm/PackageInfo;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_1

    :cond_4
    move-object v2, v3

    .line 84
    :goto_1
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/update/ApkInstaller;->installedVersionCode(Landroid/content/Context;)J

    move-result-wide v4

    .line 85
    sget-object p1, Lcom/shilapi/xcertplay/update/ApkUpdateVerification;->INSTANCE:Lcom/shilapi/xcertplay/update/ApkUpdateVerification;

    invoke-virtual {p3}, Lcom/shilapi/xcertplay/update/UpdateManifest;->getVersionCode()I

    move-result v7

    invoke-virtual {p1, v7, v2, v4, v5}, Lcom/shilapi/xcertplay/update/ApkUpdateVerification;->versionAcceptable(ILjava/lang/Long;J)Z

    move-result p1

    if-nez p1, :cond_5

    .line 86
    invoke-virtual {p3}, Lcom/shilapi/xcertplay/update/UpdateManifest;->getVersionCode()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "version refused: manifest="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " archive="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " installed="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance p1, Lcom/shilapi/xcertplay/update/ApkInstaller$Verification$VersionMismatch;

    invoke-virtual {p3}, Lcom/shilapi/xcertplay/update/UpdateManifest;->getVersionCode()I

    move-result p2

    invoke-direct {p1, p2, v2, v4, v5}, Lcom/shilapi/xcertplay/update/ApkInstaller$Verification$VersionMismatch;-><init>(ILjava/lang/Long;J)V

    check-cast p1, Lcom/shilapi/xcertplay/update/ApkInstaller$Verification;

    return-object p1

    .line 89
    :cond_5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x18

    if-lt p1, p3, :cond_6

    if-eqz v1, :cond_6

    iget-object p1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p1, :cond_6

    invoke-static {p1}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/ApplicationInfo;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 90
    :cond_6
    sget-object p1, Lcom/shilapi/xcertplay/update/ApkUpdateVerification;->INSTANCE:Lcom/shilapi/xcertplay/update/ApkUpdateVerification;

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1, v3, p3}, Lcom/shilapi/xcertplay/update/ApkUpdateVerification;->minSdkAcceptable(Ljava/lang/Integer;I)Z

    move-result p1

    if-nez p1, :cond_7

    .line 91
    new-instance p1, Lcom/shilapi/xcertplay/update/ApkInstaller$Verification$Incompatible;

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "minSdk "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " > "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/update/ApkInstaller$Verification$Incompatible;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/shilapi/xcertplay/update/ApkInstaller$Verification;

    return-object p1

    .line 93
    :cond_7
    :try_start_2
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object p1, p0

    check-cast p1, Lcom/shilapi/xcertplay/update/ApkInstaller;

    .line 95
    new-instance p1, Ljava/util/zip/ZipFile;

    invoke-direct {p1, p2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 97
    :try_start_3
    sget-object p2, Lcom/shilapi/xcertplay/update/ApkUpdateVerification;->INSTANCE:Lcom/shilapi/xcertplay/update/ApkUpdateVerification;

    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p3

    const-string v1, "entries(...)"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->iterator(Ljava/util/Enumeration;)Ljava/util/Iterator;

    move-result-object p3

    invoke-static {p3}, Lkotlin/sequences/SequencesKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    move-result-object p3

    new-instance v1, Lcom/shilapi/xcertplay/update/ApkInstaller$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lcom/shilapi/xcertplay/update/ApkInstaller$$ExternalSyntheticLambda12;-><init>()V

    invoke-static {p3, v1}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p3

    invoke-static {p3}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object p3

    check-cast p3, Ljava/lang/Iterable;

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/shilapi/xcertplay/update/ApkUpdateVerification;->libAbis(Lkotlin/sequences/Sequence;)Ljava/util/Set;

    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 99
    :try_start_4
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V

    .line 93
    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    :catchall_1
    move-exception p2

    .line 99
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V

    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    .line 93
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 101
    :goto_2
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_9

    check-cast p1, Ljava/util/Set;

    .line 102
    sget-object p2, Lcom/shilapi/xcertplay/update/ApkUpdateVerification;->INSTANCE:Lcom/shilapi/xcertplay/update/ApkUpdateVerification;

    invoke-direct {p0}, Lcom/shilapi/xcertplay/update/ApkInstaller;->deviceAbis()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/shilapi/xcertplay/update/ApkUpdateVerification;->abiAcceptable(Ljava/util/Set;Ljava/util/List;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 103
    new-instance p2, Lcom/shilapi/xcertplay/update/ApkInstaller$Verification$Incompatible;

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0}, Lcom/shilapi/xcertplay/update/ApkInstaller;->deviceAbis()Ljava/util/List;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ABIs "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/shilapi/xcertplay/update/ApkInstaller$Verification$Incompatible;-><init>(Ljava/lang/String;)V

    check-cast p2, Lcom/shilapi/xcertplay/update/ApkInstaller$Verification;

    return-object p2

    .line 105
    :cond_8
    sget-object p1, Lcom/shilapi/xcertplay/update/ApkInstaller$Verification$Ok;->INSTANCE:Lcom/shilapi/xcertplay/update/ApkInstaller$Verification$Ok;

    check-cast p1, Lcom/shilapi/xcertplay/update/ApkInstaller$Verification;

    return-object p1

    .line 101
    :cond_9
    new-instance p1, Lcom/shilapi/xcertplay/update/ApkInstaller$Verification$Error;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/update/ApkInstaller$Verification$Error;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/shilapi/xcertplay/update/ApkInstaller$Verification;

    return-object p1

    :catch_0
    move-exception p1

    .line 63
    new-instance p2, Lcom/shilapi/xcertplay/update/ApkInstaller$Verification$Error;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/shilapi/xcertplay/update/ApkInstaller$Verification$Error;-><init>(Ljava/lang/String;)V

    check-cast p2, Lcom/shilapi/xcertplay/update/ApkInstaller$Verification;

    return-object p2
.end method
