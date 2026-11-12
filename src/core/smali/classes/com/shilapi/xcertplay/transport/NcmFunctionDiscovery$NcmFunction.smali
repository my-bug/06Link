.class public final Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;
.super Ljava/lang/Object;
.source "NcmFunctionDiscovery.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NcmFunction"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0006H\u00c6\u0003J=\u0010\u0017\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001b\u001a\u00020\u001cH\u00d6\u0001J\t\u0010\u001d\u001a\u00020\u001eH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000fR\u0011\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000f\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;",
        "",
        "control",
        "Lcom/shilapi/xcertplay/transport/UsbInterfaceView;",
        "data",
        "statusIn",
        "Landroid/hardware/usb/UsbEndpoint;",
        "bulkIn",
        "bulkOut",
        "<init>",
        "(Lcom/shilapi/xcertplay/transport/UsbInterfaceView;Lcom/shilapi/xcertplay/transport/UsbInterfaceView;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;)V",
        "getControl",
        "()Lcom/shilapi/xcertplay/transport/UsbInterfaceView;",
        "getData",
        "getStatusIn",
        "()Landroid/hardware/usb/UsbEndpoint;",
        "getBulkIn",
        "getBulkOut",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
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
.field private final bulkIn:Landroid/hardware/usb/UsbEndpoint;

.field private final bulkOut:Landroid/hardware/usb/UsbEndpoint;

.field private final control:Lcom/shilapi/xcertplay/transport/UsbInterfaceView;

.field private final data:Lcom/shilapi/xcertplay/transport/UsbInterfaceView;

.field private final statusIn:Landroid/hardware/usb/UsbEndpoint;


# direct methods
.method public constructor <init>(Lcom/shilapi/xcertplay/transport/UsbInterfaceView;Lcom/shilapi/xcertplay/transport/UsbInterfaceView;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;)V
    .locals 1

    const-string v0, "control"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bulkIn"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bulkOut"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;->control:Lcom/shilapi/xcertplay/transport/UsbInterfaceView;

    .line 24
    iput-object p2, p0, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;->data:Lcom/shilapi/xcertplay/transport/UsbInterfaceView;

    .line 25
    iput-object p3, p0, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;->statusIn:Landroid/hardware/usb/UsbEndpoint;

    .line 26
    iput-object p4, p0, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;->bulkIn:Landroid/hardware/usb/UsbEndpoint;

    .line 27
    iput-object p5, p0, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;->bulkOut:Landroid/hardware/usb/UsbEndpoint;

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;Lcom/shilapi/xcertplay/transport/UsbInterfaceView;Lcom/shilapi/xcertplay/transport/UsbInterfaceView;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;ILjava/lang/Object;)Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;->control:Lcom/shilapi/xcertplay/transport/UsbInterfaceView;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;->data:Lcom/shilapi/xcertplay/transport/UsbInterfaceView;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget-object p3, p0, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;->statusIn:Landroid/hardware/usb/UsbEndpoint;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    iget-object p4, p0, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;->bulkIn:Landroid/hardware/usb/UsbEndpoint;

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget-object p5, p0, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;->bulkOut:Landroid/hardware/usb/UsbEndpoint;

    :cond_4
    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;->copy(Lcom/shilapi/xcertplay/transport/UsbInterfaceView;Lcom/shilapi/xcertplay/transport/UsbInterfaceView;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;)Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/shilapi/xcertplay/transport/UsbInterfaceView;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;->control:Lcom/shilapi/xcertplay/transport/UsbInterfaceView;

    return-object v0
.end method

.method public final component2()Lcom/shilapi/xcertplay/transport/UsbInterfaceView;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;->data:Lcom/shilapi/xcertplay/transport/UsbInterfaceView;

    return-object v0
.end method

.method public final component3()Landroid/hardware/usb/UsbEndpoint;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;->statusIn:Landroid/hardware/usb/UsbEndpoint;

    return-object v0
.end method

.method public final component4()Landroid/hardware/usb/UsbEndpoint;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;->bulkIn:Landroid/hardware/usb/UsbEndpoint;

    return-object v0
.end method

.method public final component5()Landroid/hardware/usb/UsbEndpoint;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;->bulkOut:Landroid/hardware/usb/UsbEndpoint;

    return-object v0
.end method

.method public final copy(Lcom/shilapi/xcertplay/transport/UsbInterfaceView;Lcom/shilapi/xcertplay/transport/UsbInterfaceView;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;)Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;
    .locals 7

    const-string v0, "control"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bulkIn"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bulkOut"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;-><init>(Lcom/shilapi/xcertplay/transport/UsbInterfaceView;Lcom/shilapi/xcertplay/transport/UsbInterfaceView;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;->control:Lcom/shilapi/xcertplay/transport/UsbInterfaceView;

    iget-object v3, p1, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;->control:Lcom/shilapi/xcertplay/transport/UsbInterfaceView;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;->data:Lcom/shilapi/xcertplay/transport/UsbInterfaceView;

    iget-object v3, p1, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;->data:Lcom/shilapi/xcertplay/transport/UsbInterfaceView;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;->statusIn:Landroid/hardware/usb/UsbEndpoint;

    iget-object v3, p1, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;->statusIn:Landroid/hardware/usb/UsbEndpoint;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;->bulkIn:Landroid/hardware/usb/UsbEndpoint;

    iget-object v3, p1, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;->bulkIn:Landroid/hardware/usb/UsbEndpoint;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;->bulkOut:Landroid/hardware/usb/UsbEndpoint;

    iget-object p1, p1, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;->bulkOut:Landroid/hardware/usb/UsbEndpoint;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getBulkIn()Landroid/hardware/usb/UsbEndpoint;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;->bulkIn:Landroid/hardware/usb/UsbEndpoint;

    return-object v0
.end method

.method public final getBulkOut()Landroid/hardware/usb/UsbEndpoint;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;->bulkOut:Landroid/hardware/usb/UsbEndpoint;

    return-object v0
.end method

.method public final getControl()Lcom/shilapi/xcertplay/transport/UsbInterfaceView;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;->control:Lcom/shilapi/xcertplay/transport/UsbInterfaceView;

    return-object v0
.end method

.method public final getData()Lcom/shilapi/xcertplay/transport/UsbInterfaceView;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;->data:Lcom/shilapi/xcertplay/transport/UsbInterfaceView;

    return-object v0
.end method

.method public final getStatusIn()Landroid/hardware/usb/UsbEndpoint;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;->statusIn:Landroid/hardware/usb/UsbEndpoint;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;->control:Lcom/shilapi/xcertplay/transport/UsbInterfaceView;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/UsbInterfaceView;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;->data:Lcom/shilapi/xcertplay/transport/UsbInterfaceView;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/UsbInterfaceView;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;->statusIn:Landroid/hardware/usb/UsbEndpoint;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;->bulkIn:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;->bulkOut:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;->control:Lcom/shilapi/xcertplay/transport/UsbInterfaceView;

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;->data:Lcom/shilapi/xcertplay/transport/UsbInterfaceView;

    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;->statusIn:Landroid/hardware/usb/UsbEndpoint;

    iget-object v3, p0, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;->bulkIn:Landroid/hardware/usb/UsbEndpoint;

    iget-object v4, p0, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;->bulkOut:Landroid/hardware/usb/UsbEndpoint;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "NcmFunction(control="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", data="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", statusIn="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", bulkIn="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", bulkOut="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
