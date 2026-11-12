.class public final Lcom/shilapi/xcertplay/airplay/ScreenStreamKt;
.super Ljava/lang/Object;
.source "ScreenStream.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u000e\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0002\u001a\u000c\u0010\u0005\u001a\u00020\u0006*\u00020\u0002H\u0002\u001a\u0018\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0004H\u0002\u001a\u0018\u0010\n\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0004H\u0002\u00a8\u0006\u000b"
    }
    d2 = {
        "hexPrefix",
        "",
        "",
        "length",
        "",
        "startsWithStartCode",
        "",
        "readU32Be",
        "source",
        "offset",
        "readU32Le",
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
.method public static synthetic $r8$lambda$FxGsQAnsPpJUsCxVElBNbPu6LMk(B)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/airplay/ScreenStreamKt;->hexPrefix$lambda$0(B)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$hexPrefix([BI)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/ScreenStreamKt;->hexPrefix([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$readU32Be([BI)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/ScreenStreamKt;->readU32Be([BI)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$readU32Le([BI)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/ScreenStreamKt;->readU32Le([BI)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$startsWithStartCode([B)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/shilapi/xcertplay/airplay/ScreenStreamKt;->startsWithStartCode([B)Z

    move-result p0

    return p0
.end method

.method private static final hexPrefix([BI)Ljava/lang/String;
    .locals 9

    .line 147
    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt;->take([BI)Ljava/util/List;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    const-string p0, ""

    move-object v1, p0

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v6, Lcom/shilapi/xcertplay/airplay/ScreenStreamKt$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/shilapi/xcertplay/airplay/ScreenStreamKt$$ExternalSyntheticLambda0;-><init>()V

    const/16 v7, 0x1e

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final hexPrefix$lambda$0(B)Ljava/lang/CharSequence;
    .locals 3

    and-int/lit16 p0, p0, 0xff

    .line 147
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%02x"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "format(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private static final readU32Be([BI)I
    .locals 2

    .line 218
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    .line 219
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    .line 220
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    .line 221
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method private static final readU32Le([BI)I
    .locals 2

    .line 224
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    .line 225
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    .line 226
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    .line 227
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method private static final startsWithStartCode([B)Z
    .locals 3

    .line 211
    array-length v0, p0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 212
    aget-byte v0, p0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 213
    aget-byte v1, p0, v0

    if-nez v1, :cond_0

    const/4 v1, 0x2

    .line 214
    aget-byte v1, p0, v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    .line 215
    aget-byte p0, p0, v1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    return v2
.end method
