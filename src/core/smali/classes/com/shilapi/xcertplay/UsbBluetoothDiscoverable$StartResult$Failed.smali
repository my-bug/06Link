.class public final Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult$Failed;
.super Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult;
.source "UsbBluetoothDiscoverable.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Failed"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult$Failed;",
        "Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult;",
        "reason",
        "",
        "note",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "getReason",
        "()Ljava/lang/String;",
        "getNote",
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


# instance fields
.field private final note:Ljava/lang/String;

.field private final reason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult$Failed;->reason:Ljava/lang/String;

    iput-object p2, p0, Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult$Failed;->note:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 23
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult$Failed;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getNote()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult$Failed;->note:Ljava/lang/String;

    return-object v0
.end method

.method public final getReason()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult$Failed;->reason:Ljava/lang/String;

    return-object v0
.end method
