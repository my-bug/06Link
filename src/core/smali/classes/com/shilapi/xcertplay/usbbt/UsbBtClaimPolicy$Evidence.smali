.class public final Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;
.super Ljava/lang/Object;
.source "UsbBtClaimPolicy.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Evidence"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0006\u0010\u000c\u001a\u00020\u0005J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;",
        "",
        "interfaceNumber",
        "",
        "deviceName",
        "",
        "<init>",
        "(ILjava/lang/String;)V",
        "getInterfaceNumber",
        "()I",
        "getDeviceName",
        "()Ljava/lang/String;",
        "describe",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
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
.field private final deviceName:Ljava/lang/String;

.field private final interfaceNumber:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const-string v0, "deviceName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;->interfaceNumber:I

    iput-object p2, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;->deviceName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;ILjava/lang/String;ILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;->interfaceNumber:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;->deviceName:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;->copy(ILjava/lang/String;)Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;->interfaceNumber:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(ILjava/lang/String;)Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;
    .locals 1

    const-string v0, "deviceName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;

    invoke-direct {v0, p1, p2}, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public final describe()Ljava/lang/String;
    .locals 4

    .line 23
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;->interfaceNumber:I

    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;->deviceName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "interface #"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", claimInterface(force=false)=false, device "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;

    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;->interfaceNumber:I

    iget v3, p1, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;->interfaceNumber:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;->deviceName:Ljava/lang/String;

    iget-object p1, p1, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;->deviceName:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getDeviceName()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public final getInterfaceNumber()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;->interfaceNumber:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;->interfaceNumber:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;->deviceName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;->interfaceNumber:I

    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;->deviceName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Evidence(interfaceNumber="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", deviceName="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
