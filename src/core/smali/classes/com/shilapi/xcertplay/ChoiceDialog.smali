.class public final Lcom/shilapi/xcertplay/ChoiceDialog;
.super Ljava/lang/Object;
.source "SettingRow.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSettingRow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingRow.kt\ncom/shilapi/xcertplay/ChoiceDialog\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,149:1\n1563#2:150\n1634#2,3:151\n360#2,7:154\n1878#2,3:162\n1878#2,3:165\n1#3:161\n*S KotlinDebug\n*F\n+ 1 SettingRow.kt\ncom/shilapi/xcertplay/ChoiceDialog\n*L\n84#1:150\n84#1:151,3\n88#1:154,7\n100#1:162,3\n123#1:165,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\nJv\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00052\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u00072\u0006\u0010\u0018\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u00052\u0014\u0008\u0002\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u001d0\u001c2\u000e\u0008\u0002\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001f2\u0012\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u001d0\u001cR\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u001c\u0010\r\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006!"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/ChoiceDialog;",
        "",
        "<init>",
        "()V",
        "LIST_TAG",
        "",
        "rows",
        "",
        "Landroid/view/ViewGroup;",
        "dialog",
        "Landroid/app/AlertDialog;",
        "checked",
        "",
        "shown",
        "getShown",
        "()Landroid/app/AlertDialog;",
        "setShown",
        "(Landroid/app/AlertDialog;)V",
        "show",
        "context",
        "Landroid/content/Context;",
        "title",
        "options",
        "Lcom/shilapi/xcertplay/ChoiceOption;",
        "current",
        "saveLabel",
        "cancelLabel",
        "onPick",
        "Lkotlin/Function1;",
        "",
        "onDismiss",
        "Lkotlin/Function0;",
        "onSave",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/ChoiceDialog;

.field public static final LIST_TAG:Ljava/lang/String; = "choice-list"

.field private static volatile shown:Landroid/app/AlertDialog;


