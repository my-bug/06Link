.class public final Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;
.super Ljava/lang/Object;
.source "MfiAuthenticationClient.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMfiAuthenticationClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MfiAuthenticationClient.kt\ncom/shilapi/xcertplay/mfi/MfiAuthenticationClient\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,264:1\n1#2:265\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0012\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0006\u0018\u0000 /2\u00020\u0001:\u0001/B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0008\u0010\u000e\u001a\u00020\u0005H\u0016J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0005H\u0016J\u0010\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0010H\u0016J\u000f\u0010\u0014\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0002\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0005H\u0002J\u0018\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u0005H\u0002J\u0010\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0005H\u0002J\u0018\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u0005H\u0002J\u0010\u0010\u001e\u001a\u00020\u00192\u0006\u0010\u0017\u001a\u00020\u0005H\u0002J\u0010\u0010\u001f\u001a\u00020\u00192\u0006\u0010\u0017\u001a\u00020\u0005H\u0002J\u0018\u0010 \u001a\u00020\u00192\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\u0010H\u0002J)\u0010\"\u001a\u0002H#\"\u0004\u0008\u0000\u0010#2\u0006\u0010$\u001a\u00020%2\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u0002H#0\'H\u0002\u00a2\u0006\u0002\u0010(J\u0010\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020*H\u0002J\u0010\u0010,\u001a\u00020\u00192\u0006\u0010-\u001a\u00020*H\u0002J\u0010\u0010.\u001a\u00020\u00192\u0006\u0010+\u001a\u00020*H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u00020\u000bX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u00060"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;",
        "Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;",
        "transport",
        "Lcom/shilapi/xcertplay/transport/I2cTransport;",
        "address7Bit",
        "",
        "<init>",
        "(Lcom/shilapi/xcertplay/transport/I2cTransport;I)V",
        "getAddress7Bit",
        "()I",
        "certificateType",
        "Lcom/shilapi/xcertplay/mfi/MfiCertificateType;",
        "getCertificateType",
        "()Lcom/shilapi/xcertplay/mfi/MfiCertificateType;",
        "protocolMajor",
        "readCertificate",
        "",
        "maximumOutputLength",
        "signChallenge",
        "challenge",
        "bestEffortErrorCode",
        "()Ljava/lang/Integer;",
        "readUnsignedBigEndianShort",
        "register",
        "writeUnsignedBigEndianShort",
        "",
        "value",
        "readByte",
        "readRegister",
        "length",
        "selectRegister",
        "selectRegisterOnce",
        "writeRegister",
        "data",
        "retryIo",
        "T",
        "operation",
        "",
        "action",
        "Lkotlin/Function0;",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "deadlineAfter",
        "",
        "millis",
        "sleepMicros",
        "micros",
        "sleepMillis",
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
.field private static final AUTH_CONTROL_STATUS_REGISTER:I = 0x10

.field private static final AUTH_POLL_MILLIS:J = 0xaL

.field private static final AUTH_START_COMMAND:I = 0x1

.field private static final AUTH_SUCCESS_STATUS:I = 0x10

.field private static final AUTH_TIMEOUT_MILLIS:J = 0xbb8L

.field private static final BYTE_MASK:I = 0xff

.field private static final CERTIFICATE_DATA_REGISTER:I = 0x31

.field private static final CERTIFICATE_LENGTH_REGISTER:I = 0x30

.field private static final CERTIFICATE_REGISTER_WINDOW_BYTES:I = 0x80

.field private static final CHALLENGE_DATA_REGISTER:I = 0x21

.field private static final CHALLENGE_LENGTH_REGISTER:I = 0x20

.field private static final COPROCESSOR_LOCK:Ljava/lang/Object;

.field public static final Companion:Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient$Companion;

.field public static final DEFAULT_MAXIMUM_CERTIFICATE_OUTPUT_LENGTH:I = 0xfff5

.field private static final ERROR_REGISTER:I = 0x5

