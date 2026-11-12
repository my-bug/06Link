.class public final Lcom/shilapi/xcertplay/network/P2pResetRequiredException;
.super Ljava/io/IOException;
.source "P2pOwnership.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/P2pResetRequiredException;",
        "Ljava/io/IOException;",
        "<init>",
        "()V",
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
.method public constructor <init>()V
    .locals 1

    .line 20
    const-string v0, "An existing Wi-Fi Direct connection needs a reset"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method
