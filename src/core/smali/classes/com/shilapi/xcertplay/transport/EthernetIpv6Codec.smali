.class public final Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec;
.super Ljava/lang/Object;
.source "EthernetIpv6Codec.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec$Ipv6Frame;,
        Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec$Ipv6FrameView;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEthernetIpv6Codec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EthernetIpv6Codec.kt\ncom/shilapi/xcertplay/transport/EthernetIpv6Codec\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,158:1\n1#2:159\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0013\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\'(B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000bJ\u0010\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\n\u001a\u00020\u000bJ\u001e\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u000bJ\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0011\u001a\u00020\u000bJ\u0016\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u000bJ\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000bH\u0002J \u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u0005H\u0002J\u0018\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u0005H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec;",
        "",
        "<init>",
        "()V",
        "ETHERTYPE_IPV6",
        "",
        "MAC_BYTES",
        "HEADER_BYTES",
        "parseIpv6",
        "Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec$Ipv6Frame;",
        "frame",
        "",
        "parseIpv6View",
        "Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec$Ipv6FrameView;",
        "build",
        "sourceMac",
        "destinationMac",
        "ipv6",
        "multicastDestinationMac",
        "addNeighborAdvertisementTargetMac",
        "hostMac",
        "writeIcmpv6Checksum",
        "",
        "putU16",
        "target",
        "offset",
        "value",
        "readU16",
        "source",
        "IPV6_HEADER_BYTES",
        "IPV6_PAYLOAD_LENGTH_OFFSET",
        "IPV6_NEXT_HEADER_OFFSET",
        "IPV6_SOURCE_OFFSET",
        "IPV6_DESTINATION_OFFSET",
        "ICMPV6_NEXT_HEADER",
        "ICMPV6_NEIGHBOR_ADVERTISEMENT",
        "ICMPV6_NA_BYTES",
        "ICMPV6_NA_MIN_BYTES",
        "ICMPV6_TARGET_LINK_LAYER_OPTION",
        "Ipv6Frame",
        "Ipv6FrameView",
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
.field public static final ETHERTYPE_IPV6:I = 0x86dd

.field private static final HEADER_BYTES:I = 0xe

.field private static final ICMPV6_NA_BYTES:I = 0x18

.field private static final ICMPV6_NA_MIN_BYTES:I = 0x40

.field private static final ICMPV6_NEIGHBOR_ADVERTISEMENT:I = 0x88

.field private static final ICMPV6_NEXT_HEADER:I = 0x3a

.field private static final ICMPV6_TARGET_LINK_LAYER_OPTION:I = 0x2

.field public static final INSTANCE:Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec;

.field private static final IPV6_DESTINATION_OFFSET:I = 0x18

.field private static final IPV6_HEADER_BYTES:I = 0x28

.field private static final IPV6_NEXT_HEADER_OFFSET:I = 0x6

.field private static final IPV6_PAYLOAD_LENGTH_OFFSET:I = 0x4

.field private static final IPV6_SOURCE_OFFSET:I = 0x8

