.class public final Lcom/shilapi/xcertplay/airplay/Tlv8Codec;
.super Ljava/lang/Object;
.source "Tlv8Codec.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTlv8Codec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Tlv8Codec.kt\ncom/shilapi/xcertplay/airplay/Tlv8Codec\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,53:1\n37#2:54\n36#2,3:55\n*S KotlinDebug\n*F\n+ 1 Tlv8Codec.kt\ncom/shilapi/xcertplay/airplay/Tlv8Codec\n*L\n24#1:54\n24#1:55,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0014\u0010\u0007\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nJ\u001a\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00080\r2\u0006\u0010\u000e\u001a\u00020\u0008R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/Tlv8Codec;",
        "",
        "<init>",
        "()V",
        "SEPARATOR_TYPE",
        "",
        "MAX_FRAGMENT",
        "encode",
        "",
        "items",
        "",
        "Lcom/shilapi/xcertplay/airplay/Tlv8Item;",
        "decode",
        "",
        "buffer",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/airplay/Tlv8Codec;

.field private static final MAX_FRAGMENT:I = 0xff

.field private static final SEPARATOR_TYPE:I = 0xff


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/airplay/Tlv8Codec;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/airplay/Tlv8Codec;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/airplay/Tlv8Codec;->INSTANCE:Lcom/shilapi/xcertplay/airplay/Tlv8Codec;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final decode([B)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v4, v1, 0x2

    .line 32
    array-length v5, p1

    if-gt v4, v5, :cond_3

    .line 33
    aget-byte v5, p1, v1

    const/16 v6, 0xff

    and-int/2addr v5, v6

    add-int/lit8 v1, v1, 0x1

    .line 34
    aget-byte v1, p1, v1

    and-int/2addr v1, v6

    add-int v7, v4, v1

    .line 36
    array-length v8, p1

    if-gt v7, v8, :cond_3

    .line 37
    invoke-static {p1, v4, v7}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v4

    if-nez v3, :cond_0

    goto :goto_1

    .line 39
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v5, v3, :cond_2

    if-ne v2, v6, :cond_2

    .line 40
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 41
    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v2, :cond_1

    invoke-static {v2, v4}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v4

    :cond_1
    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 43
    :cond_2
    :goto_1
    move-object v2, v0

    check-cast v2, Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move v2, v1

    move v1, v7

    goto :goto_0

    .line 48
    :cond_3
    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public final encode(Ljava/util/List;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/airplay/Tlv8Item;",
            ">;)[B"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shilapi/xcertplay/airplay/Tlv8Item;

    .line 12
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/airplay/Tlv8Item;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 13
    new-array v1, v5, [B

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    const/4 v1, 0x0

    .line 17
    :goto_2
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/airplay/Tlv8Item;->getValue()[B

    move-result-object v4

    array-length v4, v4

    sub-int/2addr v4, v1

    const/16 v6, 0xff

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 18
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/airplay/Tlv8Item;->getType()I

    move-result v6

    int-to-byte v6, v6

    int-to-byte v7, v4

    new-array v8, v5, [B

    aput-byte v6, v8, v3

    const/4 v6, 0x1

    aput-byte v7, v8, v6

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/airplay/Tlv8Item;->getValue()[B

    move-result-object v6

    add-int/2addr v4, v1

    invoke-static {v6, v1, v4}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/airplay/Tlv8Item;->getValue()[B

    move-result-object v1

    array-length v1, v1

    if-lt v4, v1, :cond_2

    .line 22
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/airplay/Tlv8Item;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_2

    .line 24
    :cond_3
    check-cast v0, Ljava/util/Collection;

    .line 57
    new-array p1, v3, [[B

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 24
    check-cast p1, [[B

    check-cast p1, [Ljava/lang/Object;

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[B

    invoke-static {p1}, Lcom/shilapi/xcertplay/airplay/BytesKt;->concatBytes([[B)[B

    move-result-object p1

    return-object p1

    nop

    :array_0
    .array-data 1
        -0x1t
        0x0t
    .end array-data
.end method
