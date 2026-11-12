.class public final Lcom/shilapi/xcertplay/mfi/RemoteMfiHttpException;
.super Lcom/shilapi/xcertplay/mfi/MfiException;
.source "RemoteMfiAuthenticationClient.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/mfi/RemoteMfiHttpException;",
        "Lcom/shilapi/xcertplay/mfi/MfiException;",
        "statusCode",
        "",
        "detail",
        "",
        "<init>",
        "(ILjava/lang/String;)V",
        "getStatusCode",
        "()I",
        "getDetail",
        "()Ljava/lang/String;",
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
.field private final detail:Ljava/lang/String;

.field private final statusCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 3

    const-string v0, "detail"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Remote MFI request failed with HTTP "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, v1}, Lcom/shilapi/xcertplay/mfi/MfiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 298
    iput p1, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiHttpException;->statusCode:I

    .line 299
    iput-object p2, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiHttpException;->detail:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDetail()Ljava/lang/String;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiHttpException;->detail:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatusCode()I
    .locals 1

    .line 298
    iget v0, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiHttpException;->statusCode:I

    return v0
.end method
