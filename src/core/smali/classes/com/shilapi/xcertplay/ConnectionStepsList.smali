.class public final Lcom/shilapi/xcertplay/ConnectionStepsList;
.super Ljava/lang/Object;
.source "ConnectionStepsList.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/ConnectionStepsList$State;,
        Lcom/shilapi/xcertplay/ConnectionStepsList$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConnectionStepsList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectionStepsList.kt\ncom/shilapi/xcertplay/ConnectionStepsList\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,123:1\n1878#2,2:124\n1880#2:127\n1#3:126\n*S KotlinDebug\n*F\n+ 1 ConnectionStepsList.kt\ncom/shilapi/xcertplay/ConnectionStepsList\n*L\n35#1:124,2\n35#1:127\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c0\u0002\u0018\u00002\u00020\u0001:\u0001$B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J>\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010J\u0018\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J0\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u001b\u001a\u00020\rH\u0002J\u0018\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0018H\u0002JF\u0010\u001d\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u00132\u0006\u0010\u001f\u001a\u00020\u00182\u0006\u0010 \u001a\u00020\u00182\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\r2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010H\u0002\u00a8\u0006%"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/ConnectionStepsList;",
        "",
        "<init>",
        "()V",
        "fill",
        "Landroid/view/View;",
        "context",
        "Landroid/content/Context;",
        "list",
        "Landroid/widget/LinearLayout;",
        "input",
        "Lcom/shilapi/xcertplay/ConnectionUi$Input;",
        "wireless",
        "",
        "retryInRow",
        "onRetry",
        "Lkotlin/Function0;",
        "",
        "dp",
        "",
        "v",
        "text",
        "Landroid/widget/TextView;",
        "value",
        "",
        "sp",
        "color",
        "bold",
        "group",
        "row",
        "n",
        "name",
        "sub",
        "state",
        "Lcom/shilapi/xcertplay/ConnectionStepsList$State;",
        "retry",
        "State",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/ConnectionStepsList;


