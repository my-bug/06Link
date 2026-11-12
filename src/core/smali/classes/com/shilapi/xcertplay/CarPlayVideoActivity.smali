.class public final Lcom/shilapi/xcertplay/CarPlayVideoActivity;
.super Landroid/app/Activity;
.source "CarPlayVideoActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/CarPlayVideoActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCarPlayVideoActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CarPlayVideoActivity.kt\ncom/shilapi/xcertplay/CarPlayVideoActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,204:1\n1#2:205\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u0000 \'2\u00020\u0001:\u0001\'B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0014J\u0012\u0010\u0014\u001a\u00020\u00052\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0014J\u0008\u0010\u0017\u001a\u00020\u0005H\u0002J\u0008\u0010\u0018\u001a\u00020\u0005H\u0002J\u0008\u0010\u0019\u001a\u00020\u000fH\u0002J\u0008\u0010\u001a\u001a\u00020\u0005H\u0002J\u0008\u0010\u001b\u001a\u00020\u0005H\u0002J\u0006\u0010\u001c\u001a\u00020\u001dJ\u0006\u0010\u001e\u001a\u00020\u0005J\u0006\u0010\u001f\u001a\u00020\u0005J\u000e\u0010 \u001a\u00020\u00052\u0006\u0010!\u001a\u00020\"J\u0006\u0010#\u001a\u00020\u0005J\u0008\u0010$\u001a\u00020\u0005H\u0014J\u0010\u0010%\u001a\u00020\"2\u0006\u0010&\u001a\u00020\"H\u0002R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcom/shilapi/xcertplay/CarPlayVideoActivity;",
        "Landroid/app/Activity;",
        "<init>",
        "()V",
        "attachBaseContext",
        "",
        "newBase",
        "Landroid/content/Context;",
        "main",
        "Landroid/os/Handler;",
        "host",
        "Lcom/shilapi/xcertplay/CarPlayVideoPlayerHost;",
        "root",
        "Landroid/widget/FrameLayout;",
        "controls",
        "Landroid/view/View;",
        "playPause",
        "Landroid/widget/TextView;",
        "hideControls",
        "Ljava/lang/Runnable;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "showUnavailable",
        "enterFullscreen",
        "controlBar",
        "showControls",
        "updatePlayPause",
        "state",
        "Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;",
        "load",
        "applyRate",
        "skip",
        "deltaMillis",
        "",
        "applySeek",
        "onDestroy",
        "dp",
        "value",
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
.field public static final CONTROLS_MILLIS:J = 0xfa0L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final Companion:Lcom/shilapi/xcertplay/CarPlayVideoActivity$Companion;

.field public static final TAG:Ljava/lang/String; = "DiPlay-Video"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private controls:Landroid/view/View;

.field private final hideControls:Ljava/lang/Runnable;

.field private host:Lcom/shilapi/xcertplay/CarPlayVideoPlayerHost;

.field private final main:Landroid/os/Handler;

.field private playPause:Landroid/widget/TextView;

.field private root:Landroid/widget/FrameLayout;


