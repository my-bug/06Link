.class public final Lcom/shilapi/xcertplay/transport/LockdownPairingClientKt;
.super Ljava/lang/Object;
.source "LockdownPairingClient.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0000\u00a8\u0006\u0004"
    }
    d2 = {
        "lockdownTimeoutFailure",
        "Lcom/shilapi/xcertplay/transport/LockdownPairingException;",
        "lastWait",
        "Lcom/shilapi/xcertplay/transport/LockdownPairingWait;",
        "shared_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final lockdownTimeoutFailure(Lcom/shilapi/xcertplay/transport/LockdownPairingWait;)Lcom/shilapi/xcertplay/transport/LockdownPairingException;
    .locals 1

    .line 271
    sget-object v0, Lcom/shilapi/xcertplay/transport/LockdownPairingWait;->UNLOCK:Lcom/shilapi/xcertplay/transport/LockdownPairingWait;

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/shilapi/xcertplay/transport/LockdownPairingException$PasswordProtected;->INSTANCE:Lcom/shilapi/xcertplay/transport/LockdownPairingException$PasswordProtected;

    check-cast p0, Lcom/shilapi/xcertplay/transport/LockdownPairingException;

    return-object p0

    .line 272
    :cond_0
    sget-object p0, Lcom/shilapi/xcertplay/transport/LockdownPairingException$TimedOut;->INSTANCE:Lcom/shilapi/xcertplay/transport/LockdownPairingException$TimedOut;

    check-cast p0, Lcom/shilapi/xcertplay/transport/LockdownPairingException;

    return-object p0
.end method
