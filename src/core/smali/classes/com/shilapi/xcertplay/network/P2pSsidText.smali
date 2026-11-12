.class public final Lcom/shilapi/xcertplay/network/P2pSsidText;
.super Ljava/lang/Object;
.source "P2pSsidText.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nP2pSsidText.kt\nKotlin\n*S Kotlin\n*F\n+ 1 P2pSsidText.kt\ncom/shilapi/xcertplay/network/P2pSsidText\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,64:1\n1069#2,2:65\n1#3:67\n*S KotlinDebug\n*F\n+ 1 P2pSsidText.kt\ncom/shilapi/xcertplay/network/P2pSsidText\n*L\n33#1:65,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0006\u0010\t\u001a\u00020\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/P2pSsidText;",
        "",
        "<init>",
        "()V",
        "decode",
        "",
        "text",
        "",
        "forIphone",
        "frameworkName",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/network/P2pSsidText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/network/P2pSsidText;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/network/P2pSsidText;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/network/P2pSsidText;->INSTANCE:Lcom/shilapi/xcertplay/network/P2pSsidText;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final decode(Ljava/lang/String;)[B
    .locals 9

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 22
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_d

    .line 23
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-eq v3, v4, :cond_1

    const/16 v4, 0x7f

    if-le v3, v4, :cond_0

    .line 25
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    const-string v4, "getBytes(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 29
    :cond_1
    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    add-int/lit8 v5, v2, 0x1

    invoke-static {v3, v5}, Lkotlin/text/StringsKt;->getOrNull(Ljava/lang/CharSequence;I)Ljava/lang/Character;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    const/16 v6, 0x22

    if-eq v3, v6, :cond_b

    if-eq v3, v4, :cond_b

    const/16 v4, 0x65

    if-eq v3, v4, :cond_a

    const/16 v4, 0x6e

    if-eq v3, v4, :cond_9

    const/16 v4, 0x72

    if-eq v3, v4, :cond_8

    const/16 v4, 0x74

    if-eq v3, v4, :cond_7

    const/16 v4, 0x78

    if-eq v3, v4, :cond_2

    return-object v5

    :cond_2
    add-int/lit8 v3, v2, 0x2

    add-int/lit8 v2, v2, 0x4

    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "substring(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_6

    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    .line 65
    :goto_2
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v6, v7, :cond_5

    invoke-interface {v4, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x30

    if-gt v8, v7, :cond_3

    const/16 v8, 0x3a

    if-ge v7, v8, :cond_3

    goto :goto_3

    :cond_3
    const/16 v8, 0x61

    if-gt v8, v7, :cond_4

    const/16 v8, 0x67

    if-ge v7, v8, :cond_4

    goto :goto_3

    :cond_4
    const/16 v8, 0x41

    if-gt v8, v7, :cond_6

    const/16 v8, 0x47

    if-ge v7, v8, :cond_6

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    const/16 v4, 0x10

    .line 34
    invoke-static {v4}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_0

    :cond_6
    return-object v5

    :cond_7
    const/16 v3, 0x9

    .line 40
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4

    :cond_8
    const/16 v3, 0xd

    .line 39
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4

    :cond_9
    const/16 v3, 0xa

    .line 38
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4

    :cond_a
    const/16 v3, 0x1b

    .line 37
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4

    .line 36
    :cond_b
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_4
    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_0

    :cond_c
    return-object v5

    .line 44
    :cond_d
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public final forIphone(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "frameworkName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/16 v1, 0x5c

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "getBytes(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    return-object p1

    :cond_0
    return-object v4

    .line 53
    :cond_1
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/network/P2pSsidText;->decode(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_4

    array-length v0, p1

    const/4 v1, 0x1

    if-gt v1, v0, :cond_2

    const/16 v1, 0x21

    if-ge v0, v1, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, v4

    :goto_0
    if-nez p1, :cond_3

    goto :goto_1

    .line 55
    :cond_3
    :try_start_0
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 56
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 57
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 58
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_4
    :goto_1
    return-object v4
.end method
