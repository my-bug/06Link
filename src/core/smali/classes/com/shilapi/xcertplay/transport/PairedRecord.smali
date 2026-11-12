.class public final Lcom/shilapi/xcertplay/transport/PairedRecord;
.super Ljava/lang/Object;
.source "LockdownPairingClient.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u001b\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0008\u0010\r\u001a\u00020\u000eH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0010\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/PairedRecord;",
        "",
        "pairRecord",
        "Lcom/shilapi/xcertplay/transport/LockdownPairRecord;",
        "escrowBag",
        "",
        "<init>",
        "(Lcom/shilapi/xcertplay/transport/LockdownPairRecord;[B)V",
        "getPairRecord",
        "()Lcom/shilapi/xcertplay/transport/LockdownPairRecord;",
        "storedEscrowBag",
        "getEscrowBag",
        "()[B",
        "toString",
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
.field private final pairRecord:Lcom/shilapi/xcertplay/transport/LockdownPairRecord;

.field private final storedEscrowBag:[B


# direct methods
.method public constructor <init>(Lcom/shilapi/xcertplay/transport/LockdownPairRecord;[B)V
    .locals 1

    const-string v0, "pairRecord"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/PairedRecord;->pairRecord:Lcom/shilapi/xcertplay/transport/LockdownPairRecord;

    if-eqz p2, :cond_0

    .line 260
    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const-string p2, "copyOf(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/PairedRecord;->storedEscrowBag:[B

    return-void
.end method


# virtual methods
.method public final getEscrowBag()[B
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/PairedRecord;->storedEscrowBag:[B

    if-eqz v0, :cond_0

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    const-string v1, "copyOf(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPairRecord()Lcom/shilapi/xcertplay/transport/LockdownPairRecord;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/PairedRecord;->pairRecord:Lcom/shilapi/xcertplay/transport/LockdownPairRecord;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 265
    const-string v0, "PairedRecord(redacted)"

    return-object v0
.end method
