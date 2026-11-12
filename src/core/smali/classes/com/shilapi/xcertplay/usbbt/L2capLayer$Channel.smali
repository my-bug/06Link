.class public final Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;
.super Ljava/lang/Object;
.source "L2cap.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/usbbt/L2capLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Channel"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nL2cap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 L2cap.kt\ncom/shilapi/xcertplay/usbbt/L2capLayer$Channel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,331:1\n1#2:332\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000e\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,J\u0006\u0010-\u001a\u00020*R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\nR$\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0003@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\n\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0014X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u0014X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0016\"\u0004\u0008\u001b\u0010\u0018R\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u001c\u0010\"\u001a\u0004\u0018\u00010#X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\u0011\u0010(\u001a\u00020\u00148F\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010\u0016\u00a8\u0006."
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;",
        "",
        "handle",
        "",
        "psm",
        "localCid",
        "remoteCid",
        "<init>",
        "(Lcom/shilapi/xcertplay/usbbt/L2capLayer;IIII)V",
        "getHandle",
        "()I",
        "getPsm",
        "getLocalCid",
        "getRemoteCid",
        "value",
        "remoteMtu",
        "getRemoteMtu",
        "setRemoteMtu$shared_release",
        "(I)V",
        "localConfigured",
        "",
        "getLocalConfigured$shared_release",
        "()Z",
        "setLocalConfigured$shared_release",
        "(Z)V",
        "remoteConfigured",
        "getRemoteConfigured$shared_release",
        "setRemoteConfigured$shared_release",
        "handler",
        "Lcom/shilapi/xcertplay/usbbt/L2capChannelHandler;",
        "getHandler$shared_release",
        "()Lcom/shilapi/xcertplay/usbbt/L2capChannelHandler;",
        "setHandler$shared_release",
        "(Lcom/shilapi/xcertplay/usbbt/L2capChannelHandler;)V",
        "service",
        "Lcom/shilapi/xcertplay/usbbt/L2capService;",
        "getService$shared_release",
        "()Lcom/shilapi/xcertplay/usbbt/L2capService;",
        "setService$shared_release",
        "(Lcom/shilapi/xcertplay/usbbt/L2capService;)V",
        "isOpen",
        "write",
        "",
        "payload",
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
.field private final handle:I

.field private handler:Lcom/shilapi/xcertplay/usbbt/L2capChannelHandler;

.field private final localCid:I

.field private localConfigured:Z

.field private final psm:I

.field private final remoteCid:I

.field private remoteConfigured:Z

.field private remoteMtu:I

.field private service:Lcom/shilapi/xcertplay/usbbt/L2capService;

.field final synthetic this$0:Lcom/shilapi/xcertplay/usbbt/L2capLayer;


# direct methods
.method public constructor <init>(Lcom/shilapi/xcertplay/usbbt/L2capLayer;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->this$0:Lcom/shilapi/xcertplay/usbbt/L2capLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->handle:I

    iput p3, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->psm:I

    iput p4, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->localCid:I

    iput p5, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->remoteCid:I

    const/16 p1, 0x2a0

    .line 24
    iput p1, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->remoteMtu:I

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 5

    .line 39
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->this$0:Lcom/shilapi/xcertplay/usbbt/L2capLayer;

    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->handle:I

    sget-object v2, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->Companion:Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;

    iget v3, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->remoteCid:I

    invoke-virtual {v2, v3}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->le16$shared_release(I)[B

    move-result-object v2

    sget-object v3, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->Companion:Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;

    iget v4, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->localCid:I

    invoke-virtual {v3, v4}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->le16$shared_release(I)[B

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v2

    const/4 v3, 0x6

    # invokes: Lcom/shilapi/xcertplay/usbbt/L2capLayer;->sendSignal(II[B)V
    invoke-static {v0, v1, v3, v2}, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->access$sendSignal(Lcom/shilapi/xcertplay/usbbt/L2capLayer;II[B)V

    return-void
.end method

.method public final getHandle()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->handle:I

    return v0
.end method

.method public final getHandler$shared_release()Lcom/shilapi/xcertplay/usbbt/L2capChannelHandler;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->handler:Lcom/shilapi/xcertplay/usbbt/L2capChannelHandler;

    return-object v0
.end method

.method public final getLocalCid()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->localCid:I

    return v0
.end method

.method public final getLocalConfigured$shared_release()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->localConfigured:Z

    return v0
.end method

.method public final getPsm()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->psm:I

    return v0
.end method

.method public final getRemoteCid()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->remoteCid:I

    return v0
.end method

.method public final getRemoteConfigured$shared_release()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->remoteConfigured:Z

    return v0
.end method

.method public final getRemoteMtu()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->remoteMtu:I

    return v0
.end method

.method public final getService$shared_release()Lcom/shilapi/xcertplay/usbbt/L2capService;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->service:Lcom/shilapi/xcertplay/usbbt/L2capService;

    return-object v0
.end method

.method public final isOpen()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->localConfigured:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->remoteConfigured:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final setHandler$shared_release(Lcom/shilapi/xcertplay/usbbt/L2capChannelHandler;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->handler:Lcom/shilapi/xcertplay/usbbt/L2capChannelHandler;

    return-void
.end method

.method public final setLocalConfigured$shared_release(Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->localConfigured:Z

    return-void
.end method

.method public final setRemoteConfigured$shared_release(Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->remoteConfigured:Z

    return-void
.end method

.method public final setRemoteMtu$shared_release(I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->remoteMtu:I

    return-void
.end method

.method public final setService$shared_release(Lcom/shilapi/xcertplay/usbbt/L2capService;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->service:Lcom/shilapi/xcertplay/usbbt/L2capService;

    return-void
.end method

.method public final write([B)V
    .locals 4

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    array-length v0, p1

    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->remoteMtu:I

    if-gt v0, v1, :cond_0

    .line 35
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->this$0:Lcom/shilapi/xcertplay/usbbt/L2capLayer;

    # getter for: Lcom/shilapi/xcertplay/usbbt/L2capLayer;->send:Lkotlin/jvm/functions/Function2;
    invoke-static {v0}, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->access$getSend$p(Lcom/shilapi/xcertplay/usbbt/L2capLayer;)Lkotlin/jvm/functions/Function2;

    move-result-object v0

    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->handle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->Companion:Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;

    iget v3, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->remoteCid:I

    invoke-virtual {v2, v3, p1}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->frame(I[B)[B

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "SDU larger than the peer\'s MTU"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
