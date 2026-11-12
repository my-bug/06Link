.class public final Lcom/shilapi/xcertplay/airplay/RtspMessage;
.super Ljava/lang/Object;
.source "RtspMessage.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/airplay/RtspMessage$Parsed;,
        Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;,
        Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;,
        Lcom/shilapi/xcertplay/airplay/RtspMessage$TooLargeException;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRtspMessage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RtspMessage.kt\ncom/shilapi/xcertplay/airplay/RtspMessage\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,136:1\n1#2:137\n1069#3,2:138\n*S KotlinDebug\n*F\n+ 1 RtspMessage.kt\ncom/shilapi/xcertplay/airplay/RtspMessage\n*L\n115#1:138,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0004\u001f !\"B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0008J\u0016\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013J\u0017\u0010\u0014\u001a\u00020\u00052\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000bH\u0000\u00a2\u0006\u0002\u0008\u0016J\'\u0010\u0017\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0018\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u00082\u0006\u0010\u001a\u001a\u00020\u0005H\u0002\u00a2\u0006\u0002\u0010\u001bJ \u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0018\u001a\u00020\u00082\u0006\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0008H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/RtspMessage;",
        "",
        "<init>",
        "()V",
        "MAX_BODY_BYTES",
        "",
        "MAX_HEADER_BYTES",
        "headerEnd",
        "",
        "statusText",
        "",
        "",
        "parseMessages",
        "Lcom/shilapi/xcertplay/airplay/RtspMessage$Parsed;",
        "buffer",
        "buildResponse",
        "request",
        "Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;",
        "response",
        "Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;",
        "contentLength",
        "value",
        "contentLength$shared_release",
        "indexOf",
        "source",
        "target",
        "start",
        "([B[BI)Ljava/lang/Integer;",
        "matches",
        "",
        "offset",
        "Request",
        "Response",
        "Parsed",
        "TooLargeException",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/airplay/RtspMessage;

.field public static final MAX_BODY_BYTES:I = 0x1000000

.field public static final MAX_HEADER_BYTES:I = 0x10000

