.class public final Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$Companion;
.super Ljava/lang/Object;
.source "Iap2CsmFramer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIap2CsmFramer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Iap2CsmFramer.kt\ncom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,175:1\n1#2:176\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0005\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0010J\u0016\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0010J\u001c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0005J\u001c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u00162\u0006\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u0005J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0017\u001a\u00020\u0010H\u0002J\u0018\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020\u0005H\u0002J \u0010 \u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\u0005H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$Companion;",
        "",
        "<init>",
        "()V",
        "START",
        "",
        "HEADER_BYTES",
        "MIN_FRAME_BYTES",
        "MAX_FRAME_BYTES",
        "MAX_BODY_BYTES",
        "MAX_PARAM_BYTES",
        "MAX_LINK_CHUNK_BYTES",
        "START_HIGH",
        "",
        "START_LOW",
        "encodeFrame",
        "",
        "messageId",
        "payload",
        "encodeParam",
        "parameterId",
        "splitForLink",
        "",
        "frame",
        "Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;",
        "linkChunkSize",
        "completeFrame",
        "requireCompleteFrame",
        "",
        "readU16",
        "bytes",
        "offset",
        "writeU16",
        "value",
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

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$Companion;-><init>()V

    return-void
.end method

.method private final readU16([BI)I
    .locals 1

    .line 166
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p2, p2, 0x1

    .line 167
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    return p1
.end method

.method private final requireCompleteFrame([B)V
    .locals 2

    .line 156
    array-length v0, p1

    const/4 v1, 0x6

    if-gt v1, v0, :cond_2

    const/high16 v1, 0x10000

    if-ge v0, v1, :cond_2

    const/4 v0, 0x0

    .line 159
    invoke-direct {p0, p1, v0}, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$Companion;->readU16([BI)I

    move-result v0

    const/16 v1, 0x4040

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    .line 160
    invoke-direct {p0, p1, v0}, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$Companion;->readU16([BI)I

    move-result v0

    array-length p1, p1

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "CSM frame length must equal its complete size"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 159
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "CSM frame must start with 0x4040"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 156
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "CSM frame size must be 6..65535"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final writeU16([BII)V
    .locals 1

    ushr-int/lit8 v0, p3, 0x8

    int-to-byte v0, v0

    .line 170
    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    int-to-byte p3, p3

    .line 171
    aput-byte p3, p1, p2

    return-void
.end method


# virtual methods
.method public final encodeFrame(I[B)[B
    .locals 8

    const-string v0, "payload"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_1

    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_1

    .line 112
    array-length v0, p2

    const v1, 0xfff9

    if-gt v0, v1, :cond_0

    .line 115
    array-length v0, p2

    add-int/lit8 v0, v0, 0x6

    new-array v2, v0, [B

    const/4 v1, 0x0

    const/16 v3, 0x4040

    .line 116
    invoke-direct {p0, v2, v1, v3}, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$Companion;->writeU16([BII)V

    const/4 v1, 0x2

    .line 117
    invoke-direct {p0, v2, v1, v0}, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$Companion;->writeU16([BII)V

    const/4 v0, 0x4

    .line 118
    invoke-direct {p0, v2, v0, p1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$Companion;->writeU16([BII)V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    .line 119
    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    return-object v2

    .line 112
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "CSM payload exceeds 65529 bytes"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 111
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "CSM message id must fit in u16"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final encodeParam(I[B)[B
    .locals 8

    const-string v0, "payload"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_1

    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_1

    .line 126
    array-length v0, p2

    const v1, 0xfffb

    if-gt v0, v1, :cond_0

    .line 129
    array-length v0, p2

    add-int/lit8 v0, v0, 0x4

    new-array v2, v0, [B

    const/4 v1, 0x0

    .line 130
    invoke-direct {p0, v2, v1, v0}, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$Companion;->writeU16([BII)V

    const/4 v0, 0x2

    .line 131
    invoke-direct {p0, v2, v0, p1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$Companion;->writeU16([BII)V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    .line 132
    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    return-object v2

    .line 126
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "CSM parameter payload exceeds 65531 bytes"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 125
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "CSM parameter id must fit in u16"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final splitForLink(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;",
            "I)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    const-string v0, "frame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;->encodedFrame()[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$Companion;->splitForLink([BI)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final splitForLink([BI)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    const-string v0, "completeFrame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-gt v0, p2, :cond_1

    const v1, 0xfff6

    if-ge p2, v1, :cond_1

    .line 148
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$Companion;->requireCompleteFrame([B)V

    .line 149
    array-length v1, p1

    add-int/2addr v1, p2

    sub-int/2addr v1, v0

    div-int/2addr v1, p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    mul-int v3, v2, p2

    add-int v4, v3, p2

    .line 151
    array-length v5, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {p1, v3, v4}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v3

    .line 149
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    check-cast v0, Ljava/util/List;

    return-object v0

    .line 145
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "iAP2 link chunk size must be in 1..65525"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
