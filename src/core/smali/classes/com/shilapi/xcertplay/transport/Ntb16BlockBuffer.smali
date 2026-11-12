.class public final Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer;
.super Ljava/lang/Object;
.source "NcmUsbBridge.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer$Companion;,
        Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer$FramingException;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u0000 \u001b2\u00020\u0001:\u0002\u001a\u001bB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0016\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0003J \u0010\u0012\u001a\u00020\u000f2\u0018\u0010\u0013\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000f0\u0014J\u0010\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0003H\u0002J\u0018\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0003H\u0002J\u0018\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0003H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000b\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer;",
        "",
        "minCapacity",
        "",
        "<init>",
        "(I)V",
        "buffered",
        "",
        "bufferedSize",
        "padMayFollow",
        "",
        "size",
        "getSize",
        "()I",
        "append",
        "",
        "source",
        "length",
        "drain",
        "onBlock",
        "Lkotlin/Function2;",
        "consume",
        "count",
        "readU16",
        "offset",
        "readU32",
        "FramingException",
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
.field private static final Companion:Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer$Companion;

.field public static final USB_PACKET_SIZE:I = 0x200
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private buffered:[B

.field private bufferedSize:I

.field private final minCapacity:I

.field private padMayFollow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer;->Companion:Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer$Companion;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer;->minCapacity:I

    const/4 p1, 0x0

    .line 454
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer;->buffered:[B

    return-void
.end method

.method private final consume(I)V
    .locals 3

    .line 493
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer;->buffered:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer;->bufferedSize:I

    invoke-static {v0, v0, v1, p1, v2}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    .line 494
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer;->bufferedSize:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer;->bufferedSize:I

    return-void
.end method

.method private final readU16([BI)I
    .locals 1

    .line 498
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p2, p2, 0x1

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v0

    return p1
.end method

.method private final readU32([BI)I
    .locals 2

    .line 501
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    .line 502
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    .line 503
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x3

    .line 504
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public final append([BI)V
    .locals 4

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 461
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer;->bufferedSize:I

    add-int/2addr v0, p2

    .line 462
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer;->buffered:[B

    array-length v2, v1

    const/4 v3, 0x0

    if-le v0, v2, :cond_0

    .line 463
    iget v2, p0, Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer;->minCapacity:I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 464
    new-array v0, v0, [B

    .line 465
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer;->buffered:[B

    iget v2, p0, Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer;->bufferedSize:I

    invoke-static {v1, v0, v3, v3, v2}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    .line 466
    iput-object v0, p0, Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer;->buffered:[B

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer;->buffered:[B

    iget v1, p0, Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer;->bufferedSize:I

    invoke-static {p1, v0, v1, v3, p2}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    .line 469
    iget p1, p0, Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer;->bufferedSize:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer;->bufferedSize:I

    return-void
.end method

.method public final drain(Lkotlin/jvm/functions/Function2;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-[B-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onBlock"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 475
    :goto_0
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer;->padMayFollow:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer;->bufferedSize:I

    if-lez v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer;->buffered:[B

    aget-byte v0, v0, v2

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer;->consume(I)V

    .line 477
    :cond_0
    iput-boolean v2, p0, Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer;->padMayFollow:Z

    .line 479
    :cond_1
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer;->bufferedSize:I

    const/16 v3, 0xc

    if-ge v0, v3, :cond_2

    goto :goto_1

    .line 480
    :cond_2
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer;->buffered:[B

    invoke-direct {p0, v0, v2}, Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer;->readU32([BI)I

    move-result v0

    const v3, 0x484d434e

    if-ne v0, v3, :cond_6

    .line 483
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer;->buffered:[B

    const/16 v3, 0x8

    invoke-direct {p0, v0, v3}, Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer;->readU16([BI)I

    move-result v0

    const/16 v3, 0x1c

    if-lt v0, v3, :cond_5

    .line 485
    iget v3, p0, Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer;->bufferedSize:I

    if-ge v3, v0, :cond_3

    :goto_1
    return-void

    .line 486
    :cond_3
    iget-object v3, p0, Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer;->buffered:[B

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer;->consume(I)V

    .line 488
    rem-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer;->padMayFollow:Z

    goto :goto_0

    .line 484
    :cond_5
    new-instance p1, Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer$FramingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid NTB16 block length "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer$FramingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 481
    :cond_6
    new-instance p1, Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer$FramingException;

    const-string v0, "NCM read buffer does not begin with an NTB16 header"

    invoke-direct {p1, v0}, Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer$FramingException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public final getSize()I
    .locals 1

    .line 458
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer;->bufferedSize:I

    return v0
.end method
