.class final Lcom/shilapi/xcertplay/transport/Ch341UsbHost$BulkEndpoints;
.super Ljava/lang/Object;
.source "Ch341UsbHost.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/transport/Ch341UsbHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BulkEndpoints"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\'\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000c\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/Ch341UsbHost$BulkEndpoints;",
        "",
        "usbInterface",
        "Landroid/hardware/usb/UsbInterface;",
        "input",
        "Landroid/hardware/usb/UsbEndpoint;",
        "output",
        "<init>",
        "(Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;)V",
        "getUsbInterface",
        "()Landroid/hardware/usb/UsbInterface;",
        "getInput",
        "()Landroid/hardware/usb/UsbEndpoint;",
        "getOutput",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
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


# instance fields
.field private final input:Landroid/hardware/usb/UsbEndpoint;

.field private final output:Landroid/hardware/usb/UsbEndpoint;

.field private final usbInterface:Landroid/hardware/usb/UsbInterface;


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;)V
    .locals 1

    const-string/jumbo v0, "usbInterface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$BulkEndpoints;->usbInterface:Landroid/hardware/usb/UsbInterface;

    .line 160
    iput-object p2, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$BulkEndpoints;->input:Landroid/hardware/usb/UsbEndpoint;

    .line 161
    iput-object p3, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$BulkEndpoints;->output:Landroid/hardware/usb/UsbEndpoint;

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/transport/Ch341UsbHost$BulkEndpoints;Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;ILjava/lang/Object;)Lcom/shilapi/xcertplay/transport/Ch341UsbHost$BulkEndpoints;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$BulkEndpoints;->usbInterface:Landroid/hardware/usb/UsbInterface;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$BulkEndpoints;->input:Landroid/hardware/usb/UsbEndpoint;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$BulkEndpoints;->output:Landroid/hardware/usb/UsbEndpoint;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$BulkEndpoints;->copy(Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;)Lcom/shilapi/xcertplay/transport/Ch341UsbHost$BulkEndpoints;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/hardware/usb/UsbInterface;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$BulkEndpoints;->usbInterface:Landroid/hardware/usb/UsbInterface;

    return-object v0
.end method

.method public final component2()Landroid/hardware/usb/UsbEndpoint;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$BulkEndpoints;->input:Landroid/hardware/usb/UsbEndpoint;

    return-object v0
.end method

.method public final component3()Landroid/hardware/usb/UsbEndpoint;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$BulkEndpoints;->output:Landroid/hardware/usb/UsbEndpoint;

    return-object v0
.end method

.method public final copy(Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;)Lcom/shilapi/xcertplay/transport/Ch341UsbHost$BulkEndpoints;
    .locals 1

    const-string/jumbo v0, "usbInterface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$BulkEndpoints;

    invoke-direct {v0, p1, p2, p3}, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$BulkEndpoints;-><init>(Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$BulkEndpoints;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$BulkEndpoints;

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$BulkEndpoints;->usbInterface:Landroid/hardware/usb/UsbInterface;

    iget-object v3, p1, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$BulkEndpoints;->usbInterface:Landroid/hardware/usb/UsbInterface;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$BulkEndpoints;->input:Landroid/hardware/usb/UsbEndpoint;

    iget-object v3, p1, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$BulkEndpoints;->input:Landroid/hardware/usb/UsbEndpoint;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$BulkEndpoints;->output:Landroid/hardware/usb/UsbEndpoint;

    iget-object p1, p1, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$BulkEndpoints;->output:Landroid/hardware/usb/UsbEndpoint;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getInput()Landroid/hardware/usb/UsbEndpoint;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$BulkEndpoints;->input:Landroid/hardware/usb/UsbEndpoint;

    return-object v0
.end method

.method public final getOutput()Landroid/hardware/usb/UsbEndpoint;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$BulkEndpoints;->output:Landroid/hardware/usb/UsbEndpoint;

    return-object v0
.end method

.method public final getUsbInterface()Landroid/hardware/usb/UsbInterface;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$BulkEndpoints;->usbInterface:Landroid/hardware/usb/UsbInterface;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$BulkEndpoints;->usbInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$BulkEndpoints;->input:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$BulkEndpoints;->output:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$BulkEndpoints;->usbInterface:Landroid/hardware/usb/UsbInterface;

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$BulkEndpoints;->input:Landroid/hardware/usb/UsbEndpoint;

    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$BulkEndpoints;->output:Landroid/hardware/usb/UsbEndpoint;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BulkEndpoints(usbInterface="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", input="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", output="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
