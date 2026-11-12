.class public final Lcom/shilapi/xcertplay/WifiJoinCard;
.super Landroid/widget/LinearLayout;
.source "WifiJoinCard.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/WifiJoinCard$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWifiJoinCard.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WifiJoinCard.kt\ncom/shilapi/xcertplay/WifiJoinCard\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,120:1\n1#2:121\n1310#3,2:122\n*S KotlinDebug\n*F\n+ 1 WifiJoinCard.kt\ncom/shilapi/xcertplay/WifiJoinCard\n*L\n62#1:122,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0005\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010\u0015\u001a\u00020\u00082\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017J\u0018\u0010\u0018\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u000eH\u0014R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/WifiJoinCard;",
        "Landroid/widget/LinearLayout;",
        "context",
        "Landroid/content/Context;",
        "passwordShown",
        "Lkotlin/Function0;",
        "",
        "onTogglePassword",
        "",
        "<init>",
        "(Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V",
        "density",
        "",
        "dp",
        "",
        "v",
        "qrView",
        "Landroid/widget/ImageView;",
        "texts",
        "qrPayload",
        "",
        "bind",
        "onAir",
        "Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory$Broadcast;",
        "onMeasure",
        "widthMeasureSpec",
        "heightMeasureSpec",
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
.field public static final Companion:Lcom/shilapi/xcertplay/WifiJoinCard$Companion;

.field public static final MIN_QR_DP:I = 0x78

.field public static final NARROW_DP:I = 0x1b8

.field public static final QR_DP:I = 0xa8

.field public static final SHOW_TAG:Ljava/lang/String; = "wifi-join-card-show"

.field public static final TAG:Ljava/lang/String; = "wifi-join-card"


# instance fields
.field private final density:F

.field private final onTogglePassword:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final passwordShown:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private qrPayload:Ljava/lang/String;

.field private final qrView:Landroid/widget/ImageView;

.field private final texts:Landroid/widget/LinearLayout;


