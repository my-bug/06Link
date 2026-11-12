.class public final Lcom/shilapi/xcertplay/goc/GocBoard;
.super Ljava/lang/Object;
.source "GocBoard.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGocBoard.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GocBoard.kt\ncom/shilapi/xcertplay/goc/GocBoard\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,35:1\n1761#2,3:36\n*S KotlinDebug\n*F\n+ 1 GocBoard.kt\ncom/shilapi/xcertplay/goc/GocBoard\n*L\n29#1:36,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003JB\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00062\u0008\u0008\u0002\u0010\n\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00062\u0008\u0008\u0002\u0010\r\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0006J\u0010\u0010\u000f\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0008R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/goc/GocBoard;",
        "",
        "<init>",
        "()V",
        "MARKERS",
        "",
        "",
        "looksGeelyFamily",
        "",
        "manufacturer",
        "brand",
        "model",
        "product",
        "device",
        "fingerprint",
        "shouldProbeGoc",
        "looksGeely",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/goc/GocBoard;

.field private static final MARKERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/shilapi/xcertplay/goc/GocBoard;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/goc/GocBoard;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/goc/GocBoard;->INSTANCE:Lcom/shilapi/xcertplay/goc/GocBoard;

    const/16 v0, 0xb

    .line 15
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "geely"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u5409\u5229"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "xingrui"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u661f\u745e"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "ecarx"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "lynk"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u9886\u514b"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "zeekr"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u6781\u6c2a"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "geometry"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u51e0\u4f55"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 13
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/goc/GocBoard;->MARKERS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic looksGeelyFamily$default(Lcom/shilapi/xcertplay/goc/GocBoard;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z
    .locals 1

    and-int/lit8 p8, p7, 0x1

    .line 18
    const-string v0, ""

    if-eqz p8, :cond_0

    .line 19
    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    .line 20
    sget-object p2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-nez p2, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    .line 21
    sget-object p3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez p3, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    .line 22
    sget-object p4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    if-nez p4, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    .line 23
    sget-object p5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    if-nez p5, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    .line 24
    sget-object p6, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    if-nez p6, :cond_5

    move-object p6, v0

    :cond_5
    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    .line 18
    invoke-virtual/range {p2 .. p8}, Lcom/shilapi/xcertplay/goc/GocBoard;->looksGeelyFamily(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic shouldProbeGoc$default(Lcom/shilapi/xcertplay/goc/GocBoard;ZILjava/lang/Object;)Z
    .locals 9

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 33
    invoke-static/range {v0 .. v8}, Lcom/shilapi/xcertplay/goc/GocBoard;->looksGeelyFamily$default(Lcom/shilapi/xcertplay/goc/GocBoard;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/goc/GocBoard;->shouldProbeGoc(Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final looksGeelyFamily(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    const-string v6, "manufacturer"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "brand"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "model"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "product"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "device"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "fingerprint"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x6

    .line 26
    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v1, 0x2

    aput-object v2, v6, v1

    const/4 v2, 0x3

    aput-object v3, v6, v2

    const/4 v2, 0x4

    aput-object v4, v6, v2

    const/4 v2, 0x5

    aput-object v5, v6, v2

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/Iterable;

    .line 27
    const-string v2, "\u0000"

    move-object v9, v2

    check-cast v9, Ljava/lang/CharSequence;

    const/16 v15, 0x3e

    const/16 v16, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v8 .. v16}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 28
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "toLowerCase(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object v4, Lcom/shilapi/xcertplay/goc/GocBoard;->MARKERS:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    .line 36
    instance-of v5, v4, Ljava/util/Collection;

    if-eqz v5, :cond_0

    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    return v7

    .line 37
    :cond_0
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 29
    move-object v6, v2

    check-cast v6, Ljava/lang/CharSequence;

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v8, 0x0

    invoke-static {v6, v5, v7, v1, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v0

    :cond_2
    return v7
.end method

.method public final shouldProbeGoc(Z)Z
    .locals 0

    return p1
.end method
