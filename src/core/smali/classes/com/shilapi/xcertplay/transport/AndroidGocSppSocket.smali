.class final Lcom/shilapi/xcertplay/transport/AndroidGocSppSocket;
.super Ljava/lang/Object;
.source "GocSppTransport.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/transport/GocSppSocket;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u000fH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u00020\u000b8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/AndroidGocSppSocket;",
        "Lcom/shilapi/xcertplay/transport/GocSppSocket;",
        "<init>",
        "()V",
        "socket",
        "Landroid/net/LocalSocket;",
        "inputStream",
        "Ljava/io/InputStream;",
        "getInputStream",
        "()Ljava/io/InputStream;",
        "outputStream",
        "Ljava/io/OutputStream;",
        "getOutputStream",
        "()Ljava/io/OutputStream;",
        "connectReserved",
        "",
        "socketName",
        "",
        "setReadTimeout",
        "timeoutMillis",
        "",
        "close",
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
.field private final socket:Landroid/net/LocalSocket;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 218
    new-instance v0, Landroid/net/LocalSocket;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/net/LocalSocket;-><init>(I)V

    goto :goto_0

    .line 220
    :cond_0
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    .line 217
    :goto_0
    iput-object v0, p0, Lcom/shilapi/xcertplay/transport/AndroidGocSppSocket;->socket:Landroid/net/LocalSocket;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/AndroidGocSppSocket;->socket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V

    return-void
.end method

.method public connectReserved(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "socketName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/AndroidGocSppSocket;->socket:Landroid/net/LocalSocket;

    new-instance v1, Landroid/net/LocalSocketAddress;

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v1, p1, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/AndroidGocSppSocket;->socket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const-string v1, "getInputStream(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/AndroidGocSppSocket;->socket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    const-string v1, "getOutputStream(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public setReadTimeout(I)V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/AndroidGocSppSocket;->socket:Landroid/net/LocalSocket;

    invoke-virtual {v0, p1}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    return-void
.end method
