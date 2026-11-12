.class public final Lcom/shilapi/xcertplay/FirstRunNotice;
.super Ljava/lang/Object;
.source "FirstRunNotice.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFirstRunNotice.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FirstRunNotice.kt\ncom/shilapi/xcertplay/FirstRunNotice\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,195:1\n1#2:196\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u0015J\u000e\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u0015J\u000e\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u0015J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0018\u0010\u001a\u001a\n \u001c*\u0004\u0018\u00010\u001b0\u001b2\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0016\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001fJ\u0016\u0010!\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u0005J\u001c\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00190\'J\u000e\u0010(\u001a\u00020\u00192\u0006\u0010)\u001a\u00020#J\u0017\u0010*\u001a\u0004\u0018\u00010+2\u0006\u0010)\u001a\u00020#H\u0000\u00a2\u0006\u0002\u0008,R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R(\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0016\n\u0002\u0010\u0012\u0012\u0004\u0008\r\u0010\u0003\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006-"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/FirstRunNotice;",
        "",
        "<init>",
        "()V",
        "COUNTDOWN_SECONDS",
        "",
        "PREFERENCES",
        "",
        "KEY_ACKNOWLEDGED",
        "TAG",
        "BUTTON_TAG",
        "enabledForTest",
        "",
        "getEnabledForTest$annotations",
        "getEnabledForTest",
        "()Ljava/lang/Boolean;",
        "setEnabledForTest",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "enabled",
        "context",
        "Landroid/content/Context;",
        "acknowledged",
        "pending",
        "acknowledge",
        "",
        "prefs",
        "Landroid/content/SharedPreferences;",
        "kotlin.jvm.PlatformType",
        "secondsLeft",
        "startedAt",
        "",
        "now",
        "buttonText",
        "show",
        "Landroid/app/Dialog;",
        "activity",
        "Landroid/app/Activity;",
        "onAcknowledged",
        "Lkotlin/Function0;",
        "fit",
        "dialog",
        "button",
        "Landroid/widget/Button;",
        "button$common_release",
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
.field public static final BUTTON_TAG:Ljava/lang/String; = "first-run-notice-button"

.field public static final COUNTDOWN_SECONDS:I = 0xa

.field public static final INSTANCE:Lcom/shilapi/xcertplay/FirstRunNotice;

.field private static final KEY_ACKNOWLEDGED:Ljava/lang/String; = "acknowledged"

.field private static final PREFERENCES:Ljava/lang/String; = "first_run_notice"

.field private static final TAG:Ljava/lang/String; = "xcertplay-notice"

.field private static volatile enabledForTest:Ljava/lang/Boolean;


