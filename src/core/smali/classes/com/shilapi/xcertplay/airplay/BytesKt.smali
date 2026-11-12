.class public final Lcom/shilapi/xcertplay/airplay/BytesKt;
.super Ljava/lang/Object;
.source "Bytes.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBytes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Bytes.kt\ncom/shilapi/xcertplay/airplay/BytesKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,25:1\n1#2:26\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u001a!\u0010\u0000\u001a\u00020\u00012\u0012\u0010\u0002\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\u0003\"\u00020\u0001H\u0000\u00a2\u0006\u0002\u0010\u0004\u001a\u000c\u0010\u0005\u001a\u00020\u0001*\u00020\u0006H\u0000\u001a\u000c\u0010\u0007\u001a\u00020\u0006*\u00020\u0001H\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "concatBytes",
        "",
        "arrays",
        "",
        "([[B)[B",
        "asciiBytes",
        "",
        "toHexString",
        "shared_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final asciiBytes(Ljava/lang/String;)[B
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget-object v0, Lkotlin/text/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string v0, "getBytes(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final varargs concatBytes([[B)[B
    .locals 12

    const-string v0, "arrays"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v5, v0, v3

    check-cast v5, [B

    array-length v5, v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-array v6, v4, [B

    .line 6
    array-length v0, v0

    const/4 v7, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    aget-object v5, p0, v2

    const/16 v10, 0xc

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 7
    invoke-static/range {v5 .. v11}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    .line 8
    array-length v1, v5

    add-int/2addr v7, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v6
.end method

.method public static final toHexString([B)Ljava/lang/String;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 18
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 19
    aget-byte v3, p0, v2

    and-int/lit16 v4, v3, 0xff

    mul-int/lit8 v5, v2, 0x2

    ushr-int/lit8 v4, v4, 0x4

    .line 20
    const-string v6, "0123456789abcdef"

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v0, v5

    add-int/lit8 v5, v5, 0x1

    and-int/lit8 v3, v3, 0xf

    .line 21
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 23
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method