# direct methods
.method public static synthetic $r8$lambda$2FqdTwcAoBiQmZ6J2Rq9Xocm2Kk(Lcom/shilapi/xcertplay/CarPlayVideoActivity;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->controlBar$lambda$18$lambda$16(Lcom/shilapi/xcertplay/CarPlayVideoActivity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$6cm38tLQVKQTbpGaXa290g0tXYw()Lkotlin/Unit;
    .locals 1

    invoke-static {}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->controlBar$lambda$15()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$auzJJq4HWatuIliwhVv3UqABfKc(Lkotlin/jvm/functions/Function0;Lcom/shilapi/xcertplay/CarPlayVideoActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->controlBar$pill$lambda$14$lambda$13(Lkotlin/jvm/functions/Function0;Lcom/shilapi/xcertplay/CarPlayVideoActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c1ixasoyWIMM8BdK7nsbN4RYwgQ(Lcom/shilapi/xcertplay/CarPlayVideoActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->showUnavailable$lambda$9$lambda$8(Lcom/shilapi/xcertplay/CarPlayVideoActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fbvEcReTF7WJrNpcvb5aIx-eVWI(Lcom/shilapi/xcertplay/CarPlayVideoActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->onCreate$lambda$3(Lcom/shilapi/xcertplay/CarPlayVideoActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qSSVpFg7oRcHSeH8nBFG6MGIYzs(Lcom/shilapi/xcertplay/CarPlayVideoActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->hideControls$lambda$0(Lcom/shilapi/xcertplay/CarPlayVideoActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tE7OwBwOMjA9nD2q4tTkbDcZ15M(I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->onCreate$lambda$4(I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/CarPlayVideoActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/CarPlayVideoActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->Companion:Lcom/shilapi/xcertplay/CarPlayVideoActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->main:Landroid/os/Handler;

    .line 38
    new-instance v0, Lcom/shilapi/xcertplay/CarPlayVideoActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/shilapi/xcertplay/CarPlayVideoActivity$$ExternalSyntheticLambda2;-><init>(Lcom/shilapi/xcertplay/CarPlayVideoActivity;)V

    iput-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->hideControls:Ljava/lang/Runnable;

    return-void
.end method

.method private final controlBar()Landroid/view/View;
    .locals 5

    .line 140
    new-instance v0, Lcom/shilapi/xcertplay/CarPlayVideoActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/CarPlayVideoActivity$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, ""

    invoke-static {p0, v1, v0}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->controlBar$pill(Lcom/shilapi/xcertplay/CarPlayVideoActivity;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->playPause:Landroid/widget/TextView;

    .line 141
    new-instance v0, Landroid/widget/LinearLayout;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 142
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 143
    sget v1, Lcom/shilapi/xcertplay/host/R$string;->video_back_to_carplay:I

    invoke-virtual {p0, v1}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u2039  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/shilapi/xcertplay/CarPlayVideoActivity$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/shilapi/xcertplay/CarPlayVideoActivity$$ExternalSyntheticLambda6;-><init>(Lcom/shilapi/xcertplay/CarPlayVideoActivity;)V

    invoke-static {p0, v1, v2}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->controlBar$pill(Lcom/shilapi/xcertplay/CarPlayVideoActivity;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroid/widget/TextView;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iget-object v1, p0, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->playPause:Landroid/widget/TextView;

    if-nez v1, :cond_0

    const-string v1, "playPause"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    check-cast v1, Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v4, 0x10

    invoke-direct {p0, v4}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->dp(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/shilapi/xcertplay/LegacyViewsKt;->setMarginStartCompat(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private static final controlBar$lambda$15()Lkotlin/Unit;
    .locals 2

    .line 140
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayVideo;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayVideo;

    sget-object v1, Lcom/shilapi/xcertplay/CarPlayVideo;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayVideo;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/CarPlayVideo;->getPlaying()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/CarPlayVideo;->setPlaying(Z)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final controlBar$lambda$18$lambda$16(Lcom/shilapi/xcertplay/CarPlayVideoActivity;)Lkotlin/Unit;
    .locals 0

    .line 143
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->finish()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final controlBar$pill(Lcom/shilapi/xcertplay/CarPlayVideoActivity;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroid/widget/TextView;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/CarPlayVideoActivity;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Landroid/widget/TextView;"
        }
    .end annotation

    .line 123
    new-instance v0, Landroid/widget/TextView;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 124
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    sget-object p1, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/Glass;->getTEXT()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41a00000    # 20.0f

    const/4 v1, 0x2

    .line 126
    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 p1, 0x11

    .line 127
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/16 p1, 0x40

    .line 128
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->dp(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 129
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->dp(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMinWidth(I)V

    const/16 p1, 0x18

    .line 130
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->dp(I)I

    move-result v3

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->dp(I)I

    move-result p1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, p1, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 131
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    .line 132
    new-array v8, v1, [Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v3, 0x20

    .line 133
    invoke-direct {p0, v3}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 134
    sget-object v3, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/Glass;->getCurrent()Lcom/shilapi/xcertplay/Glass$Palette;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/Glass$Palette;->getDark()Z

    move-result v3

    if-eqz v3, :cond_0

    const/high16 v3, -0x4d000000

    goto :goto_0

    :cond_0
    const v3, -0x26000001

    :goto_0
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 135
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 132
    aput-object v1, v8, v4

    .line 136
    sget-object v1, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    sget-object v3, Lcom/shilapi/xcertplay/Glass$Kind;->CONTROL:Lcom/shilapi/xcertplay/Glass$Kind;

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/shilapi/xcertplay/Glass;->panel$default(Lcom/shilapi/xcertplay/Glass;Landroid/content/Context;Lcom/shilapi/xcertplay/Glass$Kind;FLcom/shilapi/xcertplay/Glass$Palette;ILjava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v8, v2

    .line 131
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v1, v8}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v1}, Lcom/shilapi/xcertplay/LegacyViewsKt;->setBackgroundCompat(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 138
    new-instance p1, Lcom/shilapi/xcertplay/CarPlayVideoActivity$$ExternalSyntheticLambda4;

    invoke-direct {p1, p2, p0}, Lcom/shilapi/xcertplay/CarPlayVideoActivity$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function0;Lcom/shilapi/xcertplay/CarPlayVideoActivity;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private static final controlBar$pill$lambda$14$lambda$13(Lkotlin/jvm/functions/Function0;Lcom/shilapi/xcertplay/CarPlayVideoActivity;Landroid/view/View;)V
    .locals 0

    .line 138
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    invoke-direct {p1}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->showControls()V

    return-void
.end method

.method private final dp(I)I
    .locals 1

    int-to-float p1, p1

    .line 197
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private final enterFullscreen()V
    .locals 2

    .line 109
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 110
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method private static final hideControls$lambda$0(Lcom/shilapi/xcertplay/CarPlayVideoActivity;)V
    .locals 1

    .line 38
    iget-object p0, p0, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->controls:Landroid/view/View;

    if-nez p0, :cond_0

    const-string p0, "controls"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static final onCreate$lambda$3(Lcom/shilapi/xcertplay/CarPlayVideoActivity;Landroid/view/View;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->showControls()V

    return-void
.end method

.method private static final onCreate$lambda$4(I)Lkotlin/Unit;
    .locals 1

    .line 71
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayVideo;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayVideo;

    invoke-virtual {v0, p0}, Lcom/shilapi/xcertplay/CarPlayVideo;->onPlayerFailed(I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final showControls()V
    .locals 4

    .line 149
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->host:Lcom/shilapi/xcertplay/CarPlayVideoPlayerHost;

    if-nez v0, :cond_0

    return-void

    .line 150
    :cond_0
    invoke-direct {p0}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->updatePlayPause()V

    .line 151
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->controls:Landroid/view/View;

    if-nez v0, :cond_1

    const-string v0, "controls"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->hideControls:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 153
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->hideControls:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private final showUnavailable()V
    .locals 9

    .line 80
    new-instance v0, Landroid/widget/TextView;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 81
    sget v2, Lcom/shilapi/xcertplay/host/R$string;->video_no_system_player:I

    invoke-virtual {p0, v2}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, -0x1

    .line 82
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41900000    # 18.0f

    const/4 v4, 0x2

    .line 83
    invoke-virtual {v0, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v3, 0x11

    .line 84
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v5, 0x20

    .line 85
    invoke-direct {p0, v5}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->dp(I)I

    move-result v6

    invoke-direct {p0, v5}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->dp(I)I

    move-result v7

    invoke-direct {p0, v5}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->dp(I)I

    move-result v8

    invoke-direct {p0, v5}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->dp(I)I

    move-result v5

    invoke-virtual {v0, v6, v7, v8, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 87
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 88
    sget v6, Lcom/shilapi/xcertplay/host/R$string;->video_back_to_carplay:I

    invoke-virtual {p0, v6}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\u2039  "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x41a00000    # 20.0f

    .line 90
    invoke-virtual {v5, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 91
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v4, 0x40

    .line 92
    invoke-direct {p0, v4}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->dp(I)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setMinHeight(I)V

    const/16 v4, 0x18

    .line 93
    invoke-direct {p0, v4}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->dp(I)I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {p0, v4}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->dp(I)I

    move-result v8

    invoke-virtual {v5, v6, v7, v8, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 94
    new-instance v6, Lcom/shilapi/xcertplay/CarPlayVideoActivity$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0}, Lcom/shilapi/xcertplay/CarPlayVideoActivity$$ExternalSyntheticLambda3;-><init>(Lcom/shilapi/xcertplay/CarPlayVideoActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v6, p0, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->root:Landroid/widget/FrameLayout;

    if-nez v6, :cond_0

    const-string v6, "root"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 97
    :cond_0
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 98
    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 99
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 100
    check-cast v0, Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v1, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v7, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    check-cast v5, Landroid/view/View;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0, v4}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v7, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    check-cast v7, Landroid/view/View;

    .line 103
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    .line 96
    invoke-virtual {v6, v7, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static final showUnavailable$lambda$9$lambda$8(Lcom/shilapi/xcertplay/CarPlayVideoActivity;Landroid/view/View;)V
    .locals 0

    .line 94
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->finish()V

    return-void
.end method

.method private final updatePlayPause()V
    .locals 5

    .line 157
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayVideo;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayVideo;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/CarPlayVideo;->getPlaying()Z

    move-result v0

    .line 158
    iget-object v1, p0, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->playPause:Landroid/widget/TextView;

    const/4 v2, 0x0

    const-string v3, "playPause"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    if-eqz v0, :cond_1

    const-string/jumbo v4, "\u275a\u275a"

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "\u25b6"

    :goto_0
    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v1, p0, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->playPause:Landroid/widget/TextView;

    if-nez v1, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    if-eqz v0, :cond_3

    sget v0, Lcom/shilapi/xcertplay/host/R$string;->video_pause:I

    goto :goto_2

    :cond_3
    sget v0, Lcom/shilapi/xcertplay/host/R$string;->video_play:I

    :goto_2
    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final applyRate()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->host:Lcom/shilapi/xcertplay/CarPlayVideoPlayerHost;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/shilapi/xcertplay/CarPlayVideo;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayVideo;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/CarPlayVideo;->getPlaying()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/shilapi/xcertplay/CarPlayVideoPlayerHost;->applyRate(Z)V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->host:Lcom/shilapi/xcertplay/CarPlayVideoPlayerHost;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->controls:Landroid/view/View;

    if-eqz v0, :cond_2

    if-nez v0, :cond_1

    const-string v0, "controls"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->updatePlayPause()V

    :cond_2
    return-void
.end method

.method public final applySeek()V
    .locals 3

    .line 180
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayVideo;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayVideo;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/CarPlayVideo;->getPendingSeekMillis()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 181
    iget-object v1, p0, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->host:Lcom/shilapi/xcertplay/CarPlayVideoPlayerHost;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/shilapi/xcertplay/CarPlayVideoPlayerHost;->state()Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;->getPrepared()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 182
    iget-object v1, p0, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->host:Lcom/shilapi/xcertplay/CarPlayVideoPlayerHost;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/shilapi/xcertplay/CarPlayVideoPlayerHost;->applySeek(I)V

    .line 183
    :cond_0
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayVideo;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayVideo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/CarPlayVideo;->setPendingSeekMillis(Ljava/lang/Integer;)V

    :cond_1
    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "newBase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object v0, Lcom/shilapi/xcertplay/CarDisplay;->INSTANCE:Lcom/shilapi/xcertplay/CarDisplay;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/CarDisplay;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public final load()V
    .locals 3

    .line 166
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayVideo;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayVideo;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/CarPlayVideo;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->host:Lcom/shilapi/xcertplay/CarPlayVideoPlayerHost;

    if-eqz v1, :cond_1

    sget-object v2, Lcom/shilapi/xcertplay/CarPlayVideo;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayVideo;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/CarPlayVideo;->getStartMillis()I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/shilapi/xcertplay/CarPlayVideoPlayerHost;->load(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    .line 41
    sget-object v0, Lcom/shilapi/xcertplay/Appearance;->INSTANCE:Lcom/shilapi/xcertplay/Appearance;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/shilapi/xcertplay/Appearance;->isDark$default(Lcom/shilapi/xcertplay/Appearance;Landroid/content/Context;Ljava/util/Calendar;ILjava/lang/Object;)Z

    move-result v0

    .line 42
    sget-object v2, Lcom/shilapi/xcertplay/Appearance;->INSTANCE:Lcom/shilapi/xcertplay/Appearance;

    invoke-virtual {v2, v0}, Lcom/shilapi/xcertplay/Appearance;->activityTheme(Z)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->setTheme(I)V

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    sget-object p1, Lcom/shilapi/xcertplay/ScreenRotation;->INSTANCE:Lcom/shilapi/xcertplay/ScreenRotation;

    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {p1, v2}, Lcom/shilapi/xcertplay/ScreenRotation;->apply(Landroid/app/Activity;)Z

    .line 45
    sget-object p1, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {p1, v0}, Lcom/shilapi/xcertplay/Glass;->use(Z)Lcom/shilapi/xcertplay/Glass$Palette;

    .line 46
    invoke-direct {p0}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->enterFullscreen()V

    .line 47
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iput-object p1, p0, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->root:Landroid/widget/FrameLayout;

    .line 48
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->setContentView(Landroid/view/View;)V

    .line 49
    sget-object p1, Lcom/shilapi/xcertplay/CarDisplay;->INSTANCE:Lcom/shilapi/xcertplay/CarDisplay;

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "getDecorView(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/shilapi/xcertplay/CarDisplay;->textDirection(Landroid/view/View;)V

    .line 50
    sget-object p1, Lcom/shilapi/xcertplay/CarPlayVideo;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayVideo;

    invoke-virtual {p1, p0}, Lcom/shilapi/xcertplay/CarPlayVideo;->setActivity(Lcom/shilapi/xcertplay/CarPlayVideoActivity;)V

    .line 52
    sget-object p1, Lcom/shilapi/xcertplay/CarPlayVideoPlayerHost;->Companion:Lcom/shilapi/xcertplay/CarPlayVideoPlayerHost$Companion;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/CarPlayVideoPlayerHost$Companion;->create()Lcom/shilapi/xcertplay/CarPlayVideoPlayerHost;

    move-result-object p1

    const/16 v0, -0x326f

    .line 53
    const-string v1, "DiPlay-Video"

    if-nez p1, :cond_0

    .line 54
    const-string p1, "no parking-video backend (no VideoView and no MediaCodec pipeline)"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-direct {p0}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->showUnavailable()V

    .line 56
    sget-object p1, Lcom/shilapi/xcertplay/CarPlayVideo;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayVideo;

    invoke-virtual {p1, v0}, Lcom/shilapi/xcertplay/CarPlayVideo;->onPlayerFailed(I)V

    return-void

    .line 59
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "parking video backend="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iput-object p1, p0, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->host:Lcom/shilapi/xcertplay/CarPlayVideoPlayerHost;

    .line 61
    invoke-direct {p0}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->controlBar()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->controls:Landroid/view/View;

    .line 62
    iget-object v4, p0, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->root:Landroid/widget/FrameLayout;

    const-string v5, "root"

    if-nez v4, :cond_1

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v3

    .line 63
    :cond_1
    iget-object v6, p0, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->controls:Landroid/view/View;

    if-nez v6, :cond_2

    const-string v6, "controls"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v3

    .line 64
    :cond_2
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const v8, 0x800033

    const/4 v9, -0x2

    invoke-direct {v7, v9, v9, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/16 v8, 0x18

    .line 68
    invoke-direct {p0, v8}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->dp(I)I

    move-result v9

    invoke-direct {p0, v8}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->dp(I)I

    move-result v10

    invoke-direct {p0, v8}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->dp(I)I

    move-result v11

    invoke-direct {p0, v8}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->dp(I)I

    move-result v8

    invoke-virtual {v7, v9, v10, v11, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v7, Landroid/view/ViewGroup$LayoutParams;

    .line 62
    invoke-virtual {v4, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    iget-object v4, p0, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->root:Landroid/widget/FrameLayout;

    if-nez v4, :cond_3

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v3

    :cond_3
    new-instance v6, Lcom/shilapi/xcertplay/CarPlayVideoActivity$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/shilapi/xcertplay/CarPlayVideoActivity$$ExternalSyntheticLambda0;-><init>(Lcom/shilapi/xcertplay/CarPlayVideoActivity;)V

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v4, p0, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->root:Landroid/widget/FrameLayout;

    if-nez v4, :cond_4

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v3, v4

    :goto_0
    new-instance v4, Lcom/shilapi/xcertplay/CarPlayVideoActivity$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcom/shilapi/xcertplay/CarPlayVideoActivity$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p1, v2, v3, v4}, Lcom/shilapi/xcertplay/CarPlayVideoPlayerHost;->attach(Landroid/app/Activity;Landroid/widget/FrameLayout;Lkotlin/jvm/functions/Function1;)V

    .line 72
    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object p1, p0

    check-cast p1, Lcom/shilapi/xcertplay/CarPlayVideoActivity;

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->load()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "load failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    sget-object p1, Lcom/shilapi/xcertplay/CarPlayVideo;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayVideo;

    invoke-virtual {p1, v0}, Lcom/shilapi/xcertplay/CarPlayVideo;->onPlayerFailed(I)V

    .line 76
    :cond_5
    invoke-direct {p0}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->showControls()V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->hideControls:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 188
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayVideo;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayVideo;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/CarPlayVideo;->getActivity()Lcom/shilapi/xcertplay/CarPlayVideoActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, p0, :cond_1

    .line 189
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayVideo;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayVideo;

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/CarPlayVideo;->setActivity(Lcom/shilapi/xcertplay/CarPlayVideoActivity;)V

    .line 190
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayVideo;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayVideo;

    iget-object v2, p0, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->host:Lcom/shilapi/xcertplay/CarPlayVideoPlayerHost;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/shilapi/xcertplay/CarPlayVideoPlayerHost;->currentPositionMillis()Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/shilapi/xcertplay/CarPlayVideo;->onPlayerClosed(Ljava/lang/Integer;)V

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->host:Lcom/shilapi/xcertplay/CarPlayVideoPlayerHost;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/shilapi/xcertplay/CarPlayVideoPlayerHost;->release()V

    .line 193
    :cond_2
    iput-object v1, p0, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->host:Lcom/shilapi/xcertplay/CarPlayVideoPlayerHost;

    .line 194
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public final skip(I)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->host:Lcom/shilapi/xcertplay/CarPlayVideoPlayerHost;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/shilapi/xcertplay/CarPlayVideoPlayerHost;->skip(I)V

    :cond_0
    return-void
.end method

.method public final state()Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;
    .locals 10

    .line 162
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->host:Lcom/shilapi/xcertplay/CarPlayVideoPlayerHost;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/shilapi/xcertplay/CarPlayVideoPlayerHost;->state()Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    .line 163
    :cond_1
    :goto_0
    new-instance v1, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;-><init>(ZZDDD)V

    return-object v1
.end method
