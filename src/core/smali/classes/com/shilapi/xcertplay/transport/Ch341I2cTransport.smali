.class public final Lcom/shilapi/xcertplay/transport/Ch341I2cTransport;
.super Ljava/lang/Object;
.source "Ch341I2cTransport.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/transport/I2cTransport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/transport/Ch341I2cTransport$Companion;,
        Lcom/shilapi/xcertplay/transport/Ch341I2cTransport$InstructionLengths;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCh341I2cTransport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Ch341I2cTransport.kt\ncom/shilapi/xcertplay/transport/Ch341I2cTransport\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,235:1\n1#2:236\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u0000 &2\u00020\u0001:\u0002%&B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ \u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0007H\u0016J\"\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0017J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\rH\u0002J\u0010\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u0007H\u0002J\u0018\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u001e\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020\u0007H\u0002J\u0010\u0010 \u001a\u00020\u00122\u0006\u0010!\u001a\u00020\u0015H\u0002J\u0008\u0010\"\u001a\u00020\u0012H\u0002J\u0018\u0010#\u001a\u00020\u00072\u0006\u0010$\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0007H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/Ch341I2cTransport;",
        "Lcom/shilapi/xcertplay/transport/I2cTransport;",
        "session",
        "Lcom/shilapi/xcertplay/transport/Ch341UsbSession;",
        "speed",
        "Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;",
        "timeoutMillis",
        "",
        "<init>",
        "(Lcom/shilapi/xcertplay/transport/Ch341UsbSession;Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;I)V",
        "lock",
        "",
        "transaction",
        "",
        "address7Bit",
        "writeData",
        "readLength",
        "pulseActiveLowReset",
        "",
        "gpio",
        "lowMillis",
        "",
        "driveHigh",
        "",
        "instructionLengths",
        "Lcom/shilapi/xcertplay/transport/Ch341I2cTransport$InstructionLengths;",
        "segment",
        "encodedLength",
        "command",
        "checkStatusBytes",
        "received",
        "statusCount",
        "sleepBusIdle",
        "millis",
        "configure",
        "minimumTransferTimeoutMillis",
        "writeLength",
        "InstructionLengths",
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
.field public static final ACK_BIT:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BITS_PER_I2C_BYTE:J = 0x9L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final Companion:Lcom/shilapi/xcertplay/transport/Ch341I2cTransport$Companion;

.field public static final DEFAULT_TIMEOUT_MILLIS:I = 0x3e8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final I2C_TRANSACTION_OVERHEAD_BYTES:J = 0x8L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LENGTH_MASK:I = 0x3f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MFI_RESET_LOW_MILLIS:J = 0xaL
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MFI_RESET_STARTUP_MILLIS:J = 0xbL
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MILLIS_PER_SECOND:J = 0x3e8L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final READ_MAX:I = 0xff
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final READ_MIN:I = 0xc0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RESPONSE_QUIET_MILLIS:I = 0x19
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SELECT_TO_READ_GAP_MILLIS:J = 0x5L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SET_MAX:I = 0x63
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SET_MIN:I = 0x60
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final START:I = 0x74
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STOP:I = 0x75
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STREAM_END:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TRANSFER_MARGIN_MILLIS:J = 0x3e8L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UIO_DIR:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UIO_END:I = 0x20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UIO_OUT:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UIO_STREAM:I = 0xab
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WRITE_MAX:I = 0xbf
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WRITE_MIN:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final session:Lcom/shilapi/xcertplay/transport/Ch341UsbSession;

.field private final speed:Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;

.field private final timeoutMillis:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/transport/Ch341I2cTransport$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/transport/Ch341I2cTransport$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/Ch341I2cTransport;->Companion:Lcom/shilapi/xcertplay/transport/Ch341I2cTransport$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/shilapi/xcertplay/transport/Ch341UsbSession;Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;I)V
    .locals 1

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "speed"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Ch341I2cTransport;->session:Lcom/shilapi/xcertplay/transport/Ch341UsbSession;

    .line 11
    iput-object p2, p0, Lcom/shilapi/xcertplay/transport/Ch341I2cTransport;->speed:Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;

    .line 12
    iput p3, p0, Lcom/shilapi/xcertplay/transport/Ch341I2cTransport;->timeoutMillis:I

    .line 14
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Ch341I2cTransport;->lock:Ljava/lang/Object;

    if-lez p3, :cond_0

    return-void

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "timeoutMillis must be positive"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/transport/Ch341UsbSession;Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 11
    sget-object p2, Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;->KHZ_100:Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/16 p3, 0x3e8

    .line 9
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/transport/Ch341I2cTransport;-><init>(Lcom/shilapi/xcertplay/transport/Ch341UsbSession;Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;I)V

    return-void
