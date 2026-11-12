.class final Lcom/shilapi/xcertplay/transport/NativeLinuxI2cBridge;
.super Ljava/lang/Object;
.source "LinuxI2cTransport.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/transport/LinuxI2cBridge;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J(\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u0005H\u0016J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u0005H\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/NativeLinuxI2cBridge;",
        "Lcom/shilapi/xcertplay/transport/LinuxI2cBridge;",
        "<init>",
        "()V",
        "open",
        "",
        "devicePath",
        "",
        "transaction",
        "",
        "handle",
        "address7Bit",
        "writeData",
        "readLength",
        "close",
        "",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/transport/NativeLinuxI2cBridge;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/transport/NativeLinuxI2cBridge;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/transport/NativeLinuxI2cBridge;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/transport/NativeLinuxI2cBridge;->INSTANCE:Lcom/shilapi/xcertplay/transport/NativeLinuxI2cBridge;

    .line 121
    const-string/jumbo v0, "xcertplay_i2c"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close(I)V
    .locals 1

    .line 133
    sget-object v0, Lcom/shilapi/xcertplay/transport/LinuxI2cNative;->INSTANCE:Lcom/shilapi/xcertplay/transport/LinuxI2cNative;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/transport/LinuxI2cNative;->close(I)V

    return-void
.end method

.method public open(Ljava/lang/String;)I
    .locals 1

    const-string v0, "devicePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    sget-object v0, Lcom/shilapi/xcertplay/transport/LinuxI2cNative;->INSTANCE:Lcom/shilapi/xcertplay/transport/LinuxI2cNative;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/transport/LinuxI2cNative;->open(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public transaction(II[BI)[B
    .locals 1

    const-string/jumbo v0, "writeData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    sget-object v0, Lcom/shilapi/xcertplay/transport/LinuxI2cNative;->INSTANCE:Lcom/shilapi/xcertplay/transport/LinuxI2cNative;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/transport/LinuxI2cNative;->transaction(II[BI)[B

    move-result-object p1

    return-object p1
.end method
