.class public final Lcom/shilapi/xcertplay/transport/LockdownPairingException$TimedOut;
.super Lcom/shilapi/xcertplay/transport/LockdownPairingException;
.source "LockdownPairingClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/transport/LockdownPairingException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimedOut"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\n\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0013\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u00d6\u0003J\t\u0010\u0008\u001a\u00020\tH\u00d6\u0001J\t\u0010\n\u001a\u00020\u000bH\u00d6\u0001\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/LockdownPairingException$TimedOut;",
        "Lcom/shilapi/xcertplay/transport/LockdownPairingException;",
        "<init>",
        "()V",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
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


# static fields
.field public static final INSTANCE:Lcom/shilapi/xcertplay/transport/LockdownPairingException$TimedOut;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/transport/LockdownPairingException$TimedOut;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/transport/LockdownPairingException$TimedOut;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/transport/LockdownPairingException$TimedOut;->INSTANCE:Lcom/shilapi/xcertplay/transport/LockdownPairingException$TimedOut;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 284
    const-string v0, "Lockdown pairing timed out"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/shilapi/xcertplay/transport/LockdownPairingException;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/transport/LockdownPairingException$TimedOut;

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/transport/LockdownPairingException$TimedOut;

    return v0
.end method

.method public hashCode()I
    .locals 1

    const v0, -0x72c5b9eb    # -5.7400033E-31f

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "TimedOut"

    return-object v0
.end method
