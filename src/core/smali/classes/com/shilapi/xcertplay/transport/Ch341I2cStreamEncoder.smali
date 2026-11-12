.class public final Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder;
.super Ljava/lang/Object;
.source "Ch341I2cStreamEncoder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder$SegmentedStream;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCh341I2cStreamEncoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Ch341I2cStreamEncoder.kt\ncom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,183:1\n1#2:184\n13479#3,2:185\n*S KotlinDebug\n*F\n+ 1 Ch341I2cStreamEncoder.kt\ncom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder\n*L\n62#1:185,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\r\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001#B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u001e\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0005J\"\u0010\u0010\u001a\u0004\u0018\u00010\t2\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0005H\u0002J \u0010\u0011\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0005H\u0002J\u0018\u0010\u0014\u001a\u00020\u00152\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0017H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder;",
        "",
        "<init>",
        "()V",
        "MAX_STREAM_PACKET_BYTES",
        "",
        "MAX_TRANSACTION_DATA_BYTES",
        "MAX_READ_BYTES",
        "configuration",
        "",
        "speed",
        "Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;",
        "transaction",
        "address7Bit",
        "writeData",
        "readLength",
        "legacyTransaction",
        "validateRequest",
        "",
        "writeLength",
        "addressByte",
        "",
        "read",
        "",
        "STREAM_START",
        "START",
        "WRITE",
        "READ",
        "STOP",
        "STREAM_END",
        "STREAM_END_BYTES",
        "STOP_AND_END_BYTES",
        "START_AND_ADDRESS_BYTES",
        "MAX_WRITE_COMMAND_BYTES",
        "MAX_READ_BLOCK_BYTES",
        "SegmentedStream",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder;

.field private static final MAX_READ_BLOCK_BYTES:I = 0x20

.field public static final MAX_READ_BYTES:I = 0xffff

.field public static final MAX_STREAM_PACKET_BYTES:I = 0x20

.field public static final MAX_TRANSACTION_DATA_BYTES:I = 0xffff

.field private static final MAX_WRITE_COMMAND_BYTES:I = 0x3f

.field private static final READ:I = 0xc0

.field private static final START:I = 0x74

.field private static final START_AND_ADDRESS_BYTES:I = 0x3

.field private static final STOP:I = 0x75

.field private static final STOP_AND_END_BYTES:I = 0x2

.field private static final STREAM_END:I = 0x0

.field private static final STREAM_END_BYTES:I = 0x1

.field private static final STREAM_START:I = 0xaa

.field private static final WRITE:I = 0x80


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder;->INSTANCE:Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final addressByte(IZ)B
    .locals 0

    shl-int/lit8 p1, p1, 0x1

    or-int/2addr p1, p2

    int-to-byte p1, p1

    return p1
.end method

