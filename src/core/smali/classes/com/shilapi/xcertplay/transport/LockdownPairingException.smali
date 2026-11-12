.class public abstract Lcom/shilapi/xcertplay/transport/LockdownPairingException;
.super Ljava/io/IOException;
.source "LockdownPairingClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/transport/LockdownPairingException$Cancelled;,
        Lcom/shilapi/xcertplay/transport/LockdownPairingException$InvalidResponse;,
        Lcom/shilapi/xcertplay/transport/LockdownPairingException$PasswordProtected;,
        Lcom/shilapi/xcertplay/transport/LockdownPairingException$RemoteError;,
        Lcom/shilapi/xcertplay/transport/LockdownPairingException$TimedOut;,
        Lcom/shilapi/xcertplay/transport/LockdownPairingException$UserDeniedPairing;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0006\u0006\u0007\u0008\t\n\u000bB\u0011\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u0082\u0001\u0006\u000c\r\u000e\u000f\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/LockdownPairingException;",
        "Ljava/io/IOException;",
        "message",
        "",
        "<init>",
        "(Ljava/lang/String;)V",
        "Cancelled",
        "TimedOut",
        "UserDeniedPairing",
        "PasswordProtected",
        "RemoteError",
        "InvalidResponse",
        "Lcom/shilapi/xcertplay/transport/LockdownPairingException$Cancelled;",
        "Lcom/shilapi/xcertplay/transport/LockdownPairingException$InvalidResponse;",
        "Lcom/shilapi/xcertplay/transport/LockdownPairingException$PasswordProtected;",
        "Lcom/shilapi/xcertplay/transport/LockdownPairingException$RemoteError;",
        "Lcom/shilapi/xcertplay/transport/LockdownPairingException$TimedOut;",
        "Lcom/shilapi/xcertplay/transport/LockdownPairingException$UserDeniedPairing;",
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
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 282
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/LockdownPairingException;-><init>(Ljava/lang/String;)V

    return-void
.end method
