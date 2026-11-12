.class public final Lcom/shilapi/xcertplay/ImageCropActivity;
.super Landroid/app/Activity;
.source "ImageCropActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/ImageCropActivity$Companion;,
        Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageCropActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageCropActivity.kt\ncom/shilapi/xcertplay/ImageCropActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,436:1\n1#2:437\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u0000 $2\u00020\u0001:\u0002#$B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0014J\u0012\u0010\u000f\u001a\u00020\u000c2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0014J\u0008\u0010\u0012\u001a\u00020\u000cH\u0014J\u0010\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0008\u0010\u0016\u001a\u00020\u000cH\u0002J\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001cH\u0002J\u0018\u0010\u001e\u001a\u00020\u000c2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0002R\u0016\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/ImageCropActivity;",
        "Landroid/app/Activity;",
        "<init>",
        "()V",
        "executor",
        "Ljava/util/concurrent/ExecutorService;",
        "kotlin.jvm.PlatformType",
        "cropView",
        "Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;",
        "statusView",
        "Landroid/widget/TextView;",
        "attachBaseContext",
        "",
        "newBase",
        "Landroid/content/Context;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "onConfigurationChanged",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "saveCrop",
        "decodeBitmap",
        "Landroid/graphics/Bitmap;",
        "uri",
        "Landroid/net/Uri;",
        "dp",
        "",
        "value",
        "glass",
        "button",
        "Landroid/widget/Button;",
        "primary",
        "",
        "SquareCropView",
        "Companion",
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
.field public static final Companion:Lcom/shilapi/xcertplay/ImageCropActivity$Companion;

.field public static final EXTRA_CROP_COMPLETE:Ljava/lang/String; = "crop_complete"

.field private static final MAX_DECODE_EDGE:I = 0x800

.field private static final OUTPUT_ICON_PIXELS:I = 0x400


