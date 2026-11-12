.class public final Lcom/shilapi/xcertplay/transport/Iap2CsmChannel$Companion;
.super Ljava/lang/Object;
.source "Iap2CsmChannel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/Iap2CsmChannel$Companion;",
        "",
        "<init>",
        "()V",
        "MAX_PENDING_FRAMES",
        "",
        "MAX_PENDING_FRAME_BYTES",
        "NANOS_PER_MILLISECOND",
        "",
        "MAX_TIMEOUT_MILLIS",
        "DEFAULT_SEND_TIMEOUT_MILLIS",
        "open",
        "Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;",
        "underlying",
        "Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;",
        "openWireless",
        "openTunnel",
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
.method private constructor <init>()V
    .locals 0

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final open(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;)Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;
    .locals 2

    const-string/jumbo v0, "underlying"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    new-instance v0, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;

    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->Companion:Lcom/shilapi/xcertplay/transport/Iap2LinkChannel$Companion;

    invoke-virtual {v1, p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel$Companion;->open(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;)Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;-><init>(Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final openTunnel(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;)Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;
    .locals 2

    const-string/jumbo v0, "underlying"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    new-instance v0, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;

    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->Companion:Lcom/shilapi/xcertplay/transport/Iap2LinkChannel$Companion;

    invoke-virtual {v1, p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel$Companion;->openTunnel(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;)Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;-><init>(Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final openWireless(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;)Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;
    .locals 2

    const-string/jumbo v0, "underlying"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    new-instance v0, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;

    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->Companion:Lcom/shilapi/xcertplay/transport/Iap2LinkChannel$Companion;

    invoke-virtual {v1, p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel$Companion;->openWireless(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;)Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;-><init>(Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
