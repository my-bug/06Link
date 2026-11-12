.class public final Lcom/shilapi/xcertplay/airplay/MicrophoneCounters;
.super Ljava/lang/Object;
.source "MicrophonePacketizer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\r\u0018\u00002\u00020\u0001B%\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\n\"\u0004\u0008\u000e\u0010\u000cR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/MicrophoneCounters;",
        "",
        "sequence",
        "",
        "timestamp",
        "nonce",
        "",
        "<init>",
        "(IIJ)V",
        "getSequence",
        "()I",
        "setSequence",
        "(I)V",
        "getTimestamp",
        "setTimestamp",
        "getNonce",
        "()J",
        "setNonce",
        "(J)V",
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
.field private nonce:J

.field private sequence:I

.field private timestamp:I


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/shilapi/xcertplay/airplay/MicrophoneCounters;-><init>(IIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIJ)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneCounters;->sequence:I

    .line 40
    iput p2, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneCounters;->timestamp:I

    .line 41
    iput-wide p3, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneCounters;->nonce:J

    return-void
.end method

.method public synthetic constructor <init>(IIJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    const-wide/16 p3, 0x0

    .line 38
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/airplay/MicrophoneCounters;-><init>(IIJ)V

    return-void
.end method


# virtual methods
.method public final getNonce()J
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneCounters;->nonce:J

    return-wide v0
.end method

.method public final getSequence()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneCounters;->sequence:I

    return v0
.end method

.method public final getTimestamp()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneCounters;->timestamp:I

    return v0
.end method

.method public final setNonce(J)V
    .locals 0

    .line 41
    iput-wide p1, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneCounters;->nonce:J

    return-void
.end method

.method public final setSequence(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneCounters;->sequence:I

    return-void
.end method

.method public final setTimestamp(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneCounters;->timestamp:I

    return-void
.end method
