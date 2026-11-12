.class public final Lcom/shilapi/xcertplay/DiagnosticUsbExport;
.super Ljava/lang/Object;
.source "DiagnosticUsbExport.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/DiagnosticUsbExport$Candidate;,
        Lcom/shilapi/xcertplay/DiagnosticUsbExport$Kind;,
        Lcom/shilapi/xcertplay/DiagnosticUsbExport$NoWritableStorage;,
        Lcom/shilapi/xcertplay/DiagnosticUsbExport$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDiagnosticUsbExport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiagnosticUsbExport.kt\ncom/shilapi/xcertplay/DiagnosticUsbExport\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,103:1\n1#2:104\n1563#3:105\n1634#3,3:106\n1056#3:109\n1669#3,8:110\n*S KotlinDebug\n*F\n+ 1 DiagnosticUsbExport.kt\ncom/shilapi/xcertplay/DiagnosticUsbExport\n*L\n65#1:105\n65#1:106,3\n78#1:109\n78#1:110,8\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0004 !\"#B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tJ+\u0010\u000b\u001a\u00020\u00052\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0000\u00a2\u0006\u0002\u0008\u000fJ\u001b\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010\u0006\u001a\u00020\u0007H\u0000\u00a2\u0006\u0002\u0008\u0010J\u001f\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0002\u00a2\u0006\u0002\u0010\u0017J9\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u00122\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u001d\u001a\u00020\u0012H\u0000\u00a2\u0006\u0004\u0008\u001e\u0010\u001fR\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/DiagnosticUsbExport;",
        "",
        "<init>",
        "()V",
        "write",
        "Lcom/shilapi/xcertplay/DiagnosticUsbExport$Result;",
        "context",
        "Landroid/content/Context;",
        "fileName",
        "",
        "report",
        "writeTo",
        "candidates",
        "",
        "Lcom/shilapi/xcertplay/DiagnosticUsbExport$Candidate;",
        "writeTo$common_release",
        "candidates$common_release",
        "removableBySystem",
        "",
        "dir",
        "Ljava/io/File;",
        "sdk",
        "",
        "(Ljava/io/File;I)Ljava/lang/Boolean;",
        "removablePath",
        "Lkotlin/text/Regex;",
        "classify",
        "Lcom/shilapi/xcertplay/DiagnosticUsbExport$Kind;",
        "isPrimary",
        "primaryRemovable",
        "classify$common_release",
        "(Ljava/io/File;IZLjava/lang/Boolean;Z)Lcom/shilapi/xcertplay/DiagnosticUsbExport$Kind;",
        "Kind",
        "Result",
        "NoWritableStorage",
        "Candidate",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/DiagnosticUsbExport;

.field private static final removablePath:Lkotlin/text/Regex;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/DiagnosticUsbExport;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/DiagnosticUsbExport;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/DiagnosticUsbExport;->INSTANCE:Lcom/shilapi/xcertplay/DiagnosticUsbExport;

    .line 85
    new-instance v0, Lkotlin/text/Regex;

    .line 86
    const-string v1, "(?i)/(?:usb|udisk|usbdisk|usbotg|otg|extsd|ext_sd|external_sd|sdcard1|sdcard2|extsdcard|external_storage|media_rw|[0-9a-f]{4}-[0-9a-f]{4})(?:[/_-]|\\d|$)"

    .line 85
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shilapi/xcertplay/DiagnosticUsbExport;->removablePath:Lkotlin/text/Regex;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final removableBySystem(Ljava/io/File;I)Ljava/lang/Boolean;
    .locals 2

    const/16 v0, 0x15

    const/4 v1, 0x0

    if-lt p2, v0, :cond_1

    .line 83
    :try_start_0
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object p2, p0

    check-cast p2, Lcom/shilapi/xcertplay/DiagnosticUsbExport;

    invoke-static {p1}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Ljava/io/File;)Z

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

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    move-object v1, p1

    :goto_1
    check-cast v1, Ljava/lang/Boolean;

    :cond_1
    return-object v1
