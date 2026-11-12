.class public final Lcom/shilapi/xcertplay/transport/Ch341UsbSession;
.super Ljava/lang/Object;
.source "Ch341UsbHost.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/transport/Ch341UsbSession$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u0000 %2\u00020\u0001:\u0001%B)\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001d\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0000\u00a2\u0006\u0002\u0008\u0016J-\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u000fH\u0000\u00a2\u0006\u0002\u0008\u001cJ\u0008\u0010\u001d\u001a\u00020\u0011H\u0016J2\u0010\u001e\u001a\u00020\u00152\u0006\u0010\u001f\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010 \u001a\u00020!2\u0008\u0008\u0002\u0010\"\u001a\u00020\u000fH\u0002J\u0018\u0010#\u001a\u00020\u00112\u0006\u0010\u001f\u001a\u00020\u00072\u0006\u0010 \u001a\u00020!H\u0002J\u000c\u0010$\u001a\u00020!*\u00020\u0013H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/Ch341UsbSession;",
        "Ljava/io/Closeable;",
        "connection",
        "Landroid/hardware/usb/UsbDeviceConnection;",
        "usbInterface",
        "Landroid/hardware/usb/UsbInterface;",
        "inputEndpoint",
        "Landroid/hardware/usb/UsbEndpoint;",
        "outputEndpoint",
        "<init>",
        "(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;)V",
        "getInputEndpoint",
        "()Landroid/hardware/usb/UsbEndpoint;",
        "getOutputEndpoint",
        "closed",
        "",
        "bulkWrite",
        "",
        "data",
        "",
        "timeoutMillis",
        "",
        "bulkWrite$shared_release",
        "bulkReadAtMost",
        "maxLength",
        "firstPacketMillis",
        "quietMillis",
        "allowEmpty",
        "bulkReadAtMost$shared_release",
        "close",
        "transfer",
        "endpoint",
        "operation",
        "",
        "clearHaltOnFailure",
        "clearEndpointHalt",
        "toHexPreview",
        "Companion",
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


# static fields
.field private static final Companion:Lcom/shilapi/xcertplay/transport/Ch341UsbSession$Companion;

.field public static final MAX_USB_PACKET_BYTES:I = 0x20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NANOS_PER_MILLI:J = 0xf4240L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RECOVERY_TIMEOUT_MILLIS:I = 0xc8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "Ch341UsbHost"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final USB_FEATURE_ENDPOINT_HALT:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final USB_RECIP_ENDPOINT:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final USB_REQUEST_CLEAR_FEATURE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private closed:Z

.field private final connection:Landroid/hardware/usb/UsbDeviceConnection;

.field private final inputEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private final outputEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private final usbInterface:Landroid/hardware/usb/UsbInterface;


# direct methods
.method public static synthetic $r8$lambda$EZ9beGmKLLxi_lu99Q9dueFmT4Q(B)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/transport/Ch341UsbSession;->toHexPreview$lambda$0(B)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/transport/Ch341UsbSession$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/transport/Ch341UsbSession$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/Ch341UsbSession;->Companion:Lcom/shilapi/xcertplay/transport/Ch341UsbSession$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;)V
    .locals 1

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "usbInterface"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputEndpoint"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputEndpoint"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbSession;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 168
    iput-object p2, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbSession;->usbInterface:Landroid/hardware/usb/UsbInterface;

    .line 169
    iput-object p3, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbSession;->inputEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 170
    iput-object p4, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbSession;->outputEndpoint:Landroid/hardware/usb/UsbEndpoint;

    return-void
.end method

