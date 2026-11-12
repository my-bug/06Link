.class public final Lcom/shilapi/xcertplay/transport/LinuxI2cTransport$Companion;
.super Ljava/lang/Object;
.source "LinuxI2cTransport.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/transport/LinuxI2cTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u001d\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0000\u00a2\u0006\u0002\u0008\u000eJ \u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0005H\u0002J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/LinuxI2cTransport$Companion;",
        "",
        "<init>",
        "()V",
        "MAX_MESSAGE_LENGTH",
        "",
        "I2C_DEVICE_PATH",
        "Lkotlin/text/Regex;",
        "open",
        "Lcom/shilapi/xcertplay/transport/LinuxI2cTransport;",
        "devicePath",
        "",
        "bridge",
        "Lcom/shilapi/xcertplay/transport/LinuxI2cBridge;",
        "open$shared_release",
        "validateTransaction",
        "",
        "address7Bit",
        "writeData",
        "",
        "readLength",
        "mapNativeError",
        "Lcom/shilapi/xcertplay/transport/I2cTransportException;",
        "error",
        "Lcom/shilapi/xcertplay/transport/LinuxI2cNativeException;",
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

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/LinuxI2cTransport$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$mapNativeError(Lcom/shilapi/xcertplay/transport/LinuxI2cTransport$Companion;Lcom/shilapi/xcertplay/transport/LinuxI2cNativeException;)Lcom/shilapi/xcertplay/transport/I2cTransportException;
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/LinuxI2cTransport$Companion;->mapNativeError(Lcom/shilapi/xcertplay/transport/LinuxI2cNativeException;)Lcom/shilapi/xcertplay/transport/I2cTransportException;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$validateTransaction(Lcom/shilapi/xcertplay/transport/LinuxI2cTransport$Companion;I[BI)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/transport/LinuxI2cTransport$Companion;->validateTransaction(I[BI)V

    return-void
.end method

.method private final mapNativeError(Lcom/shilapi/xcertplay/transport/LinuxI2cNativeException;)Lcom/shilapi/xcertplay/transport/I2cTransportException;
    .locals 2

    .line 95
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/LinuxI2cNativeException;->getErrnoCode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x6

    if-eq v0, v1, :cond_5

    const/16 v1, 0x9

    if-eq v0, v1, :cond_5

    const/16 v1, 0xd

    if-eq v0, v1, :cond_7

    const/16 v1, 0x10

    if-eq v0, v1, :cond_5

    const/16 v1, 0x13

    if-eq v0, v1, :cond_5

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_3

    const/16 v1, 0x79

    if-eq v0, v1, :cond_1

    .line 103
    new-instance v0, Lcom/shilapi/xcertplay/transport/I2cTransportException$Protocol;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/LinuxI2cNativeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "I2C native operation failed"

    :cond_0
    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, v1, p1}, Lcom/shilapi/xcertplay/transport/I2cTransportException$Protocol;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Lcom/shilapi/xcertplay/transport/I2cTransportException;

    return-object v0

    .line 98
    :cond_1
    new-instance v0, Lcom/shilapi/xcertplay/transport/I2cTransportException$Nack;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/LinuxI2cNativeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "I2C remote NACK"

    :cond_2
    invoke-direct {v0, p1}, Lcom/shilapi/xcertplay/transport/I2cTransportException$Nack;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/shilapi/xcertplay/transport/I2cTransportException;

    return-object v0

    .line 97
    :cond_3
    new-instance v0, Lcom/shilapi/xcertplay/transport/I2cTransportException$TimedOut;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/LinuxI2cNativeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v1, "I2C transaction timed out"

    :cond_4
    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, v1, p1}, Lcom/shilapi/xcertplay/transport/I2cTransportException$TimedOut;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Lcom/shilapi/xcertplay/transport/I2cTransportException;

    return-object v0

    .line 99
    :cond_5
    new-instance v0, Lcom/shilapi/xcertplay/transport/I2cTransportException$DeviceUnavailable;

    .line 100
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/LinuxI2cNativeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    const-string v1, "I2C device unavailable"

    .line 101
    :cond_6
    check-cast p1, Ljava/lang/Throwable;

    .line 99
    invoke-direct {v0, v1, p1}, Lcom/shilapi/xcertplay/transport/I2cTransportException$DeviceUnavailable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Lcom/shilapi/xcertplay/transport/I2cTransportException;

    return-object v0

    .line 96
    :cond_7
    new-instance v0, Lcom/shilapi/xcertplay/transport/I2cTransportException$PermissionDenied;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/LinuxI2cNativeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    const-string p1, "I2C permission denied"

    :cond_8
    invoke-direct {v0, p1}, Lcom/shilapi/xcertplay/transport/I2cTransportException$PermissionDenied;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/shilapi/xcertplay/transport/I2cTransportException;

    return-object v0