.field public static final MAC_BYTES:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec;->INSTANCE:Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final putU16([BII)V
    .locals 1

    ushr-int/lit8 v0, p3, 0x8

    int-to-byte v0, v0

    .line 140
    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    int-to-byte p3, p3

    .line 141
    aput-byte p3, p1, p2

    return-void
.end method

.method private final readU16([BI)I
    .locals 1

    .line 145
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p2, p2, 0x1

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    return p1
.end method

.method private final writeIcmpv6Checksum([B)V
    .locals 10

    const/4 v0, 0x4

    .line 115
    invoke-direct {p0, p1, v0}, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec;->readU16([BI)I

    move-result v0

    const/16 v1, 0x2a

    const/4 v2, 0x0

    .line 116
    aput-byte v2, p1, v1

    const/16 v3, 0x2b

    .line 117
    aput-byte v2, p1, v3

    .line 118
    new-instance v2, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    const/16 v4, 0x8

    const/16 v5, 0x20

    .line 128
    invoke-static {v2, p1, v4, v5}, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec;->writeIcmpv6Checksum$addWords(Lkotlin/jvm/internal/Ref$LongRef;[BII)V

    .line 129
    iget-wide v4, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    ushr-int/lit8 v6, v0, 0x10

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 130
    iget-wide v4, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    const v6, 0xffff

    and-int v7, v0, v6

    int-to-long v7, v7

    add-long/2addr v4, v7

    iput-wide v4, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 131
    iget-wide v4, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    const-wide/16 v7, 0x3a

    add-long/2addr v4, v7

    iput-wide v4, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    const/16 v4, 0x28

    .line 132
    invoke-static {v2, p1, v4, v0}, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec;->writeIcmpv6Checksum$addWords(Lkotlin/jvm/internal/Ref$LongRef;[BII)V

    .line 133
    :goto_0
    iget-wide v4, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    const/16 v0, 0x10

    ushr-long/2addr v4, v0

    const-wide/16 v7, 0x0

    cmp-long v9, v4, v7

    if-eqz v9, :cond_0

    iget-wide v4, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    const-wide/32 v7, 0xffff

    and-long/2addr v4, v7

    iget-wide v7, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    ushr-long/2addr v7, v0

    add-long/2addr v4, v7

    iput-wide v4, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    goto :goto_0

    .line 134
    :cond_0
    iget-wide v4, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    const-wide/16 v7, -0x1

    xor-long/2addr v4, v7

    long-to-int v0, v4

    and-int/2addr v0, v6

    ushr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    .line 135
    aput-byte v2, p1, v1

    int-to-byte v0, v0

    .line 136
    aput-byte v0, p1, v3

    return-void
.end method

.method private static final writeIcmpv6Checksum$addWords(Lkotlin/jvm/internal/Ref$LongRef;[BII)V
    .locals 4

    add-int/2addr p3, p2

    :goto_0
    add-int/lit8 v0, p2, 0x1

    if-ge v0, p3, :cond_0

    .line 123
    iget-wide v0, p0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    sget-object v2, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec;->INSTANCE:Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec;

    invoke-direct {v2, p1, p2}, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec;->readU16([BI)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    add-int/lit8 p2, p2, 0x2

    goto :goto_0

    :cond_0
    if-ge p2, p3, :cond_1

    .line 126
    iget-wide v0, p0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    int-to-long p1, p1

    const/16 p3, 0x8

    shl-long/2addr p1, p3

    add-long/2addr v0, p1

    iput-wide v0, p0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    :cond_1
    return-void
.end method


# virtual methods
.method public final addNeighborAdvertisementTargetMac([B[B)[B
    .locals 13

    const-string v0, "ipv6"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hostMac"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    array-length v0, p2

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    .line 81
    array-length v0, p1

    const/16 v2, 0x40

    if-lt v0, v2, :cond_6

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    const/4 v3, 0x4

    ushr-int/2addr v0, v3

    and-int/lit8 v0, v0, 0xf

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 82
    :cond_0
    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_6

    const/16 v0, 0x28

    .line 83
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x88

    if-eq v0, v1, :cond_1

    goto/16 :goto_2

    .line 86
    :cond_1
    invoke-direct {p0, p1, v3}, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec;->readU16([BI)I

    move-result v0

    const/16 v1, 0x18

    if-lt v0, v1, :cond_6

    add-int/lit8 v1, v0, 0x28

    .line 87
    array-length v4, p1

    if-le v1, v4, :cond_2

    goto :goto_2

    :cond_2
    :goto_0
    add-int/lit8 v6, v2, 0x2

    .line 90
    const-string v4, "copyOf(...)"

    const/4 v5, 0x2

    if-gt v6, v1, :cond_5

    add-int/lit8 v7, v2, 0x1

    .line 91
    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0x8

    mul-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_5

    add-int v9, v2, v7

    if-le v9, v1, :cond_3

    goto :goto_1

    .line 93
    :cond_3
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    if-ne v2, v5, :cond_4

    if-lt v7, v8, :cond_4

    .line 96
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0xc

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p2

    .line 97
    invoke-static/range {v4 .. v10}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    .line 98
    sget-object p1, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec;->INSTANCE:Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec;

    invoke-direct {p1, v5}, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec;->writeIcmpv6Checksum([B)V

    return-object v5

    :cond_4
    move-object v6, p2

    move-object p2, v6

    move v2, v9

    goto :goto_0

    :cond_5
    :goto_1
    move-object v6, p2

    add-int/lit8 p2, v0, 0x30

    .line 104
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v7

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 p1, v0, 0x8

    ushr-int/lit8 p2, p1, 0x8

    int-to-byte p2, p2

    .line 105
    aput-byte p2, v7, v3

    const/4 p2, 0x5

    int-to-byte p1, p1

    .line 106
    aput-byte p1, v7, p2

    .line 107
    aput-byte v5, v7, v1

    add-int/lit8 p1, v0, 0x29

    const/4 p2, 0x1

    .line 108
    aput-byte p2, v7, p1

    add-int/lit8 v8, v0, 0x2a

    const/16 v11, 0xc

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 109
    invoke-static/range {v6 .. v12}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    .line 110
    invoke-direct {p0, v7}, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec;->writeIcmpv6Checksum([B)V

    return-object v7

    :cond_6
    :goto_2
    return-object p1

    .line 80
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "hostMac must be 6 bytes"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public final build([B[B[B)[B
    .locals 8

    const-string/jumbo v0, "sourceMac"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destinationMac"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ipv6"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    array-length v0, p1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 49
    array-length v0, p2

    if-ne v0, v1, :cond_2

    .line 50
    array-length v0, p3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 52
    array-length v0, p3

    add-int/lit8 v0, v0, 0xe

    new-array v2, v0, [B

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    .line 53
    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    const/4 v3, 0x6

    move-object v1, p1

    .line 54
    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    const/16 p1, 0xc

    const p2, 0x86dd

    .line 55
    invoke-direct {p0, v2, p1, p2}, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec;->putU16([BII)V

    const/16 v3, 0xe

    move-object v1, p3

    .line 56
    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    return-object v2

    .line 50
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ipv6 payload must not be empty"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "destinationMac must be 6 bytes"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "sourceMac must be 6 bytes"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final multicastDestinationMac([B)[B
    .locals 7

    const-string v0, "ipv6"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    array-length v0, p1

    const/16 v1, 0x28

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    aget-byte v1, p1, v0

    const/4 v3, 0x4

    ushr-int/2addr v1, v3

    and-int/lit8 v1, v1, 0xf

    const/4 v4, 0x6

    if-eq v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x18

    .line 63
    aget-byte v1, p1, v1

    const/16 v5, 0xff

    and-int/2addr v1, v5

    if-eq v1, v5, :cond_1

    return-object v2

    :cond_1
    const/16 v1, 0x24

    .line 67
    aget-byte v1, p1, v1

    const/16 v2, 0x25

    .line 68
    aget-byte v2, p1, v2

    const/16 v5, 0x26

    .line 69
    aget-byte v5, p1, v5

    const/16 v6, 0x27

    .line 70
    aget-byte p1, p1, v6

    new-array v4, v4, [B

    const/16 v6, 0x33

    aput-byte v6, v4, v0

    const/4 v0, 0x1

    aput-byte v6, v4, v0

    const/4 v0, 0x2

    aput-byte v1, v4, v0

    const/4 v0, 0x3

    aput-byte v2, v4, v0

    aput-byte v5, v4, v3

    const/4 v0, 0x5

    aput-byte p1, v4, v0

    return-object v4

    :cond_2
    :goto_0
    return-object v2
.end method

.method public final parseIpv6([B)Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec$Ipv6Frame;
    .locals 5

    const-string v0, "frame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    array-length v0, p1

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    const/16 v0, 0xc

    invoke-direct {p0, p1, v0}, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec;->readU16([BI)I

    move-result v2

    const v3, 0x86dd

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    new-instance v2, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec$Ipv6Frame;

    const/4 v3, 0x6

    .line 31
    invoke-static {p1, v3, v0}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v0

    const/4 v4, 0x0

    .line 32
    invoke-static {p1, v4, v3}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v3

    .line 33
    array-length v4, p1

    invoke-static {p1, v1, v4}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object p1

    .line 30
    invoke-direct {v2, v0, v3, p1}, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec$Ipv6Frame;-><init>([B[B[B)V

    return-object v2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final parseIpv6View([B)Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec$Ipv6FrameView;
    .locals 4

    const-string v0, "frame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    array-length v0, p1

    const/16 v1, 0xe

    if-le v0, v1, :cond_1

    const/16 v0, 0xc

    invoke-direct {p0, p1, v0}, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec;->readU16([BI)I

    move-result v2

    const v3, 0x86dd

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    new-instance v2, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec$Ipv6FrameView;

    const/4 v3, 0x6

    .line 41
    invoke-static {p1, v3, v0}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v0

    .line 43
    array-length p1, p1

    sub-int/2addr p1, v1

    .line 40
    invoke-direct {v2, v0, v1, p1}, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec$Ipv6FrameView;-><init>([BII)V

    return-object v2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
