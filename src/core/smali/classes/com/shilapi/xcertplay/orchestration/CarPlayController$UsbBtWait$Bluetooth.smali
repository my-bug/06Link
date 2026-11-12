.class public final Lcom/shilapi/xcertplay/orchestration/CarPlayController$UsbBtWait$Bluetooth;
.super Lcom/shilapi/xcertplay/orchestration/CarPlayController$UsbBtWait;
.source "CarPlayController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/orchestration/CarPlayController$UsbBtWait;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Bluetooth"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/orchestration/CarPlayController$UsbBtWait$Bluetooth;",
        "Lcom/shilapi/xcertplay/orchestration/CarPlayController$UsbBtWait;",
        "stream",
        "Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;",
        "<init>",
        "(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;)V",
        "getStream",
        "()Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;",
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


# instance fields
.field private final stream:Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;


# direct methods
.method public constructor <init>(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;)V
    .locals 1

    const-string/jumbo v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1912
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$UsbBtWait;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$UsbBtWait$Bluetooth;->stream:Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;

    return-void
.end method


# virtual methods
.method public final getStream()Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;
    .locals 1

    .line 1912
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$UsbBtWait$Bluetooth;->stream:Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;

    return-object v0
.end method
