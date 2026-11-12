.class public final Lcom/shilapi/xcertplay/VendorBluetoothNotice;
.super Ljava/lang/Object;
.source "BluetoothRoute.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/VendorBluetoothNotice$Show;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBluetoothRoute.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BluetoothRoute.kt\ncom/shilapi/xcertplay/VendorBluetoothNotice\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,106:1\n1#2:107\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0015B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J%\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u0008H\u0000\u00a2\u0006\u0002\u0008\rJ\u0016\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000c\u001a\u00020\u0008J\u000e\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u0010J\r\u0010\u0013\u001a\u00020\u0012H\u0000\u00a2\u0006\u0002\u0008\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/VendorBluetoothNotice;",
        "",
        "<init>",
        "()V",
        "PREFERENCES",
        "",
        "KEY_ACKNOWLEDGED",
        "shownThisProcess",
        "",
        "decide",
        "Lcom/shilapi/xcertplay/VendorBluetoothNotice$Show;",
        "acknowledged",
        "automatic",
        "decide$common_release",
        "next",
        "context",
        "Landroid/content/Context;",
        "acknowledge",
        "",
        "resetProcessForTest",
        "resetProcessForTest$common_release",
        "Show",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/VendorBluetoothNotice;

.field private static final KEY_ACKNOWLEDGED:Ljava/lang/String; = "vendor_bluetooth_notice_acknowledged"

.field private static final PREFERENCES:Ljava/lang/String; = "diplay"

.field private static volatile shownThisProcess:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/VendorBluetoothNotice;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/VendorBluetoothNotice;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/VendorBluetoothNotice;->INSTANCE:Lcom/shilapi/xcertplay/VendorBluetoothNotice;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final acknowledge(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    const-string v0, "diplay"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string/jumbo v0, "vendor_bluetooth_notice_acknowledged"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final acknowledged(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    const-string v0, "diplay"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string/jumbo v0, "vendor_bluetooth_notice_acknowledged"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public final decide$common_release(ZZZ)Lcom/shilapi/xcertplay/VendorBluetoothNotice$Show;
    .locals 0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 84
    sget-object p1, Lcom/shilapi/xcertplay/VendorBluetoothNotice$Show;->DIALOG:Lcom/shilapi/xcertplay/VendorBluetoothNotice$Show;

    return-object p1

    :cond_0
    if-eqz p3, :cond_1

    .line 85
    sget-object p1, Lcom/shilapi/xcertplay/VendorBluetoothNotice$Show;->NOTHING:Lcom/shilapi/xcertplay/VendorBluetoothNotice$Show;

    return-object p1

    .line 86
    :cond_1
    sget-object p1, Lcom/shilapi/xcertplay/VendorBluetoothNotice$Show;->TOAST:Lcom/shilapi/xcertplay/VendorBluetoothNotice$Show;

    return-object p1
.end method

.method public final next(Landroid/content/Context;Z)Lcom/shilapi/xcertplay/VendorBluetoothNotice$Show;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/VendorBluetoothNotice;->acknowledged(Landroid/content/Context;)Z

    move-result p1

    sget-boolean v0, Lcom/shilapi/xcertplay/VendorBluetoothNotice;->shownThisProcess:Z

    invoke-virtual {p0, p1, v0, p2}, Lcom/shilapi/xcertplay/VendorBluetoothNotice;->decide$common_release(ZZZ)Lcom/shilapi/xcertplay/VendorBluetoothNotice$Show;

    move-result-object p1

    sget-object p2, Lcom/shilapi/xcertplay/VendorBluetoothNotice$Show;->DIALOG:Lcom/shilapi/xcertplay/VendorBluetoothNotice$Show;

    if-ne p1, p2, :cond_0

    const/4 p2, 0x1

    sput-boolean p2, Lcom/shilapi/xcertplay/VendorBluetoothNotice;->shownThisProcess:Z

    :cond_0
    return-object p1
.end method

.method public final resetProcessForTest$common_release()V
    .locals 1

    const/4 v0, 0x0

    .line 103
    sput-boolean v0, Lcom/shilapi/xcertplay/VendorBluetoothNotice;->shownThisProcess:Z

    return-void
.end method