.end method

.method private final checkStatusBytes([BI)V
    .locals 2

    .line 168
    array-length v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    .line 169
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    :cond_0
    new-instance p1, Lcom/shilapi/xcertplay/transport/I2cTransportException$Nack;

    .line 171
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "CH341 reported an I2C NACK on byte "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " of this stream packet"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 170
    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/transport/I2cTransportException$Nack;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method private final configure()V
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Ch341I2cTransport;->session:Lcom/shilapi/xcertplay/transport/Ch341UsbSession;

    sget-object v1, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder;->INSTANCE:Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder;

    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/Ch341I2cTransport;->speed:Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;

    invoke-virtual {v1, v2}, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder;->configuration(Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;)[B

    move-result-object v1

    iget v2, p0, Lcom/shilapi/xcertplay/transport/Ch341I2cTransport;->timeoutMillis:I

    invoke-virtual {v0, v1, v2}, Lcom/shilapi/xcertplay/transport/Ch341UsbSession;->bulkWrite$shared_release([BI)V

    return-void
.end method

.method private final encodedLength(I)I
    .locals 0

    and-int/lit8 p1, p1, 0x3f

    if-nez p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method private final instructionLengths([B)Lcom/shilapi/xcertplay/transport/Ch341I2cTransport$InstructionLengths;
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 132
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_8

    .line 133
    aget-byte v3, p1, v0

    and-int/lit16 v4, v3, 0xff

    add-int/lit8 v0, v0, 0x1

    if-nez v4, :cond_0

    .line 136
    new-instance p1, Lcom/shilapi/xcertplay/transport/Ch341I2cTransport$InstructionLengths;

    invoke-direct {p1, v1, v2}, Lcom/shilapi/xcertplay/transport/Ch341I2cTransport$InstructionLengths;-><init>(II)V

    return-object p1

    :cond_0
    const/16 v5, 0x74

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eq v4, v5, :cond_6

    const/16 v5, 0x75

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    const/16 v5, 0x80

    const/16 v8, 0xc0

    if-gt v5, v4, :cond_3

    if-ge v4, v8, :cond_3

    .line 139
    invoke-direct {p0, v4}, Lcom/shilapi/xcertplay/transport/Ch341I2cTransport;->encodedLength(I)I

    move-result v4

    and-int/lit8 v3, v3, 0x3f

    if-nez v3, :cond_2

    add-int/2addr v1, v4

    :cond_2
    add-int/2addr v0, v4

    goto :goto_1

    :cond_3
    if-gt v8, v4, :cond_4

    const/16 v3, 0x100

    if-ge v4, v3, :cond_4

    .line 147
    invoke-direct {p0, v4}, Lcom/shilapi/xcertplay/transport/Ch341I2cTransport;->encodedLength(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :cond_4
    const/16 v3, 0x60

    if-gt v3, v4, :cond_5

    const/16 v3, 0x64

    if-ge v4, v3, :cond_5

    goto :goto_1

    .line 149
    :cond_5
    new-instance p1, Lcom/shilapi/xcertplay/transport/I2cTransportException$Protocol;

    const/16 v0, 0x10

    .line 150
    invoke-static {v0}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected CH341 I2C stream command 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-direct {p1, v0, v7, v6, v7}, Lcom/shilapi/xcertplay/transport/I2cTransportException$Protocol;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1

    .line 153
    :cond_6
    :goto_1
    array-length v3, p1

    if-gt v0, v3, :cond_7

    goto :goto_0

    .line 154
    :cond_7
    new-instance p1, Lcom/shilapi/xcertplay/transport/I2cTransportException$Protocol;

    const-string v0, "Truncated CH341 I2C stream command"

    invoke-direct {p1, v0, v7, v6, v7}, Lcom/shilapi/xcertplay/transport/I2cTransportException$Protocol;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1

    .line 157
    :cond_8
    new-instance p1, Lcom/shilapi/xcertplay/transport/Ch341I2cTransport$InstructionLengths;

    invoke-direct {p1, v1, v2}, Lcom/shilapi/xcertplay/transport/Ch341I2cTransport$InstructionLengths;-><init>(II)V

    return-object p1
.end method

.method private final minimumTransferTimeoutMillis(II)I
    .locals 2

    int-to-long v0, p1

    int-to-long p1, p2

    add-long/2addr v0, p1

    const-wide/16 p1, 0x8

    add-long/2addr v0, p1

    const-wide/16 p1, 0x2328

    mul-long v0, v0, p1

    .line 203
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Ch341I2cTransport;->speed:Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;->getBitsPerSecond$shared_release()I

    move-result p1

    int-to-long p1, p1

    add-long/2addr v0, p1

    const-wide/16 p1, 0x1

    sub-long/2addr v0, p1

    .line 204
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Ch341I2cTransport;->speed:Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;->getBitsPerSecond$shared_release()I

    move-result p1

    int-to-long p1, p1

    .line 203
    div-long/2addr v0, p1

    const-wide/16 p1, 0x3e8

    add-long/2addr v0, p1

    const-wide/32 p1, 0x7fffffff

    .line 205
    invoke-static {v0, v1, p1, p2}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide p1

    long-to-int p2, p1

    return p2
.end method

.method public static synthetic pulseActiveLowReset$default(Lcom/shilapi/xcertplay/transport/Ch341I2cTransport;IJZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const-wide/16 p2, 0xa

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    const/4 p4, 0x1

    .line 90
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/transport/Ch341I2cTransport;->pulseActiveLowReset(IJZ)V

    return-void
.end method

.method private final sleepBusIdle(J)V
    .locals 1

    .line 179
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 181
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 182
    new-instance p2, Lcom/shilapi/xcertplay/transport/I2cTransportException$DeviceUnavailable;

    .line 183
    const-string v0, "Interrupted while holding the I2C bus idle"

    .line 184
    check-cast p1, Ljava/lang/Throwable;

    .line 182
    invoke-direct {p2, v0, p1}, Lcom/shilapi/xcertplay/transport/I2cTransportException$DeviceUnavailable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public final pulseActiveLowReset(IJZ)V
    .locals 10

    if-ltz p1, :cond_3

    const/4 v0, 0x6

    if-ge p1, v0, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_2

    const/4 v0, 0x1

    shl-int p1, v0, p1

    or-int/lit8 v1, p1, 0x40

    int-to-byte v1, v1

    const/4 v2, 0x4

    .line 102
    new-array v3, v2, [B

    const/4 v4, 0x0

    const/16 v5, -0x55

    aput-byte v5, v3, v4

    const/16 v6, -0x80

    aput-byte v6, v3, v0

    const/4 v7, 0x2

    aput-byte v1, v3, v7

    const/4 v8, 0x3

    const/16 v9, 0x20

    aput-byte v9, v3, v8

    if-eqz p4, :cond_0

    or-int/lit16 p1, p1, 0x80

    int-to-byte v6, p1

    :cond_0
    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x40

    .line 108
    :goto_0
    new-array p1, v2, [B

    aput-byte v5, p1, v4

    aput-byte v6, p1, v0

    aput-byte v1, p1, v7

    aput-byte v9, p1, v8

    .line 110
    iget-object p4, p0, Lcom/shilapi/xcertplay/transport/Ch341I2cTransport;->lock:Ljava/lang/Object;

    monitor-enter p4

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Ch341I2cTransport;->session:Lcom/shilapi/xcertplay/transport/Ch341UsbSession;

    iget v1, p0, Lcom/shilapi/xcertplay/transport/Ch341I2cTransport;->timeoutMillis:I

    invoke-virtual {v0, v3, v1}, Lcom/shilapi/xcertplay/transport/Ch341UsbSession;->bulkWrite$shared_release([BI)V

    .line 112
    invoke-direct {p0, p2, p3}, Lcom/shilapi/xcertplay/transport/Ch341I2cTransport;->sleepBusIdle(J)V

    .line 113
    iget-object p2, p0, Lcom/shilapi/xcertplay/transport/Ch341I2cTransport;->session:Lcom/shilapi/xcertplay/transport/Ch341UsbSession;

    iget p3, p0, Lcom/shilapi/xcertplay/transport/Ch341I2cTransport;->timeoutMillis:I

    invoke-virtual {p2, p1, p3}, Lcom/shilapi/xcertplay/transport/Ch341UsbSession;->bulkWrite$shared_release([BI)V

    const-wide/16 p1, 0xb

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/transport/Ch341I2cTransport;->sleepBusIdle(J)V

    .line 115
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit p4

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p4

    throw p1

    .line 96
    :cond_2
    const-string p1, "reset pulse must be positive"

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 95
    :cond_3
    const-string p1, "CH341 output GPIO must be D0..D5"

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public transaction(I[BI)[B
    .locals 12

    const-string/jumbo v0, "writeData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget-object v0, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder;->INSTANCE:Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder;

    invoke-virtual {v0, p1, p2, p3}, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder;->transaction(I[BI)[B

    move-result-object p1

    .line 22
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Ch341I2cTransport;->timeoutMillis:I

    array-length v1, p2

    invoke-direct {p0, v1, p3}, Lcom/shilapi/xcertplay/transport/Ch341I2cTransport;->minimumTransferTimeoutMillis(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 23
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Ch341I2cTransport;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 24
    :try_start_0
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Ch341I2cTransport;->configure()V

    .line 28
    array-length p2, p2

    if-nez p2, :cond_0

    if-lez p3, :cond_0

    const-wide/16 v2, 0x5

    .line 29
    invoke-direct {p0, v2, v3}, Lcom/shilapi/xcertplay/transport/Ch341I2cTransport;->sleepBusIdle(J)V

    .line 31
    :cond_0
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2, p3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 33
    :goto_0
    array-length v4, p1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ge v3, v4, :cond_5

    add-int/lit8 v4, v3, 0x20

    .line 34
    array-length v7, p1

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 35
    invoke-static {p1, v3, v4}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v3

    .line 36
    iget-object v7, p0, Lcom/shilapi/xcertplay/transport/Ch341I2cTransport;->session:Lcom/shilapi/xcertplay/transport/Ch341UsbSession;

    invoke-virtual {v7, v3, v0}, Lcom/shilapi/xcertplay/transport/Ch341UsbSession;->bulkWrite$shared_release([BI)V

    .line 37
    invoke-direct {p0, v3}, Lcom/shilapi/xcertplay/transport/Ch341I2cTransport;->instructionLengths([B)Lcom/shilapi/xcertplay/transport/Ch341I2cTransport$InstructionLengths;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/transport/Ch341I2cTransport$InstructionLengths;->component1()I

    move-result v7

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/transport/Ch341I2cTransport$InstructionLengths;->component2()I

    move-result v3

    add-int/2addr v7, v3

    if-lez v7, :cond_4

    .line 43
    iget-object v8, p0, Lcom/shilapi/xcertplay/transport/Ch341I2cTransport;->session:Lcom/shilapi/xcertplay/transport/Ch341UsbSession;

    const/16 v9, 0x19

    if-lez v3, :cond_1

    move v10, v0

    goto :goto_1

    .line 48
    :cond_1
    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v10

    :goto_1
    if-nez v3, :cond_2

    const/4 v11, 0x1

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    .line 43
    :goto_2
    invoke-virtual {v8, v7, v10, v9, v11}, Lcom/shilapi/xcertplay/transport/Ch341UsbSession;->bulkReadAtMost$shared_release(IIIZ)[B

    move-result-object v7

    .line 53
    array-length v8, v7

    if-lt v8, v3, :cond_3

    .line 59
    array-length v5, v7

    sub-int/2addr v5, v3

    .line 60
    invoke-direct {p0, v7, v5}, Lcom/shilapi/xcertplay/transport/Ch341I2cTransport;->checkStatusBytes([BI)V

    if-lez v3, :cond_4

    .line 62
    invoke-virtual {p2, v7, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3

    .line 54
    :cond_3
    new-instance p1, Lcom/shilapi/xcertplay/transport/I2cTransportException$DeviceUnavailable;

    .line 55
    array-length p2, v7

    .line 56
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CH341 stream packet answered "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " bytes; expected "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " data bytes"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 54
    invoke-direct {p1, p2, v6, v5, v6}, Lcom/shilapi/xcertplay/transport/I2cTransportException$DeviceUnavailable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1

    :cond_4
    :goto_3
    move v3, v4

    goto :goto_0

    .line 67
    :cond_5
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 68
    array-length p2, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p2, p3, :cond_6

    .line 23
    monitor-exit v1

    const-string/jumbo p2, "synchronized(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 69
    :cond_6
    :try_start_1
    new-instance p2, Lcom/shilapi/xcertplay/transport/I2cTransportException$Protocol;

    .line 70
    array-length p1, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CH341 transaction returned "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes; expected "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-direct {p2, p1, v6, v5, v6}, Lcom/shilapi/xcertplay/transport/I2cTransportException$Protocol;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 23
    monitor-exit v1

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method
