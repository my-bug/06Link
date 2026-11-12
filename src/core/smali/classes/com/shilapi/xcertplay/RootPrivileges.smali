.class public final Lcom/shilapi/xcertplay/RootPrivileges;
.super Ljava/lang/Object;
.source "RootPrivileges.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/RootPrivileges$Adb;,
        Lcom/shilapi/xcertplay/RootPrivileges$Grant;,
        Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;,
        Lcom/shilapi/xcertplay/RootPrivileges$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRootPrivileges.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RootPrivileges.kt\ncom/shilapi/xcertplay/RootPrivileges\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,187:1\n1#2:188\n1#2:199\n1#2:212\n1617#3,9:189\n1869#3:198\n1870#3:200\n1626#3:201\n1617#3,9:202\n1869#3:211\n1870#3:213\n1626#3:214\n295#3,2:215\n295#3,2:217\n1255#4,2:219\n*S KotlinDebug\n*F\n+ 1 RootPrivileges.kt\ncom/shilapi/xcertplay/RootPrivileges\n*L\n101#1:199\n102#1:212\n101#1:189,9\n101#1:198\n101#1:200\n101#1:201\n102#1:202,9\n102#1:211\n102#1:213\n102#1:214\n102#1:215,2\n133#1:217,2\n139#1:219,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0011\n\u0002\u0008\u0005\u0008\u00c0\u0002\u0018\u00002\u00020\u0001:\u0003()*B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rJ#\u0010\u000e\u001a\u0004\u0018\u00010\u00072\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\r0\u0010H\u0000\u00a2\u0006\u0002\u0008\u0011J#\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0013\u0012\u0006\u0012\u0004\u0018\u00010\r0\u00062\u0006\u0010\u0014\u001a\u00020\u0015H\u0000\u00a2\u0006\u0002\u0008\u0016J-\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0016\u0010\u001b\u001a\u0012\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u0010H\u0000\u00a2\u0006\u0002\u0008\u001cJ#\u0010\u001d\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0007H\u0000\u00a2\u0006\u0002\u0008 J\n\u0010!\u001a\u0004\u0018\u00010\u0007H\u0002J\u0012\u0010\"\u001a\u0004\u0018\u00010\u00072\u0006\u0010#\u001a\u00020\u0007H\u0002J#\u0010$\u001a\u0004\u0018\u00010\u00072\u0012\u0010%\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00070&\"\u00020\u0007H\u0002\u00a2\u0006\u0002\u0010\'R \u0010\u0004\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006+"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/RootPrivileges;",
        "",
        "<init>",
        "()V",
        "ROOT_TOOLS",
        "",
        "Lkotlin/Pair;",
        "",
        "probe",
        "Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;",
        "context",
        "Landroid/content/Context;",
        "probeSu",
        "",
        "rootTool",
        "installed",
        "Lkotlin/Function1;",
        "rootTool$common_release",
        "parseSuProbe",
        "Lcom/shilapi/xcertplay/RootPrivileges$Grant;",
        "result",
        "Lcom/shilapi/xcertplay/network/RootShell$Result;",
        "parseSuProbe$common_release",
        "adbState",
        "Lcom/shilapi/xcertplay/RootPrivileges$Adb;",
        "access",
        "Lcom/shilapi/xcertplay/adb/LocalAdb$Access;",
        "shell",
        "adbState$common_release",
        "selinuxFrom",
        "enforceFile",
        "getenforce",
        "selinuxFrom$common_release",
        "selinuxMode",
        "property",
        "name",
        "runCommand",
        "command",
        "",
        "([Ljava/lang/String;)Ljava/lang/String;",
        "Grant",
        "Adb",
        "Snapshot",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/RootPrivileges;