# direct methods
.method public static synthetic $r8$lambda$FgFzg582wEHcqja4jhFvq_AR8yQ(Landroid/app/AlertDialog;Lkotlin/jvm/functions/Function0;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/ChoiceDialog;->show$lambda$17(Landroid/app/AlertDialog;Lkotlin/jvm/functions/Function0;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TrZqZMjco2H29QPDgPF7toGcw4g()Lkotlin/Unit;
    .locals 1

    invoke-static {}, Lcom/shilapi/xcertplay/ChoiceDialog;->show$lambda$3()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$rEIjmwIWtzvl10vHU0qjxnkmvc8(I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/ChoiceDialog;->show$lambda$2(I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$voZzpFfyxIk_dP75ScunmB1_CcM(Lkotlin/jvm/internal/Ref$IntRef;ILjava/util/ArrayList;Lkotlin/jvm/functions/Function1;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/ChoiceDialog;->show$lambda$13$lambda$11$lambda$10(Lkotlin/jvm/internal/Ref$IntRef;ILjava/util/ArrayList;Lkotlin/jvm/functions/Function1;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z2HP0rbrhoerr2ectCT7AifwW7E(Lkotlin/jvm/internal/Ref$IntRef;ILkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/ChoiceDialog;->show$lambda$15(Lkotlin/jvm/internal/Ref$IntRef;ILkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/ChoiceDialog;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/ChoiceDialog;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/ChoiceDialog;->INSTANCE:Lcom/shilapi/xcertplay/ChoiceDialog;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic show$default(Lcom/shilapi/xcertplay/ChoiceDialog;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroid/app/AlertDialog;
    .locals 12

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_0

    .line 94
    new-instance v1, Lcom/shilapi/xcertplay/ChoiceDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/shilapi/xcertplay/ChoiceDialog$$ExternalSyntheticLambda1;-><init>()V

    move-object v9, v1

    goto :goto_0

    :cond_0
    move-object/from16 v9, p7

    :goto_0
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    new-instance v0, Lcom/shilapi/xcertplay/ChoiceDialog$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/ChoiceDialog$$ExternalSyntheticLambda2;-><init>()V

    move-object v10, v0

    goto :goto_1

    :cond_1
    move-object/from16 v10, p8

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v11, p9

    .line 93
    invoke-virtual/range {v2 .. v11}, Lcom/shilapi/xcertplay/ChoiceDialog;->show(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private static final show$dp(FI)I
    .locals 0

    int-to-float p1, p1

    mul-float p1, p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private static final show$lambda$13$lambda$11$lambda$10(Lkotlin/jvm/internal/Ref$IntRef;ILjava/util/ArrayList;Lkotlin/jvm/functions/Function1;Landroid/view/View;)V
    .locals 2

    .line 122
    iput p1, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 123
    check-cast p2, Ljava/lang/Iterable;

    .line 166
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p2, 0x0

    const/4 p4, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, p4, 0x1

    if-gez p4, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v0, Landroid/widget/RadioButton;

    if-ne p4, p1, :cond_1

    const/4 p4, 0x1

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    .line 123
    :goto_1
    invoke-virtual {v0, p4}, Landroid/widget/RadioButton;->setChecked(Z)V

    move p4, v1

    goto :goto_0

    .line 124
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final show$lambda$15(Lkotlin/jvm/internal/Ref$IntRef;ILkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 138
    iget p3, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-eq p3, p1, :cond_0

    iget p0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static final show$lambda$17(Landroid/app/AlertDialog;Lkotlin/jvm/functions/Function0;Landroid/content/DialogInterface;)V
    .locals 0

    .line 145
    sget-object p2, Lcom/shilapi/xcertplay/ChoiceDialog;->shown:Landroid/app/AlertDialog;

    if-ne p2, p0, :cond_0

    const/4 p0, 0x0

    sput-object p0, Lcom/shilapi/xcertplay/ChoiceDialog;->shown:Landroid/app/AlertDialog;

    :cond_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final show$lambda$2(I)Lkotlin/Unit;
    .locals 0

    .line 94
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final show$lambda$3()Lkotlin/Unit;
    .locals 1

    .line 94
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public final checked(Landroid/app/AlertDialog;)I
    .locals 4

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/ChoiceDialog;->rows(Landroid/app/AlertDialog;)Ljava/util/List;

    move-result-object p1

    .line 155
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 156
    check-cast v2, Landroid/view/ViewGroup;

    .line 88
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.widget.RadioButton"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final getShown()Landroid/app/AlertDialog;
    .locals 1

    .line 91
    sget-object v0, Lcom/shilapi/xcertplay/ChoiceDialog;->shown:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public final rows(Landroid/app/AlertDialog;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AlertDialog;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const-string v0, "choice-list"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 150
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 151
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lkotlin/collections/IntIterator;

    invoke-virtual {v2}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v2

    .line 84
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/ViewGroup;

    .line 152
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 153
    :cond_0
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public final setShown(Landroid/app/AlertDialog;)V
    .locals 0

    .line 91
    sput-object p1, Lcom/shilapi/xcertplay/ChoiceDialog;->shown:Landroid/app/AlertDialog;

    return-void
.end method

.method public final show(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Landroid/app/AlertDialog;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/ChoiceOption;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroid/app/AlertDialog;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    const-string v9, "context"

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v9, "title"

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "options"

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "saveLabel"

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "cancelLabel"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "onPick"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "onDismiss"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "onSave"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    .line 97
    new-instance v10, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iput v3, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 98
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 99
    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v14, 0x14

    invoke-static {v9, v14}, Lcom/shilapi/xcertplay/ChoiceDialog;->show$dp(FI)I

    move-result v15

    const/16 v13, 0x8

    invoke-static {v9, v13}, Lcom/shilapi/xcertplay/ChoiceDialog;->show$dp(FI)I

    move-result v1

    invoke-static {v9, v14}, Lcom/shilapi/xcertplay/ChoiceDialog;->show$dp(FI)I

    move-result v14

    invoke-static {v9, v13}, Lcom/shilapi/xcertplay/ChoiceDialog;->show$dp(FI)I

    move-result v2

    invoke-virtual {v12, v15, v1, v14, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const-string v1, "choice-list"

    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 100
    move-object/from16 v1, p3

    check-cast v1, Ljava/lang/Iterable;

    .line 163
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v14, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v18, v14, 0x1

    if-gez v14, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v15, Lcom/shilapi/xcertplay/ChoiceOption;

    .line 101
    new-instance v13, Landroid/widget/RadioButton;

    invoke-direct {v13, v0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    move-object/from16 v20, v1

    if-ne v14, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 102
    :goto_1
    invoke-virtual {v13, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-virtual {v13, v2}, Landroid/widget/RadioButton;->setClickable(Z)V

    invoke-virtual {v13, v2}, Landroid/widget/RadioButton;->setFocusable(Z)V

    invoke-virtual {v15}, Lcom/shilapi/xcertplay/ChoiceOption;->getEnabled()Z

    move-result v1

    invoke-virtual {v13, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 103
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    sget-object v1, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/Glass;->getACCENT()I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v13, v1}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/RadioButton;Landroid/content/res/ColorStateList;)V

    .line 104
    :cond_2
    move-object v1, v13

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/shilapi/xcertplay/LegacyViewsKt;->setImportantForAccessibilityCompat(Landroid/view/View;I)V

    .line 106
    move-object v2, v11

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 108
    new-instance v13, Landroid/widget/TextView;

    invoke-direct {v13, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 109
    invoke-virtual {v15}, Lcom/shilapi/xcertplay/ChoiceOption;->getLabel()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v4, v22

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41880000    # 17.0f

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v15}, Lcom/shilapi/xcertplay/ChoiceOption;->getEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/Glass;->getTEXT()I

    move-result v4

    goto :goto_2

    :cond_3
    sget-object v4, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/Glass;->getMUTED()I

    move-result v4

    :goto_2
    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    const-string v4, "sans-serif-medium"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 108
    check-cast v13, Landroid/view/View;

    invoke-virtual {v2, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 112
    invoke-virtual {v15}, Lcom/shilapi/xcertplay/ChoiceOption;->getExplanation()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 113
    invoke-virtual {v15}, Lcom/shilapi/xcertplay/ChoiceOption;->getExplanation()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v5, 0x41500000    # 13.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v5, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/Glass;->getMUTED()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v5, 0x2

    invoke-static {v9, v5}, Lcom/shilapi/xcertplay/ChoiceDialog;->show$dp(FI)I

    move-result v5

    const/4 v13, 0x0

    invoke-virtual {v4, v13, v5, v13, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 112
    check-cast v4, Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    :cond_4
    const/4 v13, 0x0

    .line 115
    :goto_3
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 116
    invoke-virtual {v4, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v5, 0x38

    .line 117
    invoke-static {v9, v5}, Lcom/shilapi/xcertplay/ChoiceDialog;->show$dp(FI)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    const/4 v5, 0x6

    move-object/from16 p3, v2

    invoke-static {v9, v5}, Lcom/shilapi/xcertplay/ChoiceDialog;->show$dp(FI)I

    move-result v2

    invoke-static {v9, v5}, Lcom/shilapi/xcertplay/ChoiceDialog;->show$dp(FI)I

    move-result v5

    invoke-virtual {v4, v13, v2, v13, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 118
    invoke-virtual {v15}, Lcom/shilapi/xcertplay/ChoiceOption;->getEnabled()Z

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    invoke-virtual {v15}, Lcom/shilapi/xcertplay/ChoiceOption;->getEnabled()Z

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 119
    invoke-virtual {v15}, Lcom/shilapi/xcertplay/ChoiceOption;->getLabel()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 120
    invoke-virtual {v15}, Lcom/shilapi/xcertplay/ChoiceOption;->getEnabled()Z

    move-result v2

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v2, :cond_5

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_5
    const v2, 0x3f19999a    # 0.6f

    :goto_4
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 121
    new-instance v2, Lcom/shilapi/xcertplay/ChoiceDialog$$ExternalSyntheticLambda3;

    invoke-direct {v2, v10, v14, v11, v6}, Lcom/shilapi/xcertplay/ChoiceDialog$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/internal/Ref$IntRef;ILjava/util/ArrayList;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x2

    invoke-direct {v2, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v4, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    move-object/from16 v2, p3

    check-cast v2, Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, 0x0

    invoke-direct {v1, v14, v13, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object v5, v1

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v14, 0x8

    invoke-static {v9, v14}, Lcom/shilapi/xcertplay/ChoiceDialog;->show$dp(FI)I

    move-result v15

    invoke-static {v5, v15}, Lcom/shilapi/xcertplay/LegacyViewsKt;->setMarginStartCompat(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v4, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    check-cast v4, Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v12, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v14, v18

    move-object/from16 v1, v20

    const/4 v2, 0x0

    const/16 v13, 0x8

    goto/16 :goto_0

    .line 133
    :cond_6
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    const v2, 0x3f0ccccd    # 0.55f

    mul-float v1, v1, v2

    float-to-int v1, v1

    const/16 v2, 0xa0

    invoke-static {v9, v2}, Lcom/shilapi/xcertplay/ChoiceDialog;->show$dp(FI)I

    move-result v2

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    .line 136
    new-instance v2, Lcom/shilapi/xcertplay/MaxHeightScrollView;

    invoke-direct {v2, v0, v1}, Lcom/shilapi/xcertplay/MaxHeightScrollView;-><init>(Landroid/content/Context;I)V

    check-cast v12, Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v13, -0x2

    invoke-direct {v1, v4, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v12, v1}, Lcom/shilapi/xcertplay/MaxHeightScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Lcom/shilapi/xcertplay/MaxHeightScrollView;->setFillViewport(Z)V

    .line 137
    sget-object v1, Lcom/shilapi/xcertplay/Appearance;->INSTANCE:Lcom/shilapi/xcertplay/Appearance;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v1, v0, v13, v5, v4}, Lcom/shilapi/xcertplay/Appearance;->dialog$default(Lcom/shilapi/xcertplay/Appearance;Landroid/content/Context;ZILjava/lang/Object;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 138
    move-object/from16 v1, p5

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v2, Lcom/shilapi/xcertplay/ChoiceDialog$$ExternalSyntheticLambda4;

    invoke-direct {v2, v10, v3, v8}, Lcom/shilapi/xcertplay/ChoiceDialog$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/internal/Ref$IntRef;ILkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 139
    move-object/from16 v1, p6

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 140
    invoke-static {v0}, Lcom/shilapi/xcertplay/E01Dialogs;->show(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;

    move-result-object v0

    const/16 v17, -0x1

    .line 141
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v19, -0x2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    new-array v3, v5, [Ljava/lang/Integer;

    const/16 v21, 0x0

    aput-object v1, v3, v21

    const/16 v16, 0x1

    aput-object v2, v3, v16

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 142
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_7

    const/16 v5, 0x38

    invoke-static {v9, v5}, Lcom/shilapi/xcertplay/ChoiceDialog;->show$dp(FI)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setMinHeight(I)V

    invoke-static {v9, v5}, Lcom/shilapi/xcertplay/ChoiceDialog;->show$dp(FI)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setMinimumHeight(I)V

    goto :goto_5

    .line 144
    :cond_8
    sput-object v0, Lcom/shilapi/xcertplay/ChoiceDialog;->shown:Landroid/app/AlertDialog;

    .line 145
    new-instance v1, Lcom/shilapi/xcertplay/ChoiceDialog$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0, v7}, Lcom/shilapi/xcertplay/ChoiceDialog$$ExternalSyntheticLambda5;-><init>(Landroid/app/AlertDialog;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 146
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
