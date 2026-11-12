.class public abstract Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult;
.super Ljava/lang/Object;
.source "UsbBluetoothDiscoverable.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StartResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult$AlreadyRunning;,
        Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult$Failed;,
        Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult$NeedsPermission;,
        Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult$NoDongle;,
        Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult$NoUsbHost;,
        Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult$Started;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0006\u0004\u0005\u0006\u0007\u0008\tB\t\u0008\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u0082\u0001\u0006\n\u000b\u000c\r\u000e\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult;",
        "",
        "<init>",
        "()V",
        "Started",
        "AlreadyRunning",
        "NoUsbHost",
        "NoDongle",
        "NeedsPermission",
        "Failed",
        "Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult$AlreadyRunning;",
        "Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult$Failed;",
        "Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult$NeedsPermission;",
        "Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult$NoDongle;",
        "Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult$NoUsbHost;",
        "Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult$Started;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult;-><init>()V

    return-void
.end method
