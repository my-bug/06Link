.class public final Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler;
.super Ljava/lang/Object;
.source "HciEvents.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B-\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00030\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001e\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000c2\u0006\u0010\r\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0003J\u0006\u0010\u000f\u001a\u00020\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00030\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0011\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler;",
        "",
        "headerSize",
        "",
        "maxPacket",
        "payloadLength",
        "Lkotlin/Function1;",
        "",
        "<init>",
        "(IILkotlin/jvm/functions/Function1;)V",
        "buffer",
        "feed",
        "",
        "data",
        "length",
        "reset",
        "",
        "pendingBytes",
        "getPendingBytes",
        "()I",
        "Companion",
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
.field public static final Companion:Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler$Companion;


# instance fields
.field private buffer:[B

.field private final headerSize:I

.field private final maxPacket:I

.field private final payloadLength:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "[B",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler;->Companion:Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler$Companion;

    return-void
.end method

.method private constructor <init>(IILkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/jvm/functions/Function1<",
            "-[B",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput p1, p0, Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler;->headerSize:I

    .line 168
    iput p2, p0, Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler;->maxPacket:I

    .line 169
    iput-object p3, p0, Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler;->payloadLength:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x0

    .line 171
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler;->buffer:[B

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler;-><init>(IILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic feed$default(Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler;[BIILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 174
    array-length p2, p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler;->feed([BI)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final feed([BI)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-gtz p2, :cond_0

    .line 175
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler;->buffer:[B

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const-string p2, "copyOf(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler;->buffer:[B

    .line 177
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 178
    :goto_0
    iget-object p2, p0, Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler;->buffer:[B

    array-length v0, p2

    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler;->headerSize:I

    if-lt v0, v1, :cond_2

    .line 179
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler;->payloadLength:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    add-int/2addr v1, p2

    .line 180
    iget p2, p0, Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler;->maxPacket:I

    const/4 v0, 0x0

    if-le v1, p2, :cond_1

    new-array p2, v0, [B

    iput-object p2, p0, Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler;->buffer:[B

    goto :goto_1

    .line 181
    :cond_1
    iget-object p2, p0, Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler;->buffer:[B

    array-length v2, p2

    if-lt v2, v1, :cond_2

    .line 182
    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-static {p2, v0, v1}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object p2, p0, Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler;->buffer:[B

    array-length v0, p2

    invoke-static {p2, v1, v0}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object p2

    iput-object p2, p0, Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler;->buffer:[B

    goto :goto_0

    .line 185
    :cond_2
    :goto_1
    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final getPendingBytes()I
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler;->buffer:[B

    array-length v0, v0

    return v0
.end method

.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    .line 188
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler;->buffer:[B

    return-void
.end method
