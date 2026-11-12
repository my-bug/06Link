.class public final Lcom/shilapi/xcertplay/QrBitmap;
.super Ljava/lang/Object;
.source "QrBitmap.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nQrBitmap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QrBitmap.kt\ncom/shilapi/xcertplay/QrBitmap\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,66:1\n12434#2,2:67\n1#3:69\n*S KotlinDebug\n*F\n+ 1 QrBitmap.kt\ncom/shilapi/xcertplay/QrBitmap\n*L\n36#1:67,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0018\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003JA\u0010\u0006\u001a\u00020\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00052\u0008\u0008\u0002\u0010\r\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0005H\u0007\u00a2\u0006\u0002\u0010\u000fJ6\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00052\u0008\u0008\u0002\u0010\r\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0014H\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/QrBitmap;",
        "",
        "<init>",
        "()V",
        "QUIET_ZONE_MODULES",
        "",
        "render",
        "Landroid/graphics/Bitmap;",
        "modules",
        "",
        "",
        "sizePx",
        "darkColor",
        "lightColor",
        "quietZoneModules",
        "([[ZIIII)Landroid/graphics/Bitmap;",
        "renderText",
        "text",
        "",
        "ec",
        "Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;",
        "common_release"
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/QrBitmap;

.field public static final QUIET_ZONE_MODULES:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/QrBitmap;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/QrBitmap;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/QrBitmap;->INSTANCE:Lcom/shilapi/xcertplay/QrBitmap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final render([[ZI)Landroid/graphics/Bitmap;
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "modules"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x1c

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    invoke-static/range {v1 .. v7}, Lcom/shilapi/xcertplay/QrBitmap;->render$default([[ZIIIIILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final render([[ZII)Landroid/graphics/Bitmap;
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "modules"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-static/range {v1 .. v7}, Lcom/shilapi/xcertplay/QrBitmap;->render$default([[ZIIIIILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final render([[ZIII)Landroid/graphics/Bitmap;
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "modules"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v1 .. v7}, Lcom/shilapi/xcertplay/QrBitmap;->render$default([[ZIIIIILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final render([[ZIIII)Landroid/graphics/Bitmap;
    .locals 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "modules"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    array-length v1, v0

    if-lez v1, :cond_5

    .line 67
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v0, v4

    check-cast v5, [Z

    .line 36
    array-length v5, v5

    if-ne v5, v1, :cond_5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 37
    :cond_0
    invoke-static {p4, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p4

    mul-int/lit8 p4, p4, 0x2

    add-int/2addr p4, v1

    .line 38
    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 39
    div-int p4, p1, p4

    mul-int v0, v1, p4

    sub-int v0, p1, v0

    .line 40
    div-int/lit8 v0, v0, 0x2

    mul-int v2, p1, p1

    .line 41
    new-array v4, v2, [I

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_1

    aput p3, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_2
    if-ge p3, v1, :cond_4

    .line 43
    aget-object v2, p0, p3

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v1, :cond_3

    .line 45
    aget-boolean v6, v2, v5

    if-eqz v6, :cond_2

    mul-int v6, v5, p4

    add-int/2addr v6, v0

    mul-int v7, p3, p4

    add-int/2addr v7, v0

    add-int/lit8 v8, p3, 0x1

    mul-int v8, v8, p4

    add-int/2addr v8, v0

    :goto_4
    if-ge v7, v8, :cond_2

    mul-int v9, v7, p1

    add-int/2addr v9, v6

    add-int v10, v9, p4

    .line 48
    invoke-static {v4, v9, v10, p2}, Ljava/util/Arrays;->fill([IIII)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 52
    :cond_4
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, p1, p1, p0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string p1, "createBitmap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 36
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "QR matrix must be square and non-empty"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw p0

    :goto_6
    goto :goto_5
.end method

.method public static synthetic render$default([[ZIIIIILjava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/high16 p2, -0x1000000

    :cond_0
    and-int/lit8 p6, p5, 0x8

    if-eqz p6, :cond_1

    const/4 p3, -0x1

    :cond_1
    and-int/lit8 p5, p5, 0x10

    if-eqz p5, :cond_2

    const/4 p4, 0x4

    .line 26
    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/QrBitmap;->render([[ZIIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final renderText(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "text"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x1c

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    invoke-static/range {v1 .. v7}, Lcom/shilapi/xcertplay/QrBitmap;->renderText$default(Ljava/lang/String;IIILcom/shilapi/xcertplay/qr/QrMatrix$Ec;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final renderText(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "text"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-static/range {v1 .. v7}, Lcom/shilapi/xcertplay/QrBitmap;->renderText$default(Ljava/lang/String;IIILcom/shilapi/xcertplay/qr/QrMatrix$Ec;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final renderText(Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "text"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v1 .. v7}, Lcom/shilapi/xcertplay/QrBitmap;->renderText$default(Ljava/lang/String;IIILcom/shilapi/xcertplay/qr/QrMatrix$Ec;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final renderText(Ljava/lang/String;IIILcom/shilapi/xcertplay/qr/QrMatrix$Ec;)Landroid/graphics/Bitmap;
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "text"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ec"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-static {p0, p4}, Lcom/shilapi/xcertplay/qr/QrMatrix;->encode(Ljava/lang/String;Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;)[[Z

    move-result-object v1

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v1 .. v7}, Lcom/shilapi/xcertplay/QrBitmap;->render$default([[ZIIIIILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic renderText$default(Ljava/lang/String;IIILcom/shilapi/xcertplay/qr/QrMatrix$Ec;ILjava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/high16 p2, -0x1000000

    :cond_0
    and-int/lit8 p6, p5, 0x8

    if-eqz p6, :cond_1

    const/4 p3, -0x1

    :cond_1
    and-int/lit8 p5, p5, 0x10

    if-eqz p5, :cond_2

    .line 63
    sget-object p4, Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;->M:Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;

    .line 56
    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/QrBitmap;->renderText(Ljava/lang/String;IIILcom/shilapi/xcertplay/qr/QrMatrix$Ec;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
