.class public final Lcom/shilapi/xcertplay/DiPlayBluetooth;
.super Ljava/lang/Object;
.source "DiPlayBluetooth.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDiPlayBluetooth.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiPlayBluetooth.kt\ncom/shilapi/xcertplay/DiPlayBluetooth\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,54:1\n1#2:55\n295#3,2:56\n*S KotlinDebug\n*F\n+ 1 DiPlayBluetooth.kt\ncom/shilapi/xcertplay/DiPlayBluetooth\n*L\n48#1:56,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u0018\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u0010\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/DiPlayBluetooth;",
        "",
        "<init>",
        "()V",
        "route",
        "Lcom/shilapi/xcertplay/BluetoothRoute;",
        "context",
        "Landroid/content/Context;",
        "adapter",
        "Landroid/bluetooth/BluetoothAdapter;",
        "vendorStackOnly",
        "",
        "useGoc",
        "localAddress",
        "",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/DiPlayBluetooth;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/DiPlayBluetooth;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/DiPlayBluetooth;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/DiPlayBluetooth;->INSTANCE:Lcom/shilapi/xcertplay/DiPlayBluetooth;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final localAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/shilapi/xcertplay/E01OemBluetooth;->localAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final route(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)Lcom/shilapi/xcertplay/BluetoothRoute;
    .locals 1

    sget-object v0, Lcom/shilapi/xcertplay/BluetoothRoute;->USE_GOC:Lcom/shilapi/xcertplay/BluetoothRoute;

    return-object v0
.end method

.method public final useGoc(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final vendorStackOnly(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