.method private final clearEndpointHalt(Landroid/hardware/usb/UsbEndpoint;Ljava/lang/String;)V
    .locals 10

    .line 299
    const-string v1, "Ch341UsbHost"

    .line 300
    :try_start_0
    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbSession;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 305
    invoke-virtual {p1}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    move-result v6

    const/4 v8, 0x0

    const/16 v9, 0xc8

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 300
    invoke-virtual/range {v2 .. v9}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 311
    invoke-virtual {p1}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "halt clear on endpoint "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " threw after failed bulk "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    .line 314
    :goto_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bulk "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " failed; halt clear on endpoint "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " returned "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final toHexPreview([B)Ljava/lang/String;
    .locals 10

    .line 317
    const-string v0, " "

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v7, Lcom/shilapi/xcertplay/transport/Ch341UsbSession$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/shilapi/xcertplay/transport/Ch341UsbSession$$ExternalSyntheticLambda0;-><init>()V

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v9}, Lkotlin/collections/ArraysKt;->joinToString$default([BLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static final toHexPreview$lambda$0(B)Ljava/lang/CharSequence;
    .locals 3

    .line 317
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%02x"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "format(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private final transfer(Landroid/hardware/usb/UsbEndpoint;[BILjava/lang/String;Z)I
    .locals 4

    .line 266
    const-string p5, "CH341 bulk "

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbSession;->closed:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 267
    array-length v0, p2

    if-eqz v0, :cond_2

    if-lez p3, :cond_1

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbSession;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    array-length v3, p2

    invoke-virtual {v0, p1, p2, v3, p3}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz p2, :cond_0

    return p2

    .line 282
    :cond_0
    invoke-direct {p0, p1, p4}, Lcom/shilapi/xcertplay/transport/Ch341UsbSession;->clearEndpointHalt(Landroid/hardware/usb/UsbEndpoint;Ljava/lang/String;)V

    .line 283
    new-instance p1, Lcom/shilapi/xcertplay/transport/I2cTransportException$DeviceUnavailable;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " failed or timed out"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v2, v1, v2}, Lcom/shilapi/xcertplay/transport/I2cTransportException$DeviceUnavailable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1

    :catch_0
    move-exception p1

    .line 277
    new-instance p2, Lcom/shilapi/xcertplay/transport/I2cTransportException$DeviceUnavailable;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " failed"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p2, p3, p1}, Lcom/shilapi/xcertplay/transport/I2cTransportException$DeviceUnavailable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 275
    :catch_1
    new-instance p1, Lcom/shilapi/xcertplay/transport/I2cTransportException$PermissionDenied;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "USB permission was denied during bulk "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/transport/I2cTransportException$PermissionDenied;-><init>(Ljava/lang/String;)V

    throw p1

    .line 269
    :cond_1
    new-instance p1, Lcom/shilapi/xcertplay/transport/I2cTransportException$InvalidRequest;

    const-string p2, "Bulk transfer timeout must be positive"

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/transport/I2cTransportException$InvalidRequest;-><init>(Ljava/lang/String;)V

    throw p1

    .line 267
    :cond_2
    new-instance p1, Lcom/shilapi/xcertplay/transport/I2cTransportException$InvalidRequest;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Bulk "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " data must not be empty"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/transport/I2cTransportException$InvalidRequest;-><init>(Ljava/lang/String;)V

    throw p1

    .line 266
    :cond_3
    new-instance p1, Lcom/shilapi/xcertplay/transport/I2cTransportException$DeviceUnavailable;

    const-string p2, "CH341 USB session is closed"

    invoke-direct {p1, p2, v2, v1, v2}, Lcom/shilapi/xcertplay/transport/I2cTransportException$DeviceUnavailable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
.end method

.method static synthetic transfer$default(Lcom/shilapi/xcertplay/transport/Ch341UsbSession;Landroid/hardware/usb/UsbEndpoint;[BILjava/lang/String;ZILjava/lang/Object;)I
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move v5, p5

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 259
    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/transport/Ch341UsbSession;->transfer(Landroid/hardware/usb/UsbEndpoint;[BILjava/lang/String;Z)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final declared-synchronized bulkReadAtMost$shared_release(IIIZ)[B
    .locals 12

    move/from16 v7, p4

    monitor-enter p0

    if-ltz p1, :cond_a

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 204
    :try_start_0
    new-array v0, v0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    if-lez p2, :cond_9

    if-lez p3, :cond_9

    .line 208
    :try_start_1
    new-array v8, p1, [B

    .line 214
    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbSession;->inputEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v2

    const/4 v9, 0x1

    invoke-static {v2, v9}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    const/16 v3, 0x20

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v10

    const/4 v11, 0x0

    :goto_0
    if-ge v11, p1, :cond_7

    sub-int v2, p1, v11

    .line 217
    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v2

    new-array v3, v2, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v11, :cond_1

    move v4, p2

    goto :goto_1

    :cond_1
    move v4, p3

    :goto_1
    if-nez v11, :cond_2

    if-nez v7, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    .line 221
    :goto_2
    :try_start_2
    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbSession;->inputEndpoint:Landroid/hardware/usb/UsbEndpoint;

    const-string v5, "read"

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/shilapi/xcertplay/transport/Ch341UsbSession;->transfer(Landroid/hardware/usb/UsbEndpoint;[BILjava/lang/String;Z)I

    move-result v2
    :try_end_2
    .catch Lcom/shilapi/xcertplay/transport/I2cTransportException$DeviceUnavailable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-gtz v2, :cond_4

    if-gtz v11, :cond_7

    if-eqz v7, :cond_3

    goto :goto_4

    .line 237
    :cond_3
    :try_start_3
    new-instance v0, Lcom/shilapi/xcertplay/transport/I2cTransportException$DeviceUnavailable;

    const-string v1, "CH341 bulk read returned no data"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/shilapi/xcertplay/transport/I2cTransportException$DeviceUnavailable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 239
    :cond_4
    invoke-static {v3, v0, v8, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v11, v2

    goto :goto_0

    :catch_0
    move-exception v0

    if-gtz v11, :cond_6

    if-eqz v7, :cond_5

    goto :goto_3

    .line 233
    :cond_5
    throw v0

    .line 227
    :cond_6
    :goto_3
    const-string v0, "Ch341UsbHost"

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bulk read ended early at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes (quiet-packet timeout of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "ms; accepted as end of answer)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 226
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_4
    if-eq v11, p1, :cond_8

    .line 246
    const-string v0, "Ch341UsbHost"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bulk read answered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes (allowEmpty="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_8
    invoke-static {v8, v11}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    const-string v1, "copyOf(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    .line 206
    :cond_9
    :try_start_4
    new-instance v0, Lcom/shilapi/xcertplay/transport/I2cTransportException$InvalidRequest;

    const-string v1, "Bulk transfer timeout must be positive"

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/transport/I2cTransportException$InvalidRequest;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_a
    new-instance v0, Lcom/shilapi/xcertplay/transport/I2cTransportException$InvalidRequest;

    const-string v1, "Bulk read length must not be negative"

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/transport/I2cTransportException$InvalidRequest;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public final declared-synchronized bulkWrite$shared_release([BI)V
    .locals 11

    const-string v0, "CH341 bulk write transferred "

    const-string v1, "bulk write sent "

    monitor-enter p0

    :try_start_0
    const-string v2, "data"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    iget-object v4, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbSession;->outputEndpoint:Landroid/hardware/usb/UsbEndpoint;

    const-string/jumbo v7, "write"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v9, 0x10

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v5, p1

    move v6, p2

    :try_start_1
    invoke-static/range {v3 .. v10}, Lcom/shilapi/xcertplay/transport/Ch341UsbSession;->transfer$default(Lcom/shilapi/xcertplay/transport/Ch341UsbSession;Landroid/hardware/usb/UsbEndpoint;[BILjava/lang/String;ZILjava/lang/Object;)I

    move-result p1

    .line 177
    array-length p2, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, p2, :cond_0

    .line 183
    monitor-exit p0

    return-void

    .line 178
    :cond_0
    :try_start_2
    const-string p2, "Ch341UsbHost"

    array-length v2, v5

    invoke-direct {p0, v5}, Lcom/shilapi/xcertplay/transport/Ch341UsbSession;->toHexPreview([B)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " of "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-instance p2, Lcom/shilapi/xcertplay/transport/I2cTransportException$Protocol;

    .line 180
    array-length v1, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " of "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 179
    invoke-direct {p2, p1, v1, v0, v1}, Lcom/shilapi/xcertplay/transport/I2cTransportException$Protocol;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p2

    :catchall_0
    move-exception v0

    move-object v3, p0

    :goto_0
    move-object p1, v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    .line 253
    :try_start_0
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbSession;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 254
    :try_start_1
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbSession;->closed:Z

    .line 255
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbSession;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbSession;->usbInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    .line 256
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbSession;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final getInputEndpoint()Landroid/hardware/usb/UsbEndpoint;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbSession;->inputEndpoint:Landroid/hardware/usb/UsbEndpoint;

    return-object v0
.end method

.method public final getOutputEndpoint()Landroid/hardware/usb/UsbEndpoint;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbSession;->outputEndpoint:Landroid/hardware/usb/UsbEndpoint;

    return-object v0
.end method