# instance fields
.field private cropView:Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private statusView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$9fSy3431Ak_d_Fab_d-HZ0DIj-0(Lcom/shilapi/xcertplay/ImageCropActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/ImageCropActivity;->onCreate$lambda$11$lambda$10(Lcom/shilapi/xcertplay/ImageCropActivity;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BkTMEgyXDpNv0K5La5pCWQrUW1Y(Lcom/shilapi/xcertplay/ImageCropActivity;Landroid/net/Uri;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/ImageCropActivity;->onCreate$lambda$11(Lcom/shilapi/xcertplay/ImageCropActivity;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p7AT-4_JcIvwUrq0G-I2rACCO0o(Lcom/shilapi/xcertplay/ImageCropActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/ImageCropActivity;->onCreate$lambda$5$lambda$4(Lcom/shilapi/xcertplay/ImageCropActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rVSsryE-KdbQvd9-6E5ll8_GsoM(Lcom/shilapi/xcertplay/ImageCropActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/ImageCropActivity;->onCreate$lambda$3$lambda$2(Lcom/shilapi/xcertplay/ImageCropActivity;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/ImageCropActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/ImageCropActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/ImageCropActivity;->Companion:Lcom/shilapi/xcertplay/ImageCropActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/shilapi/xcertplay/ImageCropActivity;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private final decodeBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 5

    .line 190
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 191
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ImageCropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v2, Ljava/io/Closeable;

    :try_start_0
    move-object v4, v2

    check-cast v4, Ljava/io/InputStream;

    .line 192
    invoke-static {v4, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 194
    :cond_0
    :goto_0
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v2, :cond_3

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gtz v2, :cond_1

    goto :goto_2

    .line 197
    :cond_1
    :goto_1
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/2addr v2, v1

    const/16 v4, 0x800

    if-le v2, v4, :cond_2

    mul-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 200
    :cond_2
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 201
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 202
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 204
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ImageCropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Ljava/io/Closeable;

    :try_start_2
    move-object v1, p1

    check-cast v1, Ljava/io/InputStream;

    .line 205
    invoke-static {v1, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 204
    invoke-static {p1, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_2
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception v1

    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    :goto_2
    return-object v3
.end method

.method private final dp(I)I
    .locals 1

    int-to-float p1, p1

    .line 209
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ImageCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private final glass(Landroid/widget/Button;Z)V
    .locals 10

    .line 213
    sget-object v0, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/Glass;->getON_PRIMARY()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/Glass;->getTEXT()I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    const/high16 v0, 0x41880000    # 17.0f

    .line 214
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextSize(F)V

    .line 215
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    sget-object v1, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/Glass;->getRIPPLE()I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    const-string/jumbo v2, "valueOf(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    sget-object v3, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    move-object v4, p0

    check-cast v4, Landroid/content/Context;

    if-eqz p2, :cond_1

    sget-object p2, Lcom/shilapi/xcertplay/Glass$Kind;->PRIMARY:Lcom/shilapi/xcertplay/Glass$Kind;

    goto :goto_1

    :cond_1
    sget-object p2, Lcom/shilapi/xcertplay/Glass$Kind;->CONTROL:Lcom/shilapi/xcertplay/Glass$Kind;

    :goto_1
    move-object v5, p2

    const/16 v8, 0xc

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lcom/shilapi/xcertplay/Glass;->panel$default(Lcom/shilapi/xcertplay/Glass;Landroid/content/Context;Lcom/shilapi/xcertplay/Glass$Kind;FLcom/shilapi/xcertplay/Glass$Palette;ILjava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 v2, 0x0

    .line 215
    invoke-static {v1, p2, v2}, Lcom/shilapi/xcertplay/LegacyViewsKt;->rippleCompat(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/shilapi/xcertplay/LegacyViewsKt;->setBackgroundCompat(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const/16 p2, 0x36

    .line 217
    invoke-direct {p0, p2}, Lcom/shilapi/xcertplay/ImageCropActivity;->dp(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setMinHeight(I)V

    invoke-direct {p0, p2}, Lcom/shilapi/xcertplay/ImageCropActivity;->dp(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setMinimumHeight(I)V

    .line 218
    invoke-static {v0}, Lcom/shilapi/xcertplay/LegacyViewsKt;->clearStateListAnimatorCompat(Landroid/view/View;)V

    return-void
.end method

.method private static final onCreate$lambda$11(Lcom/shilapi/xcertplay/ImageCropActivity;Landroid/net/Uri;)V
    .locals 1

    .line 127
    :try_start_0
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/ImageCropActivity;->decodeBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 131
    :goto_0
    new-instance v0, Lcom/shilapi/xcertplay/ImageCropActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/shilapi/xcertplay/ImageCropActivity$$ExternalSyntheticLambda0;-><init>(Lcom/shilapi/xcertplay/ImageCropActivity;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/ImageCropActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final onCreate$lambda$11$lambda$10(Lcom/shilapi/xcertplay/ImageCropActivity;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 132
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ImageCropActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/shilapi/xcertplay/compat/Api19Kt;->isDestroyedCompat(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 136
    :cond_0
    const-string/jumbo v0, "statusView"

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 137
    iget-object p1, p0, Lcom/shilapi/xcertplay/ImageCropActivity;->statusView:Landroid/widget/TextView;

    if-nez p1, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    sget p1, Lcom/shilapi/xcertplay/host/R$string;->could_not_decode_image:I

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/ImageCropActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 139
    :cond_2
    iget-object v2, p0, Lcom/shilapi/xcertplay/ImageCropActivity;->cropView:Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;

    if-nez v2, :cond_3

    const-string v2, "cropView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_3
    invoke-virtual {v2, p1}, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 140
    iget-object p1, p0, Lcom/shilapi/xcertplay/ImageCropActivity;->statusView:Landroid/widget/TextView;

    if-nez p1, :cond_4

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v1, p1

    :goto_1
    sget p1, Lcom/shilapi/xcertplay/host/R$string;->drag_to_move_pinch_to_zoom:I

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/ImageCropActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_5
    :goto_2
    if-eqz p1, :cond_6

    .line 133
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    return-void
.end method

.method private static final onCreate$lambda$3$lambda$2(Lcom/shilapi/xcertplay/ImageCropActivity;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 76
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/ImageCropActivity;->setResult(I)V

    .line 77
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ImageCropActivity;->finish()V

    return-void
.end method

.method private static final onCreate$lambda$5$lambda$4(Lcom/shilapi/xcertplay/ImageCropActivity;Landroid/view/View;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/shilapi/xcertplay/ImageCropActivity;->saveCrop()V

    return-void
.end method

.method private final saveCrop()V
    .locals 8

    .line 164
    iget-object v0, p0, Lcom/shilapi/xcertplay/ImageCropActivity;->cropView:Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "cropView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->cropToSquare()Landroid/graphics/Bitmap;

    move-result-object v0

    const-string/jumbo v2, "statusView"

    if-nez v0, :cond_2

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/ImageCropActivity;

    .line 165
    iget-object v0, p0, Lcom/shilapi/xcertplay/ImageCropActivity;->statusView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    sget v0, Lcom/shilapi/xcertplay/host/R$string;->image_is_not_ready:I

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/ImageCropActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 168
    :cond_2
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    check-cast v3, Ljava/io/Closeable;

    :try_start_0
    move-object v4, v3

    check-cast v4, Ljava/io/ByteArrayOutputStream;

    .line 169
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    move-object v6, v4

    check-cast v6, Ljava/io/OutputStream;

    const/16 v7, 0x64

    invoke-virtual {v0, v5, v7, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 170
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 171
    iget-object v0, p0, Lcom/shilapi/xcertplay/ImageCropActivity;->statusView:Landroid/widget/TextView;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    sget v2, Lcom/shilapi/xcertplay/host/R$string;->could_not_encode_image:I

    invoke-virtual {p0, v2}, Lcom/shilapi/xcertplay/ImageCropActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    .line 174
    :cond_4
    :try_start_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 175
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 178
    :try_start_2
    sget-object v3, Lcom/shilapi/xcertplay/AirPlayPersistence;->INSTANCE:Lcom/shilapi/xcertplay/AirPlayPersistence;

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ImageCropActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "getApplicationContext(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v4, v0}, Lcom/shilapi/xcertplay/AirPlayPersistence;->saveCustomAirPlayIcon(Landroid/content/Context;[B)V

    .line 181
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "crop_complete"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const/4 v3, -0x1

    .line 179
    invoke-virtual {p0, v3, v0}, Lcom/shilapi/xcertplay/ImageCropActivity;->setResult(ILandroid/content/Intent;)V

    .line 183
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ImageCropActivity;->finish()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    nop

    .line 185
    iget-object v0, p0, Lcom/shilapi/xcertplay/ImageCropActivity;->statusView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v1, v0

    :goto_1
    sget v0, Lcom/shilapi/xcertplay/host/R$string;->could_not_save_image:I

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/ImageCropActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :catchall_0
    move-exception v0

    .line 168
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v3, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "newBase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget-object v0, Lcom/shilapi/xcertplay/CarDisplay;->INSTANCE:Lcom/shilapi/xcertplay/CarDisplay;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/CarDisplay;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 160
    sget-object p1, Lcom/shilapi/xcertplay/CarDisplay;->INSTANCE:Lcom/shilapi/xcertplay/CarDisplay;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/shilapi/xcertplay/CarDisplay;->onConfigurationChanged(Landroid/content/Context;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 44
    sget-object v0, Lcom/shilapi/xcertplay/Appearance;->INSTANCE:Lcom/shilapi/xcertplay/Appearance;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/shilapi/xcertplay/Appearance;->isDark$default(Lcom/shilapi/xcertplay/Appearance;Landroid/content/Context;Ljava/util/Calendar;ILjava/lang/Object;)Z

    move-result v0

    .line 45
    sget-object v2, Lcom/shilapi/xcertplay/Appearance;->INSTANCE:Lcom/shilapi/xcertplay/Appearance;

    invoke-virtual {v2, v0}, Lcom/shilapi/xcertplay/Appearance;->activityTheme(Z)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/shilapi/xcertplay/ImageCropActivity;->setTheme(I)V

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    sget-object p1, Lcom/shilapi/xcertplay/ScreenRotation;->INSTANCE:Lcom/shilapi/xcertplay/ScreenRotation;

    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {p1, v2}, Lcom/shilapi/xcertplay/ScreenRotation;->apply(Landroid/app/Activity;)Z

    .line 48
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ImageCropActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ImageCropActivity;->finish()V

    return-void

    .line 53
    :cond_0
    sget-object v2, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v2, v0}, Lcom/shilapi/xcertplay/Glass;->use(Z)Lcom/shilapi/xcertplay/Glass$Palette;

    move-result-object v0

    .line 54
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ImageCropActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/Glass$Palette;->getBase()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v4, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    new-instance v2, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;

    invoke-direct {v2, v1, v0}, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;-><init>(Landroid/content/Context;Lcom/shilapi/xcertplay/Glass$Palette;)V

    iput-object v2, p0, Lcom/shilapi/xcertplay/ImageCropActivity;->cropView:Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;

    .line 57
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/Glass$Palette;->getText()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, 0x41800000    # 16.0f

    .line 59
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v4, 0x11

    .line 60
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v5, 0xc

    .line 61
    invoke-direct {p0, v5}, Lcom/shilapi/xcertplay/ImageCropActivity;->dp(I)I

    move-result v6

    const/16 v7, 0x8

    invoke-direct {p0, v7}, Lcom/shilapi/xcertplay/ImageCropActivity;->dp(I)I

    move-result v8

    invoke-direct {p0, v5}, Lcom/shilapi/xcertplay/ImageCropActivity;->dp(I)I

    move-result v9

    invoke-direct {p0, v7}, Lcom/shilapi/xcertplay/ImageCropActivity;->dp(I)I

    move-result v7

    invoke-virtual {v2, v6, v8, v9, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 62
    sget v6, Lcom/shilapi/xcertplay/host/R$string;->loading_image:I

    invoke-virtual {p0, v6}, Lcom/shilapi/xcertplay/ImageCropActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iput-object v2, p0, Lcom/shilapi/xcertplay/ImageCropActivity;->statusView:Landroid/widget/TextView;

    .line 65
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    .line 66
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 67
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v4, 0x10

    .line 68
    invoke-direct {p0, v4}, Lcom/shilapi/xcertplay/ImageCropActivity;->dp(I)I

    move-result v7

    const/16 v8, 0xa

    invoke-direct {p0, v8}, Lcom/shilapi/xcertplay/ImageCropActivity;->dp(I)I

    move-result v8

    invoke-direct {p0, v4}, Lcom/shilapi/xcertplay/ImageCropActivity;->dp(I)I

    move-result v9

    invoke-direct {p0, v4}, Lcom/shilapi/xcertplay/ImageCropActivity;->dp(I)I

    move-result v4

    invoke-virtual {v2, v7, v8, v9, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 71
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 72
    sget v7, Lcom/shilapi/xcertplay/host/R$string;->cancel:I

    invoke-virtual {p0, v7}, Lcom/shilapi/xcertplay/ImageCropActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {v4, v6}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 74
    invoke-direct {p0, v4, v6}, Lcom/shilapi/xcertplay/ImageCropActivity;->glass(Landroid/widget/Button;Z)V

    .line 75
    new-instance v7, Lcom/shilapi/xcertplay/ImageCropActivity$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0}, Lcom/shilapi/xcertplay/ImageCropActivity$$ExternalSyntheticLambda1;-><init>(Lcom/shilapi/xcertplay/ImageCropActivity;)V

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    check-cast v4, Landroid/view/View;

    .line 80
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v7, v6, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    check-cast v7, Landroid/view/ViewGroup$LayoutParams;

    .line 70
    invoke-virtual {v2, v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 84
    sget v7, Lcom/shilapi/xcertplay/host/R$string;->save_1_1:I

    invoke-virtual {p0, v7}, Lcom/shilapi/xcertplay/ImageCropActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {v4, v6}, Landroid/widget/Button;->setAllCaps(Z)V

    const/4 v7, 0x1

    .line 86
    invoke-direct {p0, v4, v7}, Lcom/shilapi/xcertplay/ImageCropActivity;->glass(Landroid/widget/Button;Z)V

    .line 87
    new-instance v7, Lcom/shilapi/xcertplay/ImageCropActivity$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0}, Lcom/shilapi/xcertplay/ImageCropActivity$$ExternalSyntheticLambda2;-><init>(Lcom/shilapi/xcertplay/ImageCropActivity;)V

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    check-cast v4, Landroid/view/View;

    .line 89
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v6, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 90
    move-object v6, v7

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, v5}, Lcom/shilapi/xcertplay/ImageCropActivity;->dp(I)I

    move-result v9

    invoke-static {v6, v9}, Lcom/shilapi/xcertplay/LegacyViewsKt;->setMarginStartCompat(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 91
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 89
    check-cast v7, Landroid/view/ViewGroup$LayoutParams;

    .line 82
    invoke-virtual {v2, v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 95
    move-object v1, v4

    check-cast v1, Landroid/view/View;

    sget-object v6, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v6, v0}, Lcom/shilapi/xcertplay/Glass;->backdrop(Lcom/shilapi/xcertplay/Glass$Palette;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/shilapi/xcertplay/LegacyViewsKt;->setBackgroundCompat(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 97
    iget-object v0, p0, Lcom/shilapi/xcertplay/ImageCropActivity;->cropView:Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;

    if-nez v0, :cond_1

    const-string v0, "cropView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_1
    check-cast v0, Landroid/view/View;

    .line 100
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0x2c

    .line 103
    invoke-direct {p0, v7}, Lcom/shilapi/xcertplay/ImageCropActivity;->dp(I)I

    move-result v7

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/16 v7, 0x54

    invoke-direct {p0, v7}, Lcom/shilapi/xcertplay/ImageCropActivity;->dp(I)I

    move-result v7

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v6, Landroid/view/ViewGroup$LayoutParams;

    .line 96
    invoke-virtual {v4, v0, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    iget-object v0, p0, Lcom/shilapi/xcertplay/ImageCropActivity;->statusView:Landroid/widget/TextView;

    if-nez v0, :cond_2

    const-string/jumbo v0, "statusView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v3, v0

    :goto_0
    check-cast v3, Landroid/view/View;

    .line 107
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v6, 0x31

    const/4 v7, -0x2

    invoke-direct {v0, v7, v7, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 111
    invoke-direct {p0, v5}, Lcom/shilapi/xcertplay/ImageCropActivity;->dp(I)I

    move-result v5

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    .line 105
    invoke-virtual {v4, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    check-cast v2, Landroid/view/View;

    .line 115
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x50

    invoke-direct {v0, v8, v7, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    .line 113
    invoke-virtual {v4, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    invoke-virtual {p0, v1}, Lcom/shilapi/xcertplay/ImageCropActivity;->setContentView(Landroid/view/View;)V

    .line 123
    sget-object v0, Lcom/shilapi/xcertplay/CarDisplay;->INSTANCE:Lcom/shilapi/xcertplay/CarDisplay;

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ImageCropActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const-string v2, "getDecorView(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/CarDisplay;->textDirection(Landroid/view/View;)V

    .line 125
    iget-object v0, p0, Lcom/shilapi/xcertplay/ImageCropActivity;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/shilapi/xcertplay/ImageCropActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/shilapi/xcertplay/ImageCropActivity$$ExternalSyntheticLambda3;-><init>(Lcom/shilapi/xcertplay/ImageCropActivity;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/shilapi/xcertplay/ImageCropActivity;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 150
    iget-object v0, p0, Lcom/shilapi/xcertplay/ImageCropActivity;->cropView:Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    const-string v0, "cropView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 151
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