# direct methods
.method public static synthetic $r8$lambda$WAUojRv8h7ZWWWiYjKehuE7m5po(JLandroid/app/Activity;Landroid/os/Handler;Lcom/shilapi/xcertplay/FirstRunNotice$show$tick$1;Landroid/app/Dialog;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/shilapi/xcertplay/FirstRunNotice;->show$lambda$7(JLandroid/app/Activity;Landroid/os/Handler;Lcom/shilapi/xcertplay/FirstRunNotice$show$tick$1;Landroid/app/Dialog;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z6Sk4Wa150HemYZ_1aHEMbX9k_o(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/FirstRunNotice;->show$lambda$6(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$puI03seYT9CNiwiQ13Zbrml8c04(Landroid/os/Handler;Lcom/shilapi/xcertplay/FirstRunNotice$show$tick$1;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/FirstRunNotice;->show$lambda$8(Landroid/os/Handler;Lcom/shilapi/xcertplay/FirstRunNotice$show$tick$1;Landroid/content/DialogInterface;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/FirstRunNotice;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/FirstRunNotice;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/FirstRunNotice;->INSTANCE:Lcom/shilapi/xcertplay/FirstRunNotice;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$show$showState(Landroid/widget/Button;Landroid/app/Activity;Lcom/shilapi/xcertplay/Glass$Palette;I)V
    .locals 0

    .line 47
    invoke-static {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/FirstRunNotice;->show$showState(Landroid/widget/Button;Landroid/app/Activity;Lcom/shilapi/xcertplay/Glass$Palette;I)V

    return-void
.end method

.method private final acknowledge(Landroid/content/Context;)V
    .locals 2

    .line 71
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/FirstRunNotice;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "acknowledged"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static synthetic getEnabledForTest$annotations()V
    .locals 0

    return-void
.end method

.method private final prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 74
    const-string v0, "first_run_notice"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method

.method private static final show$dp(FI)I
    .locals 0

    int-to-float p1, p1

    mul-float p1, p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private static final show$lambda$6(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/16 p0, 0x6f

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static final show$lambda$7(JLandroid/app/Activity;Landroid/os/Handler;Lcom/shilapi/xcertplay/FirstRunNotice$show$tick$1;Landroid/app/Dialog;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 2

    .line 165
    sget-object p7, Lcom/shilapi/xcertplay/FirstRunNotice;->INSTANCE:Lcom/shilapi/xcertplay/FirstRunNotice;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p7, p0, p1, v0, v1}, Lcom/shilapi/xcertplay/FirstRunNotice;->secondsLeft(JJ)I

    move-result p0

    if-lez p0, :cond_0

    return-void

    .line 166
    :cond_0
    check-cast p2, Landroid/content/Context;

    invoke-direct {p7, p2}, Lcom/shilapi/xcertplay/FirstRunNotice;->acknowledge(Landroid/content/Context;)V

    .line 167
    const-string/jumbo p0, "xcertplay-notice"

    const-string p1, "first-run notice acknowledged"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    check-cast p4, Ljava/lang/Runnable;

    invoke-virtual {p3, p4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 169
    invoke-virtual {p5}, Landroid/app/Dialog;->dismiss()V

    .line 170
    invoke-interface {p6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final show$lambda$8(Landroid/os/Handler;Lcom/shilapi/xcertplay/FirstRunNotice$show$tick$1;Landroid/content/DialogInterface;)V
    .locals 0

    .line 172
    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final show$showState(Landroid/widget/Button;Landroid/app/Activity;Lcom/shilapi/xcertplay/Glass$Palette;I)V
    .locals 3

    .line 146
    sget-object v0, Lcom/shilapi/xcertplay/FirstRunNotice;->INSTANCE:Lcom/shilapi/xcertplay/FirstRunNotice;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {v0, p1, p3}, Lcom/shilapi/xcertplay/FirstRunNotice;->buttonText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 147
    :goto_0
    invoke-virtual {p0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 149
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/Glass$Palette;->getOnPrimary()I

    move-result p3

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/Glass$Palette;->getMuted()I

    move-result p3

    :goto_2
    invoke-virtual {p0, p3}, Landroid/widget/Button;->setTextColor(I)V

    .line 150
    check-cast p0, Landroid/view/View;

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/Glass$Palette;->getRipple()I

    move-result p3

    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    const-string/jumbo v1, "valueOf(...)"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    sget-object v1, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/shilapi/xcertplay/Glass$Kind;->PRIMARY:Lcom/shilapi/xcertplay/Glass$Kind;

    goto :goto_3

    :cond_3
    sget-object v0, Lcom/shilapi/xcertplay/Glass$Kind;->CONTROL:Lcom/shilapi/xcertplay/Glass$Kind;

    :goto_3
    const/high16 v2, 0x41b00000    # 22.0f

    invoke-virtual {v1, p1, v0, v2, p2}, Lcom/shilapi/xcertplay/Glass;->panel(Landroid/content/Context;Lcom/shilapi/xcertplay/Glass$Kind;FLcom/shilapi/xcertplay/Glass$Palette;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p2, 0x0

    .line 150
    invoke-static {p3, p1, p2}, Lcom/shilapi/xcertplay/LegacyViewsKt;->rippleCompat(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/LegacyViewsKt;->setBackgroundCompat(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public final acknowledged(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/FirstRunNotice;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "acknowledged"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public final button$common_release(Landroid/app/Dialog;)Landroid/widget/Button;
    .locals 2

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "first-run-notice-button"

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    instance-of v1, p1, Landroid/widget/Button;

    if-eqz v1, :cond_1

    check-cast p1, Landroid/widget/Button;

    return-object p1

    :cond_1
    return-object v0
.end method

.method public final buttonText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    const-string v0, "getString(...)"

    if-lez p2, :cond_0

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->first_run_notice_button_countdown:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 85
    :cond_0
    sget p2, Lcom/shilapi/xcertplay/host/R$string;->first_run_notice_button:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final enabled(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    sget-object v0, Lcom/shilapi/xcertplay/FirstRunNotice;->enabledForTest:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/shilapi/xcertplay/host/R$bool;->first_run_notice_enabled:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    return p1
.end method

.method public final fit(Landroid/app/Dialog;)V
    .locals 3

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 187
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const v2, 0x3f666666    # 0.9f

    mul-float v1, v1, v2

    float-to-int v1, v1

    const/16 v2, 0x2f8

    int-to-float v2, v2

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float v2, v2, p1

    float-to-int p1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, -0x2

    .line 188
    invoke-virtual {v0, p1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 189
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge p1, v1, :cond_1

    const/16 p1, 0x400

    invoke-virtual {v0, p1}, Landroid/view/Window;->addFlags(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final getEnabledForTest()Ljava/lang/Boolean;
    .locals 1

    .line 56
    sget-object v0, Lcom/shilapi/xcertplay/FirstRunNotice;->enabledForTest:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final pending(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/FirstRunNotice;->enabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/FirstRunNotice;->acknowledged(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final secondsLeft(JJ)I
    .locals 2

    sub-long/2addr p3, p1

    const-wide/16 p1, 0x0

    .line 78
    invoke-static {p3, p4, p1, p2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide p3

    const-wide/16 v0, 0x2710

    sub-long/2addr v0, p3

    cmp-long p3, v0, p1

    if-gtz p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 p1, 0x3e7

    int-to-long p1, p1

    add-long/2addr v0, p1

    const/16 p1, 0x3e8

    int-to-long p1, p1

    .line 79
    div-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method public final setEnabledForTest(Ljava/lang/Boolean;)V
    .locals 0

    .line 56
    sput-object p1, Lcom/shilapi/xcertplay/FirstRunNotice;->enabledForTest:Ljava/lang/Boolean;

    return-void
.end method

.method public final show(Landroid/app/Activity;Lkotlin/jvm/functions/Function0;)Landroid/app/Dialog;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Landroid/app/Dialog;"
        }
    .end annotation

    move-object/from16 v3, p1

    const-string v0, "activity"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onAcknowledged"

    move-object/from16 v8, p2

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    sget-object v0, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/Glass;->getCurrent()Lcom/shilapi/xcertplay/Glass$Palette;

    move-result-object v7

    .line 93
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 95
    new-instance v1, Landroid/widget/TextView;

    move-object v2, v3

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 96
    sget v4, Lcom/shilapi/xcertplay/host/R$string;->first_run_notice_title:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41a00000    # 20.0f

    .line 97
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 98
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 99
    invoke-virtual {v7}, Lcom/shilapi/xcertplay/Glass$Palette;->getText()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v4, 0x18

    .line 100
    invoke-static {v0, v4}, Lcom/shilapi/xcertplay/FirstRunNotice;->show$dp(FI)I

    move-result v6

    const/16 v9, 0x14

    invoke-static {v0, v9}, Lcom/shilapi/xcertplay/FirstRunNotice;->show$dp(FI)I

    move-result v10

    invoke-static {v0, v4}, Lcom/shilapi/xcertplay/FirstRunNotice;->show$dp(FI)I

    move-result v11

    const/16 v12, 0xa

    invoke-static {v0, v12}, Lcom/shilapi/xcertplay/FirstRunNotice;->show$dp(FI)I

    move-result v13

    invoke-virtual {v1, v6, v10, v11, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 103
    sget-object v6, Lcom/shilapi/xcertplay/NoticeTitleGlyph;->INSTANCE:Lcom/shilapi/xcertplay/NoticeTitleGlyph;

    sget v10, Lcom/shilapi/xcertplay/host/R$string;->first_run_notice_title:I

    invoke-virtual {v3, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "getString(...)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/shilapi/xcertplay/Glass$Palette;->getText()I

    move-result v11

    invoke-virtual {v6, v1, v10, v11}, Lcom/shilapi/xcertplay/NoticeTitleGlyph;->setTitle(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 105
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 106
    sget v10, Lcom/shilapi/xcertplay/host/R$string;->first_run_notice_body:I

    invoke-virtual {v3, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v10, 0x41800000    # 16.0f

    .line 107
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 108
    invoke-virtual {v7}, Lcom/shilapi/xcertplay/Glass$Palette;->getText()I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v10, 0x3

    .line 109
    invoke-static {v0, v10}, Lcom/shilapi/xcertplay/FirstRunNotice;->show$dp(FI)I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v6, v10, v11}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 110
    invoke-static {v0, v4}, Lcom/shilapi/xcertplay/FirstRunNotice;->show$dp(FI)I

    move-result v10

    const/4 v13, 0x2

    invoke-static {v0, v13}, Lcom/shilapi/xcertplay/FirstRunNotice;->show$dp(FI)I

    move-result v13

    invoke-static {v0, v4}, Lcom/shilapi/xcertplay/FirstRunNotice;->show$dp(FI)I

    move-result v14

    const/16 v15, 0xc

    invoke-static {v0, v15}, Lcom/shilapi/xcertplay/FirstRunNotice;->show$dp(FI)I

    move-result v15

    invoke-virtual {v6, v10, v13, v14, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 113
    new-instance v10, Landroid/widget/ScrollView;

    invoke-direct {v10, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 114
    invoke-virtual {v10, v5}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    const/4 v13, 0x0

    .line 115
    invoke-virtual {v10, v13}, Landroid/widget/ScrollView;->setScrollbarFadingEnabled(Z)V

    .line 116
    check-cast v6, Landroid/view/View;

    new-instance v14, Landroid/view/ViewGroup$LayoutParams;

    const/4 v15, -0x1

    const/4 v9, -0x2

    invoke-direct {v14, v15, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v6, v14}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    new-instance v6, Landroid/widget/Button;

    invoke-direct {v6, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 119
    const-string v14, "first-run-notice-button"

    invoke-virtual {v6, v14}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 120
    invoke-virtual {v6, v13}, Landroid/widget/Button;->setAllCaps(Z)V

    const/high16 v14, 0x41880000    # 17.0f

    .line 121
    invoke-virtual {v6, v14}, Landroid/widget/Button;->setTextSize(F)V

    .line 122
    const-string v14, "sans-serif-medium"

    invoke-static {v14, v13}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v14

    invoke-virtual {v6, v14}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v14, 0x10

    .line 123
    invoke-static {v0, v14}, Lcom/shilapi/xcertplay/FirstRunNotice;->show$dp(FI)I

    move-result v4

    invoke-static {v0, v12}, Lcom/shilapi/xcertplay/FirstRunNotice;->show$dp(FI)I

    move-result v11

    invoke-static {v0, v14}, Lcom/shilapi/xcertplay/FirstRunNotice;->show$dp(FI)I

    move-result v14

    invoke-static {v0, v12}, Lcom/shilapi/xcertplay/FirstRunNotice;->show$dp(FI)I

    move-result v13

    invoke-virtual {v6, v4, v11, v14, v13}, Landroid/widget/Button;->setPadding(IIII)V

    const/16 v4, 0x36

    .line 124
    invoke-static {v0, v4}, Lcom/shilapi/xcertplay/FirstRunNotice;->show$dp(FI)I

    move-result v11

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setMinHeight(I)V

    invoke-static {v0, v4}, Lcom/shilapi/xcertplay/FirstRunNotice;->show$dp(FI)I

    move-result v4

    invoke-virtual {v6, v4}, Landroid/widget/Button;->setMinimumHeight(I)V

    .line 125
    move-object v4, v6

    check-cast v4, Landroid/view/View;

    invoke-static {v4}, Lcom/shilapi/xcertplay/LegacyViewsKt;->clearStateListAnimatorCompat(Landroid/view/View;)V

    .line 129
    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 130
    invoke-virtual {v11, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 131
    check-cast v1, Landroid/view/View;

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v13, v15, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v13, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v11, v1, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    check-cast v10, Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    invoke-direct {v1, v15, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v11, v10, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v15, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0x18

    invoke-static {v0, v9}, Lcom/shilapi/xcertplay/FirstRunNotice;->show$dp(FI)I

    move-result v10

    invoke-static {v0, v12}, Lcom/shilapi/xcertplay/FirstRunNotice;->show$dp(FI)I

    move-result v13

    invoke-static {v0, v9}, Lcom/shilapi/xcertplay/FirstRunNotice;->show$dp(FI)I

    move-result v9

    const/16 v14, 0x14

    invoke-static {v0, v14}, Lcom/shilapi/xcertplay/FirstRunNotice;->show$dp(FI)I

    move-result v0

    invoke-virtual {v1, v10, v13, v9, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v11, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    new-instance v1, Landroid/app/Dialog;

    invoke-virtual {v7}, Lcom/shilapi/xcertplay/Glass$Palette;->getDark()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/shilapi/xcertplay/host/R$style;->Theme_Xcertplay_Dialog:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/shilapi/xcertplay/host/R$style;->Theme_Xcertplay_Dialog_Light:I

    :goto_0
    invoke-direct {v1, v2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 136
    invoke-virtual {v1, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 137
    check-cast v11, Landroid/view/View;

    invoke-virtual {v1, v11}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 v14, 0x0

    .line 139
    invoke-virtual {v1, v14}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 140
    invoke-virtual {v1, v14}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 141
    new-instance v0, Lcom/shilapi/xcertplay/FirstRunNotice$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/FirstRunNotice$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 143
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 144
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 153
    new-instance v0, Lcom/shilapi/xcertplay/FirstRunNotice$show$tick$1;

    move-object v5, v6

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/shilapi/xcertplay/FirstRunNotice$show$tick$1;-><init>(Landroid/app/Dialog;JLandroid/os/Handler;Landroid/widget/Button;Landroid/app/Activity;Lcom/shilapi/xcertplay/Glass$Palette;)V

    move-object v10, v5

    move-object v9, v7

    .line 163
    new-instance v5, Lcom/shilapi/xcertplay/FirstRunNotice$$ExternalSyntheticLambda1;

    move-object v6, v5

    move-object v5, v0

    move-object v0, v6

    move-object v6, v1

    move-wide v1, v2

    move-object v7, v8

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/shilapi/xcertplay/FirstRunNotice$$ExternalSyntheticLambda1;-><init>(JLandroid/app/Activity;Landroid/os/Handler;Lcom/shilapi/xcertplay/FirstRunNotice$show$tick$1;Landroid/app/Dialog;Lkotlin/jvm/functions/Function0;)V

    move-object v2, v0

    move-object v0, v5

    move-object v1, v6

    invoke-virtual {v10, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    new-instance v2, Lcom/shilapi/xcertplay/FirstRunNotice$$ExternalSyntheticLambda2;

    invoke-direct {v2, v4, v0}, Lcom/shilapi/xcertplay/FirstRunNotice$$ExternalSyntheticLambda2;-><init>(Landroid/os/Handler;Lcom/shilapi/xcertplay/FirstRunNotice$show$tick$1;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 173
    invoke-static {v10, v3, v9, v12}, Lcom/shilapi/xcertplay/FirstRunNotice;->show$showState(Landroid/widget/Button;Landroid/app/Activity;Lcom/shilapi/xcertplay/Glass$Palette;I)V

    .line 174
    invoke-static {v1}, Lcom/shilapi/xcertplay/E01Dialogs;->showDialog(Landroid/app/Dialog;)V

    move-object/from16 v2, p0

    .line 175
    invoke-virtual {v2, v1}, Lcom/shilapi/xcertplay/FirstRunNotice;->fit(Landroid/app/Dialog;)V

    .line 176
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v5, Lcom/shilapi/xcertplay/CarDisplay;->INSTANCE:Lcom/shilapi/xcertplay/CarDisplay;

    invoke-virtual {v5, v3}, Lcom/shilapi/xcertplay/CarDisplay;->textDirection(Landroid/view/View;)V

    .line 177
    :cond_1
    check-cast v0, Ljava/lang/Runnable;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v4, v0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 178
    const-string/jumbo v0, "xcertplay-notice"

    const-string v3, "first-run notice shown (countdown 10s)"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method
