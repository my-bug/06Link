.class public final Lcom/shilapi/xcertplay/airplay/ScreenCodec;
.super Ljava/lang/Object;
.source "ScreenStream.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J&\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0005J\u000e\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u0005J\u001a\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00050\u000e2\u0006\u0010\u000c\u001a\u00020\u0005J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000c\u001a\u00020\u0005H\u0002J\u0018\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0013H\u0002R\u000e\u0010\u0016\u001a\u00020\u0013X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/ScreenCodec;",
        "",
        "<init>",
        "()V",
        "decryptFrame",
        "",
        "key",
        "counter",
        "",
        "header",
        "body",
        "lengthPrefixedToAnnexB",
        "payload",
        "detectConfig",
        "Lkotlin/Pair;",
        "Lcom/shilapi/xcertplay/airplay/VideoCodec;",
        "looksLikeAvcC",
        "",
        "readU16Be",
        "",
        "source",
        "offset",
        "TAG_SIZE",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/airplay/ScreenCodec;

.field public static final TAG_SIZE:I = 0x10


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/airplay/ScreenCodec;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/airplay/ScreenCodec;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/airplay/ScreenCodec;->INSTANCE:Lcom/shilapi/xcertplay/airplay/ScreenCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final looksLikeAvcC([B)Z
    .locals 5

    .line 197
    array-length v0, p1

    const/16 v1, 0x9

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x5

    .line 198
    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x6

    .line 199
    invoke-direct {p0, p1, v0}, Lcom/shilapi/xcertplay/airplay/ScreenCodec;->readU16Be([BI)I

    move-result v0

    const/16 v3, 0x8

    add-int/2addr v0, v3

    .line 200
    array-length v4, p1

    if-le v0, v4, :cond_2

    return v2

    .line 201
    :cond_2
    aget-byte p1, p1, v3

    and-int/lit8 p1, p1, 0x1f

    const/4 v0, 0x7

    if-ne p1, v0, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method private final readU16Be([BI)I
    .locals 1

    .line 205
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p2, p2, 0x1

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public final decryptFrame([BJ[B[B)[B
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "header"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    array-length v0, p5

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    return-object p5

    .line 153
    :cond_0
    sget-object v0, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;

    sget-object v1, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;

    invoke-virtual {v1, p2, p3}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->nonce64(J)[B

    move-result-object p2

    invoke-virtual {v0, p1, p2, p5, p4}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->chachaOpen([B[B[B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public final detectConfig([B)Lkotlin/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lkotlin/Pair<",
            "Lcom/shilapi/xcertplay/airplay/VideoCodec;",
            "[B>;"
        }
    .end annotation

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    array-length v0, p1

    const/4 v1, 0x4

    sub-int/2addr v0, v1

    if-gt v1, v0, :cond_2

    const/4 v2, 0x4

    :goto_0
    new-instance v3, Ljava/lang/String;

    .line 187
    sget-object v4, Lkotlin/text/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v3, p1, v2, v1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 189
    const-string v4, "hvcC"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v0, Lcom/shilapi/xcertplay/airplay/VideoCodec;->H265:Lcom/shilapi/xcertplay/airplay/VideoCodec;

    add-int/2addr v2, v1

    array-length v1, p1

    invoke-static {p1, v2, v1}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1

    .line 190
    :cond_0
    const-string v4, "avcC"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v0, Lcom/shilapi/xcertplay/airplay/VideoCodec;->H264:Lcom/shilapi/xcertplay/airplay/VideoCodec;

    add-int/2addr v2, v1

    array-length v1, p1

    invoke-static {p1, v2, v1}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1

    :cond_1
    if-eq v2, v0, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 193
    :cond_2
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/airplay/ScreenCodec;->looksLikeAvcC([B)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/shilapi/xcertplay/airplay/VideoCodec;->H264:Lcom/shilapi/xcertplay/airplay/VideoCodec;

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1

    :cond_3
    sget-object v0, Lcom/shilapi/xcertplay/airplay/VideoCodec;->H265:Lcom/shilapi/xcertplay/airplay/VideoCodec;

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final lengthPrefixedToAnnexB([B)[B
    .locals 6

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    array-length v0, p1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_4

    # invokes: Lcom/shilapi/xcertplay/airplay/ScreenStreamKt;->startsWithStartCode([B)Z
    invoke-static {p1}, Lcom/shilapi/xcertplay/airplay/ScreenStreamKt;->access$startsWithStartCode([B)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :cond_1
    add-int/lit8 v3, v2, 0x4

    .line 165
    array-length v4, p1

    if-gt v3, v4, :cond_2

    .line 166
    # invokes: Lcom/shilapi/xcertplay/airplay/ScreenStreamKt;->readU32Be([BI)I
    invoke-static {p1, v2}, Lcom/shilapi/xcertplay/airplay/ScreenStreamKt;->access$readU32Be([BI)I

    move-result v2

    if-lez v2, :cond_4

    add-int/2addr v2, v3

    .line 168
    array-length v3, p1

    if-le v2, v3, :cond_1

    goto :goto_1

    .line 171
    :cond_2
    array-length v3, p1

    if-eq v2, v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v2, 0x4

    .line 174
    array-length v4, p1

    if-gt v3, v4, :cond_4

    .line 175
    # invokes: Lcom/shilapi/xcertplay/airplay/ScreenStreamKt;->readU32Be([BI)I
    invoke-static {p1, v2}, Lcom/shilapi/xcertplay/airplay/ScreenStreamKt;->access$readU32Be([BI)I

    move-result v3

    .line 176
    aput-byte v0, p1, v2

    add-int/lit8 v4, v2, 0x1

    .line 177
    aput-byte v0, p1, v4

    add-int/lit8 v4, v2, 0x2

    .line 178
    aput-byte v0, p1, v4

    add-int/lit8 v4, v2, 0x3

    const/4 v5, 0x1

    .line 179
    aput-byte v5, p1, v4

    add-int/2addr v3, v1

    add-int/2addr v2, v3

    goto :goto_0

    :cond_4
    :goto_1
    return-object p1
.end method
