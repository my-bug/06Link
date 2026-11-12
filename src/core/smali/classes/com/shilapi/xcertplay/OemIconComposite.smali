.class public final Lcom/shilapi/xcertplay/OemIconComposite;
.super Ljava/lang/Object;
.source "OemIconComposite.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\tJ\u0018\u0010\u000f\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/OemIconComposite;",
        "",
        "<init>",
        "()V",
        "SIZE",
        "",
        "MARGIN",
        "",
        "compositeBitmap",
        "Landroid/graphics/Bitmap;",
        "logo",
        "background",
        "encodePng",
        "",
        "bitmap",
        "composite",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/OemIconComposite;

.field private static final MARGIN:F = 0.14f

.field public static final SIZE:I = 0xc0


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/OemIconComposite;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/OemIconComposite;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/OemIconComposite;->INSTANCE:Lcom/shilapi/xcertplay/OemIconComposite;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic composite$default(Lcom/shilapi/xcertplay/OemIconComposite;Landroid/graphics/Bitmap;IILjava/lang/Object;)[B
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, -0x1

    .line 54
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/OemIconComposite;->composite(Landroid/graphics/Bitmap;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic compositeBitmap$default(Lcom/shilapi/xcertplay/OemIconComposite;Landroid/graphics/Bitmap;IILjava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, -0x1

    .line 26
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/OemIconComposite;->compositeBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final composite(Landroid/graphics/Bitmap;I)[B
    .locals 1

    const-string v0, "logo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/OemIconComposite;->compositeBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/OemIconComposite;->encodePng(Landroid/graphics/Bitmap;)[B

    move-result-object p1

    return-object p1
.end method

.method public final compositeBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    const-string v0, "logo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0xc0

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v2, "createBitmap(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const v3, 0xffffff

    and-int/2addr p2, v3

    const/high16 v3, -0x1000000

    or-int/2addr p2, v3

    .line 30
    invoke-virtual {v2, p2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 31
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    if-lez p2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    if-lez p2, :cond_0

    int-to-float p2, v1

    const v1, 0x42570a3e    # 53.760002f

    sub-float v1, p2, v1

    .line 34
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v1, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 35
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v1

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v1

    sub-float v1, p2, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v1, v5

    sub-float/2addr p2, v4

    div-float/2addr p2, v5

    .line 39
    new-instance v5, Landroid/graphics/Paint;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 40
    new-instance v6, Landroid/graphics/RectF;

    add-float/2addr v3, v1

    add-float/2addr v4, p2

    invoke-direct {v6, v1, p2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 p2, 0x0

    invoke-virtual {v2, p1, p2, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_0
    const/4 p1, 0x0

    .line 42
    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    return-object v0
.end method

.method public final encodePng(Landroid/graphics/Bitmap;)[B
    .locals 5

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    check-cast v0, Ljava/io/Closeable;

    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/io/ByteArrayOutputStream;

    .line 47
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    move-object v3, v1

    check-cast v3, Ljava/io/OutputStream;

    const/16 v4, 0x64

    invoke-virtual {p1, v2, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 50
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .line 46
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string/jumbo v0, "use(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 48
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Could not encode the OEM icon as PNG"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 46
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
