.class public final Lcom/shilapi/xcertplay/transport/Iap2UsbSession$Companion;
.super Ljava/lang/Object;
.source "IphoneUsbHost.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/transport/Iap2UsbSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001d\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0000\u00a2\u0006\u0002\u0008\u000bR\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/Iap2UsbSession$Companion;",
        "",
        "<init>",
        "()V",
        "USBMUX_READ_CHUNK_BYTES_LEGACY",
        "",
        "USBMUX_READ_CHUNK_BYTES_DEFAULT",
        "usbmuxReadChunkBytes",
        "sdk",
        "legacyUsbfsRead",
        "",
        "usbmuxReadChunkBytes$shared_release",
        "CANCEL_DRAIN_TIMEOUT_MILLIS",
        "",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Iap2UsbSession$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final usbmuxReadChunkBytes$shared_release(IZ)I
    .locals 2

    .line 515
    sget-object v0, Lcom/shilapi/xcertplay/transport/UsbTransferLimits;->INSTANCE:Lcom/shilapi/xcertplay/transport/UsbTransferLimits;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1, p1, p2}, Lcom/shilapi/xcertplay/transport/UsbTransferLimits;->readChunkBytes(IIZ)I

    move-result p1

    return p1
.end method
