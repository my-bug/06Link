.class public final Lcom/shilapi/xcertplay/usbbt/Sdp;
.super Ljava/lang/Object;
.source "Sdp.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/usbbt/Sdp$Malformed;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSdp.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sdp.kt\ncom/shilapi/xcertplay/usbbt/Sdp\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,453:1\n1#2:454\n1869#3,2:455\n12897#4,3:457\n*S KotlinDebug\n*F\n+ 1 Sdp.kt\ncom/shilapi/xcertplay/usbbt/Sdp\n*L\n172#1:455,2\n205#1:457,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0018\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001DB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u001eJ\u0018\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u00052\u0008\u0008\u0002\u0010\'\u001a\u00020(J\u000e\u0010)\u001a\u00020%2\u0006\u0010*\u001a\u00020+J\u0014\u0010,\u001a\u0008\u0012\u0004\u0012\u00020%0-2\u0006\u0010.\u001a\u00020/J\u001d\u00100\u001a\u0002012\u0006\u00102\u001a\u0002032\u0006\u00104\u001a\u000205H\u0000\u00a2\u0006\u0002\u00086J&\u00107\u001a\u0002012\u0006\u00104\u001a\u0002052\u0006\u00108\u001a\u00020\u00052\u000c\u00109\u001a\u0008\u0012\u0004\u0012\u0002030-H\u0002J \u0010:\u001a\u0002012\u0006\u00104\u001a\u0002052\u0006\u00108\u001a\u00020\u00052\u0006\u0010;\u001a\u00020\u0005H\u0002J \u0010<\u001a\u0002012\u0006\u00104\u001a\u0002052\u0006\u0010=\u001a\u00020\u001e2\u0006\u0010>\u001a\u00020\u0005H\u0002J$\u0010?\u001a\u000e\u0012\u0004\u0012\u000203\u0012\u0004\u0012\u00020\u00050@2\u0006\u0010A\u001a\u00020B2\u0008\u0008\u0002\u0010C\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u001eX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u001eX\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006E"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/Sdp;",
        "",
        "<init>",
        "()V",
        "PSM",
        "",
        "ERROR_RESPONSE",
        "SERVICE_SEARCH_REQUEST",
        "SERVICE_SEARCH_RESPONSE",
        "SERVICE_ATTRIBUTE_REQUEST",
        "SERVICE_ATTRIBUTE_RESPONSE",
        "SERVICE_SEARCH_ATTRIBUTE_REQUEST",
        "SERVICE_SEARCH_ATTRIBUTE_RESPONSE",
        "ERR_INVALID_RECORD_HANDLE",
        "ERR_INVALID_SYNTAX",
        "ERR_INVALID_PDU_SIZE",
        "ERR_INVALID_CONTINUATION",
        "ATTR_SERVICE_RECORD_HANDLE",
        "ATTR_SERVICE_CLASS_ID_LIST",
        "ATTR_PROTOCOL_DESCRIPTOR_LIST",
        "ATTR_BROWSE_GROUP_LIST",
        "ATTR_PROFILE_DESCRIPTOR_LIST",
        "ATTR_SERVICE_NAME",
        "UUID_SDP",
        "UUID_RFCOMM",
        "UUID_L2CAP",
        "UUID_PUBLIC_BROWSE_ROOT",
        "UUID_SERIAL_PORT",
        "UUID_PNP_INFORMATION",
        "HANDLE_IAP2",
        "",
        "HANDLE_DEVICE_ID",
        "BASE_UUID_LSB",
        "baseUuid",
        "Ljava/util/UUID;",
        "short",
        "iap2Record",
        "Lcom/shilapi/xcertplay/usbbt/SdpRecord;",
        "rfcommChannel",
        "serviceName",
        "",
        "deviceIdRecord",
        "id",
        "Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity$DeviceId;",
        "records",
        "",
        "identity",
        "Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;",
        "encodeTo",
        "",
        "e",
        "Lcom/shilapi/xcertplay/usbbt/DataElement;",
        "out",
        "Ljava/io/ByteArrayOutputStream;",
        "encodeTo$shared_release",
        "container",
        "type",
        "items",
        "header",
        "length",
        "writeBe",
        "v",
        "bytes",
        "decode",
        "Lkotlin/Pair;",
        "data",
        "",
        "offset",
        "Malformed",
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
.field public static final ATTR_BROWSE_GROUP_LIST:I = 0x5

.field public static final ATTR_PROFILE_DESCRIPTOR_LIST:I = 0x9

.field public static final ATTR_PROTOCOL_DESCRIPTOR_LIST:I = 0x4

.field public static final ATTR_SERVICE_CLASS_ID_LIST:I = 0x1

.field public static final ATTR_SERVICE_NAME:I = 0x100

