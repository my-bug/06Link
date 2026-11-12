.class public final Lcom/shilapi/xcertplay/transport/Ntb16Codec;
.super Ljava/lang/Object;
.source "Ntb16Codec.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNtb16Codec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Ntb16Codec.kt\ncom/shilapi/xcertplay/transport/Ntb16Codec\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,113:1\n1#2:114\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u0005J\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00102\u0006\u0010\u0011\u001a\u00020\u000cJ$\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00102\u0006\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0005J \u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0005H\u0002J \u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0005H\u0002J\u0018\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u0005H\u0002J\u0018\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u0005H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/Ntb16Codec;",
        "",
        "<init>",
        "()V",
        "NTH16_SIG",
        "",
        "NDP16_SIG",
        "NTH_LENGTH",
        "NDP_LENGTH",
        "DATAGRAM_INDEX",
        "USB_PACKET_SIZE",
        "build",
        "",
        "frame",
        "sequence",
        "parse",
        "",
        "block",
        "offset",
        "length",
        "putU16",
        "",
        "target",
        "value",
        "putU32",
        "readU16",
        "source",
        "readU32",
        "MAX_DATAGRAM_BYTES",
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
.field private static final DATAGRAM_INDEX:I = 0x1c

.field public static final INSTANCE:Lcom/shilapi/xcertplay/transport/Ntb16Codec;

.field private static final MAX_DATAGRAM_BYTES:I = 0xffe3

.field public static final NDP16_SIG:I = 0x304d434e

.field private static final NDP_LENGTH:I = 0x10

.field public static final NTH16_SIG:I = 0x484d434e

.field private static final NTH_LENGTH:I = 0xc

