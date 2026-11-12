.class public final Lcom/shilapi/xcertplay/compat/BluetoothStackSupport;
.super Ljava/lang/Object;
.source "BluetoothStackSupport.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBluetoothStackSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BluetoothStackSupport.kt\ncom/shilapi/xcertplay/compat/BluetoothStackSupport\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,113:1\n1#2:114\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000c\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001c\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0007JG\u0010\u0008\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u000fH\u0000\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000e\u0010\u0017\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bJ\u0015\u0010\u0012\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u0018J\u0017\u0010\u0014\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\n\u001a\u00020\u000bH\u0002\u00a2\u0006\u0002\u0010\u0018J\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u001a\u001a\u00020\u0005H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/compat/BluetoothStackSupport;",
        "",
        "<init>",
        "()V",
        "AOSP_PACKAGE",
        "",
        "AOSP_STACK",
        "PLACEHOLDER_ADDRESS",
        "classify",
        "Lcom/shilapi/xcertplay/compat/BluetoothStack;",
        "context",
        "Landroid/content/Context;",
        "adapter",
        "Landroid/bluetooth/BluetoothAdapter;",
        "adapterPresent",
        "",
        "enabled",
        "addressMissing",
        "systemSwitchOn",
        "stackProperty",
        "aospStackInstalled",
        "classify$shared_release",
        "(ZLjava/lang/Boolean;ZLjava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/shilapi/xcertplay/compat/BluetoothStack;",
        "signals",
        "(Landroid/content/Context;)Ljava/lang/Boolean;",
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
.field public static final AOSP_PACKAGE:Ljava/lang/String; = "com.android.bluetooth"

.field private static final AOSP_STACK:Ljava/lang/String; = "bluedroid"

.field public static final INSTANCE:Lcom/shilapi/xcertplay/compat/BluetoothStackSupport;

.field private static final PLACEHOLDER_ADDRESS:Ljava/lang/String; = "02:00:00:00:00:00"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/compat/BluetoothStackSupport;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/compat/BluetoothStackSupport;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/compat/BluetoothStackSupport;->INSTANCE:Lcom/shilapi/xcertplay/compat/BluetoothStackSupport;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final aospStackInstalled(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 2

    const/4 v0, 0x0

    .line 102
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/compat/BluetoothStackSupport;

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v1, "com.android.bluetooth"

    invoke-virtual {p1, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    const/4 p1, 0x1

    .line 104
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 102
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 105
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    instance-of p1, v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-eqz p1, :cond_1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public static synthetic classify$default(Lcom/shilapi/xcertplay/compat/BluetoothStackSupport;Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;ILjava/lang/Object;)Lcom/shilapi/xcertplay/compat/BluetoothStack;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 45
    :try_start_0
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lcom/shilapi/xcertplay/compat/Api19Kt;->bluetoothAdapterCompat(Landroid/content/Context;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    sget-object p3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :goto_0
    invoke-static {p2}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    check-cast p2, Landroid/bluetooth/BluetoothAdapter;

    .line 42
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/compat/BluetoothStackSupport;->classify(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)Lcom/shilapi/xcertplay/compat/BluetoothStack;

    move-result-object p0

    return-object p0
.end method

.method private final systemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    .line 107
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/compat/BluetoothStackSupport;

    .line 108
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 109
    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 110
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 108
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 107
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

    .line 111
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
.method public final classify(Landroid/content/Context;)Lcom/shilapi/xcertplay/compat/BluetoothStack;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/shilapi/xcertplay/compat/BluetoothStackSupport;->classify$default(Lcom/shilapi/xcertplay/compat/BluetoothStackSupport;Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;ILjava/lang/Object;)Lcom/shilapi/xcertplay/compat/BluetoothStack;

    move-result-object p1

    return-object p1
.end method

.method public final classify(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)Lcom/shilapi/xcertplay/compat/BluetoothStack;
    .locals 1

    sget-object v0, Lcom/shilapi/xcertplay/compat/BluetoothStack;->VENDOR_NO_AOSP:Lcom/shilapi/xcertplay/compat/BluetoothStack;

    return-object v0
.end method

.method public final classify$shared_release(ZLjava/lang/Boolean;ZLjava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/shilapi/xcertplay/compat/BluetoothStack;
    .locals 2

    const/4 v0, 0x1

    .line 68
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p1, Lcom/shilapi/xcertplay/compat/BluetoothStack;->ENABLED:Lcom/shilapi/xcertplay/compat/BluetoothStack;

    return-object p1

    :cond_0
    const/4 p2, 0x0

    .line 72
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p6, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    sget-object p1, Lcom/shilapi/xcertplay/compat/BluetoothStack;->VENDOR_NO_AOSP:Lcom/shilapi/xcertplay/compat/BluetoothStack;

    return-object p1

    .line 75
    :cond_1
    move-object p2, p5

    check-cast p2, Ljava/lang/CharSequence;

    if-eqz p2, :cond_3

    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const-string p2, "bluedroid"

    invoke-static {p5, p2, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_3

    if-eqz p3, :cond_3

    .line 76
    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p1, Lcom/shilapi/xcertplay/compat/BluetoothStack;->VENDOR_NO_AOSP:Lcom/shilapi/xcertplay/compat/BluetoothStack;

    return-object p1

    :cond_3
    :goto_0
    if-nez p1, :cond_4

    .line 77
    sget-object p1, Lcom/shilapi/xcertplay/compat/BluetoothStack;->ABSENT:Lcom/shilapi/xcertplay/compat/BluetoothStack;

    return-object p1

    .line 78
    :cond_4
    sget-object p1, Lcom/shilapi/xcertplay/compat/BluetoothStack;->OFF:Lcom/shilapi/xcertplay/compat/BluetoothStack;

    return-object p1
.end method

.method public final signals(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/compat/BluetoothStackSupport;->aospStackInstalled(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    .line 88
    :goto_0
    const-string v1, "ro.btstack"

    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/compat/BluetoothStackSupport;->systemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "unset"

    .line 89
    :cond_1
    const-string/jumbo v2, "unknown"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "installed"

    goto :goto_1

    :cond_2
    const-string v0, "missing"

    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 90
    :goto_1
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/compat/BluetoothStackSupport;->systemSwitchOn(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "on"

    goto :goto_2

    :cond_4
    const-string p1, "off"

    :goto_2
    move-object v2, p1

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "ro.btstack="

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " aosp-stack="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " car-switch="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final systemSwitchOn(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 94
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/compat/BluetoothStackSupport;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 97
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x11

    const/4 v3, -0x1

    const-string v4, "bluetooth_on"

    if-lt v1, v2, :cond_0

    :try_start_1
    invoke-static {p1, v4, v3}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    goto :goto_0

    .line 98
    :cond_0
    invoke-static {p1, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    :goto_0
    if-gez p1, :cond_1

    move-object p1, v0

    goto :goto_2

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 99
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 94
    :goto_2
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 100
    :goto_3
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_4

    :cond_3
    move-object v0, p1

    :goto_4
    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method