.field private static final INITIAL_AUTH_DELAY_MILLIS:J = 0xaL

.field private static final IO_RETRY_DELAY_MICROS:J = 0x4e20L

.field private static final IO_RETRY_TIMEOUT_MILLIS:J = 0x7d0L

.field private static final MAXIMUM_CHALLENGE_BYTES:I = 0x80

.field private static final MAX_REGISTER_READ_BYTES:I = 0xfff5

.field private static final MICROS_PER_MILLISECOND:J = 0x3e8L

.field private static final MINIMUM_CHALLENGE_BYTES:I = 0x1

.field private static final NANOS_PER_MICROSECOND:J = 0x3e8L

.field private static final NANOS_PER_MILLISECOND:J = 0xf4240L

.field private static final PROTOCOL_MAJOR_REGISTER:I = 0x2

.field private static final RESPONSE_DATA_REGISTER:I = 0x12

.field private static final RESPONSE_LENGTH_REGISTER:I = 0x11


# instance fields
.field private final address7Bit:I

.field private final certificateType:Lcom/shilapi/xcertplay/mfi/MfiCertificateType;

.field private final transport:Lcom/shilapi/xcertplay/transport/I2cTransport;


# direct methods
.method public static synthetic $r8$lambda$AZVSw5SEap2aMMAQimKUNZnxJ5A(Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;[BI)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;->writeRegister$lambda$9(Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;[BI)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DY2L7UtgN_lXE71oDhe0oNGx9_I(Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;II)[B
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;->readRegister$lambda$7(Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;II)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$eHaEArs0tgHzVEQbe_g2cs2Hugc(Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;->selectRegister$lambda$8(Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;->Companion:Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient$Companion;

    .line 223
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;->COPROCESSOR_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shilapi/xcertplay/transport/I2cTransport;I)V
    .locals 1

    const-string/jumbo v0, "transport"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;->transport:Lcom/shilapi/xcertplay/transport/I2cTransport;

    .line 46
    iput p2, p0, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;->address7Bit:I

    .line 48
    sget-object p1, Lcom/shilapi/xcertplay/mfi/MfiCertificateType;->MFI:Lcom/shilapi/xcertplay/mfi/MfiCertificateType;

    iput-object p1, p0, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;->certificateType:Lcom/shilapi/xcertplay/mfi/MfiCertificateType;

    if-ltz p2, :cond_0

    const/16 p1, 0x80

    if-ge p2, p1, :cond_0

    return-void

    .line 51
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "address7Bit must be in 0x00..0x7f"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final bestEffortErrorCode()Ljava/lang/Integer;
    .locals 6

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 123
    :try_start_0
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;->selectRegister(I)V

    .line 124
    iget-object v0, p0, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;->transport:Lcom/shilapi/xcertplay/transport/I2cTransport;

    iget v2, p0, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;->address7Bit:I

    const/4 v3, 0x0

    new-array v4, v3, [B

    const/4 v5, 0x1

    invoke-interface {v0, v2, v4, v5}, Lcom/shilapi/xcertplay/transport/I2cTransport;->transaction(I[BI)[B

    move-result-object v0

    .line 125
    array-length v2, v0

    if-ne v2, v5, :cond_0

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Lcom/shilapi/xcertplay/transport/I2cTransportException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    return-object v1
.end method

.method private final deadlineAfter(J)J
    .locals 7

    .line 199
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long p1, p1, v2

    const-wide v2, 0x7fffffffffffffffL

    sub-long v4, v2, v0

    cmp-long v6, v4, p1

    if-gez v6, :cond_0

    return-wide v2

    :cond_0
    add-long/2addr v0, p1

    return-wide v0
.end method

.method private final readByte(I)I
    .locals 1

    const/4 v0, 0x1

    .line 140
    invoke-direct {p0, p1, v0}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;->readRegister(II)[B

    move-result-object p1

    const/4 v0, 0x0

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method private final readRegister(II)[B
    .locals 3

    const/4 v0, 0x1

    if-gt v0, p2, :cond_0

    const v0, 0xfff6

    if-ge p2, v0, :cond_0

    const/16 v0, 0x10

    .line 144
    invoke-static {v0}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    const/16 v2, 0x30

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "read at 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient$$ExternalSyntheticLambda0;-><init>(Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;II)V

    invoke-direct {p0, v0, v1}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;->retryIo(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1

    .line 143
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "read length must be in 1..65525"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static final readRegister$lambda$7(Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;II)[B
    .locals 3

    .line 148
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;->selectRegisterOnce(I)V

    .line 149
    iget-object v0, p0, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;->transport:Lcom/shilapi/xcertplay/transport/I2cTransport;

    iget p0, p0, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;->address7Bit:I

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-interface {v0, p0, v1, p2}, Lcom/shilapi/xcertplay/transport/I2cTransport;->transaction(I[BI)[B

    move-result-object p0

    .line 150
    array-length v0, p0

    if-ne v0, p2, :cond_0

    .line 155
    array-length p1, p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const-string p1, "copyOf(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 151
    :cond_0
    new-instance v0, Lcom/shilapi/xcertplay/mfi/MfiInvalidDataException;

    const/16 v1, 0x10

    .line 152
    invoke-static {v1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "toString(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Register 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " returned "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes; expected "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    const/4 p2, 0x0

    .line 151
    invoke-direct {v0, p0, p2, p1, p2}, Lcom/shilapi/xcertplay/mfi/MfiInvalidDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method private final readUnsignedBigEndianShort(I)I
    .locals 2

    const/4 v0, 0x2

    .line 131
    invoke-direct {p0, p1, v0}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;->readRegister(II)[B

    move-result-object p1

    const/4 v0, 0x0

    .line 132
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    return p1
.end method

.method private final retryIo(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    const-wide/16 v0, 0x7d0

    .line 185
    invoke-direct {p0, v0, v1}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;->deadlineAfter(J)J

    move-result-wide v0

    .line 189
    :goto_0
    :try_start_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/shilapi/xcertplay/transport/I2cTransportException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 193
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    const-wide/16 v2, 0x4e20

    .line 194
    invoke-direct {p0, v2, v3}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;->sleepMicros(J)V

    goto :goto_0

    .line 193
    :cond_0
    check-cast p1, Ljava/lang/Throwable;

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private final selectRegister(I)V
    .locals 3

    const/16 v0, 0x10

    .line 160
    invoke-static {v0}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    const/16 v2, 0x30

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "register select 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient$$ExternalSyntheticLambda2;-><init>(Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;I)V

    invoke-direct {p0, v0, v1}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;->retryIo(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    return-void
.end method

.method private static final selectRegister$lambda$8(Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;I)Lkotlin/Unit;
    .locals 0

    .line 161
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;->selectRegisterOnce(I)V

    .line 162
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final selectRegisterOnce(I)V
    .locals 6

    .line 166
    iget-object v0, p0, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;->transport:Lcom/shilapi/xcertplay/transport/I2cTransport;

    iget v1, p0, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;->address7Bit:I

    int-to-byte v2, p1

    const/4 v3, 0x1

    new-array v4, v3, [B

    const/4 v5, 0x0

    aput-byte v2, v4, v5

    invoke-interface {v0, v1, v4, v5}, Lcom/shilapi/xcertplay/transport/I2cTransport;->transaction(I[BI)[B

    move-result-object v0

    .line 167
    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    return-void

    .line 168
    :cond_1
    new-instance v0, Lcom/shilapi/xcertplay/mfi/MfiInvalidDataException;

    const/16 v1, 0x10

    invoke-static {v1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "toString(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Register select 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " returned data"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1, v2}, Lcom/shilapi/xcertplay/mfi/MfiInvalidDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method private final sleepMicros(J)V
    .locals 4

    const-wide/16 v0, 0x3e8

    .line 206
    :try_start_0
    div-long v2, p1, v0

    rem-long/2addr p1, v0

    mul-long p1, p1, v0

    long-to-int p2, p1

    invoke-static {v2, v3, p2}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 208
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 209
    new-instance p2, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationFailedException;

    const/4 v0, 0x0

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p2, v0, p1}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationFailedException;-><init>(Ljava/lang/Integer;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private final sleepMillis(J)V
    .locals 1

    .line 215
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 217
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 218
    new-instance p2, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationFailedException;

    const/4 v0, 0x0

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p2, v0, p1}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationFailedException;-><init>(Ljava/lang/Integer;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private final writeRegister(I[B)V
    .locals 8

    .line 173
    array-length v0, p2

    add-int/lit8 v0, v0, 0x1

    new-array v2, v0, [B

    const/4 v0, 0x0

    int-to-byte v1, p1

    .line 174
    aput-byte v1, v2, v0

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    .line 175
    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    const/16 p2, 0x10

    .line 176
    invoke-static {p2}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "toString(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/16 v1, 0x30

    invoke-static {p2, v0, v1}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "write at 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v2, p1}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient$$ExternalSyntheticLambda1;-><init>(Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;[BI)V

    invoke-direct {p0, p2, v0}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;->retryIo(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    return-void
.end method

.method private static final writeRegister$lambda$9(Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;[BI)Lkotlin/Unit;
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;->transport:Lcom/shilapi/xcertplay/transport/I2cTransport;

    iget p0, p0, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;->address7Bit:I

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1}, Lcom/shilapi/xcertplay/transport/I2cTransport;->transaction(I[BI)[B

    move-result-object p0

    .line 178
    array-length p0, p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    .line 181
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 179
    :cond_1
    new-instance p0, Lcom/shilapi/xcertplay/mfi/MfiInvalidDataException;

    const/16 p1, 0x10

    invoke-static {p1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "toString(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Write to register 0x"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " returned data"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, v0}, Lcom/shilapi/xcertplay/mfi/MfiInvalidDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0
.end method

.method private final writeUnsignedBigEndianShort(II)V
    .locals 3

    if-ltz p2, :cond_0

    const/high16 v0, 0x10000

    if-ge p2, v0, :cond_0

    ushr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    int-to-byte p2, p2

    const/4 v1, 0x2

    .line 137
    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    const/4 v0, 0x1

    aput-byte p2, v1, v0

    invoke-direct {p0, p1, v1}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;->writeRegister(I[B)V

    return-void

    .line 136
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "value must be in 0..65535"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public baaCertificates()Lcom/shilapi/xcertplay/mfi/BaaCertificatePair;
    .locals 1

    .line 44
    invoke-static {p0}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticator$-CC;->$default$baaCertificates(Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;)Lcom/shilapi/xcertplay/mfi/BaaCertificatePair;

    move-result-object v0

    return-object v0
.end method

.method public final getAddress7Bit()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;->address7Bit:I

    return v0
.end method

.method public getCertificateType()Lcom/shilapi/xcertplay/mfi/MfiCertificateType;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;->certificateType:Lcom/shilapi/xcertplay/mfi/MfiCertificateType;

    return-object v0
.end method

.method public protocolMajor()I
    .locals 2

    .line 55
    sget-object v0, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;->COPROCESSOR_LOCK:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    .line 56
    :try_start_0
    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;->readByte(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public readCertificate(I)[B
    .locals 11

    const-string v0, "Certificate length "

    .line 62
    sget-object v1, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;->COPROCESSOR_LOCK:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    if-gt v2, p1, :cond_2

    const v3, 0xfff6

    if-ge p1, v3, :cond_2

    const/16 v3, 0x30

    .line 66
    :try_start_0
    invoke-direct {p0, v3}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;->readUnsignedBigEndianShort(I)I

    move-result v3

    if-gt v2, v3, :cond_1

    if-gt v3, p1, :cond_1

    .line 72
    new-array v5, v3, [B

    const/4 p1, 0x0

    const/16 v0, 0x31

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_0

    const/16 p1, 0x80

    sub-int v2, v3, v6

    .line 76
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 77
    invoke-direct {p0, v0, p1}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;->readRegister(II)[B

    move-result-object v4

    const/16 v9, 0xc

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v6, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_0
    monitor-exit v1

    return-object v5

    .line 68
    :cond_1
    :try_start_1
    new-instance v2, Lcom/shilapi/xcertplay/mfi/MfiInvalidDataException;

    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is outside 1.."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v3, 0x0

    .line 68
    invoke-direct {v2, p1, v3, v0, v3}, Lcom/shilapi/xcertplay/mfi/MfiInvalidDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v2

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 64
    :cond_2
    const-string p1, "maximumOutputLength must be in 1..65525"

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    :goto_1
    monitor-exit v1

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public signChallenge([B)[B
    .locals 11

    const-string v0, "challenge"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    sget-object v0, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;->COPROCESSOR_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    :try_start_0
    array-length v1, p1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gt v3, v1, :cond_3

    const/16 v5, 0x81

    if-ge v1, v5, :cond_3

    .line 96
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const-string v1, "copyOf(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    array-length v1, p1

    const/16 v5, 0x20

    invoke-direct {p0, v5, v1}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;->writeUnsignedBigEndianShort(II)V

    const/16 v1, 0x21

    .line 98
    invoke-direct {p0, v1, p1}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;->writeRegister(I[B)V

    .line 99
    new-array p1, v3, [B

    const/4 v1, 0x0

    aput-byte v3, p1, v1

    const/16 v1, 0x10

    invoke-direct {p0, v1, p1}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;->writeRegister(I[B)V

    const-wide/16 v5, 0xa

    .line 101
    invoke-direct {p0, v5, v6}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;->sleepMillis(J)V

    const-wide/16 v7, 0xbb8

    .line 102
    invoke-direct {p0, v7, v8}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;->deadlineAfter(J)J

    move-result-wide v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :goto_0
    :try_start_1
    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;->readByte(I)I

    move-result p1
    :try_end_1
    .catch Lcom/shilapi/xcertplay/transport/I2cTransportException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v1, :cond_1

    const/16 p1, 0x11

    .line 115
    :try_start_2
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;->readUnsignedBigEndianShort(I)I

    move-result p1

    if-gt v3, p1, :cond_0

    const v1, 0xfff6

    if-ge p1, v1, :cond_0

    const/16 v1, 0x12

    .line 119
    invoke-direct {p0, v1, p1}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;->readRegister(II)[B

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    monitor-exit v0

    return-object p1

    .line 117
    :cond_0
    :try_start_3
    new-instance v1, Lcom/shilapi/xcertplay/mfi/MfiInvalidDataException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid signature length "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v4, v2, v4}, Lcom/shilapi/xcertplay/mfi/MfiInvalidDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1

    .line 109
    :catch_0
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    cmp-long p1, v9, v7

    if-gez p1, :cond_2

    .line 112
    invoke-direct {p0, v5, v6}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;->sleepMillis(J)V

    goto :goto_0

    .line 110
    :cond_2
    new-instance p1, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationFailedException;

    invoke-direct {p0}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;->bestEffortErrorCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, v1, v4, v2, v4}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationFailedException;-><init>(Ljava/lang/Integer;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1

    .line 92
    :cond_3
    new-instance p1, Lcom/shilapi/xcertplay/mfi/MfiInvalidDataException;

    .line 93
    const-string v1, "challenge must be 1..128 bytes"

    .line 92
    invoke-direct {p1, v1, v4, v2, v4}, Lcom/shilapi/xcertplay/mfi/MfiInvalidDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    .line 90
    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