.field private static final ROOT_TOOLS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$gnFuVM35CGrjfIkH5xwg5mh5-dA(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/RootPrivileges;->probe$lambda$1(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/shilapi/xcertplay/RootPrivileges;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/RootPrivileges;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/RootPrivileges;->INSTANCE:Lcom/shilapi/xcertplay/RootPrivileges;

    const/4 v0, 0x4

    .line 79
    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "com.topjohnwu.magisk"

    const-string v2, "Magisk"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 80
    const-string v1, "eu.chainfire.supersu"

    const-string v2, "SuperSU"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 81
    const-string v1, "com.koushikdutta.superuser"

    const-string v2, "Superuser (Koush)"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 82
    const-string v1, "com.noshufou.android.su"

    const-string v2, "Superuser (ChainsDD)"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 78
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/RootPrivileges;->ROOT_TOOLS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final probe$lambda$1(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

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
    invoke-static {p0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final property(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 169
    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v3, p0

    check-cast v3, Lcom/shilapi/xcertplay/RootPrivileges;

    .line 170
    const-string v3, "android.os.SystemProperties"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "get"

    new-array v5, v0, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_0

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 169
    :goto_0
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v3}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 171
    :goto_1
    invoke-static {v3}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v3, v2

    :cond_1
    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_2

    const/4 v3, 0x2

    .line 172
    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "getprop"

    aput-object v4, v3, v1

    aput-object p1, v3, v0

    invoke-direct {p0, v3}, Lcom/shilapi/xcertplay/RootPrivileges;->runCommand([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    if-eqz v3, :cond_3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_3

    move-object v2, p1

    :cond_3
    return-object v2
.end method

.method private final varargs runCommand([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 175
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/RootPrivileges;

    .line 176
    new-instance v1, Ljava/lang/ProcessBuilder;

    array-length v2, p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 178
    :try_start_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "getInputStream(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v3, Ljava/io/Reader;

    instance-of v1, v3, Ljava/io/BufferedReader;

    if-eqz v1, :cond_0

    check-cast v3, Ljava/io/BufferedReader;

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v2, 0x2000

    invoke-direct {v1, v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v3, v1

    :goto_1
    check-cast v3, Ljava/io/Closeable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    move-object v1, v3

    check-cast v1, Ljava/io/BufferedReader;

    check-cast v1, Ljava/io/Reader;

    invoke-static {v1}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v3, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 180
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x2

    invoke-static {p1, v3, v4, v2}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Ljava/lang/Process;JLjava/util/concurrent/TimeUnit;)Z

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 183
    :goto_2
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    .line 175
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_3

    :catchall_1
    move-exception v1

    .line 179
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v2

    :try_start_7
    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v1

    .line 183
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception p1

    .line 175
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 185
    :goto_3
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_4

    :cond_2
    move-object v0, p1

    :goto_4
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final selinuxMode()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 162
    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v2, p0

    check-cast v2, Lcom/shilapi/xcertplay/RootPrivileges;

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/fs/selinux/enforce"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v1, v0, v1}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    invoke-static {v2}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, v1

    :cond_0
    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1

    .line 163
    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "getenforce"

    const/4 v4, 0x0

    aput-object v3, v0, v4

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/RootPrivileges;->runCommand([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 164
    :goto_1
    invoke-virtual {p0, v2, v0}, Lcom/shilapi/xcertplay/RootPrivileges;->selinuxFrom$common_release(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-ge v0, v3, :cond_3

    if-nez v2, :cond_3

    const-string v1, "Disabled"

    goto :goto_2

    :cond_2
    move-object v1, v0

    :cond_3
    :goto_2
    return-object v1
.end method


# virtual methods
.method public final adbState$common_release(Lcom/shilapi/xcertplay/adb/LocalAdb$Access;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/RootPrivileges$Adb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/adb/LocalAdb$Access;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/shilapi/xcertplay/RootPrivileges$Adb;"
        }
    .end annotation

    const-string v0, "access"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    sget-object v0, Lcom/shilapi/xcertplay/RootPrivileges$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/adb/LocalAdb$Access;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    if-nez p2, :cond_0

    .line 147
    sget-object p1, Lcom/shilapi/xcertplay/RootPrivileges$Adb;->SHELL:Lcom/shilapi/xcertplay/RootPrivileges$Adb;

    return-object p1

    .line 148
    :cond_0
    sget-object p1, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->INSTANCE:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;

    const-string v0, "id"

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->isRoot(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/shilapi/xcertplay/RootPrivileges$Adb;->ROOT:Lcom/shilapi/xcertplay/RootPrivileges$Adb;

    return-object p1

    .line 149
    :cond_1
    sget-object p1, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->INSTANCE:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;

    invoke-virtual {p1, p2}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->suForm(Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/shilapi/xcertplay/RootPrivileges$Adb;->SU:Lcom/shilapi/xcertplay/RootPrivileges$Adb;

    return-object p1

    .line 150
    :cond_2
    sget-object p1, Lcom/shilapi/xcertplay/RootPrivileges$Adb;->SHELL:Lcom/shilapi/xcertplay/RootPrivileges$Adb;

    return-object p1

    .line 142
    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 145
    :cond_4
    sget-object p1, Lcom/shilapi/xcertplay/RootPrivileges$Adb;->TLS_ONLY:Lcom/shilapi/xcertplay/RootPrivileges$Adb;

    return-object p1

    .line 144
    :cond_5
    sget-object p1, Lcom/shilapi/xcertplay/RootPrivileges$Adb;->OFF:Lcom/shilapi/xcertplay/RootPrivileges$Adb;

    return-object p1

    .line 143
    :cond_6
    sget-object p1, Lcom/shilapi/xcertplay/RootPrivileges$Adb;->NOT_APPROVED:Lcom/shilapi/xcertplay/RootPrivileges$Adb;

    return-object p1
.end method

.method public final parseSuProbe$common_release(Lcom/shilapi/xcertplay/network/RootShell$Result;)Lkotlin/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/network/RootShell$Result;",
            ")",
            "Lkotlin/Pair<",
            "Lcom/shilapi/xcertplay/RootPrivileges$Grant;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    sget-object v0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->INSTANCE:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/network/RootShell$Result;->getOutput()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->isRoot(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    sget-object p1, Lcom/shilapi/xcertplay/RootPrivileges$Grant;->DENIED:Lcom/shilapi/xcertplay/RootPrivileges$Grant;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1

    .line 139
    :cond_0
    sget-object v0, Lcom/shilapi/xcertplay/RootPrivileges$Grant;->GRANTED:Lcom/shilapi/xcertplay/RootPrivileges$Grant;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/network/RootShell$Result;->getOutput()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->lineSequence(Ljava/lang/CharSequence;)Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 219
    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 139
    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FA_IP=0"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 220
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 139
    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final probe(Landroid/content/Context;Z)Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;
    .locals 19

    move-object/from16 v1, p0

    const-string v0, "context"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 88
    sget-object v0, Lcom/shilapi/xcertplay/network/RootShell;->INSTANCE:Lcom/shilapi/xcertplay/network/RootShell;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/RootShell;->suPath()Ljava/lang/String;

    move-result-object v4

    .line 89
    new-instance v0, Lcom/shilapi/xcertplay/RootPrivileges$$ExternalSyntheticLambda2;

    invoke-direct {v0, v2}, Lcom/shilapi/xcertplay/RootPrivileges$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/shilapi/xcertplay/RootPrivileges;->rootTool$common_release(Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-nez v4, :cond_0

    .line 91
    sget-object v0, Lcom/shilapi/xcertplay/RootPrivileges$Grant;->NO_SU:Lcom/shilapi/xcertplay/RootPrivileges$Grant;

    invoke-static {v0, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 92
    sget-object v0, Lcom/shilapi/xcertplay/RootPrivileges$Grant;->NOT_PROBED:Lcom/shilapi/xcertplay/RootPrivileges$Grant;

    invoke-static {v0, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    goto :goto_0

    .line 93
    :cond_1
    sget-object v9, Lcom/shilapi/xcertplay/network/RootShell;->INSTANCE:Lcom/shilapi/xcertplay/network/RootShell;

    new-array v0, v3, [Ljava/lang/String;

    const-string v10, "id"

    aput-object v10, v0, v7

    const-string v10, "ip -6 route show >/dev/null 2>&1; echo FA_IP=$?"

    aput-object v10, v0, v6

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const/4 v13, 0x2

    const/4 v14, 0x0

    const-wide/16 v11, 0x0

    invoke-static/range {v9 .. v14}, Lcom/shilapi/xcertplay/network/RootShell;->run$default(Lcom/shilapi/xcertplay/network/RootShell;Ljava/util/List;JILjava/lang/Object;)Lcom/shilapi/xcertplay/network/RootShell$Result;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/shilapi/xcertplay/RootPrivileges;->parseSuProbe$common_release(Lcom/shilapi/xcertplay/network/RootShell$Result;)Lkotlin/Pair;

    move-result-object v0

    .line 90
    :goto_0
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shilapi/xcertplay/RootPrivileges$Grant;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/Boolean;

    .line 96
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/RootPrivileges;

    .line 97
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 98
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v12, 0x11

    const/4 v13, -0x1

    const-string v14, "adb_enabled"

    if-lt v11, v12, :cond_2

    :try_start_1
    invoke-static {v0, v14, v13}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    .line 99
    :cond_2
    invoke-static {v0, v14, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 96
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    sget-object v11, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 100
    :goto_2
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    move-object v0, v8

    :cond_3
    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_6

    move-object v11, v0

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    if-ltz v11, :cond_4

    goto :goto_3

    :cond_4
    move-object v0, v8

    :goto_3
    if-eqz v0, :cond_6

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-ne v0, v6, :cond_5

    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object v12, v0

    goto :goto_5

    :cond_6
    move-object v12, v8

    .line 101
    :goto_5
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v11, "sys.usb.config"

    aput-object v11, v0, v7

    const-string v11, "persist.sys.usb.config"

    aput-object v11, v0, v6

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 189
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    check-cast v11, Ljava/util/Collection;

    .line 198
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 197
    check-cast v13, Ljava/lang/String;

    .line 101
    invoke-direct {v1, v13}, Lcom/shilapi/xcertplay/RootPrivileges;->property(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_7

    .line 197
    invoke-interface {v11, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 201
    :cond_8
    check-cast v11, Ljava/util/List;

    .line 101
    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    .line 102
    new-array v0, v3, [Ljava/lang/String;

    const-string v3, "service.adb.tcp.port"

    aput-object v3, v0, v7

    const-string v3, "persist.adb.tcp.port"

    aput-object v3, v0, v6

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 202
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 211
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 210
    check-cast v6, Ljava/lang/String;

    .line 102
    invoke-direct {v1, v6}, Lcom/shilapi/xcertplay/RootPrivileges;->property(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 210
    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 214
    :cond_a
    check-cast v3, Ljava/util/List;

    .line 202
    check-cast v3, Ljava/lang/Iterable;

    .line 215
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    .line 102
    const-string v11, "-1"

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    const-string v11, "0"

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_8

    :cond_c
    move-object v3, v8

    :goto_8
    move-object v15, v3

    check-cast v15, Ljava/lang/String;

    .line 104
    sget-object v3, Lcom/shilapi/xcertplay/RootPrivileges$Adb;->OFF:Lcom/shilapi/xcertplay/RootPrivileges$Adb;

    .line 105
    :try_start_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/RootPrivileges;

    .line 106
    sget-object v0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->INSTANCE:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v7}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->openAdb(Landroid/content/Context;Z)Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 108
    :try_start_3
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;->getAccess()Lcom/shilapi/xcertplay/adb/LocalAdb$Access;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 109
    :try_start_4
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;->getAccess()Lcom/shilapi/xcertplay/adb/LocalAdb$Access;

    move-result-object v0

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;->getShell()Lkotlin/jvm/functions/Function1;

    move-result-object v7

    invoke-virtual {v1, v0, v7}, Lcom/shilapi/xcertplay/RootPrivileges;->adbState$common_release(Lcom/shilapi/xcertplay/adb/LocalAdb$Access;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/RootPrivileges$Adb;

    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 111
    :try_start_5
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;->getClose()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 113
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 105
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :catchall_1
    move-exception v0

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v6, v8

    .line 111
    :goto_9
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;->getClose()Lkotlin/jvm/functions/Function0;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_a

    :catchall_4
    move-exception v0

    move-object v6, v8

    .line 105
    :goto_a
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_b
    move-object/from16 v17, v3

    move-object/from16 v16, v6

    .line 119
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_c

    :cond_d
    move-object v0, v8

    :goto_c
    if-nez v0, :cond_e

    const-string v0, "ro.build.type"

    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/RootPrivileges;->property(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    :cond_e
    sget-object v2, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v2, :cond_10

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    move-object v8, v2

    :cond_f
    if-nez v8, :cond_11

    :cond_10
    const-string v2, "ro.build.tags"

    invoke-direct {v1, v2}, Lcom/shilapi/xcertplay/RootPrivileges;->property(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 121
    :cond_11
    const-string v2, "ro.debuggable"

    invoke-direct {v1, v2}, Lcom/shilapi/xcertplay/RootPrivileges;->property(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 122
    const-string v3, "ro.secure"

    invoke-direct {v1, v3}, Lcom/shilapi/xcertplay/RootPrivileges;->property(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 124
    const-string v3, "init.svc.adbd"

    invoke-direct {v1, v3}, Lcom/shilapi/xcertplay/RootPrivileges;->property(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 129
    invoke-direct {v1}, Lcom/shilapi/xcertplay/RootPrivileges;->selinuxMode()Ljava/lang/String;

    move-result-object v18

    .line 114
    new-instance v3, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;

    move-object v6, v9

    move-object v7, v10

    move-object v10, v2

    move-object v9, v8

    move-object v8, v0

    invoke-direct/range {v3 .. v18}, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/RootPrivileges$Grant;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/adb/LocalAdb$Access;Lcom/shilapi/xcertplay/RootPrivileges$Adb;Ljava/lang/String;)V

    return-object v3
.end method

.method public final rootTool$common_release(Lkotlin/jvm/functions/Function1;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "installed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    sget-object v0, Lcom/shilapi/xcertplay/RootPrivileges;->ROOT_TOOLS:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 217
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lkotlin/Pair;

    .line 133
    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Lkotlin/Pair;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_2
    return-object v2
.end method

.method public final selinuxFrom$common_release(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 155
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 156
    :goto_0
    const-string v1, "1"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "Enforcing"

    if-eqz v1, :cond_1

    return-object v2

    .line 157
    :cond_1
    const-string v1, "0"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "Permissive"

    if-eqz p1, :cond_2

    return-object v1

    :cond_2
    if-eqz p2, :cond_5

    .line 158
    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "Disabled"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    return-object v0

    :cond_4
    :goto_1
    return-object p1

    :cond_5
    return-object v0
.end method