.end method


# virtual methods
.method public final candidates$common_release(Landroid/content/Context;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/DiagnosticUsbExport$Candidate;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    const/4 v1, 0x0

    if-lt v3, v0, :cond_1

    .line 59
    invoke-static {p1, v1}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 62
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Android/data/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/files"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :cond_2
    :goto_1
    move-object v7, v0

    .line 64
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/DiagnosticUsbExport;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    move-object v1, v0

    :goto_3
    move-object v8, v1

    check-cast v8, Ljava/io/File;

    .line 65
    move-object v0, v7

    check-cast v0, Ljava/lang/Iterable;

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v9, v1

    check-cast v9, Ljava/util/Collection;

    .line 106
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "06Link"

    if-eqz v0, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 107
    move-object v2, v0

    check-cast v2, Ljava/io/File;

    .line 67
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    sget-object v1, Lcom/shilapi/xcertplay/DiagnosticUsbExport;->INSTANCE:Lcom/shilapi/xcertplay/DiagnosticUsbExport;

    const/4 v4, 0x0

    const/4 v0, 0x1

    if-eqz v8, :cond_4

    .line 71
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v0, :cond_6

    :cond_5
    const/4 v4, 0x1

    :cond_6
    const/4 v5, 0x0

    .line 72
    invoke-direct {v1, v2, v3}, Lcom/shilapi/xcertplay/DiagnosticUsbExport;->removableBySystem(Ljava/io/File;I)Ljava/lang/Boolean;

    move-result-object v6

    .line 73
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    sget-object v12, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_5
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    move-object v0, v5

    :cond_7
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move-object v5, v6

    move v6, v0

    .line 68
    invoke-virtual/range {v1 .. v6}, Lcom/shilapi/xcertplay/DiagnosticUsbExport;->classify$common_release(Ljava/io/File;IZLjava/lang/Boolean;Z)Lcom/shilapi/xcertplay/DiagnosticUsbExport$Kind;

    move-result-object v0

    .line 66
    new-instance v1, Lcom/shilapi/xcertplay/DiagnosticUsbExport$Candidate;

    invoke-direct {v1, v11, v0}, Lcom/shilapi/xcertplay/DiagnosticUsbExport$Candidate;-><init>(Ljava/io/File;Lcom/shilapi/xcertplay/DiagnosticUsbExport$Kind;)V

    .line 107
    invoke-interface {v9, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 108
    :cond_8
    check-cast v9, Ljava/util/List;

    .line 77
    new-instance v0, Lcom/shilapi/xcertplay/DiagnosticUsbExport$Candidate;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object p1, Lcom/shilapi/xcertplay/DiagnosticUsbExport$Kind;->APP_PRIVATE:Lcom/shilapi/xcertplay/DiagnosticUsbExport$Kind;

    invoke-direct {v0, v2, p1}, Lcom/shilapi/xcertplay/DiagnosticUsbExport$Candidate;-><init>(Ljava/io/File;Lcom/shilapi/xcertplay/DiagnosticUsbExport$Kind;)V

    .line 78
    check-cast v9, Ljava/lang/Iterable;

    .line 109
    new-instance p1, Lcom/shilapi/xcertplay/DiagnosticUsbExport$candidates$$inlined$sortedBy$1;

    invoke-direct {p1}, Lcom/shilapi/xcertplay/DiagnosticUsbExport$candidates$$inlined$sortedBy$1;-><init>()V

    check-cast p1, Ljava/util/Comparator;

    invoke-static {v9, p1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    .line 78
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 110
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 112
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 113
    move-object v3, v2

    check-cast v3, Lcom/shilapi/xcertplay/DiagnosticUsbExport$Candidate;

    .line 78
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/DiagnosticUsbExport$Candidate;->getDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 115
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 117
    :cond_a
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public final classify$common_release(Ljava/io/File;IZLjava/lang/Boolean;Z)Lcom/shilapi/xcertplay/DiagnosticUsbExport$Kind;
    .locals 1

    const-string v0, "dir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x15

    if-lt p2, v0, :cond_1

    if-eqz p4, :cond_1

    .line 97
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/shilapi/xcertplay/DiagnosticUsbExport$Kind;->REMOVABLE:Lcom/shilapi/xcertplay/DiagnosticUsbExport$Kind;

    return-object p1

    :cond_0
    sget-object p1, Lcom/shilapi/xcertplay/DiagnosticUsbExport$Kind;->SHARED_INTERNAL:Lcom/shilapi/xcertplay/DiagnosticUsbExport$Kind;

    return-object p1

    .line 98
    :cond_1
    sget-object p2, Lcom/shilapi/xcertplay/DiagnosticUsbExport;->removablePath:Lkotlin/text/Regex;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string p4, "getAbsolutePath(...)"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/shilapi/xcertplay/DiagnosticUsbExport$Kind;->REMOVABLE:Lcom/shilapi/xcertplay/DiagnosticUsbExport$Kind;

    return-object p1

    :cond_2
    if-eqz p3, :cond_4

    if-eqz p5, :cond_3

    .line 99
    sget-object p1, Lcom/shilapi/xcertplay/DiagnosticUsbExport$Kind;->REMOVABLE:Lcom/shilapi/xcertplay/DiagnosticUsbExport$Kind;

    return-object p1

    :cond_3
    sget-object p1, Lcom/shilapi/xcertplay/DiagnosticUsbExport$Kind;->SHARED_INTERNAL:Lcom/shilapi/xcertplay/DiagnosticUsbExport$Kind;

    return-object p1

    .line 100
    :cond_4
    sget-object p1, Lcom/shilapi/xcertplay/DiagnosticUsbExport$Kind;->REMOVABLE:Lcom/shilapi/xcertplay/DiagnosticUsbExport$Kind;

    return-object p1
.end method

.method public final write(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/shilapi/xcertplay/DiagnosticUsbExport$Result;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shilapi/xcertplay/DiagnosticUsbExport$NoWritableStorage;
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "report"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/DiagnosticUsbExport;->candidates$common_release(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/DiagnosticUsbExport;->writeTo$common_release(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/shilapi/xcertplay/DiagnosticUsbExport$Result;

    move-result-object p1

    return-object p1
.end method

.method public final writeTo$common_release(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/shilapi/xcertplay/DiagnosticUsbExport$Result;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/DiagnosticUsbExport$Candidate;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/shilapi/xcertplay/DiagnosticUsbExport$Result;"
        }
    .end annotation

    const-string v0, "getAbsolutePath(...)"

    const-string v1, "candidates"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "fileName"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "report"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 40
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shilapi/xcertplay/DiagnosticUsbExport$Candidate;

    .line 41
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/DiagnosticUsbExport$Candidate;->getDir()Ljava/io/File;

    move-result-object v3

    .line 43
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v4, "cannot create folder"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 44
    :cond_1
    :goto_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 45
    invoke-static {v4, p3, v6, v5, v6}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 46
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-gtz v9, :cond_3

    move-object v5, p3

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-gtz v5, :cond_2

    goto :goto_2

    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v4, "file is empty after writing"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 47
    :cond_3
    :goto_2
    new-instance v5, Lcom/shilapi/xcertplay/DiagnosticUsbExport$Result;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/DiagnosticUsbExport$Candidate;->getKind()Lcom/shilapi/xcertplay/DiagnosticUsbExport$Kind;

    move-result-object v2

    invoke-direct {v5, v4, v6, v2}, Lcom/shilapi/xcertplay/DiagnosticUsbExport$Result;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/DiagnosticUsbExport$Kind;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception v2

    .line 49
    move-object v4, v1

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    :cond_4
    const-string v2, ""

    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 52
    :cond_6
    new-instance p1, Lcom/shilapi/xcertplay/DiagnosticUsbExport$NoWritableStorage;

    invoke-direct {p1, v1}, Lcom/shilapi/xcertplay/DiagnosticUsbExport$NoWritableStorage;-><init>(Ljava/util/List;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
