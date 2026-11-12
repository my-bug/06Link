.class public final Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult$AlreadyRunning;
.super Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult;
.source "UsbBluetoothDiscoverable.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlreadyRunning"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult$AlreadyRunning;",
        "Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult;",
        "<init>",
        "()V",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult$AlreadyRunning;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult$AlreadyRunning;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult$AlreadyRunning;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult$AlreadyRunning;->INSTANCE:Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult$AlreadyRunning;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
