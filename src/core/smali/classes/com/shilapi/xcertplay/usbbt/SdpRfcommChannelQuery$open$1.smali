.class public final Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery$open$1;
.super Ljava/lang/Object;
.source "Sdp.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/usbbt/L2capChannelHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery;->open(Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;)Lcom/shilapi/xcertplay/usbbt/L2capChannelHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\n\u0010\u0004\u001a\u00060\u0005R\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0014\u0010\t\u001a\u00020\u00032\n\u0010\u0004\u001a\u00060\u0005R\u00020\u0006H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery$open$1",
        "Lcom/shilapi/xcertplay/usbbt/L2capChannelHandler;",
        "onData",
        "",
        "channel",
        "Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;",
        "Lcom/shilapi/xcertplay/usbbt/L2capLayer;",
        "payload",
        "",
        "onClosed",
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
.field final synthetic $answer:Ljava/io/ByteArrayOutputStream;

.field final synthetic $channel:Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;

.field final synthetic $done:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $tid:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic this$0:Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/io/ByteArrayOutputStream;Lkotlin/jvm/internal/Ref$IntRef;Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery;Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;)V
    .locals 0

    iput-object p1, p0, Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery$open$1;->$done:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery$open$1;->$answer:Ljava/io/ByteArrayOutputStream;

    iput-object p3, p0, Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery$open$1;->$tid:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p4, p0, Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery$open$1;->this$0:Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery;

    iput-object p5, p0, Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery$open$1;->$channel:Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;

    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;)V
    .locals 1

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 449
    iget-object p1, p0, Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery$open$1;->$done:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery$open$1;->$done:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object p1, p0, Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery$open$1;->this$0:Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery;

    # getter for: Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery;->onResult:Lkotlin/jvm/functions/Function1;
    invoke-static {p1}, Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery;->access$getOnResult$p(Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onData(Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;[B)V
    .locals 4

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payload"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery$open$1;->$done:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_0

    return-void

    .line 441
    :cond_0
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/SdpClient;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/SdpClient;

    invoke-virtual {v0, p2}, Lcom/shilapi/xcertplay/usbbt/SdpClient;->parseSearchAttributeResponse([B)Lkotlin/Pair;

    move-result-object p2

    if-nez p2, :cond_1

    iget-object p1, p0, Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery$open$1;->$done:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object p2, p0, Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery$open$1;->$channel:Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery$open$1;->this$0:Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery;

    const/4 v1, 0x0

    # invokes: Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery;->open$finish(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery;Ljava/lang/Integer;)V
    invoke-static {p1, p2, v0, v1}, Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery;->access$open$finish(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery;Ljava/lang/Integer;)V

    return-void

    :cond_1
    invoke-virtual {p2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    .line 442
    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery$open$1;->$answer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 443
    array-length v0, p2

    const/4 v1, 0x1

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery$open$1;->$tid:Lkotlin/jvm/internal/Ref$IntRef;

    iget v0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/16 v2, 0x10

    if-ge v0, v2, :cond_3

    .line 444
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/SdpClient;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/SdpClient;

    iget-object v2, p0, Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery$open$1;->$tid:Lkotlin/jvm/internal/Ref$IntRef;

    iget v3, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v3, v1

    iput v3, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery$open$1;->$tid:Lkotlin/jvm/internal/Ref$IntRef;

    iget v1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v2, p0, Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery$open$1;->this$0:Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery;

    # getter for: Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery;->uuid:Ljava/util/UUID;
    invoke-static {v2}, Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery;->access$getUuid$p(Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/shilapi/xcertplay/usbbt/SdpClient;->searchAttributeRequest(ILjava/util/UUID;[B)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->write([B)V

    return-void

    .line 446
    :cond_3
    iget-object p1, p0, Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery$open$1;->$done:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object p2, p0, Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery$open$1;->$channel:Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery$open$1;->this$0:Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery;

    sget-object v1, Lcom/shilapi/xcertplay/usbbt/SdpClient;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/SdpClient;

    iget-object v2, p0, Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery$open$1;->$answer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const-string/jumbo v3, "toByteArray(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/shilapi/xcertplay/usbbt/SdpClient;->rfcommChannel([B)Ljava/lang/Integer;

    move-result-object v1

    # invokes: Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery;->open$finish(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery;Ljava/lang/Integer;)V
    invoke-static {p1, p2, v0, v1}, Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery;->access$open$finish(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery;Ljava/lang/Integer;)V

    return-void
.end method
