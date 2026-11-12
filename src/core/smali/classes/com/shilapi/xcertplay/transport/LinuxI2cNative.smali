.class final Lcom/shilapi/xcertplay/transport/LinuxI2cNative;
.super Ljava/lang/Object;
.source "LinuxI2cTransport.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0011\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0086 J)\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u0005H\u0086 J\u0011\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u0005H\u0086 \u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/LinuxI2cNative;",
        "",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/transport/LinuxI2cNative;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/transport/LinuxI2cNative;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/transport/LinuxI2cNative;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/transport/LinuxI2cNative;->INSTANCE:Lcom/shilapi/xcertplay/transport/LinuxI2cNative;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final native close(I)V
.end method

.method public final native open(Ljava/lang/String;)I
.end method

.method public final native transaction(II[BI)[B
.end method