.field private static final headerEnd:[B

.field private static final statusText:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/shilapi/xcertplay/airplay/RtspMessage;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/airplay/RtspMessage;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/airplay/RtspMessage;->INSTANCE:Lcom/shilapi/xcertplay/airplay/RtspMessage;

    .line 39
    const-string v0, "\r\n\r\n"

    sget-object v1, Lkotlin/text/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "getBytes(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/shilapi/xcertplay/airplay/RtspMessage;->headerEnd:[B

    const/4 v0, 0x4

    .line 41
    new-array v0, v0, [Lkotlin/Pair;

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "OK"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x190

    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Bad Request"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x194

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Not Found"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x1f4

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Internal Server Error"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 40
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/airplay/RtspMessage;->statusText:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final indexOf([B[BI)Ljava/lang/Integer;
    .locals 3

    .line 121
    array-length v0, p2

    if-nez v0, :cond_0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 122
    aget-byte v0, p2, v0

    .line 123
    array-length v1, p1

    array-length v2, p2

    sub-int/2addr v1, v2

    if-gt p3, v1, :cond_2

    .line 124
    :goto_0
    aget-byte v2, p1, p3

    if-ne v2, v0, :cond_1

    invoke-direct {p0, p1, p3, p2}, Lcom/shilapi/xcertplay/airplay/RtspMessage;->matches([BI[B)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    if-eq p3, v1, :cond_2

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private final matches([BI[B)Z
    .locals 5

    .line 130
    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    add-int v3, p2, v2

    .line 131
    aget-byte v3, p1, v3

    aget-byte v4, p3, v2

    if-eq v3, v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public final buildResponse(Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;)[B
    .locals 6

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;->getProtocol()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 93
    :cond_0
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;->getStatus()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_1
    const/16 v1, 0xc8

    .line 94
    :goto_0
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;->getStatusText()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/shilapi/xcertplay/airplay/RtspMessage;->statusText:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v2, "OK"

    .line 95
    :cond_2
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;->getBody()[B

    move-result-object v3

    .line 96
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;->getHeaders()Ljava/util/Map;

    move-result-object p2

    invoke-direct {v4, p2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 97
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string p2, "cseq"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_3

    move-object p2, v4

    check-cast p2, Ljava/util/Map;

    const-string v5, "CSeq"

    invoke-interface {p2, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_3
    check-cast v4, Ljava/util/Map;

    array-length p1, v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Content-Length"

    invoke-interface {v4, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\r\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 103
    :cond_4
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 105
    sget-object p2, Lkotlin/text/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string p2, "getBytes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v3}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public final contentLength$shared_release(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 113
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_2

    .line 114
    :cond_0
    invoke-static {p1}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1

    .line 115
    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_4

    const/4 v2, 0x0

    .line 138
    :goto_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-gt v4, v3, :cond_4

    const/16 v4, 0x3a

    if-ge v3, v4, :cond_4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-wide v0, 0x7fffffffffffffffL

    :goto_1
    const-wide/32 v2, 0x1000000

    cmp-long v4, v0, v2

    if-gtz v4, :cond_3

    const-wide/16 v2, 0x0

    .line 117
    invoke-static {v0, v1, v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v0

    long-to-int p1, v0

    return p1

    .line 116
    :cond_3
    new-instance v0, Lcom/shilapi/xcertplay/airplay/RtspMessage$TooLargeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RTSP Content-Length "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " over 16777216 bytes"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/shilapi/xcertplay/airplay/RtspMessage$TooLargeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_2
    return v0
.end method

.method public final parseMessages([B)Lcom/shilapi/xcertplay/airplay/RtspMessage$Parsed;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "buffer"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 51
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_8

    .line 52
    sget-object v5, Lcom/shilapi/xcertplay/airplay/RtspMessage;->headerEnd:[B

    invoke-direct {v0, v1, v5, v4}, Lcom/shilapi/xcertplay/airplay/RtspMessage;->indexOf([B[BI)Ljava/lang/Integer;

    move-result-object v6

    .line 53
    const-string v7, "RTSP headers over 65536 bytes"

    const/high16 v8, 0x10000

    if-nez v6, :cond_1

    .line 54
    array-length v3, v1

    sub-int/2addr v3, v4

    if-gt v3, v8, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v1, Lcom/shilapi/xcertplay/airplay/RtspMessage$TooLargeException;

    invoke-direct {v1, v7}, Lcom/shilapi/xcertplay/airplay/RtspMessage$TooLargeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sub-int/2addr v9, v4

    if-gt v9, v8, :cond_7

    new-instance v7, Ljava/lang/String;

    .line 58
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sub-int/2addr v8, v4

    sget-object v9, Lkotlin/text/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v7, v1, v4, v8, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 59
    move-object v10, v7

    check-cast v10, Ljava/lang/CharSequence;

    const/4 v7, 0x1

    new-array v11, v7, [Ljava/lang/String;

    const-string v8, "\r\n"

    aput-object v8, v11, v3

    const/4 v14, 0x6

    const/4 v15, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 60
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 61
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    array-length v5, v5

    add-int/2addr v4, v5

    goto :goto_0

    .line 64
    :cond_2
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Ljava/lang/CharSequence;

    new-array v10, v7, [Ljava/lang/String;

    const-string v5, " "

    aput-object v5, v10, v3

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-static/range {v9 .. v14}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 65
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 66
    check-cast v8, Ljava/lang/Iterable;

    invoke-static {v8, v7}, Lkotlin/collections/CollectionsKt;->drop(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 67
    move-object v11, v10

    check-cast v11, Ljava/lang/CharSequence;

    const/4 v15, 0x6

    const/16 v16, 0x0

    const/16 v12, 0x3a

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_3

    .line 69
    move-object v12, v9

    check-cast v12, Ljava/util/Map;

    invoke-virtual {v10, v3, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "substring(...)"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Ljava/lang/CharSequence;

    invoke-static {v13}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    sget-object v15, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v13, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v15, "toLowerCase(...)"

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v11, v11, 0x1

    .line 70
    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v10}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v12, v13, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 72
    :cond_4
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v8, Lcom/shilapi/xcertplay/airplay/RtspMessage;->headerEnd:[B

    array-length v8, v8

    add-int/2addr v6, v8

    .line 73
    const-string v8, "content-length"

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/shilapi/xcertplay/airplay/RtspMessage;->contentLength$shared_release(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v8, v6

    .line 75
    array-length v10, v1

    if-gt v8, v10, :cond_8

    .line 78
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/lang/String;

    .line 79
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-ge v7, v4, :cond_5

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_2

    :cond_5
    const-string v4, ""

    :goto_2
    move-object v12, v4

    check-cast v12, Ljava/lang/String;

    .line 80
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    const/4 v7, 0x2

    if-ge v7, v4, :cond_6

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_3

    :cond_6
    const-string v4, "RTSP/1.0"

    :goto_3
    move-object v13, v4

    check-cast v13, Ljava/lang/String;

    .line 81
    move-object v14, v9

    check-cast v14, Ljava/util/Map;

    .line 82
    invoke-static {v1, v6, v8}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v15

    .line 77
    new-instance v10, Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;

    invoke-direct/range {v10 .. v15}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V

    .line 76
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v8

    goto/16 :goto_0

    .line 57
    :cond_7
    new-instance v1, Lcom/shilapi/xcertplay/airplay/RtspMessage$TooLargeException;

    invoke-direct {v1, v7}, Lcom/shilapi/xcertplay/airplay/RtspMessage$TooLargeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    :cond_8
    :goto_4
    new-instance v3, Lcom/shilapi/xcertplay/airplay/RtspMessage$Parsed;

    check-cast v2, Ljava/util/List;

    array-length v5, v1

    invoke-static {v1, v4, v5}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v1

    invoke-direct {v3, v2, v1}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Parsed;-><init>(Ljava/util/List;[B)V

    return-object v3
.end method