.field public static final ATTR_SERVICE_RECORD_HANDLE:I = 0x0

.field private static final BASE_UUID_LSB:J

.field public static final ERROR_RESPONSE:I = 0x1

.field public static final ERR_INVALID_CONTINUATION:I = 0x5

.field public static final ERR_INVALID_PDU_SIZE:I = 0x4

.field public static final ERR_INVALID_RECORD_HANDLE:I = 0x2

.field public static final ERR_INVALID_SYNTAX:I = 0x3

.field public static final HANDLE_DEVICE_ID:J = 0x10001L

.field public static final HANDLE_IAP2:J = 0x10000L

.field public static final INSTANCE:Lcom/shilapi/xcertplay/usbbt/Sdp;

.field public static final PSM:I = 0x1

.field public static final SERVICE_ATTRIBUTE_REQUEST:I = 0x4

.field public static final SERVICE_ATTRIBUTE_RESPONSE:I = 0x5

.field public static final SERVICE_SEARCH_ATTRIBUTE_REQUEST:I = 0x6

.field public static final SERVICE_SEARCH_ATTRIBUTE_RESPONSE:I = 0x7

.field public static final SERVICE_SEARCH_REQUEST:I = 0x2

.field public static final SERVICE_SEARCH_RESPONSE:I = 0x3

.field public static final UUID_L2CAP:I = 0x100

.field public static final UUID_PNP_INFORMATION:I = 0x1200

.field public static final UUID_PUBLIC_BROWSE_ROOT:I = 0x1002

.field public static final UUID_RFCOMM:I = 0x3

.field public static final UUID_SDP:I = 0x1

