.class public final Lcom/shilapi/xcertplay/transport/LinuxI2cTransport;
.super Ljava/lang/Object;
.source "LinuxI2cTransport.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/transport/I2cTransport;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/transport/LinuxI2cTransport$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00152\u00020\u00012\u00020\u0002:\u0001\u0015B\u0019\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J \u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0006H\u0016J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0013H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/LinuxI2cTransport;",
        "Lcom/shilapi/xcertplay/transport/I2cTransport;",
        "Ljava/io/Closeable;",
        "bridge",
        "Lcom/shilapi/xcertplay/transport/LinuxI2cBridge;",
        "handle",
        "",
        "<init>",
        "(Lcom/shilapi/xcertplay/transport/LinuxI2cBridge;I)V",
        "lock",
        "",
        "closed",
        "",
        "transaction",
        "",
        "address7Bit",
        "writeData",
        "readLength",
        "close",
        "",
        "checkOpen",
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
.field public static final Companion:Lcom/shilapi/xcertplay/transport/LinuxI2cTransport$Companion;

.field private static final I2C_DEVICE_PATH:Lkotlin/text/Regex;

.field private static final MAX_MESSAGE_LENGTH:I = 0xffff


# instance fields
.field private final bridge:Lcom/shilapi/xcertplay/transport/LinuxI2cBridge;

.field private closed:Z

.field private final handle:I

.field private final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/transport/LinuxI2cTransport$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/transport/LinuxI2cTransport$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/LinuxI2cTransport;->Companion:Lcom/shilapi/xcertplay/transport/LinuxI2cTransport$Companion;

    .line 58
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "/dev/i2c-[0-9]+"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/LinuxI2cTransport;->I2C_DEVICE_PATH:Lkotlin/text/Regex;

    return-void
.end method

.method private constructor <init>(Lcom/shilapi/xcertplay/transport/LinuxI2cBridge;I)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/LinuxI2cTransport;->bridge:Lcom/shilapi/xcertplay/transport/LinuxI2cBridge;

    .line 15
    iput p2, p0, Lcom/shilapi/xcertplay/transport/LinuxI2cTransport;->handle:I

    .line 17
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/LinuxI2cTransport;->lock:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/transport/LinuxI2cBridge;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/transport/LinuxI2cTransport;-><init>(Lcom/shilapi/xcertplay/transport/LinuxI2cBridge;I)V

    return-void
.end method

.method public static final synthetic access$getI2C_DEVICE_PATH$cp()Lkotlin/text/Regex;
    .locals 1

    .line 13
    sget-object v0, Lcom/shilapi/xcertplay/transport/LinuxI2cTransport;->I2C_DEVICE_PATH:Lkotlin/text/Regex;

    return-object v0
.end method

.method private final checkOpen()V
    .locals 4

    .line 51
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/transport/LinuxI2cTransport;->closed:Z

    if-nez v0, :cond_0

    return-void

    .line 52
    :cond_0
    new-instance v0, Lcom/shilapi/xcertplay/transport/I2cTransportException$DeviceUnavailable;

    const-string v1, "Linux I2C transport is closed"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/shilapi/xcertplay/transport/I2cTransportException$DeviceUnavailable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/LinuxI2cTransport;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 40
    :try_start_0
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/transport/LinuxI2cTransport;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 41
    :try_start_1
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/transport/LinuxI2cTransport;->closed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :try_start_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/LinuxI2cTransport;->bridge:Lcom/shilapi/xcertplay/transport/LinuxI2cBridge;

    iget v2, p0, Lcom/shilapi/xcertplay/transport/LinuxI2cTransport;->handle:I

    invoke-interface {v1, v2}, Lcom/shilapi/xcertplay/transport/LinuxI2cBridge;->close(I)V
    :try_end_2
    .catch Lcom/shilapi/xcertplay/transport/LinuxI2cNativeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    :try_start_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 39
    monitor-exit v0

    return-void

    :catch_0
    move-exception v1

    .line 45
    :try_start_4
    sget-object v2, Lcom/shilapi/xcertplay/transport/LinuxI2cTransport;->Companion:Lcom/shilapi/xcertplay/transport/LinuxI2cTransport$Companion;

    # invokes: Lcom/shilapi/xcertplay/transport/LinuxI2cTransport$Companion;->mapNativeError(Lcom/shilapi/xcertplay/transport/LinuxI2cNativeException;)Lcom/shilapi/xcertplay/transport/I2cTransportException;
    invoke-static {v2, v1}, Lcom/shilapi/xcertplay/transport/LinuxI2cTransport$Companion;->access$mapNativeError(Lcom/shilapi/xcertplay/transport/LinuxI2cTransport$Companion;Lcom/shilapi/xcertplay/transport/LinuxI2cNativeException;)Lcom/shilapi/xcertplay/transport/I2cTransportException;

    move-result-object v1

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v1

    .line 39
    monitor-exit v0

    throw v1
