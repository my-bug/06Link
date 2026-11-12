.class public final Lcom/shilapi/xcertplay/transport/UsbTransferLimits;
.super Ljava/lang/Object;
.source "UsbTransferLimits.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUsbTransferLimits.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UsbTransferLimits.kt\ncom/shilapi/xcertplay/transport/UsbTransferLimits\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,72:1\n40#1:74\n41#1,9:76\n1#2:73\n1#2:75\n*S KotlinDebug\n*F\n+ 1 UsbTransferLimits.kt\ncom/shilapi/xcertplay/transport/UsbTransferLimits\n*L\n68#1:74\n68#1:76,9\n68#1:75\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0003\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0008J\u001e\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0008J\u000e\u0010\r\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0005JT\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u000526\u0010\u0011\u001a2\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u0013\u0012\u0008\u0008\u0014\u0012\u0004\u0008\u0008(\u0015\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u0013\u0012\u0008\u0008\u0014\u0012\u0004\u0008\u0008(\u0016\u0012\u0004\u0012\u00020\u00050\u0012H\u0086\u0008\u00f8\u0001\u0000J6\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u0005J&\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006 "
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/UsbTransferLimits;",
        "",
        "<init>",
        "()V",
        "MAX_LEGACY_TRANSFER_BYTES",
        "",
        "UNLIMITED_FROM_API",
        "capsReads",
        "",
        "sdk",
        "legacyUsbfsPath",
        "readChunkBytes",
        "preferred",
        "writeChunkBytes",
        "writeChunked",
        "size",
        "maxChunk",
        "transfer",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "offset",
        "length",
        "bulkWrite",
        "connection",
        "Landroid/hardware/usb/UsbDeviceConnection;",
        "endpoint",
        "Landroid/hardware/usb/UsbEndpoint;",
        "data",
        "",
        "timeoutMillis",
        "bulkWriteAll",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/transport/UsbTransferLimits;

.field public static final MAX_LEGACY_TRANSFER_BYTES:I = 0x4000

.field private static final UNLIMITED_FROM_API:I = 0x1c


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/transport/UsbTransferLimits;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/transport/UsbTransferLimits;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/transport/UsbTransferLimits;->INSTANCE:Lcom/shilapi/xcertplay/transport/UsbTransferLimits;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bulkWrite(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;[BIII)I
    .locals 2

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endpoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p4, :cond_0

    .line 61
    array-length v0, p3

    if-ne p5, v0, :cond_0

    invoke-virtual {p1, p2, p3, p5, p6}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result p1

    return p1

    .line 62
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    invoke-static/range {p1 .. p6}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;[BIII)I

    move-result p1

    return p1

    :cond_1
    add-int v0, p4, p5

    .line 63
    invoke-static {p3, p4, v0}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object p3

    invoke-virtual {p1, p2, p3, p5, p6}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result p1

    return p1
.end method

.method public final bulkWriteAll(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;[BI)I
    .locals 10

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endpoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    array-length v0, p3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, v1}, Lcom/shilapi/xcertplay/transport/UsbTransferLimits;->writeChunkBytes(I)I

    move-result v1

    if-lez v1, :cond_3

    const/4 v2, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v0, :cond_2

    sub-int v2, v0, v7

    .line 78
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 69
    sget-object v3, Lcom/shilapi/xcertplay/transport/UsbTransferLimits;->INSTANCE:Lcom/shilapi/xcertplay/transport/UsbTransferLimits;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v9, p4

    invoke-virtual/range {v3 .. v9}, Lcom/shilapi/xcertplay/transport/UsbTransferLimits;->bulkWrite(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;[BIII)I

    move-result p1

    if-gtz p1, :cond_0

    if-nez v7, :cond_2

    return p1

    :cond_0
    add-int/2addr v7, p1

    if-eq p1, v8, :cond_1

    return v7

    :cond_1
    move-object p1, v4

    move-object p2, v5

    move-object p3, v6

    move p4, v9

    goto :goto_0

    :cond_2
    return v7

    .line 74
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxChunk must be positive"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final capsReads(IZ)Z
    .locals 0

    if-nez p2, :cond_1

    const/16 p2, 0x1c

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final readChunkBytes(IIZ)I
    .locals 0

    .line 28
    invoke-virtual {p0, p2, p3}, Lcom/shilapi/xcertplay/transport/UsbTransferLimits;->capsReads(IZ)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x4000

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_0
    return p1
.end method

.method public final writeChunkBytes(I)I
    .locals 1

    const/16 v0, 0x1c

    if-ge p1, v0, :cond_0

    const/16 p1, 0x4000

    return p1

    :cond_0
    const p1, 0x7fffffff

    return p1
.end method

.method public final writeChunked(IILkotlin/jvm/functions/Function2;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const-string/jumbo v0, "transfer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez p2, :cond_3

    const/4 v0, 0x0

    :cond_0
    if-ge v0, p1, :cond_2

    sub-int v1, p1, v0

    .line 43
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-gtz v2, :cond_1

    if-nez v0, :cond_2

    return v2

    :cond_1
    add-int/2addr v0, v2

    if-eq v2, v1, :cond_0

    :cond_2
    return v0

    .line 40
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxChunk must be positive"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method
