.class public final Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;
.super Ljava/lang/Object;
.source "UsbBtIdentity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000e\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0008\u0086\u0008\u0018\u00002\u00020\u0001BC\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aJ\u0013\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u001e\u001a\u00020\u000bH\u0016J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u0010\u0010#\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0017JJ\u0010$\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bH\u00c6\u0001\u00a2\u0006\u0002\u0010%J\t\u0010&\u001a\u00020\u001aH\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0015\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\n\n\u0002\u0010\u0018\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;",
        "",
        "address",
        "Lcom/shilapi/xcertplay/usbbt/BdAddr;",
        "version",
        "Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;",
        "features",
        "",
        "buffer",
        "Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$BufferSize;",
        "inquiryTxPower",
        "",
        "<init>",
        "(Lcom/shilapi/xcertplay/usbbt/BdAddr;Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;[BLcom/shilapi/xcertplay/usbbt/HciReturnParameters$BufferSize;Ljava/lang/Integer;)V",
        "getAddress",
        "()Lcom/shilapi/xcertplay/usbbt/BdAddr;",
        "getVersion",
        "()Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;",
        "getFeatures",
        "()[B",
        "getBuffer",
        "()Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$BufferSize;",
        "getInquiryTxPower",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "describe",
        "",
        "equals",
        "",
        "other",
        "hashCode",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "(Lcom/shilapi/xcertplay/usbbt/BdAddr;Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;[BLcom/shilapi/xcertplay/usbbt/HciReturnParameters$BufferSize;Ljava/lang/Integer;)Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;",
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
.field private final address:Lcom/shilapi/xcertplay/usbbt/BdAddr;

.field private final buffer:Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$BufferSize;

.field private final features:[B

.field private final inquiryTxPower:Ljava/lang/Integer;

.field private final version:Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;


# direct methods
.method public constructor <init>()V
    .locals 8

    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;-><init>(Lcom/shilapi/xcertplay/usbbt/BdAddr;Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;[BLcom/shilapi/xcertplay/usbbt/HciReturnParameters$BufferSize;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/shilapi/xcertplay/usbbt/BdAddr;Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;[BLcom/shilapi/xcertplay/usbbt/HciReturnParameters$BufferSize;Ljava/lang/Integer;)V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->address:Lcom/shilapi/xcertplay/usbbt/BdAddr;

    .line 132
    iput-object p2, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->version:Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;

    .line 133
    iput-object p3, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->features:[B

    .line 134
    iput-object p4, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->buffer:Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$BufferSize;

    .line 135
    iput-object p5, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->inquiryTxPower:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/usbbt/BdAddr;Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;[BLcom/shilapi/xcertplay/usbbt/HciReturnParameters$BufferSize;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    move-object p6, v0

    goto :goto_0

    :cond_4
    move-object p6, p5

    :goto_0
    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 130
    invoke-direct/range {p1 .. p6}, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;-><init>(Lcom/shilapi/xcertplay/usbbt/BdAddr;Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;[BLcom/shilapi/xcertplay/usbbt/HciReturnParameters$BufferSize;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;Lcom/shilapi/xcertplay/usbbt/BdAddr;Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;[BLcom/shilapi/xcertplay/usbbt/HciReturnParameters$BufferSize;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->address:Lcom/shilapi/xcertplay/usbbt/BdAddr;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->version:Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget-object p3, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->features:[B

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    iget-object p4, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->buffer:Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$BufferSize;

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget-object p5, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->inquiryTxPower:Ljava/lang/Integer;

    :cond_4
    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->copy(Lcom/shilapi/xcertplay/usbbt/BdAddr;Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;[BLcom/shilapi/xcertplay/usbbt/HciReturnParameters$BufferSize;Ljava/lang/Integer;)Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/shilapi/xcertplay/usbbt/BdAddr;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->address:Lcom/shilapi/xcertplay/usbbt/BdAddr;

    return-object v0
.end method

.method public final component2()Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->version:Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;

    return-object v0
.end method

.method public final component3()[B
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->features:[B

    return-object v0
.end method

.method public final component4()Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$BufferSize;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->buffer:Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$BufferSize;

    return-object v0
.end method

.method public final component5()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->inquiryTxPower:Ljava/lang/Integer;

    return-object v0
.end method

.method public final copy(Lcom/shilapi/xcertplay/usbbt/BdAddr;Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;[BLcom/shilapi/xcertplay/usbbt/HciReturnParameters$BufferSize;Ljava/lang/Integer;)Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;
    .locals 6

    new-instance v0, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;-><init>(Lcom/shilapi/xcertplay/usbbt/BdAddr;Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;[BLcom/shilapi/xcertplay/usbbt/HciReturnParameters$BufferSize;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public final describe()Ljava/lang/String;
    .locals 7

    .line 138
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->version:Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;->getCoreVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;->getManufacturer()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;->getHciRevision()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;->getLmpSubversion()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v1, 0x2

    aput-object v3, v5, v1

    const/4 v1, 0x3

    aput-object v0, v5, v1

    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "BT %s \u00b7 mfr %d \u00b7 hci 0x%04x \u00b7 lmp 0x%04x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 142
    instance-of v0, p1, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;

    iget-object v0, p1, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->address:Lcom/shilapi/xcertplay/usbbt/BdAddr;

    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->address:Lcom/shilapi/xcertplay/usbbt/BdAddr;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->version:Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;

    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->version:Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p1, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->buffer:Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$BufferSize;

    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->buffer:Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$BufferSize;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->inquiryTxPower:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->inquiryTxPower:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->features:[B

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->features:[B

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getAddress()Lcom/shilapi/xcertplay/usbbt/BdAddr;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->address:Lcom/shilapi/xcertplay/usbbt/BdAddr;

    return-object v0
.end method

.method public final getBuffer()Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$BufferSize;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->buffer:Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$BufferSize;

    return-object v0
.end method

.method public final getFeatures()[B
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->features:[B

    return-object v0
.end method

.method public final getInquiryTxPower()Ljava/lang/Integer;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->inquiryTxPower:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getVersion()Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->version:Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->address:Lcom/shilapi/xcertplay/usbbt/BdAddr;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/BdAddr;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->version:Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->address:Lcom/shilapi/xcertplay/usbbt/BdAddr;

    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->version:Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;

    iget-object v2, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->features:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->buffer:Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$BufferSize;

    iget-object v4, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->inquiryTxPower:Ljava/lang/Integer;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "UsbBtControllerInfo(address="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", version="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", features="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", buffer="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", inquiryTxPower="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