.field public static final UUID_SERIAL_PORT:I = 0x1101


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/usbbt/Sdp;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/usbbt/Sdp;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/usbbt/Sdp;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/Sdp;

    const-wide v0, -0x7fffff7fa064cb05L    # -2.724079460785E-312

    .line 99
    sput-wide v0, Lcom/shilapi/xcertplay/usbbt/Sdp;->BASE_UUID_LSB:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final container(Ljava/io/ByteArrayOutputStream;ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayOutputStream;",
            "I",
            "Ljava/util/List<",
            "+",
            "Lcom/shilapi/xcertplay/usbbt/DataElement;",
            ">;)V"
        }
    .end annotation

    .line 172
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    check-cast p3, Ljava/lang/Iterable;

    .line 455
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shilapi/xcertplay/usbbt/DataElement;

    .line 172
    sget-object v2, Lcom/shilapi/xcertplay/usbbt/Sdp;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/Sdp;

    invoke-virtual {v2, v1, v0}, Lcom/shilapi/xcertplay/usbbt/Sdp;->encodeTo$shared_release(Lcom/shilapi/xcertplay/usbbt/DataElement;Ljava/io/ByteArrayOutputStream;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3

    .line 173
    array-length v0, p3

    invoke-direct {p0, p1, p2, v0}, Lcom/shilapi/xcertplay/usbbt/Sdp;->header(Ljava/io/ByteArrayOutputStream;II)V

    .line 174
    invoke-virtual {p1, p3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    return-void
.end method

.method private static final decode$be([B)J
    .locals 8

    .line 458
    array-length v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aget-byte v4, p0, v3

    const/16 v5, 0x8

    shl-long/2addr v1, v5

    int-to-long v4, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    or-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public static synthetic decode$default(Lcom/shilapi/xcertplay/usbbt/Sdp;[BIILjava/lang/Object;)Lkotlin/Pair;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 195
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/usbbt/Sdp;->decode([BI)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static final decode$take(Lkotlin/jvm/internal/Ref$IntRef;[BI)[B
    .locals 2

    if-ltz p2, :cond_0

    .line 202
    iget v0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-gt v0, v1, :cond_0

    .line 203
    iget v0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v1, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v1, p2

    invoke-static {p1, v0, v1}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object p1

    iget v0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v0, p2

    iput v0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    return-object p1

    .line 202
    :cond_0
    new-instance p0, Lcom/shilapi/xcertplay/usbbt/Sdp$Malformed;

    const-string/jumbo p1, "truncated"

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/usbbt/Sdp$Malformed;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final decode$varLength(ILkotlin/jvm/internal/Ref$IntRef;[B)I
    .locals 1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    const/4 p0, 0x4

    .line 207
    invoke-static {p1, p2, p0}, Lcom/shilapi/xcertplay/usbbt/Sdp;->decode$take(Lkotlin/jvm/internal/Ref$IntRef;[BI)[B

    move-result-object p0

    invoke-static {p0}, Lcom/shilapi/xcertplay/usbbt/Sdp;->decode$be([B)J

    move-result-wide p0

    :goto_0
    long-to-int p1, p0

    return p1

    .line 208
    :cond_0
    new-instance p0, Lcom/shilapi/xcertplay/usbbt/Sdp$Malformed;

    const-string p1, "bad size index"

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/usbbt/Sdp$Malformed;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x2

    .line 207
    invoke-static {p1, p2, p0}, Lcom/shilapi/xcertplay/usbbt/Sdp;->decode$take(Lkotlin/jvm/internal/Ref$IntRef;[BI)[B

    move-result-object p0

    invoke-static {p0}, Lcom/shilapi/xcertplay/usbbt/Sdp;->decode$be([B)J

    move-result-wide p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    invoke-static {p1, p2, p0}, Lcom/shilapi/xcertplay/usbbt/Sdp;->decode$take(Lkotlin/jvm/internal/Ref$IntRef;[BI)[B

    move-result-object p0

    invoke-static {p0}, Lcom/shilapi/xcertplay/usbbt/Sdp;->decode$be([B)J

    move-result-wide p0

    goto :goto_0
.end method

.method private final header(Ljava/io/ByteArrayOutputStream;II)V
    .locals 1

    const/16 v0, 0xff

    if-gt p3, v0, :cond_0

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x5

    .line 180
    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p1, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void

    :cond_0
    const v0, 0xffff

    if-gt p3, v0, :cond_1

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x6

    .line 181
    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-long p2, p3

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/shilapi/xcertplay/usbbt/Sdp;->writeBe(Ljava/io/ByteArrayOutputStream;JI)V

    return-void

    :cond_1
    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x7

    .line 182
    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-long p2, p3

    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/shilapi/xcertplay/usbbt/Sdp;->writeBe(Ljava/io/ByteArrayOutputStream;JI)V

    return-void
.end method

.method public static synthetic iap2Record$default(Lcom/shilapi/xcertplay/usbbt/Sdp;ILjava/lang/String;ILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/SdpRecord;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 108
    const-string p2, "Wireless iAPv2"

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/usbbt/Sdp;->iap2Record(ILjava/lang/String;)Lcom/shilapi/xcertplay/usbbt/SdpRecord;

    move-result-object p0

    return-object p0
.end method

.method private final writeBe(Ljava/io/ByteArrayOutputStream;JI)V
    .locals 4

    add-int/lit8 p4, p4, -0x1

    :goto_0
    const/4 v0, -0x1

    if-ge v0, p4, :cond_0

    mul-int/lit8 v0, p4, 0x8

    ushr-long v0, p2, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v1, v0

    .line 187
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final baseUuid(J)Ljava/util/UUID;
    .locals 3

    .line 101
    new-instance v0, Ljava/util/UUID;

    const/16 v1, 0x20

    shl-long/2addr p1, v1

    const-wide/16 v1, 0x1000

    or-long/2addr p1, v1

    sget-wide v1, Lcom/shilapi/xcertplay/usbbt/Sdp;->BASE_UUID_LSB:J

    invoke-direct {v0, p1, p2, v1, v2}, Ljava/util/UUID;-><init>(JJ)V

    return-object v0
.end method

.method public final decode([BI)Lkotlin/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Lkotlin/Pair<",
            "Lcom/shilapi/xcertplay/usbbt/DataElement;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    array-length v0, p1

    if-ge p2, v0, :cond_c

    .line 197
    aget-byte v0, p1, p2

    and-int/lit16 v1, v0, 0xff

    const/4 v2, 0x3

    ushr-int/2addr v1, v2

    and-int/lit8 v0, v0, 0x7

    .line 200
    new-instance v3, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v4, 0x1

    add-int/2addr p2, v4

    iput p2, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/16 p2, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x2

    packed-switch v1, :pswitch_data_0

    .line 230
    new-instance p1, Lcom/shilapi/xcertplay/usbbt/Sdp$Malformed;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "type "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/usbbt/Sdp$Malformed;-><init>(Ljava/lang/String;)V

    throw p1

    .line 225
    :pswitch_0
    invoke-static {v0, v3, p1}, Lcom/shilapi/xcertplay/usbbt/Sdp;->decode$varLength(ILkotlin/jvm/internal/Ref$IntRef;[B)I

    move-result p2

    iget v0, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v0, p2

    array-length v2, p1

    if-gt v0, v2, :cond_3

    iget v0, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v0, p2

    .line 226
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 227
    :goto_0
    iget v2, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-ge v2, v0, :cond_1

    iget v2, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {p0, p1, v2}, Lcom/shilapi/xcertplay/usbbt/Sdp;->decode([BI)Lkotlin/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shilapi/xcertplay/usbbt/DataElement;

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-gt v2, v0, :cond_0

    move-object v5, p2

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iput v2, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/shilapi/xcertplay/usbbt/Sdp$Malformed;

    const-string p2, "overrun"

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/usbbt/Sdp$Malformed;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x6

    if-ne v1, p1, :cond_2

    .line 228
    new-instance p1, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;

    check-cast p2, Ljava/util/List;

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;-><init>(Ljava/util/List;)V

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/shilapi/xcertplay/usbbt/DataElement$Alternative;

    check-cast p2, Ljava/util/List;

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/usbbt/DataElement$Alternative;-><init>(Ljava/util/List;)V

    :goto_1
    check-cast p1, Lcom/shilapi/xcertplay/usbbt/DataElement;

    goto/16 :goto_5

    .line 225
    :cond_3
    new-instance p1, Lcom/shilapi/xcertplay/usbbt/Sdp$Malformed;

    const-string/jumbo p2, "truncated"

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/usbbt/Sdp$Malformed;-><init>(Ljava/lang/String;)V

    throw p1

    .line 223
    :pswitch_1
    new-instance p2, Lcom/shilapi/xcertplay/usbbt/DataElement$Bool;

    invoke-static {v3, p1, v4}, Lcom/shilapi/xcertplay/usbbt/Sdp;->decode$take(Lkotlin/jvm/internal/Ref$IntRef;[BI)[B

    move-result-object p1

    aget-byte p1, p1, v5

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    invoke-direct {p2, v4}, Lcom/shilapi/xcertplay/usbbt/DataElement$Bool;-><init>(Z)V

    move-object p1, p2

    check-cast p1, Lcom/shilapi/xcertplay/usbbt/DataElement;

    goto/16 :goto_5

    .line 222
    :pswitch_2
    new-instance p2, Lcom/shilapi/xcertplay/usbbt/DataElement$Text;

    invoke-static {v0, v3, p1}, Lcom/shilapi/xcertplay/usbbt/Sdp;->decode$varLength(ILkotlin/jvm/internal/Ref$IntRef;[B)I

    move-result v0

    invoke-static {v3, p1, v0}, Lcom/shilapi/xcertplay/usbbt/Sdp;->decode$take(Lkotlin/jvm/internal/Ref$IntRef;[BI)[B

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/shilapi/xcertplay/usbbt/DataElement$Text;-><init>([B)V

    move-object p1, p2

    check-cast p1, Lcom/shilapi/xcertplay/usbbt/DataElement;

    goto/16 :goto_5

    :pswitch_3
    if-eq v0, v4, :cond_7

    if-eq v0, v7, :cond_6

    if-ne v0, v6, :cond_5

    const/16 v0, 0x10

    .line 219
    invoke-static {v3, p1, v0}, Lcom/shilapi/xcertplay/usbbt/Sdp;->decode$take(Lkotlin/jvm/internal/Ref$IntRef;[BI)[B

    move-result-object p1

    sget-object v1, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;->Companion:Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid$Companion;

    new-instance v2, Ljava/util/UUID;

    invoke-static {p1, v5, p2}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v4

    invoke-static {v4}, Lcom/shilapi/xcertplay/usbbt/Sdp;->decode$be([B)J

    move-result-wide v4

    invoke-static {p1, p2, v0}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object p1

    invoke-static {p1}, Lcom/shilapi/xcertplay/usbbt/Sdp;->decode$be([B)J

    move-result-wide p1

    invoke-direct {v2, v4, v5, p1, p2}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {v1, v2}, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid$Companion;->of128(Ljava/util/UUID;)Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;

    move-result-object p1

    goto :goto_3

    .line 220
    :cond_5
    new-instance p1, Lcom/shilapi/xcertplay/usbbt/Sdp$Malformed;

    const-string/jumbo p2, "uuid size"

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/usbbt/Sdp$Malformed;-><init>(Ljava/lang/String;)V

    throw p1

    .line 218
    :cond_6
    sget-object p2, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;->Companion:Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid$Companion;

    invoke-static {v3, p1, v6}, Lcom/shilapi/xcertplay/usbbt/Sdp;->decode$take(Lkotlin/jvm/internal/Ref$IntRef;[BI)[B

    move-result-object p1

    invoke-static {p1}, Lcom/shilapi/xcertplay/usbbt/Sdp;->decode$be([B)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid$Companion;->of32(J)Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;

    move-result-object p1

    goto :goto_3

    .line 217
    :cond_7
    sget-object p2, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;->Companion:Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid$Companion;

    invoke-static {v3, p1, v7}, Lcom/shilapi/xcertplay/usbbt/Sdp;->decode$take(Lkotlin/jvm/internal/Ref$IntRef;[BI)[B

    move-result-object p1

    invoke-static {p1}, Lcom/shilapi/xcertplay/usbbt/Sdp;->decode$be([B)J

    move-result-wide v0

    long-to-int p1, v0

    invoke-virtual {p2, p1}, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid$Companion;->of16(I)Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;

    move-result-object p1

    .line 220
    :goto_3
    check-cast p1, Lcom/shilapi/xcertplay/usbbt/DataElement;

    goto :goto_5

    :pswitch_4
    if-eqz v0, :cond_b

    if-eq v0, v4, :cond_a

    if-eq v0, v7, :cond_9

    if-ne v0, v2, :cond_8

    const/16 v4, 0x8

    goto :goto_4

    .line 213
    :cond_8
    new-instance p1, Lcom/shilapi/xcertplay/usbbt/Sdp$Malformed;

    const-string p2, "int size"

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/usbbt/Sdp$Malformed;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    const/4 v4, 0x4

    goto :goto_4

    :cond_a
    const/4 v4, 0x2

    .line 214
    :cond_b
    :goto_4
    new-instance p2, Lcom/shilapi/xcertplay/usbbt/DataElement$UInt;

    invoke-static {v3, p1, v4}, Lcom/shilapi/xcertplay/usbbt/Sdp;->decode$take(Lkotlin/jvm/internal/Ref$IntRef;[BI)[B

    move-result-object p1

    invoke-static {p1}, Lcom/shilapi/xcertplay/usbbt/Sdp;->decode$be([B)J

    move-result-wide v0

    invoke-direct {p2, v4, v0, v1}, Lcom/shilapi/xcertplay/usbbt/DataElement$UInt;-><init>(IJ)V

    move-object p1, p2

    check-cast p1, Lcom/shilapi/xcertplay/usbbt/DataElement;

    goto :goto_5

    .line 211
    :pswitch_5
    sget-object p1, Lcom/shilapi/xcertplay/usbbt/DataElement$Nil;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/DataElement$Nil;

    check-cast p1, Lcom/shilapi/xcertplay/usbbt/DataElement;

    .line 232
    :goto_5
    iget p2, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1

    .line 196
    :cond_c
    new-instance p1, Lcom/shilapi/xcertplay/usbbt/Sdp$Malformed;

    const-string p2, "empty"

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/usbbt/Sdp$Malformed;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final deviceIdRecord(Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity$DeviceId;)Lcom/shilapi/xcertplay/usbbt/SdpRecord;
    .locals 17

    const-string v0, "id"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    new-instance v0, Lcom/shilapi/xcertplay/usbbt/SdpRecord;

    const/16 v2, 0xa

    .line 128
    new-array v2, v2, [Lkotlin/Pair;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;

    new-array v6, v3, [Lcom/shilapi/xcertplay/usbbt/DataElement;

    sget-object v7, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;->Companion:Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid$Companion;

    const/16 v8, 0x1200

    invoke-virtual {v7, v8}, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid$Companion;->of16(I)Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v6, v9

    invoke-direct {v5, v6}, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;-><init>([Lcom/shilapi/xcertplay/usbbt/DataElement;)V

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v2, v9

    const/4 v4, 0x4

    .line 129
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;

    const/4 v7, 0x2

    .line 130
    new-array v10, v7, [Lcom/shilapi/xcertplay/usbbt/DataElement;

    new-instance v11, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;

    new-array v12, v7, [Lcom/shilapi/xcertplay/usbbt/DataElement;

    sget-object v13, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;->Companion:Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid$Companion;

    const/16 v14, 0x100

    invoke-virtual {v13, v14}, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid$Companion;->of16(I)Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;

    move-result-object v13

    aput-object v13, v12, v9

    new-instance v13, Lcom/shilapi/xcertplay/usbbt/DataElement$UInt;

    const-wide/16 v14, 0x1

    invoke-direct {v13, v7, v14, v15}, Lcom/shilapi/xcertplay/usbbt/DataElement$UInt;-><init>(IJ)V

    aput-object v13, v12, v3

    invoke-direct {v11, v12}, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;-><init>([Lcom/shilapi/xcertplay/usbbt/DataElement;)V

    aput-object v11, v10, v9

    .line 131
    new-instance v11, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;

    new-array v12, v3, [Lcom/shilapi/xcertplay/usbbt/DataElement;

    sget-object v13, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;->Companion:Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid$Companion;

    invoke-virtual {v13, v3}, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid$Companion;->of16(I)Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;

    move-result-object v13

    aput-object v13, v12, v9

    invoke-direct {v11, v12}, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;-><init>([Lcom/shilapi/xcertplay/usbbt/DataElement;)V

    aput-object v11, v10, v3

    .line 129
    invoke-direct {v6, v10}, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;-><init>([Lcom/shilapi/xcertplay/usbbt/DataElement;)V

    invoke-static {v5, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v5, 0x5

    .line 133
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v10, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;

    new-array v11, v3, [Lcom/shilapi/xcertplay/usbbt/DataElement;

    sget-object v12, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;->Companion:Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid$Companion;

    const/16 v13, 0x1002

    invoke-virtual {v12, v13}, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid$Companion;->of16(I)Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-direct {v10, v11}, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;-><init>([Lcom/shilapi/xcertplay/usbbt/DataElement;)V

    invoke-static {v6, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    aput-object v6, v2, v7

    const/16 v6, 0x9

    .line 134
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v11, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;

    .line 135
    new-array v12, v3, [Lcom/shilapi/xcertplay/usbbt/DataElement;

    new-instance v13, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;

    new-array v14, v7, [Lcom/shilapi/xcertplay/usbbt/DataElement;

    sget-object v15, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;->Companion:Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid$Companion;

    invoke-virtual {v15, v8}, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid$Companion;->of16(I)Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;

    move-result-object v8

    aput-object v8, v14, v9

    new-instance v8, Lcom/shilapi/xcertplay/usbbt/DataElement$UInt;

    const/4 v15, 0x4

    const/16 v16, 0x5

    const-wide/16 v4, 0x103

    invoke-direct {v8, v7, v4, v5}, Lcom/shilapi/xcertplay/usbbt/DataElement$UInt;-><init>(IJ)V

    aput-object v8, v14, v3

    invoke-direct {v13, v14}, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;-><init>([Lcom/shilapi/xcertplay/usbbt/DataElement;)V

    aput-object v13, v12, v9

    .line 134
    invoke-direct {v11, v12}, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;-><init>([Lcom/shilapi/xcertplay/usbbt/DataElement;)V

    invoke-static {v10, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v2, v9

    const/16 v8, 0x200

    .line 137
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lcom/shilapi/xcertplay/usbbt/DataElement$UInt;

    invoke-direct {v9, v7, v4, v5}, Lcom/shilapi/xcertplay/usbbt/DataElement$UInt;-><init>(IJ)V

    invoke-static {v8, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v2, v15

    const/16 v4, 0x201

    .line 138
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/shilapi/xcertplay/usbbt/DataElement$UInt;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity$DeviceId;->getVendorId()I

    move-result v8

    int-to-long v8, v8

    invoke-direct {v5, v7, v8, v9}, Lcom/shilapi/xcertplay/usbbt/DataElement$UInt;-><init>(IJ)V

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v2, v16

    const/16 v4, 0x202

    .line 139
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/shilapi/xcertplay/usbbt/DataElement$UInt;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity$DeviceId;->getProductId()I

    move-result v8

    int-to-long v8, v8

    invoke-direct {v5, v7, v8, v9}, Lcom/shilapi/xcertplay/usbbt/DataElement$UInt;-><init>(IJ)V

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v5, 0x6

    aput-object v4, v2, v5

    const/16 v4, 0x203

    .line 140
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/shilapi/xcertplay/usbbt/DataElement$UInt;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity$DeviceId;->getVersion()I

    move-result v8

    int-to-long v8, v8

    invoke-direct {v5, v7, v8, v9}, Lcom/shilapi/xcertplay/usbbt/DataElement$UInt;-><init>(IJ)V

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v5, 0x7

    aput-object v4, v2, v5

    const/16 v4, 0x204

    .line 141
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/shilapi/xcertplay/usbbt/DataElement$Bool;

    invoke-direct {v5, v3}, Lcom/shilapi/xcertplay/usbbt/DataElement$Bool;-><init>(Z)V

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/16 v4, 0x8

    aput-object v3, v2, v4

    const/16 v3, 0x205

    .line 142
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/shilapi/xcertplay/usbbt/DataElement$UInt;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity$DeviceId;->getVendorIdSource()I

    move-result v1

    int-to-long v8, v1

    invoke-direct {v4, v7, v8, v9}, Lcom/shilapi/xcertplay/usbbt/DataElement$UInt;-><init>(IJ)V

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v2, v6

    .line 127
    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    const-wide/32 v2, 0x10001

    .line 125
    invoke-direct {v0, v2, v3, v1}, Lcom/shilapi/xcertplay/usbbt/SdpRecord;-><init>(JLjava/util/Map;)V

    return-object v0
.end method

.method public final encodeTo$shared_release(Lcom/shilapi/xcertplay/usbbt/DataElement;Ljava/io/ByteArrayOutputStream;)V
    .locals 6

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "out"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/DataElement$Nil;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/DataElement$Nil;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void

    .line 154
    :cond_0
    instance-of v0, p1, Lcom/shilapi/xcertplay/usbbt/DataElement$UInt;

    const/4 v2, 0x4

    const/4 v3, 0x2

    if-eqz v0, :cond_6

    .line 155
    check-cast p1, Lcom/shilapi/xcertplay/usbbt/DataElement$UInt;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/DataElement$UInt;->getBytes()I

    move-result v0

    const/16 v4, 0x8

    const/4 v5, 0x1

    if-eq v0, v5, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    if-ne v0, v4, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "uint size"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    :cond_4
    :goto_0
    or-int/lit8 v0, v1, 0x8

    .line 156
    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 157
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/DataElement$UInt;->getBytes()I

    move-result v0

    sub-int/2addr v0, v5

    :goto_1
    const/4 v1, -0x1

    if-ge v1, v0, :cond_5

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/DataElement$UInt;->getValue()J

    move-result-wide v1

    mul-int/lit8 v3, v0, 0x8

    ushr-long/2addr v1, v3

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    long-to-int v2, v1

    invoke-virtual {p2, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_5
    return-void

    .line 159
    :cond_6
    instance-of v0, p1, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;

    if-eqz v0, :cond_9

    check-cast p1, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;->getBytes()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v3, :cond_8

    if-eq v0, v2, :cond_7

    const/16 v0, 0x1c

    .line 162
    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-static {p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtIdentityKt;->uuidBigEndian(Ljava/util/UUID;)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    return-void

    :cond_7
    const/16 v0, 0x1a

    .line 161
    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v3

    ushr-long v0, v3, v1

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/shilapi/xcertplay/usbbt/Sdp;->writeBe(Ljava/io/ByteArrayOutputStream;JI)V

    return-void

    :cond_8
    const/16 v0, 0x19

    .line 160
    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    ushr-long v0, v4, v1

    const-wide/32 v4, 0xffff

    and-long/2addr v0, v4

    invoke-direct {p0, p2, v0, v1, v3}, Lcom/shilapi/xcertplay/usbbt/Sdp;->writeBe(Ljava/io/ByteArrayOutputStream;JI)V

    return-void

    .line 164
    :cond_9
    instance-of v0, p1, Lcom/shilapi/xcertplay/usbbt/DataElement$Text;

    if-eqz v0, :cond_a

    check-cast p1, Lcom/shilapi/xcertplay/usbbt/DataElement$Text;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/DataElement$Text;->getValue()[B

    move-result-object v0

    array-length v0, v0

    invoke-direct {p0, p2, v2, v0}, Lcom/shilapi/xcertplay/usbbt/Sdp;->header(Ljava/io/ByteArrayOutputStream;II)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/DataElement$Text;->getValue()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    return-void

    .line 165
    :cond_a
    instance-of v0, p1, Lcom/shilapi/xcertplay/usbbt/DataElement$Bool;

    if-eqz v0, :cond_b

    const/16 v0, 0x28

    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    check-cast p1, Lcom/shilapi/xcertplay/usbbt/DataElement$Bool;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/DataElement$Bool;->getValue()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void

    .line 166
    :cond_b
    instance-of v0, p1, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;

    if-eqz v0, :cond_c

    check-cast p1, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;->getItems()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x6

    invoke-direct {p0, p2, v0, p1}, Lcom/shilapi/xcertplay/usbbt/Sdp;->container(Ljava/io/ByteArrayOutputStream;ILjava/util/List;)V

    return-void

    .line 167
    :cond_c
    instance-of v0, p1, Lcom/shilapi/xcertplay/usbbt/DataElement$Alternative;

    if-eqz v0, :cond_d

    check-cast p1, Lcom/shilapi/xcertplay/usbbt/DataElement$Alternative;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/DataElement$Alternative;->getItems()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x7

    invoke-direct {p0, p2, v0, p1}, Lcom/shilapi/xcertplay/usbbt/Sdp;->container(Ljava/io/ByteArrayOutputStream;ILjava/util/List;)V

    return-void

    .line 152
    :cond_d
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final iap2Record(ILjava/lang/String;)Lcom/shilapi/xcertplay/usbbt/SdpRecord;
    .locals 19

    move-object/from16 v0, p2

    const-string v1, "serviceName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    new-instance v1, Lcom/shilapi/xcertplay/usbbt/SdpRecord;

    const/4 v2, 0x5

    .line 111
    new-array v3, v2, [Lkotlin/Pair;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;

    new-array v7, v4, [Lcom/shilapi/xcertplay/usbbt/DataElement;

    sget-object v8, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;->Companion:Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid$Companion;

    sget-object v9, Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;->Companion:Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity$Companion;

    invoke-virtual {v9}, Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity$Companion;->getIAP2_ACCESSORY_UUID()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid$Companion;->of128(Ljava/util/UUID;)Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-direct {v6, v7}, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;-><init>([Lcom/shilapi/xcertplay/usbbt/DataElement;)V

    invoke-static {v5, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    aput-object v5, v3, v9

    const/4 v5, 0x4

    .line 112
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;

    const/4 v8, 0x2

    .line 113
    new-array v10, v8, [Lcom/shilapi/xcertplay/usbbt/DataElement;

    new-instance v11, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;

    new-array v12, v4, [Lcom/shilapi/xcertplay/usbbt/DataElement;

    sget-object v13, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;->Companion:Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid$Companion;

    const/16 v14, 0x100

    invoke-virtual {v13, v14}, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid$Companion;->of16(I)Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;

    move-result-object v13

    aput-object v13, v12, v9

    invoke-direct {v11, v12}, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;-><init>([Lcom/shilapi/xcertplay/usbbt/DataElement;)V

    aput-object v11, v10, v9

    .line 114
    new-instance v11, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;

    new-array v12, v8, [Lcom/shilapi/xcertplay/usbbt/DataElement;

    sget-object v13, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;->Companion:Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid$Companion;

    const/4 v15, 0x3

    invoke-virtual {v13, v15}, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid$Companion;->of16(I)Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;

    move-result-object v13

    aput-object v13, v12, v9

    new-instance v13, Lcom/shilapi/xcertplay/usbbt/DataElement$UInt;

    move/from16 v2, p1

    const/16 v16, 0x5

    const/16 v17, 0x100

    const/16 v18, 0x3

    int-to-long v14, v2

    invoke-direct {v13, v4, v14, v15}, Lcom/shilapi/xcertplay/usbbt/DataElement$UInt;-><init>(IJ)V

    aput-object v13, v12, v4

    invoke-direct {v11, v12}, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;-><init>([Lcom/shilapi/xcertplay/usbbt/DataElement;)V

    aput-object v11, v10, v4

    .line 112
    invoke-direct {v7, v10}, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;-><init>([Lcom/shilapi/xcertplay/usbbt/DataElement;)V

    invoke-static {v6, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v3, v4

    .line 116
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v6, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;

    new-array v7, v4, [Lcom/shilapi/xcertplay/usbbt/DataElement;

    sget-object v10, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;->Companion:Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid$Companion;

    const/16 v11, 0x1002

    invoke-virtual {v10, v11}, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid$Companion;->of16(I)Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;

    move-result-object v10

    aput-object v10, v7, v9

    invoke-direct {v6, v7}, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;-><init>([Lcom/shilapi/xcertplay/usbbt/DataElement;)V

    invoke-static {v2, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v3, v8

    const/16 v2, 0x9

    .line 117
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v6, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;

    .line 118
    new-array v7, v4, [Lcom/shilapi/xcertplay/usbbt/DataElement;

    new-instance v10, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;

    new-array v11, v8, [Lcom/shilapi/xcertplay/usbbt/DataElement;

    sget-object v12, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;->Companion:Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid$Companion;

    const/16 v13, 0x1101

    invoke-virtual {v12, v13}, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid$Companion;->of16(I)Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;

    move-result-object v12

    aput-object v12, v11, v9

    new-instance v12, Lcom/shilapi/xcertplay/usbbt/DataElement$UInt;

    const-wide/16 v13, 0x100

    invoke-direct {v12, v8, v13, v14}, Lcom/shilapi/xcertplay/usbbt/DataElement$UInt;-><init>(IJ)V

    aput-object v12, v11, v4

    invoke-direct {v10, v11}, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;-><init>([Lcom/shilapi/xcertplay/usbbt/DataElement;)V

    aput-object v10, v7, v9

    .line 117
    invoke-direct {v6, v7}, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;-><init>([Lcom/shilapi/xcertplay/usbbt/DataElement;)V

    invoke-static {v2, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v3, v18

    .line 120
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v4, Lcom/shilapi/xcertplay/usbbt/DataElement$Text;

    invoke-direct {v4, v0}, Lcom/shilapi/xcertplay/usbbt/DataElement$Text;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v3, v5

    .line 110
    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const-wide/32 v2, 0x10000

    .line 108
    invoke-direct {v1, v2, v3, v0}, Lcom/shilapi/xcertplay/usbbt/SdpRecord;-><init>(JLjava/util/Map;)V

    return-object v1
.end method

.method public final records(Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;",
            ")",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/usbbt/SdpRecord;",
            ">;"
        }
    .end annotation

    const-string v0, "identity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 147
    new-array v1, v0, [Lcom/shilapi/xcertplay/usbbt/SdpRecord;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;->getIap2RfcommChannel()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3, v0, v3}, Lcom/shilapi/xcertplay/usbbt/Sdp;->iap2Record$default(Lcom/shilapi/xcertplay/usbbt/Sdp;ILjava/lang/String;ILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/SdpRecord;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;->getDeviceId()Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity$DeviceId;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/shilapi/xcertplay/usbbt/Sdp;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/Sdp;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/usbbt/Sdp;->deviceIdRecord(Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity$DeviceId;)Lcom/shilapi/xcertplay/usbbt/SdpRecord;

    move-result-object v3

    :cond_0
    const/4 p1, 0x1

    aput-object v3, v1, p1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