# direct methods
.method public static synthetic $r8$lambda$OzjUzxMFaW9tzW3nzpXv8knssoM(Lcom/shilapi/xcertplay/WifiJoinCard;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/WifiJoinCard;->bind$lambda$8$lambda$7(Lcom/shilapi/xcertplay/WifiJoinCard;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/WifiJoinCard$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/WifiJoinCard$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/WifiJoinCard;->Companion:Lcom/shilapi/xcertplay/WifiJoinCard$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "passwordShown"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onTogglePassword"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p2, p0, Lcom/shilapi/xcertplay/WifiJoinCard;->passwordShown:Lkotlin/jvm/functions/Function0;

    .line 30
    iput-object p3, p0, Lcom/shilapi/xcertplay/WifiJoinCard;->onTogglePassword:Lkotlin/jvm/functions/Function0;

    .line 32
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/WifiJoinCard;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Lcom/shilapi/xcertplay/WifiJoinCard;->density:F

    .line 34
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object p3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget p3, Lcom/shilapi/xcertplay/host/R$string;->wifi_card_title:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/shilapi/xcertplay/WifiJoinCard;->qrView:Landroid/widget/ImageView;

    .line 35
    new-instance p3, Landroid/widget/LinearLayout;

    invoke-direct {p3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iput-object p3, p0, Lcom/shilapi/xcertplay/WifiJoinCard;->texts:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/WifiJoinCard;->setOrientation(I)V

    const/16 v1, 0x10

    .line 41
    invoke-virtual {p0, v1}, Lcom/shilapi/xcertplay/WifiJoinCard;->setGravity(I)V

    .line 42
    move-object v2, p0

    check-cast v2, Landroid/view/View;

    sget-object v3, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    sget-object v5, Lcom/shilapi/xcertplay/Glass$Kind;->CARD:Lcom/shilapi/xcertplay/Glass$Kind;

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/high16 v6, 0x41a00000    # 20.0f

    const/4 v7, 0x0

    move-object v4, p1

    invoke-static/range {v3 .. v9}, Lcom/shilapi/xcertplay/Glass;->panel$default(Lcom/shilapi/xcertplay/Glass;Landroid/content/Context;Lcom/shilapi/xcertplay/Glass$Kind;FLcom/shilapi/xcertplay/Glass$Palette;ILjava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/shilapi/xcertplay/LegacyViewsKt;->setBackgroundCompat(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 43
    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/WifiJoinCard;->dp(I)I

    move-result p1

    const/16 v2, 0xc

    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/WifiJoinCard;->dp(I)I

    move-result v3

    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/WifiJoinCard;->dp(I)I

    move-result v4

    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/WifiJoinCard;->dp(I)I

    move-result v2

    invoke-virtual {p0, p1, v3, v4, v2}, Lcom/shilapi/xcertplay/WifiJoinCard;->setPadding(IIII)V

    .line 44
    check-cast p2, Landroid/view/View;

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0xa8

    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/WifiJoinCard;->dp(I)I

    move-result v3

    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/WifiJoinCard;->dp(I)I

    move-result v2

    invoke-direct {p1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, p2, p1}, Lcom/shilapi/xcertplay/WifiJoinCard;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    check-cast p3, Landroid/view/View;

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, p2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/WifiJoinCard;->dp(I)I

    move-result v0

    invoke-static {p2, v0}, Lcom/shilapi/xcertplay/LegacyViewsKt;->setMarginStartCompat(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, p3, p1}, Lcom/shilapi/xcertplay/WifiJoinCard;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    const-string/jumbo p1, "wifi-join-card"

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/WifiJoinCard;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method private static final bind$lambda$8$lambda$7(Lcom/shilapi/xcertplay/WifiJoinCard;Landroid/view/View;)V
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/shilapi/xcertplay/WifiJoinCard;->onTogglePassword:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final bind$line(Lcom/shilapi/xcertplay/WifiJoinCard;Ljava/lang/String;IIZ)Landroid/widget/TextView;
    .locals 2

    .line 52
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/WifiJoinCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 53
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float p1, p2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p4, :cond_0

    .line 54
    const-string p1, "sans-serif-medium"

    goto :goto_0

    :cond_0
    const-string p1, "sans-serif"

    :goto_0
    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 p1, 0x2

    .line 55
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/WifiJoinCard;->dp(I)I

    move-result p0

    int-to-float p0, p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p0, p1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    return-object v0
.end method

.method static synthetic bind$line$default(Lcom/shilapi/xcertplay/WifiJoinCard;Ljava/lang/String;IIZILjava/lang/Object;)Landroid/widget/TextView;
    .locals 0

    and-int/lit8 p5, p5, 0x10

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 52
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/WifiJoinCard;->bind$line(Lcom/shilapi/xcertplay/WifiJoinCard;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method private final dp(I)I
    .locals 1

    int-to-float p1, p1

    .line 33
    iget v0, p0, Lcom/shilapi/xcertplay/WifiJoinCard;->density:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method


# virtual methods
.method public final bind(Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory$Broadcast;)V
    .locals 26

    move-object/from16 v0, p0

    .line 51
    iget-object v1, v0, Lcom/shilapi/xcertplay/WifiJoinCard;->texts:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v7, -0x1

    .line 57
    const-string v8, "getString(...)"

    const/4 v9, -0x2

    if-nez p1, :cond_0

    .line 58
    iget-object v1, v0, Lcom/shilapi/xcertplay/WifiJoinCard;->qrView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    iget-object v10, v0, Lcom/shilapi/xcertplay/WifiJoinCard;->texts:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/WifiJoinCard;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->wifi_card_gone:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/Glass;->getTEXT()I

    move-result v3

    const/16 v5, 0x10

    const/4 v6, 0x0

    const/16 v2, 0xf

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/shilapi/xcertplay/WifiJoinCard;->bind$line$default(Lcom/shilapi/xcertplay/WifiJoinCard;Ljava/lang/String;IIZILjava/lang/Object;)Landroid/widget/TextView;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v10, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 62
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory$Broadcast;->getPassphrase()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory$Broadcast;->getSecurity()Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    move-result-object v1

    invoke-static {}, Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;->values()[Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    move-result-object v2

    .line 122
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 62
    invoke-virtual {v5}, Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;->name()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    const-string v13, "NONE"

    check-cast v13, Ljava/lang/CharSequence;

    invoke-static {v6, v13, v12}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;->name()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    const-string v13, "OPEN"

    check-cast v13, Ljava/lang/CharSequence;

    invoke-static {v6, v13, v12}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :cond_4
    :goto_1
    if-ne v1, v5, :cond_5

    :goto_2
    const/4 v13, 0x1

    goto :goto_3

    :cond_5
    const/4 v13, 0x0

    .line 63
    :goto_3
    sget-object v14, Lcom/shilapi/xcertplay/orchestration/WifiCredentialQr;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/WifiCredentialQr;

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory$Broadcast;->getSsid()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory$Broadcast;->getPassphrase()Ljava/lang/String;

    move-result-object v16

    if-eqz v13, :cond_6

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/WifiCredentialQr$Security;->NOPASS:Lcom/shilapi/xcertplay/orchestration/WifiCredentialQr$Security;

    goto :goto_4

    :cond_6
    sget-object v1, Lcom/shilapi/xcertplay/orchestration/WifiCredentialQr$Security;->WPA:Lcom/shilapi/xcertplay/orchestration/WifiCredentialQr$Security;

    :goto_4
    move-object/from16 v17, v1

    const/16 v19, 0x8

    const/16 v20, 0x0

    const/16 v18, 0x0

    invoke-static/range {v14 .. v20}, Lcom/shilapi/xcertplay/orchestration/WifiCredentialQr;->payload$default(Lcom/shilapi/xcertplay/orchestration/WifiCredentialQr;Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/orchestration/WifiCredentialQr$Security;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 64
    iget-object v2, v0, Lcom/shilapi/xcertplay/WifiJoinCard;->qrPayload:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 65
    iput-object v1, v0, Lcom/shilapi/xcertplay/WifiJoinCard;->qrPayload:Ljava/lang/String;

    .line 66
    iget-object v2, v0, Lcom/shilapi/xcertplay/WifiJoinCard;->qrView:Landroid/widget/ImageView;

    sget-object v3, Lcom/shilapi/xcertplay/WifiJoinCard;->Companion:Lcom/shilapi/xcertplay/WifiJoinCard$Companion;

    const/16 v4, 0xa8

    invoke-direct {v0, v4}, Lcom/shilapi/xcertplay/WifiJoinCard;->dp(I)I

    move-result v4

    invoke-virtual {v3, v1, v4}, Lcom/shilapi/xcertplay/WifiJoinCard$Companion;->render(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 68
    :cond_7
    iget-object v1, v0, Lcom/shilapi/xcertplay/WifiJoinCard;->qrView:Landroid/widget/ImageView;

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    iget-object v1, v0, Lcom/shilapi/xcertplay/WifiJoinCard;->texts:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/WifiJoinCard;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->wifi_card_title:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/Glass;->getTEXT()I

    move-result v3

    const/16 v14, 0x11

    invoke-static {v0, v2, v14, v3, v12}, Lcom/shilapi/xcertplay/WifiJoinCard;->bind$line(Lcom/shilapi/xcertplay/WifiJoinCard;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    iget-object v15, v0, Lcom/shilapi/xcertplay/WifiJoinCard;->texts:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/WifiJoinCard;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->wifi_card_name:I

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory$Broadcast;->getSsid()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u2068"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u2069"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v12, [Ljava/lang/Object;

    aput-object v4, v6, v11

    invoke-virtual {v1, v2, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/Glass;->getTEXT()I

    move-result v2

    move-object v4, v5

    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object/from16 v16, v3

    move v3, v2

    const/16 v2, 0xf

    move-object/from16 v17, v4

    const/4 v4, 0x0

    move-object/from16 v10, v16

    move-object/from16 v14, v17

    invoke-static/range {v0 .. v6}, Lcom/shilapi/xcertplay/WifiJoinCard;->bind$line$default(Lcom/shilapi/xcertplay/WifiJoinCard;Ljava/lang/String;IIZILjava/lang/Object;)Landroid/widget/TextView;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x4

    invoke-direct {v0, v3}, Lcom/shilapi/xcertplay/WifiJoinCard;->dp(I)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v15, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v13, :cond_8

    .line 72
    iget-object v10, v0, Lcom/shilapi/xcertplay/WifiJoinCard;->texts:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/WifiJoinCard;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->wifi_card_open:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/Glass;->getTEXT()I

    move-result v2

    const/16 v5, 0x10

    const/4 v6, 0x0

    move v3, v2

    const/4 v4, 0x4

    const/16 v2, 0xf

    const/4 v11, 0x4

    const/4 v4, 0x0

    const/4 v13, 0x4

    invoke-static/range {v0 .. v6}, Lcom/shilapi/xcertplay/WifiJoinCard;->bind$line$default(Lcom/shilapi/xcertplay/WifiJoinCard;Ljava/lang/String;IIZILjava/lang/Object;)Landroid/widget/TextView;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v10, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_7

    :cond_8
    const/4 v13, 0x4

    .line 74
    new-instance v15, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/WifiJoinCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v15, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v15, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    invoke-virtual {v15, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 75
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/WifiJoinCard;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->wifi_card_password:I

    iget-object v4, v0, Lcom/shilapi/xcertplay/WifiJoinCard;->passwordShown:Lkotlin/jvm/functions/Function0;

    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory$Broadcast;->getPassphrase()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_9
    const-string/jumbo v4, "\u2022\u2022\u2022\u2022\u2022\u2022\u2022\u2022"

    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v12, [Ljava/lang/Object;

    aput-object v4, v5, v11

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/Glass;->getTEXT()I

    move-result v3

    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object v1, v2

    const/16 v4, 0x10

    const/16 v2, 0xf

    const/16 v10, 0x10

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/shilapi/xcertplay/WifiJoinCard;->bind$line$default(Lcom/shilapi/xcertplay/WifiJoinCard;Ljava/lang/String;IIZILjava/lang/Object;)Landroid/widget/TextView;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 76
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v11, v9, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    .line 75
    invoke-virtual {v15, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    new-instance v1, Lcom/shilapi/xcertplay/FitText;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/WifiJoinCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getContext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v4, 0x41400000    # 12.0f

    invoke-direct {v1, v2, v12, v4}, Lcom/shilapi/xcertplay/FitText;-><init>(Landroid/content/Context;IF)V

    .line 78
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/FitText;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, v0, Lcom/shilapi/xcertplay/WifiJoinCard;->passwordShown:Lkotlin/jvm/functions/Function0;

    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_a

    sget v4, Lcom/shilapi/xcertplay/host/R$string;->car_wifi_hide:I

    goto :goto_6

    :cond_a
    sget v4, Lcom/shilapi/xcertplay/host/R$string;->car_wifi_show:I

    :goto_6
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/shilapi/xcertplay/FitText;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41800000    # 16.0f

    .line 79
    invoke-virtual {v1, v2}, Lcom/shilapi/xcertplay/FitText;->setTextSize(F)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/shilapi/xcertplay/FitText;->setGravity(I)V

    sget-object v2, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/Glass;->getTEXT()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/shilapi/xcertplay/FitText;->setTextColor(I)V

    .line 80
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    sget-object v4, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/Glass;->getRIPPLE()I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    const-string/jumbo v5, "valueOf(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v19, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/FitText;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v21, Lcom/shilapi/xcertplay/Glass$Kind;->CONTROL:Lcom/shilapi/xcertplay/Glass$Kind;

    const/16 v24, 0x8

    const/16 v25, 0x0

    const/high16 v22, 0x41600000    # 14.0f

    const/16 v23, 0x0

    move-object/from16 v20, v5

    invoke-static/range {v19 .. v25}, Lcom/shilapi/xcertplay/Glass;->panel$default(Lcom/shilapi/xcertplay/Glass;Landroid/content/Context;Lcom/shilapi/xcertplay/Glass$Kind;FLcom/shilapi/xcertplay/Glass$Palette;ILjava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lcom/shilapi/xcertplay/LegacyViewsKt;->rippleCompat(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/shilapi/xcertplay/LegacyViewsKt;->setBackgroundCompat(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 81
    invoke-direct {v0, v10}, Lcom/shilapi/xcertplay/WifiJoinCard;->dp(I)I

    move-result v3

    invoke-direct {v0, v10}, Lcom/shilapi/xcertplay/WifiJoinCard;->dp(I)I

    move-result v4

    invoke-virtual {v1, v3, v11, v4, v11}, Lcom/shilapi/xcertplay/FitText;->setPadding(IIII)V

    const/16 v3, 0x2a

    invoke-direct {v0, v3}, Lcom/shilapi/xcertplay/WifiJoinCard;->dp(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/shilapi/xcertplay/FitText;->setMinHeight(I)V

    invoke-virtual {v1, v12}, Lcom/shilapi/xcertplay/FitText;->setClickable(Z)V

    invoke-virtual {v1, v12}, Lcom/shilapi/xcertplay/FitText;->setFocusable(Z)V

    .line 82
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/FitText;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/shilapi/xcertplay/FitText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 83
    const-string/jumbo v4, "wifi-join-card-show"

    invoke-virtual {v1, v4}, Lcom/shilapi/xcertplay/FitText;->setTag(Ljava/lang/Object;)V

    .line 84
    new-instance v4, Lcom/shilapi/xcertplay/WifiJoinCard$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0}, Lcom/shilapi/xcertplay/WifiJoinCard$$ExternalSyntheticLambda0;-><init>(Lcom/shilapi/xcertplay/WifiJoinCard;)V

    invoke-virtual {v1, v4}, Lcom/shilapi/xcertplay/FitText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3}, Lcom/shilapi/xcertplay/WifiJoinCard;->dp(I)I

    move-result v3

    invoke-direct {v1, v9, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v3, v1

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v4, 0xa

    invoke-direct {v0, v4}, Lcom/shilapi/xcertplay/WifiJoinCard;->dp(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/shilapi/xcertplay/LegacyViewsKt;->setMarginStartCompat(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    .line 77
    invoke-virtual {v15, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    iget-object v1, v0, Lcom/shilapi/xcertplay/WifiJoinCard;->texts:Landroid/widget/LinearLayout;

    check-cast v15, Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Lcom/shilapi/xcertplay/WifiJoinCard;->dp(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v15, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    :goto_7
    iget-object v10, v0, Lcom/shilapi/xcertplay/WifiJoinCard;->texts:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/WifiJoinCard;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->wifi_card_hint:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/Glass;->getMUTED()I

    move-result v3

    const/16 v5, 0x10

    const/4 v6, 0x0

    const/16 v2, 0xd

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/shilapi/xcertplay/WifiJoinCard;->bind$line$default(Lcom/shilapi/xcertplay/WifiJoinCard;Ljava/lang/String;IIZILjava/lang/Object;)Landroid/widget/TextView;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-direct {v0, v13}, Lcom/shilapi/xcertplay/WifiJoinCard;->dp(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v10, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory$Broadcast;->getMode()Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    move-result-object v1

    sget-object v2, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;->LOCAL_ONLY_HOTSPOT:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    if-ne v1, v2, :cond_b

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_b

    .line 90
    iget-object v10, v0, Lcom/shilapi/xcertplay/WifiJoinCard;->texts:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/WifiJoinCard;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->wifi_card_temporary:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/Glass;->getMUTED()I

    move-result v3

    const/16 v5, 0x10

    const/4 v6, 0x0

    const/16 v2, 0xd

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/shilapi/xcertplay/WifiJoinCard;->bind$line$default(Lcom/shilapi/xcertplay/WifiJoinCard;Ljava/lang/String;IIZILjava/lang/Object;)Landroid/widget/TextView;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v10, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 96
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/WifiJoinCard;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/WifiJoinCard;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0x1b8

    .line 97
    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/WifiJoinCard;->dp(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 98
    :goto_0
    invoke-virtual {p0, v1}, Lcom/shilapi/xcertplay/WifiJoinCard;->setOrientation(I)V

    const/16 v4, 0x10

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x10

    .line 99
    :goto_1
    invoke-virtual {p0, v2}, Lcom/shilapi/xcertplay/WifiJoinCard;->setGravity(I)V

    const/16 v2, 0xa8

    .line 100
    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/WifiJoinCard;->dp(I)I

    move-result v2

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/16 v5, 0x78

    invoke-direct {p0, v5}, Lcom/shilapi/xcertplay/WifiJoinCard;->dp(I)I

    move-result v5

    div-int/lit8 v0, v0, 0x3

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_2
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 101
    iget-object v2, p0, Lcom/shilapi/xcertplay/WifiJoinCard;->qrView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const-string v5, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 102
    iget-object v0, p0, Lcom/shilapi/xcertplay/WifiJoinCard;->texts:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_3

    const/4 v1, -0x1

    .line 103
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v1, v3}, Lcom/shilapi/xcertplay/LegacyViewsKt;->setMarginStartCompat(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/WifiJoinCard;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_3

    .line 104
    :cond_3
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, v4}, Lcom/shilapi/xcertplay/WifiJoinCard;->dp(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/shilapi/xcertplay/LegacyViewsKt;->setMarginStartCompat(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 106
    :goto_3
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method
