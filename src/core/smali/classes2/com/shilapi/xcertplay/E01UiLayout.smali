.class public final Lcom/shilapi/xcertplay/E01UiLayout;
.super Ljava/lang/Object;
.source "E01UiLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/E01UiLayout$Detail;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Landroid/view/View;Landroid/view/View;Ljava/lang/String;)V
    .locals 11

    .line 52
    instance-of v0, p0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 53
    :cond_0
    check-cast p0, Landroid/widget/LinearLayout;

    .line 54
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/LinearLayout;

    if-nez v1, :cond_1

    goto/16 :goto_2

    .line 55
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 56
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 57
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 58
    check-cast p1, Landroid/view/ViewGroup;

    .line 59
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 60
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_2

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_3

    .line 63
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 64
    invoke-virtual {v6, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v7

    .line 65
    invoke-virtual {v6, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 66
    instance-of v8, v6, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_3

    move-object v8, v6

    check-cast v8, Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v8

    if-nez v8, :cond_3

    if-lez v7, :cond_3

    .line 67
    sub-int/2addr v7, v3

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 68
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 69
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Landroid/view/View;

    if-ne v9, v10, :cond_3

    iget v9, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v9, :cond_3

    iget v9, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/16 v10, 0x14

    invoke-static {v1, v10}, Lcom/shilapi/xcertplay/E01UiLayout;->dp(Landroid/content/Context;I)I

    move-result v10

    if-gt v9, v10, :cond_3

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gt v8, v3, :cond_3

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 72
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 73
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 74
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 75
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 76
    const/16 v6, 0x10

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 77
    const-string v6, "home"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 78
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 79
    invoke-static {v3, v1}, Lcom/shilapi/xcertplay/E01UiLayout;->toolbarAction(Landroid/view/View;Landroid/content/Context;)V

    .line 80
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 81
    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 82
    const/16 v7, 0xc

    invoke-static {v1, v7}, Lcom/shilapi/xcertplay/E01UiLayout;->dp(Landroid/content/Context;I)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 83
    invoke-virtual {p1, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    :cond_4
    const/16 v3, 0x36

    invoke-static {v1, v3}, Lcom/shilapi/xcertplay/E01UiLayout;->dp(Landroid/content/Context;I)I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v0, v6, v7}, Lcom/shilapi/xcertplay/E01UiLayout;->lp(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {p1, v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 87
    invoke-static {v5, v1}, Lcom/shilapi/xcertplay/E01UiLayout;->toolbarAction(Landroid/view/View;Landroid/content/Context;)V

    .line 88
    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 89
    goto :goto_1

    .line 90
    :cond_5
    invoke-static {v1, v3}, Lcom/shilapi/xcertplay/E01UiLayout;->dp(Landroid/content/Context;I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, -0x1

    invoke-static {v5, v2, v3}, Lcom/shilapi/xcertplay/E01UiLayout;->lp(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 91
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of p0, p0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p0, :cond_6

    .line 92
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    .line 93
    const/16 p1, 0x8

    invoke-static {v1, p1}, Lcom/shilapi/xcertplay/E01UiLayout;->dp(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 94
    const/4 p1, 0x6

    invoke-static {v1, p1}, Lcom/shilapi/xcertplay/E01UiLayout;->dp(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 95
    invoke-virtual {v4, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    :cond_6
    const-string p0, "settings"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {v4, v1}, Lcom/shilapi/xcertplay/E01UiLayout;->arrangeSettings(Landroid/view/View;Landroid/content/Context;)V

    .line 98
    :cond_7
    return-void

    .line 54
    :cond_8
    :goto_2
    return-void

    .line 52
    :cond_9
    :goto_3
    return-void
.end method

.method private static arrangeHotspotControls(Landroid/view/View;Landroid/content/Context;)V
    .locals 16

    .line 139
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    return-void

    .line 140
    :cond_0
    check-cast v0, Landroid/view/ViewGroup;

    .line 141
    nop

    .line 142
    nop

    .line 143
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v6, v9, :cond_4

    .line 144
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 145
    instance-of v10, v9, Landroid/widget/TextView;

    if-eqz v10, :cond_3

    .line 146
    move-object v10, v9

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    .line 147
    const-string v11, "\u8f66\u673a\u70ed\u70b9"

    invoke-virtual {v11, v10}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    move v7, v6

    .line 148
    :cond_1
    instance-of v11, v9, Landroid/widget/Button;

    if-eqz v11, :cond_2

    const-string v12, "\u4fdd\u5b58\u70ed\u70b9"

    invoke-virtual {v12, v10}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    move-object v2, v9

    check-cast v2, Landroid/widget/Button;

    .line 149
    :cond_2
    if-eqz v11, :cond_3

    const-string v11, "\u6253\u5f00\u7cfb\u7edf\u70ed\u70b9\u8bbe\u7f6e"

    invoke-virtual {v11, v10}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    check-cast v9, Landroid/widget/Button;

    move v8, v6

    move-object v5, v9

    .line 143
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 152
    :cond_4
    instance-of v6, v0, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_c

    if-lez v7, :cond_c

    if-le v8, v7, :cond_c

    if-eqz v2, :cond_c

    if-eqz v5, :cond_c

    .line 155
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 156
    nop

    :goto_1
    if-gt v7, v8, :cond_5

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 157
    :cond_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_2

    .line 158
    :cond_6
    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0, v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_3

    .line 160
    :cond_7
    const-string v6, "\u70ed\u70b9\u540d\u79f0"

    const-string v7, "\u70ed\u70b9\u5bc6\u7801"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    :goto_4
    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/16 v11, 0x36

    const/4 v12, 0x2

    if-ge v7, v12, :cond_a

    aget-object v12, v6, v7

    .line 161
    const/4 v13, 0x0

    :goto_5
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v15

    if-ge v14, v15, :cond_9

    .line 162
    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 163
    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 164
    instance-of v8, v15, Landroid/widget/TextView;

    if-eqz v8, :cond_8

    instance-of v8, v3, Landroid/widget/EditText;

    if-eqz v8, :cond_8

    check-cast v15, Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 165
    nop

    .line 166
    check-cast v3, Landroid/widget/EditText;

    .line 167
    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 168
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 169
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 170
    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 171
    const/16 v14, 0x10

    invoke-virtual {v8, v14}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 172
    const/high16 v4, 0x41880000    # 17.0f

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 173
    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 174
    const/4 v4, 0x1

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 175
    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTextSize(F)V

    .line 176
    invoke-virtual {v3, v12}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 177
    const/16 v4, 0x58

    invoke-static {v1, v4}, Lcom/shilapi/xcertplay/E01UiLayout;->dp(Landroid/content/Context;I)I

    move-result v4

    invoke-static {v1, v11}, Lcom/shilapi/xcertplay/E01UiLayout;->dp(Landroid/content/Context;I)I

    move-result v12

    invoke-static {v4, v12, v9}, Lcom/shilapi/xcertplay/E01UiLayout;->lp(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 178
    const/16 v12, 0xc

    invoke-static {v1, v12}, Lcom/shilapi/xcertplay/E01UiLayout;->dp(Landroid/content/Context;I)I

    move-result v12

    iput v12, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 179
    invoke-virtual {v8, v15, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    invoke-static {v1, v11}, Lcom/shilapi/xcertplay/E01UiLayout;->dp(Landroid/content/Context;I)I

    move-result v4

    const/4 v11, 0x0

    invoke-static {v11, v4, v10}, Lcom/shilapi/xcertplay/E01UiLayout;->lp(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-static {v4, v3, v9}, Lcom/shilapi/xcertplay/E01UiLayout;->lp(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v8, v13, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 182
    goto :goto_6

    .line 161
    :cond_8
    move v13, v14

    const/4 v4, 0x0

    goto :goto_5

    .line 160
    :cond_9
    :goto_6
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x0

    goto/16 :goto_4

    .line 186
    :cond_a
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v4, 0x34

    invoke-static {v1, v4}, Lcom/shilapi/xcertplay/E01UiLayout;->dp(Landroid/content/Context;I)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const v4, 0x3f428f5c    # 0.76f

    mul-float v3, v3, v4

    const/16 v4, 0x28

    invoke-static {v1, v4}, Lcom/shilapi/xcertplay/E01UiLayout;->dp(Landroid/content/Context;I)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 187
    const/16 v4, 0x17c

    invoke-static {v1, v4}, Lcom/shilapi/xcertplay/E01UiLayout;->dp(Landroid/content/Context;I)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_b

    .line 188
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 189
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 190
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 191
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 192
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 193
    invoke-static {v1, v11}, Lcom/shilapi/xcertplay/E01UiLayout;->dp(Landroid/content/Context;I)I

    move-result v7

    invoke-static {v6, v7, v10}, Lcom/shilapi/xcertplay/E01UiLayout;->lp(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    .line 194
    invoke-static {v1, v11}, Lcom/shilapi/xcertplay/E01UiLayout;->dp(Landroid/content/Context;I)I

    move-result v8

    invoke-static {v6, v8, v10}, Lcom/shilapi/xcertplay/E01UiLayout;->lp(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    .line 195
    const/4 v10, 0x6

    invoke-static {v1, v10}, Lcom/shilapi/xcertplay/E01UiLayout;->dp(Landroid/content/Context;I)I

    move-result v11

    iput v11, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 196
    invoke-static {v1, v10}, Lcom/shilapi/xcertplay/E01UiLayout;->dp(Landroid/content/Context;I)I

    move-result v10

    iput v10, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 197
    invoke-virtual {v4, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    invoke-virtual {v4, v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    const/4 v2, -0x2

    const/4 v5, -0x1

    invoke-static {v5, v2, v9}, Lcom/shilapi/xcertplay/E01UiLayout;->lp(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v4, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7

    .line 187
    :cond_b
    const/4 v6, 0x0

    goto :goto_7

    .line 152
    :cond_c
    const/4 v6, 0x0

    .line 202
    :goto_7
    const/4 v4, 0x0

    :goto_8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v4, v2, :cond_d

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/shilapi/xcertplay/E01UiLayout;->arrangeHotspotControls(Landroid/view/View;Landroid/content/Context;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 203
    :cond_d
    return-void
.end method

.method private static arrangeSettings(Landroid/view/View;Landroid/content/Context;)V
    .locals 12

    .line 100
    instance-of v0, p0, Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    .line 101
    :cond_0
    check-cast p0, Landroid/widget/LinearLayout;

    .line 102
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/ScrollView;

    if-eqz v1, :cond_9

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/ScrollView;

    if-nez v2, :cond_1

    goto/16 :goto_5

    .line 103
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    .line 104
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    .line 105
    const v3, 0x3e75c28f    # 0.24f

    const/4 v4, -0x1

    invoke-static {v0, v4, v3}, Lcom/shilapi/xcertplay/E01UiLayout;->lp(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    const v3, 0x3f428f5c    # 0.76f

    invoke-static {v0, v4, v3}, Lcom/shilapi/xcertplay/E01UiLayout;->lp(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    const/16 v4, 0xc

    invoke-static {p1, v4}, Lcom/shilapi/xcertplay/E01UiLayout;->dp(Landroid/content/Context;I)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v5, v3, v6}, Lcom/shilapi/xcertplay/E01UiLayout;->lp(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    invoke-virtual {v2}, Landroid/widget/ScrollView;->getChildCount()I

    move-result p0

    if-lez p0, :cond_7

    invoke-virtual {v2, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    instance-of p0, p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_7

    .line 109
    invoke-virtual {v2, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 110
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_7

    .line 111
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 112
    instance-of v7, v5, Landroid/widget/LinearLayout;

    if-nez v7, :cond_2

    goto/16 :goto_4

    .line 113
    :cond_2
    invoke-static {p1, v4}, Lcom/shilapi/xcertplay/E01UiLayout;->dp(Landroid/content/Context;I)I

    move-result v7

    const/4 v8, 0x4

    invoke-static {p1, v8}, Lcom/shilapi/xcertplay/E01UiLayout;->dp(Landroid/content/Context;I)I

    move-result v9

    const/16 v10, 0x8

    invoke-static {p1, v10}, Lcom/shilapi/xcertplay/E01UiLayout;->dp(Landroid/content/Context;I)I

    move-result v11

    invoke-static {p1, v8}, Lcom/shilapi/xcertplay/E01UiLayout;->dp(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v5, v7, v9, v11, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 114
    const/16 v7, 0x36

    invoke-static {p1, v7}, Lcom/shilapi/xcertplay/E01UiLayout;->dp(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setMinimumHeight(I)V

    .line 115
    check-cast v5, Landroid/view/ViewGroup;

    .line 116
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v7, v8, :cond_6

    .line 117
    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 118
    instance-of v9, v8, Landroid/widget/TextView;

    if-eqz v9, :cond_4

    .line 119
    check-cast v8, Landroid/widget/TextView;

    .line 120
    const-string v9, "\u6253\u5f00\u7cfb\u7edf\u8bbe\u7f6e"

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "\u7cfb\u7edf\u8bbe\u7f6e"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :cond_3
    const/high16 v9, 0x41880000    # 17.0f

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 122
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 123
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 124
    instance-of v9, v8, Lcom/shilapi/xcertplay/FitText;

    if-eqz v9, :cond_5

    check-cast v8, Lcom/shilapi/xcertplay/FitText;

    const/high16 v9, 0x41700000    # 15.0f

    invoke-virtual {v8, v9}, Lcom/shilapi/xcertplay/FitText;->setOneLineMinSp(F)V

    goto :goto_2

    .line 125
    :cond_4
    instance-of v9, v8, Landroid/widget/ImageView;

    if-eqz v9, :cond_5

    .line 126
    const/16 v9, 0x14

    invoke-static {p1, v9}, Lcom/shilapi/xcertplay/E01UiLayout;->dp(Landroid/content/Context;I)I

    move-result v11

    invoke-static {p1, v9}, Lcom/shilapi/xcertplay/E01UiLayout;->dp(Landroid/content/Context;I)I

    move-result v9

    invoke-static {v11, v9, v6}, Lcom/shilapi/xcertplay/E01UiLayout;->lp(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    .line 127
    invoke-static {p1, v10}, Lcom/shilapi/xcertplay/E01UiLayout;->dp(Landroid/content/Context;I)I

    move-result v11

    iput v11, v9, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 128
    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 125
    :cond_5
    :goto_2
    nop

    .line 116
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 110
    :cond_6
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 133
    :cond_7
    invoke-virtual {v1}, Landroid/widget/ScrollView;->getChildCount()I

    move-result p0

    if-lez p0, :cond_8

    .line 134
    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/E01UiLayout;->arrangeHotspotControls(Landroid/view/View;Landroid/content/Context;)V

    .line 135
    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/E01UiLayout;->compactSwitchDescriptions(Landroid/view/View;Landroid/content/Context;)V

    .line 137
    :cond_8
    return-void

    .line 102
    :cond_9
    :goto_5
    return-void
.end method

.method private static compactSwitchDescriptions(Landroid/view/View;Landroid/content/Context;)V
    .locals 5

    .line 205
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 206
    :cond_0
    check-cast p0, Landroid/view/ViewGroup;

    .line 207
    instance-of v0, p0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/CompoundButton;

    if-eqz v3, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1

    .line 208
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 209
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ne v4, v2, :cond_1

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 210
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 211
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 212
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 213
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 214
    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 215
    const/16 v3, 0x1e

    invoke-static {p1, v3}, Lcom/shilapi/xcertplay/E01UiLayout;->dp(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 216
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\uff0c\u70b9\u51fb\u67e5\u770b\u8bf4\u660e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 217
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 218
    new-instance v0, Lcom/shilapi/xcertplay/E01UiLayout$Detail;

    invoke-direct {v0, v2}, Lcom/shilapi/xcertplay/E01UiLayout$Detail;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    :cond_1
    nop

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/shilapi/xcertplay/E01UiLayout;->compactSwitchDescriptions(Landroid/view/View;Landroid/content/Context;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    :cond_2
    return-void
.end method

.method private static dp(Landroid/content/Context;I)I
    .locals 0

    .line 24
    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private static lp(IIF)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 27
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    return-object v0
.end method

.method private static toolbarAction(Landroid/view/View;Landroid/content/Context;)V
    .locals 8

    .line 30
    instance-of v0, p0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 31
    :cond_0
    check-cast p0, Landroid/widget/TextView;

    .line 32
    const/high16 v0, 0x41880000    # 17.0f

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 33
    const-string v0, "sans-serif-medium"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 34
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 35
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 36
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 37
    instance-of v2, p0, Lcom/shilapi/xcertplay/FitText;

    if-eqz v2, :cond_1

    move-object v2, p0

    check-cast v2, Lcom/shilapi/xcertplay/FitText;

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v2, v3}, Lcom/shilapi/xcertplay/FitText;->setOneLineMinSp(F)V

    .line 38
    :cond_1
    const/16 v2, 0xe

    invoke-static {p1, v2}, Lcom/shilapi/xcertplay/E01UiLayout;->dp(Landroid/content/Context;I)I

    move-result v3

    invoke-static {p1, v2}, Lcom/shilapi/xcertplay/E01UiLayout;->dp(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p0, v3, v1, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 39
    const/16 v2, 0x36

    invoke-static {p1, v2}, Lcom/shilapi/xcertplay/E01UiLayout;->dp(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 40
    sget-object v3, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    .line 41
    nop

    .line 42
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/Glass;->getRIPPLE()I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    sget-object v5, Lcom/shilapi/xcertplay/Glass$Kind;->CONTROL:Lcom/shilapi/xcertplay/Glass$Kind;

    .line 43
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/Glass;->getCurrent()Lcom/shilapi/xcertplay/Glass$Palette;

    move-result-object v6

    const/high16 v7, 0x41400000    # 12.0f

    invoke-virtual {v3, p1, v5, v7, v6}, Lcom/shilapi/xcertplay/Glass;->panel(Landroid/content/Context;Lcom/shilapi/xcertplay/Glass$Kind;FLcom/shilapi/xcertplay/Glass$Palette;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 41
    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lcom/shilapi/xcertplay/LegacyViewsKt;->rippleCompat(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/shilapi/xcertplay/LegacyViewsKt;->setBackgroundCompat(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 44
    nop

    .line 45
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 46
    const/16 v4, 0x1c

    :goto_0
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v1, v5, :cond_3

    invoke-interface {v3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xff

    if-le v5, v6, :cond_2

    const/16 v5, 0x11

    goto :goto_1

    :cond_2
    const/16 v5, 0x9

    :goto_1
    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    :cond_3
    const/16 v0, 0xb4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x50

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1, v0}, Lcom/shilapi/xcertplay/E01UiLayout;->dp(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p1, v2}, Lcom/shilapi/xcertplay/E01UiLayout;->dp(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/shilapi/xcertplay/E01UiLayout;->lp(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 48
    const/16 v1, 0x8

    invoke-static {p1, v1}, Lcom/shilapi/xcertplay/E01UiLayout;->dp(Landroid/content/Context;I)I

    move-result p1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 49
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    return-void
.end method