.field private static final USB_PACKET_SIZE:I = 0x200


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/transport/Ntb16Codec;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/transport/Ntb16Codec;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/transport/Ntb16Codec;->INSTANCE:Lcom/shilapi/xcertplay/transport/Ntb16Codec;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final putU16([BII)V
    .locals 1

    int-to-byte v0, p3

    .line 91
    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 p3, p3, 0x8

    int-to-byte p3, p3

    .line 92
    aput-byte p3, p1, p2

    return-void
.end method

.method private final putU32([BII)V
    .locals 2

    int-to-byte v0, p3

    .line 96
    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p3, 0x8

    int-to-byte v1, v1

    .line 97
    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    ushr-int/lit8 v1, p3, 0x10

    int-to-byte v1, v1

    .line 98
    aput-byte v1, p1, v0

    add-int/lit8 p2, p2, 0x3

    ushr-int/lit8 p3, p3, 0x18

    int-to-byte p3, p3

    .line 99
    aput-byte p3, p1, p2

    return-void
.end method

.method private final readU16([BI)I
    .locals 1

    .line 103
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

    .line 106
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    .line 107
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    .line 108
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x3

    .line 109
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public final build([BI)[B
    .locals 11

    const-string v0, "frame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    .line 22
    array-length v0, p1

    const v3, 0xffe3

    if-gt v0, v3, :cond_3

    if-ltz p2, :cond_2

    const/high16 v0, 0x10000

    if-ge p2, v0, :cond_2

    .line 25
    array-length v0, p1

    const/16 v3, 0x1c

    add-int/2addr v0, v3

    .line 26
    new-array v5, v0, [B

    const v4, 0x484d434e

    .line 27
    invoke-direct {p0, v5, v2, v4}, Lcom/shilapi/xcertplay/transport/Ntb16Codec;->putU32([BII)V

    const/4 v4, 0x4

    const/16 v6, 0xc

    .line 28
    invoke-direct {p0, v5, v4, v6}, Lcom/shilapi/xcertplay/transport/Ntb16Codec;->putU16([BII)V

    const/4 v4, 0x6

    .line 29
    invoke-direct {p0, v5, v4, p2}, Lcom/shilapi/xcertplay/transport/Ntb16Codec;->putU16([BII)V

    const/16 p2, 0x8

    .line 30
    invoke-direct {p0, v5, p2, v0}, Lcom/shilapi/xcertplay/transport/Ntb16Codec;->putU16([BII)V

    const/16 p2, 0xa

    .line 31
    invoke-direct {p0, v5, p2, v6}, Lcom/shilapi/xcertplay/transport/Ntb16Codec;->putU16([BII)V

    const p2, 0x304d434e

    .line 33
    invoke-direct {p0, v5, v6, p2}, Lcom/shilapi/xcertplay/transport/Ntb16Codec;->putU32([BII)V

    const/16 p2, 0x10

    .line 34
    invoke-direct {p0, v5, p2, p2}, Lcom/shilapi/xcertplay/transport/Ntb16Codec;->putU16([BII)V

    const/16 p2, 0x12

    .line 35
    invoke-direct {p0, v5, p2, v2}, Lcom/shilapi/xcertplay/transport/Ntb16Codec;->putU16([BII)V

    const/16 p2, 0x14

    .line 36
    invoke-direct {p0, v5, p2, v3}, Lcom/shilapi/xcertplay/transport/Ntb16Codec;->putU16([BII)V

    const/16 p2, 0x16

    .line 37
    array-length v3, p1

    invoke-direct {p0, v5, p2, v3}, Lcom/shilapi/xcertplay/transport/Ntb16Codec;->putU16([BII)V

    const/16 p2, 0x18

    .line 38
    invoke-direct {p0, v5, p2, v2}, Lcom/shilapi/xcertplay/transport/Ntb16Codec;->putU16([BII)V

    const/16 p2, 0x1a

    .line 39
    invoke-direct {p0, v5, p2, v2}, Lcom/shilapi/xcertplay/transport/Ntb16Codec;->putU16([BII)V

    const/16 v9, 0xc

    const/4 v10, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    .line 41
    invoke-static/range {v4 .. v10}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    .line 43
    rem-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_1

    new-array p1, v1, [B

    aput-byte v2, p1, v2

    invoke-static {v5, p1}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    return-object p1

    :cond_1
    return-object v5

    .line 23
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sequence must fit in u16"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "frame exceeds the NTB16 length field"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "frame must not be empty"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final parse([B)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 52
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/shilapi/xcertplay/transport/Ntb16Codec;->parse([BII)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final parse([BII)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p2, :cond_8

    if-ltz p3, :cond_8

    .line 56
    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_8

    add-int v0, p2, p3

    const/16 v1, 0xc

    if-lt p3, v1, :cond_7

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/transport/Ntb16Codec;->readU32([BI)I

    move-result v1

    const v2, 0x484d434e

    if-eq v1, v2, :cond_0

    goto/16 :goto_5

    .line 62
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    add-int/lit8 v3, p2, 0xa

    .line 63
    invoke-direct {p0, p1, v3}, Lcom/shilapi/xcertplay/transport/Ntb16Codec;->readU16([BI)I

    move-result v3

    add-int/2addr v3, p2

    .line 65
    div-int/lit8 p3, p3, 0x4

    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-eqz v3, :cond_6

    if-ge v4, p3, :cond_6

    if-lt v3, p2, :cond_6

    add-int/lit8 v5, v3, 0xc

    if-le v5, v0, :cond_1

    goto :goto_4

    .line 68
    :cond_1
    invoke-direct {p0, p1, v3}, Lcom/shilapi/xcertplay/transport/Ntb16Codec;->readU32([BI)I

    move-result v5

    const v6, 0xffffff

    and-int/2addr v5, v6

    const v6, 0x4d434e

    if-ne v5, v6, :cond_6

    add-int/lit8 v5, v3, 0x4

    .line 69
    invoke-direct {p0, p1, v5}, Lcom/shilapi/xcertplay/transport/Ntb16Codec;->readU16([BI)I

    move-result v5

    add-int/lit8 v6, v3, 0x6

    .line 70
    invoke-direct {p0, p1, v6}, Lcom/shilapi/xcertplay/transport/Ntb16Codec;->readU16([BI)I

    move-result v6

    add-int/lit8 v7, v3, 0x8

    add-int/2addr v3, v5

    .line 72
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_1
    add-int/lit8 v5, v7, 0x4

    if-gt v5, v3, :cond_4

    .line 74
    invoke-direct {p0, p1, v7}, Lcom/shilapi/xcertplay/transport/Ntb16Codec;->readU16([BI)I

    move-result v8

    add-int/lit8 v7, v7, 0x2

    .line 75
    invoke-direct {p0, p1, v7}, Lcom/shilapi/xcertplay/transport/Ntb16Codec;->readU16([BI)I

    move-result v7

    if-eqz v8, :cond_4

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    add-int/2addr v8, p2

    add-int/2addr v7, v8

    if-lt v8, p2, :cond_3

    if-gt v8, v0, :cond_3

    if-gt v7, v0, :cond_3

    .line 80
    invoke-static {p1, v8, v7}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move v7, v5

    goto :goto_1

    :cond_4
    :goto_2
    if-nez v6, :cond_5

    const/4 v3, 0x0

    goto :goto_3

    :cond_5
    add-int/2addr v6, p2

    move v3, v6

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 87
    :cond_6
    :goto_4
    check-cast v1, Ljava/util/List;

    return-object v1

    .line 60
    :cond_7
    :goto_5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 56
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "NTB16 range is outside the source buffer"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method
