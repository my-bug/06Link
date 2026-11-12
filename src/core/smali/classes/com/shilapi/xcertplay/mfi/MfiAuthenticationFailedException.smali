.class public final Lcom/shilapi/xcertplay/mfi/MfiAuthenticationFailedException;
.super Lcom/shilapi/xcertplay/mfi/MfiException;
.source "MfiAuthenticationClient.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u001d\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\n\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/mfi/MfiAuthenticationFailedException;",
        "Lcom/shilapi/xcertplay/mfi/MfiException;",
        "errorCode",
        "",
        "cause",
        "",
        "<init>",
        "(Ljava/lang/Integer;Ljava/lang/Throwable;)V",
        "getErrorCode",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
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
.field private final errorCode:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Throwable;)V
    .locals 3

    if-nez p1, :cond_0

    .line 260
    const-string v0, "MFi authentication failed (error code unavailable)"

    goto :goto_0

    .line 261
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MFi authentication failed with error 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 259
    invoke-direct {p0, v0, p2, v1}, Lcom/shilapi/xcertplay/mfi/MfiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 258
    iput-object p1, p0, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationFailedException;->errorCode:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Integer;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 258
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationFailedException;-><init>(Ljava/lang/Integer;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final getErrorCode()Ljava/lang/Integer;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationFailedException;->errorCode:Ljava/lang/Integer;

    return-object v0
.end method
