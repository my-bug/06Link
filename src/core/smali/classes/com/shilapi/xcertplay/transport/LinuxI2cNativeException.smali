.class public final Lcom/shilapi/xcertplay/transport/LinuxI2cNativeException;
.super Ljava/io/IOException;
.source "LinuxI2cTransport.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/LinuxI2cNativeException;",
        "Ljava/io/IOException;",
        "errnoCode",
        "",
        "message",
        "",
        "<init>",
        "(ILjava/lang/String;)V",
        "getErrnoCode",
        "()I",
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


# instance fields
.field private final errnoCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 115
    iput p1, p0, Lcom/shilapi/xcertplay/transport/LinuxI2cNativeException;->errnoCode:I

    return-void
.end method


# virtual methods
.method public final getErrnoCode()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/shilapi/xcertplay/transport/LinuxI2cNativeException;->errnoCode:I

    return v0
.end method