.method private final legacyTransaction(I[BI)[B
    .locals 7

    const/4 v0, 0x0

    const/16 v1, 0x20

    if-gt p3, v1, :cond_6

    .line 52
    array-length v2, p2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/16 v4, 0x3f

    if-le v2, v4, :cond_0

    goto :goto_2

    .line 54
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/16 v4, 0xaa

    .line 68
    invoke-static {v2, v4}, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder;->legacyTransaction$add(Ljava/util/ArrayList;I)V

    .line 69
    array-length v4, p2

    const/4 v5, 0x0

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    const/16 v6, 0x74

    if-nez v4, :cond_2

    .line 70
    invoke-static {v2, v6}, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder;->legacyTransaction$add(Ljava/util/ArrayList;I)V

    .line 71
    invoke-direct {p0, p1, v5}, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder;->addressByte(IZ)B

    move-result v4

    invoke-static {v2, v4, p2}, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder;->legacyTransaction$write(Ljava/util/ArrayList;B[B)V

    :cond_2
    if-lez p3, :cond_4

    .line 74
    invoke-static {v2, v6}, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder;->legacyTransaction$add(Ljava/util/ArrayList;I)V

    .line 75
    invoke-direct {p0, p1, v3}, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder;->addressByte(IZ)B

    move-result p1

    new-array p2, v5, [B

    invoke-static {v2, p1, p2}, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder;->legacyTransaction$write(Ljava/util/ArrayList;B[B)V

    if-le p3, v3, :cond_3

    add-int/lit16 p3, p3, 0xbf

    .line 76
    invoke-static {v2, p3}, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder;->legacyTransaction$add(Ljava/util/ArrayList;I)V

    :cond_3
    const/16 p1, 0xc0

    .line 77
    invoke-static {v2, p1}, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder;->legacyTransaction$add(Ljava/util/ArrayList;I)V

    :cond_4
    const/16 p1, 0x75

    .line 79
    invoke-static {v2, p1}, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder;->legacyTransaction$add(Ljava/util/ArrayList;I)V

    .line 80
    invoke-static {v2, v5}, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder;->legacyTransaction$add(Ljava/util/ArrayList;I)V

    .line 81
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gt p1, v1, :cond_5

    goto :goto_1

    :cond_5
    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_6

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toByteArray(Ljava/util/Collection;)[B

    move-result-object p1

    return-object p1

    :cond_6
    :goto_2
    return-object v0
.end method

.method private static final legacyTransaction$add(Ljava/util/ArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;I)V"
        }
    .end annotation

    .line 56
    check-cast p0, Ljava/util/Collection;

    int-to-byte p1, p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static final legacyTransaction$write(Ljava/util/ArrayList;B[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;B[B)V"
        }
    .end annotation

    const/16 v0, 0x80

    .line 60
    invoke-static {p0, v0}, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder;->legacyTransaction$add(Ljava/util/ArrayList;I)V

    and-int/lit16 p1, p1, 0xff

    .line 61
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder;->legacyTransaction$add(Ljava/util/ArrayList;I)V

    .line 185
    array-length p1, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    aget-byte v2, p2, v1

    .line 63
    invoke-static {p0, v0}, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder;->legacyTransaction$add(Ljava/util/ArrayList;I)V

    and-int/lit16 v2, v2, 0xff

    .line 64
    invoke-static {p0, v2}, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder;->legacyTransaction$add(Ljava/util/ArrayList;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final validateRequest(III)V
    .locals 1

    if-ltz p1, :cond_4

    const/16 v0, 0x80

    if-ge p1, v0, :cond_4

    if-ltz p3, :cond_3

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    new-instance p1, Lcom/shilapi/xcertplay/transport/I2cTransportException$InvalidRequest;

    const-string p2, "I2C transaction must read or write data"

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/transport/I2cTransportException$InvalidRequest;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const p1, 0xffff

    if-gt p2, p1, :cond_2

    if-gt p3, p1, :cond_2

    return-void

    .line 95
    :cond_2
    new-instance p1, Lcom/shilapi/xcertplay/transport/I2cTransportException$InvalidRequest;

    .line 96
    const-string p2, "CH341 transactions support at most 65535 bytes per read or write"

    .line 95
    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/transport/I2cTransportException$InvalidRequest;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :cond_3
    new-instance p1, Lcom/shilapi/xcertplay/transport/I2cTransportException$InvalidRequest;

    const-string p2, "Read length must not be negative"

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/transport/I2cTransportException$InvalidRequest;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_4
    new-instance p1, Lcom/shilapi/xcertplay/transport/I2cTransportException$InvalidRequest;

    const-string p2, "I2C address must be a 7-bit value"

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/transport/I2cTransportException$InvalidRequest;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final configuration(Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;)[B
    .locals 3

    const-string/jumbo v0, "speed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;->getCommand$shared_release()I

    move-result p1

    int-to-byte p1, p1

    const/4 v0, 0x3

    .line 33
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, -0x56

    aput-byte v2, v0, v1

    const/4 v2, 0x1

    aput-byte p1, v0, v2

    const/4 p1, 0x2

    aput-byte v1, v0, p1

    return-object v0
.end method

.method public final transaction(I[BI)[B
    .locals 4

    const-string/jumbo v0, "writeData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    array-length v0, p2

    invoke-direct {p0, p1, v0, p3}, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder;->validateRequest(III)V

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder;->legacyTransaction(I[BI)[B

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 40
    :cond_0
    new-instance v0, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder$SegmentedStream;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder$SegmentedStream;-><init>()V

    .line 41
    array-length v1, p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 42
    invoke-direct {p0, p1, v3}, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder;->addressByte(IZ)B

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder$SegmentedStream;->startAndWrite(B[B)V

    :cond_2
    if-lez p3, :cond_3

    .line 45
    invoke-direct {p0, p1, v2}, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder;->addressByte(IZ)B

    move-result p1

    new-array p2, v3, [B

    invoke-virtual {v0, p1, p2}, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder$SegmentedStream;->startAndWrite(B[B)V

    .line 46
    invoke-virtual {v0, p3}, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder$SegmentedStream;->read(I)V

    .line 48
    :cond_3
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder$SegmentedStream;->finish()[B

    move-result-object p1

    return-object p1
.end method