.end method

.method public transaction(I[BI)[B
    .locals 4

    const-string v0, "I2C backend returned "

    const-string/jumbo v1, "writeData"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/LinuxI2cTransport;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 22
    :try_start_0
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/LinuxI2cTransport;->checkOpen()V

    .line 23
    sget-object v2, Lcom/shilapi/xcertplay/transport/LinuxI2cTransport;->Companion:Lcom/shilapi/xcertplay/transport/LinuxI2cTransport$Companion;

    # invokes: Lcom/shilapi/xcertplay/transport/LinuxI2cTransport$Companion;->validateTransaction(I[BI)V
    invoke-static {v2, p1, p2, p3}, Lcom/shilapi/xcertplay/transport/LinuxI2cTransport$Companion;->access$validateTransaction(Lcom/shilapi/xcertplay/transport/LinuxI2cTransport$Companion;I[BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :try_start_1
    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/LinuxI2cTransport;->bridge:Lcom/shilapi/xcertplay/transport/LinuxI2cBridge;

    iget v3, p0, Lcom/shilapi/xcertplay/transport/LinuxI2cTransport;->handle:I

    invoke-interface {v2, v3, p1, p2, p3}, Lcom/shilapi/xcertplay/transport/LinuxI2cBridge;->transaction(II[BI)[B

    move-result-object p1

    .line 27
    array-length p2, p1
    :try_end_1
    .catch Lcom/shilapi/xcertplay/transport/LinuxI2cNativeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p2, p3, :cond_0

    .line 21
    monitor-exit v1

    return-object p1

    .line 28
    :cond_0
    :try_start_2
    new-instance p2, Lcom/shilapi/xcertplay/transport/I2cTransportException$Protocol;

    .line 29
    array-length p1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes, expected "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x2

    const/4 v0, 0x0

    .line 28
    invoke-direct {p2, p1, v0, p3, v0}, Lcom/shilapi/xcertplay/transport/I2cTransportException$Protocol;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p2
    :try_end_2
    .catch Lcom/shilapi/xcertplay/transport/LinuxI2cNativeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    move-exception p1

    .line 34
    :try_start_3
    sget-object p2, Lcom/shilapi/xcertplay/transport/LinuxI2cTransport;->Companion:Lcom/shilapi/xcertplay/transport/LinuxI2cTransport$Companion;

    # invokes: Lcom/shilapi/xcertplay/transport/LinuxI2cTransport$Companion;->mapNativeError(Lcom/shilapi/xcertplay/transport/LinuxI2cNativeException;)Lcom/shilapi/xcertplay/transport/I2cTransportException;
    invoke-static {p2, p1}, Lcom/shilapi/xcertplay/transport/LinuxI2cTransport$Companion;->access$mapNativeError(Lcom/shilapi/xcertplay/transport/LinuxI2cTransport$Companion;Lcom/shilapi/xcertplay/transport/LinuxI2cNativeException;)Lcom/shilapi/xcertplay/transport/I2cTransportException;

    move-result-object p1

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    .line 21
    monitor-exit v1

    throw p1
.end method
