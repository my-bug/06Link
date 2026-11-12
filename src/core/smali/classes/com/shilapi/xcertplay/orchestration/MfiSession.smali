.class public final Lcom/shilapi/xcertplay/orchestration/MfiSession;
.super Ljava/lang/Object;
.source "MfiRuntime.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0008\u0010\t\u001a\u00020\nH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/orchestration/MfiSession;",
        "Ljava/io/Closeable;",
        "client",
        "Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;",
        "closeable",
        "<init>",
        "(Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;Ljava/io/Closeable;)V",
        "getClient",
        "()Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;",
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


# instance fields
.field private final client:Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;

.field private final closeable:Ljava/io/Closeable;


# direct methods
.method public constructor <init>(Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;Ljava/io/Closeable;)V
    .locals 1

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/shilapi/xcertplay/orchestration/MfiSession;->client:Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;

    .line 18
    iput-object p2, p0, Lcom/shilapi/xcertplay/orchestration/MfiSession;->closeable:Ljava/io/Closeable;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/MfiSession;->closeable:Ljava/io/Closeable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    :cond_0
    return-void
.end method

.method public final getClient()Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/MfiSession;->client:Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;

    return-object v0
.end method