# direct methods
.method public static synthetic $r8$lambda$bEdLA5czT0MB2SCWWPQrWoqdC-U(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/ConnectionStepsList;->row$lambda$13$lambda$11$lambda$10(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/ConnectionStepsList;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/ConnectionStepsList;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/ConnectionStepsList;->INSTANCE:Lcom/shilapi/xcertplay/ConnectionStepsList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final dp(Landroid/content/Context;I)I
    .locals 0

    int-to-float p2, p2

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float p2, p2, p1

    float-to-int p1, p2

    return p1
.end method

.method private final group(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 7

    .line 93
    sget-object v0, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/Glass;->getMUTED()I

    move-result v5

    const/4 v6, 0x1

    const/16 v4, 0xe

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/shilapi/xcertplay/ConnectionStepsList;->text(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method

.method private final row(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionStepsList$State;ZLkotlin/jvm/functions/Function0;)Landroid/widget/LinearLayout;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/shilapi/xcertplay/ConnectionStepsList$State;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Landroid/widget/LinearLayout;"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v7, p5

    .line 96
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x0

    .line 97
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x10

    .line 98
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 99
    sget-object v10, Lcom/shilapi/xcertplay/ConnectionStepsList;->INSTANCE:Lcom/shilapi/xcertplay/ConnectionStepsList;

    const/16 v0, 0x30

    invoke-direct {v10, v1, v0}, Lcom/shilapi/xcertplay/ConnectionStepsList;->dp(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    const/16 v11, 0xa

    .line 100
    invoke-direct {v10, v1, v11}, Lcom/shilapi/xcertplay/ConnectionStepsList;->dp(Landroid/content/Context;I)I

    move-result v0

    const/4 v2, 0x6

    invoke-direct {v10, v1, v2}, Lcom/shilapi/xcertplay/ConnectionStepsList;->dp(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v10, v1, v11}, Lcom/shilapi/xcertplay/ConnectionStepsList;->dp(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v10, v1, v2}, Lcom/shilapi/xcertplay/ConnectionStepsList;->dp(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v8, v0, v3, v4, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 101
    sget-object v0, Lcom/shilapi/xcertplay/ConnectionStepsList$State;->NOW:Lcom/shilapi/xcertplay/ConnectionStepsList$State;

    if-eq v7, v0, :cond_0

    sget-object v0, Lcom/shilapi/xcertplay/ConnectionStepsList$State;->STUCK:Lcom/shilapi/xcertplay/ConnectionStepsList$State;

    if-ne v7, v0, :cond_1

    :cond_0
    move-object v12, v8

    check-cast v12, Landroid/view/View;

    sget-object v0, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    sget-object v2, Lcom/shilapi/xcertplay/Glass$Kind;->CONTROL:Lcom/shilapi/xcertplay/Glass$Kind;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/high16 v3, 0x41600000    # 14.0f

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/shilapi/xcertplay/Glass;->panel$default(Lcom/shilapi/xcertplay/Glass;Landroid/content/Context;Lcom/shilapi/xcertplay/Glass$Kind;FLcom/shilapi/xcertplay/Glass$Palette;ILjava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/shilapi/xcertplay/LegacyViewsKt;->setBackgroundCompat(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 102
    :cond_1
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/Glass;->getMUTED()I

    move-result v4

    const/4 v5, 0x0

    const/16 v3, 0xe

    move-object/from16 v1, p1

    move-object v0, v10

    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/ConnectionStepsList;->text(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v2

    const/16 v6, 0x11

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setGravity(I)V

    check-cast v2, Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x1a

    invoke-direct {v0, v1, v4}, Lcom/shilapi/xcertplay/ConnectionStepsList;->dp(Landroid/content/Context;I)I

    move-result v4

    const/4 v10, -0x2

    invoke-direct {v3, v4, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v8, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    sget-object v2, Lcom/shilapi/xcertplay/ConnectionStepsList$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v7}, Lcom/shilapi/xcertplay/ConnectionStepsList$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-eq v2, v14, :cond_5

    if-eq v2, v13, :cond_4

    if-eq v2, v12, :cond_3

    if-ne v2, v3, :cond_2

    const-string/jumbo v2, "\u25cb"

    goto :goto_0

    :cond_2
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_3
    const-string v2, "!"

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "\u25cf"

    goto :goto_0

    :cond_5
    const-string/jumbo v2, "\u2713"

    .line 104
    :goto_0
    sget-object v4, Lcom/shilapi/xcertplay/ConnectionStepsList$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v7}, Lcom/shilapi/xcertplay/ConnectionStepsList$State;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v14, :cond_9

    if-eq v4, v13, :cond_8

    if-eq v4, v12, :cond_7

    if-ne v4, v3, :cond_6

    sget-object v3, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/Glass;->getMUTED()I

    move-result v3

    goto :goto_1

    :cond_6
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_7
    sget-object v3, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/Glass;->getBAD()I

    move-result v3

    goto :goto_1

    :cond_8
    sget-object v3, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/Glass;->getACCENT()I

    move-result v3

    goto :goto_1

    :cond_9
    sget-object v3, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/Glass;->getGOOD()I

    move-result v3

    :goto_1
    move v4, v3

    const/16 v3, 0x12

    const/4 v5, 0x1

    .line 105
    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/ConnectionStepsList;->text(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setGravity(I)V

    check-cast v2, Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x1e

    invoke-direct {v0, v1, v4}, Lcom/shilapi/xcertplay/ConnectionStepsList;->dp(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v3, v4, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v8, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 107
    sget-object v2, Lcom/shilapi/xcertplay/ConnectionStepsList$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v7}, Lcom/shilapi/xcertplay/ConnectionStepsList$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v13, :cond_b

    if-eq v2, v12, :cond_a

    sget-object v2, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/Glass;->getTEXT()I

    move-result v2

    goto :goto_2

    :cond_a
    sget-object v2, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/Glass;->getBAD()I

    move-result v2

    goto :goto_2

    :cond_b
    sget-object v2, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/Glass;->getACCENT()I

    move-result v2

    :goto_2
    move v4, v2

    const/4 v5, 0x1

    const/16 v3, 0x11

    move-object/from16 v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/ConnectionStepsList;->text(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 108
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v1, v7, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    .line 107
    invoke-virtual {v6, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    sget-object v1, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/Glass;->getMUTED()I

    move-result v4

    const/4 v5, 0x0

    const/16 v3, 0xe

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/ConnectionStepsList;->text(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v2

    move-object v12, v0

    check-cast v2, Landroid/view/View;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v6, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    check-cast v6, Landroid/view/View;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v9, v10, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v8, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p6, :cond_c

    .line 113
    new-instance v7, Landroid/widget/Button;

    invoke-direct {v7, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 114
    sget v0, Lcom/shilapi/xcertplay/host/R$string;->setup_try_again:I

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setAllCaps(Z)V

    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setTextSize(F)V

    sget-object v0, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/Glass;->getON_PRIMARY()I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 115
    move-object v13, v7

    check-cast v13, Landroid/view/View;

    sget-object v0, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/Glass;->getRIPPLE()I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    const-string/jumbo v0, "valueOf(...)"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    sget-object v2, Lcom/shilapi/xcertplay/Glass$Kind;->PRIMARY:Lcom/shilapi/xcertplay/Glass$Kind;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/high16 v3, 0x41600000    # 14.0f

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/shilapi/xcertplay/Glass;->panel$default(Lcom/shilapi/xcertplay/Glass;Landroid/content/Context;Lcom/shilapi/xcertplay/Glass$Kind;FLcom/shilapi/xcertplay/Glass$Palette;ILjava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v14, v0, v2}, Lcom/shilapi/xcertplay/LegacyViewsKt;->rippleCompat(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/shilapi/xcertplay/LegacyViewsKt;->setBackgroundCompat(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x12

    .line 116
    invoke-direct {v12, v1, v0}, Lcom/shilapi/xcertplay/ConnectionStepsList;->dp(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v12, v1, v0}, Lcom/shilapi/xcertplay/ConnectionStepsList;->dp(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v7, v2, v9, v0, v9}, Landroid/widget/Button;->setPadding(IIII)V

    const/16 v0, 0x2a

    invoke-direct {v12, v1, v0}, Lcom/shilapi/xcertplay/ConnectionStepsList;->dp(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/widget/Button;->setMinHeight(I)V

    invoke-direct {v12, v1, v0}, Lcom/shilapi/xcertplay/ConnectionStepsList;->dp(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setMinimumHeight(I)V

    .line 117
    invoke-static {v13}, Lcom/shilapi/xcertplay/LegacyViewsKt;->clearStateListAnimatorCompat(Landroid/view/View;)V

    .line 118
    new-instance v0, Lcom/shilapi/xcertplay/ConnectionStepsList$$ExternalSyntheticLambda0;

    move-object/from16 v2, p7

    invoke-direct {v0, v2}, Lcom/shilapi/xcertplay/ConnectionStepsList$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x2e

    invoke-direct {v12, v1, v2}, Lcom/shilapi/xcertplay/ConnectionStepsList;->dp(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v0, v10, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v12, v1, v11}, Lcom/shilapi/xcertplay/ConnectionStepsList;->dp(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v2, v1}, Lcom/shilapi/xcertplay/LegacyViewsKt;->setMarginStartCompat(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    .line 113
    invoke-virtual {v8, v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c
    return-object v8
.end method

.method private static final row$lambda$13$lambda$11$lambda$10(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    .line 118
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final text(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;
    .locals 1

    .line 87
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 88
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float p2, p3

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p2, 0x10

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setGravity(I)V

    if-eqz p5, :cond_0

    .line 89
    const-string p2, "sans-serif-medium"

    goto :goto_0

    :cond_0
    const-string p2, "sans-serif"

    :goto_0
    const/4 p3, 0x0

    invoke-static {p2, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 90
    sget-object p2, Lcom/shilapi/xcertplay/ConnectionStepsList;->INSTANCE:Lcom/shilapi/xcertplay/ConnectionStepsList;

    const/4 p3, 0x3

    invoke-direct {p2, p1, p3}, Lcom/shilapi/xcertplay/ConnectionStepsList;->dp(Landroid/content/Context;I)I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    return-object v0
.end method


# virtual methods
.method public final fill(Landroid/content/Context;Landroid/widget/LinearLayout;Lcom/shilapi/xcertplay/ConnectionUi$Input;ZZLkotlin/jvm/functions/Function0;)Landroid/view/View;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/LinearLayout;",
            "Lcom/shilapi/xcertplay/ConnectionUi$Input;",
            "ZZ",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    const-string v0, "context"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onRetry"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object v0, Lcom/shilapi/xcertplay/ConnectionUi;->INSTANCE:Lcom/shilapi/xcertplay/ConnectionUi;

    invoke-virtual {v0, v9}, Lcom/shilapi/xcertplay/ConnectionUi;->phase(Lcom/shilapi/xcertplay/ConnectionUi$Input;)Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    move-result-object v11

    .line 28
    invoke-virtual {v9}, Lcom/shilapi/xcertplay/ConnectionUi$Input;->getProgress()Lcom/shilapi/xcertplay/ConnectionProgress$State;

    move-result-object v12

    .line 29
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/16 v13, 0xb

    const/4 v15, 0x1

    if-eqz v10, :cond_0

    .line 31
    sget-object v0, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->RECONNECTING:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    if-ne v11, v0, :cond_0

    invoke-virtual {v9}, Lcom/shilapi/xcertplay/ConnectionUi$Input;->getReconnect()Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;->getWaitingSinceMillis()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v12}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getStep()I

    move-result v0

    if-ne v0, v13, :cond_0

    const/16 v16, 0x1

    goto :goto_0

    :cond_0
    const/16 v16, 0x0

    .line 33
    :goto_0
    sget-object v0, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->CONNECTED:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    if-ne v11, v0, :cond_2

    invoke-virtual {v12}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getPicture()Lcom/shilapi/xcertplay/ConnectionProgress$Picture;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/ConnectionProgress$Picture;->getFailedCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    const/16 v17, 0x1

    goto :goto_2

    :cond_2
    const/16 v17, 0x0

    .line 34
    :goto_2
    sget-object v0, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->CONNECTED:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    if-ne v11, v0, :cond_3

    invoke-virtual {v12}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getPicture()Lcom/shilapi/xcertplay/ConnectionProgress$Picture;

    move-result-object v0

    if-eqz v0, :cond_3

    if-nez v17, :cond_3

    const/16 v18, 0x1

    goto :goto_3

    :cond_3
    const/16 v18, 0x0

    .line 35
    :goto_3
    sget-object v0, Lcom/shilapi/xcertplay/ConnectionSteps;->INSTANCE:Lcom/shilapi/xcertplay/ConnectionSteps;

    invoke-virtual {v0, v10}, Lcom/shilapi/xcertplay/ConnectionSteps;->of(Z)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 125
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    const/4 v0, 0x0

    const/16 v20, 0x0

    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    if-gez v0, :cond_4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_4
    check-cast v3, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    const/4 v0, -0x2

    const/4 v5, -0x1

    .line 37
    const-string v6, "getString(...)"

    if-eqz v10, :cond_5

    if-ne v4, v15, :cond_5

    sget-object v2, Lcom/shilapi/xcertplay/ConnectionStepsList;->INSTANCE:Lcom/shilapi/xcertplay/ConnectionStepsList;

    const/16 v22, 0x0

    sget v14, Lcom/shilapi/xcertplay/host/R$string;->steps_group_bt:I

    invoke-virtual {v1, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v1, v14}, Lcom/shilapi/xcertplay/ConnectionStepsList;->group(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v14, v5, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v14, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v8, v2, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    :cond_5
    const/16 v22, 0x0

    :goto_5
    const/16 v2, 0xc

    const/16 v14, 0x20

    if-eqz v10, :cond_6

    if-ne v4, v14, :cond_6

    .line 39
    sget-object v14, Lcom/shilapi/xcertplay/ConnectionStepsList;->INSTANCE:Lcom/shilapi/xcertplay/ConnectionStepsList;

    sget v13, Lcom/shilapi/xcertplay/host/R$string;->steps_group_wifi:I

    invoke-virtual {v1, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v14, v1, v13}, Lcom/shilapi/xcertplay/ConnectionStepsList;->group(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 40
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v15, v5, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-direct {v14, v1, v2}, Lcom/shilapi/xcertplay/ConnectionStepsList;->dp(Landroid/content/Context;I)I

    move-result v14

    iput v14, v15, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sget-object v14, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v15, Landroid/view/ViewGroup$LayoutParams;

    .line 39
    invoke-virtual {v8, v13, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    :cond_6
    sget-object v13, Lcom/shilapi/xcertplay/ConnectionSteps;->INSTANCE:Lcom/shilapi/xcertplay/ConnectionSteps;

    invoke-virtual {v13, v10}, Lcom/shilapi/xcertplay/ConnectionSteps;->count(Z)I

    move-result v13

    if-ne v4, v13, :cond_7

    const/4 v13, 0x1

    goto :goto_6

    :cond_7
    const/4 v13, 0x0

    .line 43
    :goto_6
    sget-object v14, Lcom/shilapi/xcertplay/ConnectionStepsList$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v11}, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->ordinal()I

    move-result v15

    aget v14, v14, v15

    const/4 v15, 0x3

    const/4 v0, 0x2

    const/4 v5, 0x1

    if-eq v14, v5, :cond_f

    if-eq v14, v0, :cond_c

    if-eq v14, v15, :cond_9

    const/4 v5, 0x4

    if-eq v14, v5, :cond_9

    const/4 v5, 0x5

    if-ne v14, v5, :cond_8

    .line 52
    sget-object v5, Lcom/shilapi/xcertplay/ConnectionStepsList$State;->WAIT:Lcom/shilapi/xcertplay/ConnectionStepsList$State;

    goto :goto_7

    .line 43
    :cond_8
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 51
    :cond_9
    invoke-virtual {v12}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getStep()I

    move-result v5

    if-ge v4, v5, :cond_a

    sget-object v5, Lcom/shilapi/xcertplay/ConnectionStepsList$State;->DONE:Lcom/shilapi/xcertplay/ConnectionStepsList$State;

    goto :goto_7

    :cond_a
    invoke-virtual {v12}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getStep()I

    move-result v5

    if-ne v4, v5, :cond_b

    sget-object v5, Lcom/shilapi/xcertplay/ConnectionStepsList$State;->NOW:Lcom/shilapi/xcertplay/ConnectionStepsList$State;

    goto :goto_7

    :cond_b
    sget-object v5, Lcom/shilapi/xcertplay/ConnectionStepsList$State;->WAIT:Lcom/shilapi/xcertplay/ConnectionStepsList$State;

    goto :goto_7

    .line 49
    :cond_c
    invoke-virtual {v12}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getStep()I

    move-result v5

    if-ge v4, v5, :cond_d

    sget-object v5, Lcom/shilapi/xcertplay/ConnectionStepsList$State;->DONE:Lcom/shilapi/xcertplay/ConnectionStepsList$State;

    goto :goto_7

    :cond_d
    invoke-virtual {v12}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getStep()I

    move-result v5

    if-ne v4, v5, :cond_e

    sget-object v5, Lcom/shilapi/xcertplay/ConnectionStepsList$State;->STUCK:Lcom/shilapi/xcertplay/ConnectionStepsList$State;

    goto :goto_7

    :cond_e
    sget-object v5, Lcom/shilapi/xcertplay/ConnectionStepsList$State;->WAIT:Lcom/shilapi/xcertplay/ConnectionStepsList$State;

    goto :goto_7

    :cond_f
    if-eqz v13, :cond_10

    if-eqz v17, :cond_10

    .line 45
    sget-object v5, Lcom/shilapi/xcertplay/ConnectionStepsList$State;->STUCK:Lcom/shilapi/xcertplay/ConnectionStepsList$State;

    goto :goto_7

    :cond_10
    if-eqz v13, :cond_11

    if-eqz v18, :cond_11

    .line 46
    sget-object v5, Lcom/shilapi/xcertplay/ConnectionStepsList$State;->NOW:Lcom/shilapi/xcertplay/ConnectionStepsList$State;

    goto :goto_7

    .line 47
    :cond_11
    sget-object v5, Lcom/shilapi/xcertplay/ConnectionStepsList$State;->DONE:Lcom/shilapi/xcertplay/ConnectionStepsList$State;

    .line 54
    :goto_7
    new-instance v14, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;->getHint()I

    move-result v15

    invoke-virtual {v1, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v15, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v16, :cond_13

    const/16 v15, 0xb

    if-eq v4, v15, :cond_17

    if-eq v4, v2, :cond_16

    const/16 v2, 0x20

    if-eq v4, v2, :cond_14

    const/16 v2, 0x23

    if-eq v4, v2, :cond_12

    goto :goto_8

    .line 63
    :cond_12
    sget-object v5, Lcom/shilapi/xcertplay/ConnectionStepsList$State;->NOW:Lcom/shilapi/xcertplay/ConnectionStepsList$State;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->steps_wl10_wait:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_13
    :goto_8
    move-object/from16 v23, v3

    move v15, v4

    goto :goto_9

    .line 60
    :cond_14
    sget-object v5, Lcom/shilapi/xcertplay/ConnectionStepsList$State;->DONE:Lcom/shilapi/xcertplay/ConnectionStepsList$State;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->steps_wl7_kept:I

    invoke-virtual {v9}, Lcom/shilapi/xcertplay/ConnectionUi$Input;->getReconnect()Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;->getSsid()Ljava/lang/String;

    move-result-object v23

    if-nez v23, :cond_15

    const-string v23, "Wi\u2011Fi"

    :cond_15
    const/4 v15, 0x1

    new-array v0, v15, [Ljava/lang/Object;

    aput-object v23, v0, v22

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_8

    .line 58
    :cond_16
    sget v0, Lcom/shilapi/xcertplay/host/R$string;->steps_wl5_reply:I

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_8

    .line 57
    :cond_17
    sget-object v0, Lcom/shilapi/xcertplay/ConnectionUi;->INSTANCE:Lcom/shilapi/xcertplay/ConnectionUi;

    invoke-virtual {v9}, Lcom/shilapi/xcertplay/ConnectionUi$Input;->getReconnect()Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;

    move-result-object v2

    move-object/from16 v23, v3

    move v15, v4

    invoke-virtual {v9}, Lcom/shilapi/xcertplay/ConnectionUi$Input;->getNow()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/shilapi/xcertplay/ConnectionUi;->bluetoothPath(Landroid/content/Context;Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;J)Lcom/shilapi/xcertplay/ConnectionUi$Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/ConnectionUi$Path;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 66
    :goto_9
    const-string v0, " \u00b7 "

    if-eqz v13, :cond_1a

    sget-object v2, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->CONNECTED:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    if-ne v11, v2, :cond_1a

    invoke-virtual {v12}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getPicture()Lcom/shilapi/xcertplay/ConnectionProgress$Picture;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 67
    invoke-virtual {v12}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getPicture()Lcom/shilapi/xcertplay/ConnectionProgress$Picture;

    move-result-object v2

    if-eqz v17, :cond_19

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/ConnectionProgress$Picture;->getFailedCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getPicture()Lcom/shilapi/xcertplay/ConnectionProgress$Picture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/ConnectionProgress$Picture;->getFailedReason()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_18

    const-string v3, ""

    :cond_18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    :cond_19
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/ConnectionProgress$Picture;->getLine()Ljava/lang/String;

    move-result-object v2

    :goto_a
    iput-object v2, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto/16 :goto_d

    .line 68
    :cond_1a
    sget-object v2, Lcom/shilapi/xcertplay/ConnectionStepsList$State;->STUCK:Lcom/shilapi/xcertplay/ConnectionStepsList$State;

    if-ne v5, v2, :cond_20

    .line 69
    invoke-virtual {v12}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1d

    invoke-virtual {v12}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getStuckDetail()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1b

    check-cast v3, Ljava/lang/CharSequence;

    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    move-object/from16 v21, v2

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x2

    invoke-static {v3, v4, v2, v13, v7}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    const/4 v2, 0x1

    if-ne v3, v2, :cond_1c

    const/4 v2, 0x1

    goto :goto_b

    :cond_1b
    move-object/from16 v21, v2

    const/4 v7, 0x0

    :cond_1c
    const/4 v2, 0x0

    :goto_b
    if-nez v2, :cond_1e

    move-object/from16 v2, v21

    goto :goto_c

    :cond_1d
    const/4 v7, 0x0

    :cond_1e
    move-object v2, v7

    :goto_c
    invoke-virtual {v12}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getStuckTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getStuckDetail()Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/String;

    const/16 v22, 0x0

    aput-object v2, v13, v22

    const/16 v24, 0x1

    aput-object v3, v13, v24

    const/16 v26, 0x2

    aput-object v4, v13, v26

    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Ljava/lang/Iterable;

    .line 70
    const-string v2, "\n"

    move-object/from16 v26, v2

    check-cast v26, Ljava/lang/CharSequence;

    const/16 v32, 0x3e

    const/16 v33, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-static/range {v25 .. v33}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1f

    iget-object v2, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 69
    :cond_1f
    iput-object v2, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_e

    :cond_20
    :goto_d
    const/4 v7, 0x0

    .line 72
    :goto_e
    sget-object v2, Lcom/shilapi/xcertplay/ConnectionStepsList$State;->NOW:Lcom/shilapi/xcertplay/ConnectionStepsList$State;

    if-ne v5, v2, :cond_24

    if-nez v16, :cond_24

    sget-object v2, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->CONNECTED:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    if-eq v11, v2, :cond_24

    .line 75
    invoke-virtual {v12}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getNote()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_22

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_21

    goto :goto_f

    :cond_21
    move-object v2, v7

    :goto_f
    if-nez v2, :cond_23

    :cond_22
    sget v2, Lcom/shilapi/xcertplay/host/R$string;->chk_connecting_now:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    :cond_23
    sget v3, Lcom/shilapi/xcertplay/host/R$string;->row_elapsed:I

    invoke-virtual {v9}, Lcom/shilapi/xcertplay/ConnectionUi$Input;->getNow()J

    move-result-wide v25

    invoke-virtual {v12}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getStepSince()J

    move-result-wide v27

    sub-long v25, v25, v27

    const/16 v4, 0x3e8

    int-to-long v7, v4

    div-long v7, v25, v7

    const-wide/16 v9, 0x0

    invoke-static {v7, v8, v9, v10}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v7

    long-to-int v4, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v8, 0x1

    new-array v7, v8, [Ljava/lang/Object;

    const/16 v22, 0x0

    aput-object v4, v7, v22

    invoke-virtual {v1, v3, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_10

    :cond_24
    const/4 v8, 0x1

    const/16 v22, 0x0

    .line 78
    :goto_10
    sget-object v0, Lcom/shilapi/xcertplay/ConnectionStepsList;->INSTANCE:Lcom/shilapi/xcertplay/ConnectionStepsList;

    invoke-virtual/range {v23 .. v23}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;->getName()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    if-eqz p5, :cond_25

    sget-object v2, Lcom/shilapi/xcertplay/ConnectionStepsList$State;->STUCK:Lcom/shilapi/xcertplay/ConnectionStepsList$State;

    if-ne v5, v2, :cond_25

    const/4 v6, 0x1

    goto :goto_11

    :cond_25
    const/4 v6, 0x0

    :goto_11
    move-object/from16 v7, p6

    move v2, v15

    const/4 v9, -0x2

    const/4 v10, -0x1

    const/16 v21, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/shilapi/xcertplay/ConnectionStepsList;->row(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionStepsList$State;ZLkotlin/jvm/functions/Function0;)Landroid/widget/LinearLayout;

    move-result-object v3

    move v15, v2

    .line 79
    sget-object v2, Lcom/shilapi/xcertplay/ConnectionStepsList$State;->NOW:Lcom/shilapi/xcertplay/ConnectionStepsList$State;

    if-eq v5, v2, :cond_26

    sget-object v2, Lcom/shilapi/xcertplay/ConnectionStepsList$State;->STUCK:Lcom/shilapi/xcertplay/ConnectionStepsList$State;

    if-ne v5, v2, :cond_27

    :cond_26
    move-object/from16 v20, v3

    .line 80
    :cond_27
    check-cast v3, Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x6

    invoke-direct {v0, v1, v4}, Lcom/shilapi/xcertplay/ConnectionStepsList;->dp(Landroid/content/Context;I)I

    move-result v0

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v7, p6

    move-object v8, v0

    move v0, v15

    const/16 v13, 0xb

    const/4 v15, 0x1

    goto/16 :goto_4

    .line 82
    :cond_28
    check-cast v20, Landroid/view/View;

    return-object v20
.end method
