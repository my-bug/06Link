.class public final Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery;
.super Ljava/lang/Object;
.source "Sdp.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/usbbt/L2capService;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0014\u0010\u0004\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0014\u0010\n\u001a\u00020\u000b2\n\u0010\u000c\u001a\u00060\rR\u00020\u000eH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0004\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery;",
        "Lcom/shilapi/xcertplay/usbbt/L2capService;",
        "uuid",
        "Ljava/util/UUID;",
        "onResult",
        "Lkotlin/Function1;",
        "",
        "",
        "<init>",
        "(Ljava/util/UUID;Lkotlin/jvm/functions/Function1;)V",
        "open",
        "Lcom/shilapi/xcertplay/usbbt/L2capChannelHandler;",
        "channel",
        "Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;",
        "Lcom/shilapi/xcertplay/usbbt/L2capLayer;",
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
.field private final onResult:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "uuid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onResult"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    iput-object p1, p0, Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery;->uuid:Ljava/util/UUID;

    .line 425
    iput-object p2, p0, Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery;->onResult:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic access$getOnResult$p(Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 423
    iget-object p0, p0, Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery;->onResult:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$getUuid$p(Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery;)Ljava/util/UUID;
    .locals 0

    .line 423
    iget-object p0, p0, Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery;->uuid:Ljava/util/UUID;

    return-object p0
.end method

.method public static final synthetic access$open$finish(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery;Ljava/lang/Integer;)V
    .locals 0

    .line 423
    invoke-static {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery;->open$finish(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery;Ljava/lang/Integer;)V

    return-void
.end method

.method private static final open$finish(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery;Ljava/lang/Integer;)V
    .locals 1

    .line 432
    iget-boolean v0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 433
    iput-boolean v0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 434
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->close()V

    .line 435
    iget-object p0, p2, Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery;->onResult:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public open(Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;)Lcom/shilapi/xcertplay/usbbt/L2capChannelHandler;
    .locals 11

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    new-instance v4, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v0, 0x1

    iput v0, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 429
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 430
    new-instance v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 437
    sget-object v5, Lcom/shilapi/xcertplay/usbbt/SdpClient;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/SdpClient;

    iget v6, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v7, p0, Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery;->uuid:Ljava/util/UUID;

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lcom/shilapi/xcertplay/usbbt/SdpClient;->searchAttributeRequest$default(Lcom/shilapi/xcertplay/usbbt/SdpClient;ILjava/util/UUID;[BILjava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->write([B)V

    .line 438
    new-instance v1, Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery$open$1;

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery$open$1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/io/ByteArrayOutputStream;Lkotlin/jvm/internal/Ref$IntRef;Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery;Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;)V

    check-cast v1, Lcom/shilapi/xcertplay/usbbt/L2capChannelHandler;

    return-object v1
.end method