.end method

.method private final validateTransaction(I[BI)V
    .locals 1

    if-ltz p1, :cond_3

    const/16 v0, 0x80

    if-ge p1, v0, :cond_3

    if-ltz p3, :cond_2

    const/high16 p1, 0x10000

    if-ge p3, p1, :cond_2

    .line 84
    array-length p1, p2

    const v0, 0xffff

    if-gt p1, v0, :cond_2

    .line 89
    array-length p1, p2

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    return-void

    .line 90
    :cond_0
    new-instance p1, Lcom/shilapi/xcertplay/transport/I2cTransportException$InvalidRequest;

    const-string p2, "I2C transaction must read or write data"

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/transport/I2cTransportException$InvalidRequest;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void

    .line 85
    :cond_2
    new-instance p1, Lcom/shilapi/xcertplay/transport/I2cTransportException$InvalidRequest;

    .line 86
    const-string p2, "I2C message length must be at most 65535 bytes"

    .line 85
    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/transport/I2cTransportException$InvalidRequest;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_3
    new-instance p2, Lcom/shilapi/xcertplay/transport/I2cTransportException$InvalidRequest;

    const/16 p3, 0x10

    .line 81
    invoke-static {p3}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result p3

    invoke-static {p1, p3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p3, "toString(...)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "I2C address must be 7-bit: 0x"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 80
    invoke-direct {p2, p1}, Lcom/shilapi/xcertplay/transport/I2cTransportException$InvalidRequest;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public final open(Ljava/lang/String;)Lcom/shilapi/xcertplay/transport/LinuxI2cTransport;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shilapi/xcertplay/transport/I2cTransportException;
        }
    .end annotation

    const-string v0, "devicePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    sget-object v0, Lcom/shilapi/xcertplay/transport/NativeLinuxI2cBridge;->INSTANCE:Lcom/shilapi/xcertplay/transport/NativeLinuxI2cBridge;

    check-cast v0, Lcom/shilapi/xcertplay/transport/LinuxI2cBridge;

    invoke-virtual {p0, p1, v0}, Lcom/shilapi/xcertplay/transport/LinuxI2cTransport$Companion;->open$shared_release(Ljava/lang/String;Lcom/shilapi/xcertplay/transport/LinuxI2cBridge;)Lcom/shilapi/xcertplay/transport/LinuxI2cTransport;

    move-result-object p1

    return-object p1
.end method

.method public final open$shared_release(Ljava/lang/String;Lcom/shilapi/xcertplay/transport/LinuxI2cBridge;)Lcom/shilapi/xcertplay/transport/LinuxI2cTransport;
    .locals 2

    const-string v0, "devicePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bridge"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    # getter for: Lcom/shilapi/xcertplay/transport/LinuxI2cTransport;->I2C_DEVICE_PATH:Lkotlin/text/Regex;
    invoke-static {}, Lcom/shilapi/xcertplay/transport/LinuxI2cTransport;->access$getI2C_DEVICE_PATH$cp()Lkotlin/text/Regex;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    :try_start_0
    new-instance v0, Lcom/shilapi/xcertplay/transport/LinuxI2cTransport;

    invoke-interface {p2, p1}, Lcom/shilapi/xcertplay/transport/LinuxI2cBridge;->open(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lcom/shilapi/xcertplay/transport/LinuxI2cTransport;-><init>(Lcom/shilapi/xcertplay/transport/LinuxI2cBridge;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_0
    .catch Lcom/shilapi/xcertplay/transport/LinuxI2cNativeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 74
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/LinuxI2cTransport$Companion;->mapNativeError(Lcom/shilapi/xcertplay/transport/LinuxI2cNativeException;)Lcom/shilapi/xcertplay/transport/I2cTransportException;

    move-result-object p1

    throw p1

    .line 66
    :cond_0
    new-instance p2, Lcom/shilapi/xcertplay/transport/I2cTransportException$InvalidRequest;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "I2C device path must be /dev/i2c-N: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-direct {p2, p1}, Lcom/shilapi/xcertplay/transport/I2cTransportException$InvalidRequest;-><init>(Ljava/lang/String;)V

    throw p2
.end method
