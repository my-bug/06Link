.class public interface abstract Lcom/shilapi/xcertplay/transport/LinuxI2cBridge;
.super Ljava/lang/Object;
.source "LinuxI2cTransport.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\u0008`\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J(\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0003H&J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0008\u001a\u00020\u0003H&\u00a8\u0006\u000e\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/LinuxI2cBridge;",
        "",
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


# virtual methods
.method public abstract close(I)V
.end method

.method public abstract open(Ljava/lang/String;)I
.end method

.method public abstract transaction(II[BI)[B
.end method
