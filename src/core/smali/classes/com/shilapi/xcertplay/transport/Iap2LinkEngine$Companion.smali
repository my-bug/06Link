.class public final Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;
.super Ljava/lang/Object;
.source "Iap2LinkEngine.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIap2LinkEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Iap2LinkEngine.kt\ncom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,715:1\n12897#2,3:716\n1#3:719\n*S KotlinDebug\n*F\n+ 1 Iap2LinkEngine.kt\ncom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion\n*L\n671#1:716,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\n\n\u0002\u0010\u0005\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\"\u001a\u0004\u0018\u00010#2\u0006\u0010$\u001a\u00020\tH\u0002J\u0010\u0010%\u001a\u00020&2\u0006\u0010$\u001a\u00020\tH\u0002J\u0018\u0010\'\u001a\u00020\u00052\u0006\u0010$\u001a\u00020\t2\u0006\u0010(\u001a\u00020\u0005H\u0002J\u001f\u0010)\u001a\u00020\u00052\u0006\u0010*\u001a\u00020\u00052\u0008\u0010+\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0002\u0010,J\u0010\u0010-\u001a\u00020\u00052\u0006\u0010*\u001a\u00020\u0005H\u0002J\u0018\u0010.\u001a\u00020\u00052\u0006\u0010$\u001a\u00020\t2\u0006\u0010/\u001a\u00020\u0005H\u0002J\u0010\u00100\u001a\u00020\u00052\u0006\u00101\u001a\u00020\u0014H\u0002J\u0018\u00102\u001a\u0002032\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u00020\u0005H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0014X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001cX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u00067"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;",
        "",
        "<init>",
        "()V",
        "CONTROL_SESSION_ID",
        "",
        "EA_SESSION_ID",
        "FILE_TRANSFER_SESSION_ID",
        "IAP2_MARKER",
        "",
        "getIAP2_MARKER",
        "()[B",
        "HEADER_BYTES",
        "CHECKSUM_BYTES",
        "MAX_WIRE_FRAME_BYTES",
        "MAX_PAYLOAD_BYTES",
        "SESSION_DESCRIPTOR_BYTES",
        "SYNCHRONIZATION_FIXED_BYTES",
        "SYNCHRONIZATION_VERSION",
        "LINK_START_HIGH",
        "",
        "LINK_START_LOW",
        "CONTROL_SYNCHRONIZE",
        "CONTROL_ACKNOWLEDGEMENT",
        "CONTROL_EXTENDED_ACKNOWLEDGEMENT",
        "CONTROL_RESET",
        "INITIAL_SEQUENCE",
        "MARKER_RESEND_MILLIS",
        "",
        "SYNCHRONIZATION_RESEND_MILLIS",
        "DEFAULT_RETRANSMISSION_TIMEOUT_MILLIS",
        "DEFAULT_MAX_RETRANSMISSIONS",
        "DEFAULT_MAX_ACKNOWLEDGEMENTS",
        "ACK_SLACK",
        "parseHeader",
        "Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;",
        "bytes",
        "checksumValid",
        "",
        "checksum",
        "count",
        "sequenceDistance",
        "sequence",
        "previous",
        "(ILjava/lang/Integer;)I",
        "nextSequence",
        "readU16",
        "offset",
        "u8",
        "byte",
        "writeU16",
        "",
        "out",
        "Ljava/io/ByteArrayOutputStream;",
        "value",
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

    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$checksum(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;[BI)I
    .locals 0

    .line 631
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->checksum([BI)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$checksumValid(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;[B)Z
    .locals 0

    .line 631
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->checksumValid([B)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$nextSequence(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;I)I
    .locals 0

    .line 631
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->nextSequence(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$parseHeader(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;[B)Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;
    .locals 0

    .line 631
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->parseHeader([B)Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$readU16(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;[BI)I
    .locals 0

    .line 631
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->readU16([BI)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$sequenceDistance(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;ILjava/lang/Integer;)I
    .locals 0

    .line 631
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->sequenceDistance(ILjava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$u8(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;B)I
    .locals 0

    .line 631
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->u8(B)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$writeU16(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;Ljava/io/ByteArrayOutputStream;I)V
    .locals 0

    .line 631
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->writeU16(Ljava/io/ByteArrayOutputStream;I)V

    return-void
.end method

.method private final checksum([BI)I
    .locals 2

    .line 674
    invoke-static {p1, p2}, Lkotlin/collections/ArraysKt;->take([BI)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->Companion:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;

    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->u8(B)I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_0
    neg-int p1, p2

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method private final checksumValid([B)Z
    .locals 6

    .line 717
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-byte v4, p1, v2

    .line 671
    sget-object v5, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->Companion:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;

    invoke-direct {v5, v4}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->u8(B)I

    move-result v4

    add-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-nez v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method private final nextSequence(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method private final parseHeader([B)Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;
    .locals 9

    .line 660
    array-length v0, p1

    const/16 v1, 0x9

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->checksumValid([B)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 661
    aget-byte v0, p1, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    aget-byte v0, p1, v0

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 662
    :cond_1
    new-instance v3, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;

    const/4 v0, 0x2

    .line 663
    invoke-direct {p0, p1, v0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->readU16([BI)I

    move-result v4

    const/4 v0, 0x4

    .line 664
    aget-byte v0, p1, v0

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->u8(B)I

    move-result v5

    const/4 v0, 0x5

    .line 665
    aget-byte v0, p1, v0

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->u8(B)I

    move-result v6

    const/4 v0, 0x6

    .line 666
    aget-byte v0, p1, v0

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->u8(B)I

    move-result v7

    const/4 v0, 0x7

    .line 667
    aget-byte p1, p1, v0

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->u8(B)I

    move-result v8

    .line 662
    invoke-direct/range {v3 .. v8}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;-><init>(IIIII)V

    return-object v3

    :cond_2
    :goto_0
    return-object v2
.end method

.method private final readU16([BI)I
    .locals 1

    .line 681
    aget-byte v0, p1, p2

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->u8(B)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p2, p2, 0x1

    aget-byte p1, p1, p2

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->u8(B)I

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method private final sequenceDistance(ILjava/lang/Integer;)I
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 677
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr p1, p2

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method private final u8(B)I
    .locals 0

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method private final writeU16(Ljava/io/ByteArrayOutputStream;I)V
    .locals 1

    ushr-int/lit8 v0, p2, 0x8

    .line 686
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 687
    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method


# virtual methods
.method public final getIAP2_MARKER()[B
    .locals 1

    .line 636
    # getter for: Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->IAP2_MARKER:[B
    invoke-static {}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->access$getIAP2_MARKER$cp()[B

    move-result-object v0

    return-object v0
.end method
