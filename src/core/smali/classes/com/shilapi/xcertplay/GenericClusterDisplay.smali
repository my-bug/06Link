.class public final Lcom/shilapi/xcertplay/GenericClusterDisplay;
.super Ljava/lang/Object;
.source "GenericClusterDisplay.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;,
        Lcom/shilapi/xcertplay/GenericClusterDisplay$Choice;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGenericClusterDisplay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GenericClusterDisplay.kt\ncom/shilapi/xcertplay/GenericClusterDisplay\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,368:1\n1#2:369\n774#3:370\n865#3,2:371\n1761#3,3:373\n1563#3:376\n1634#3,3:377\n1563#3:380\n1634#3,3:381\n1563#3:384\n1634#3,3:385\n774#3:388\n865#3,2:389\n295#3,2:391\n774#3:393\n865#3,2:394\n295#3,2:396\n*S KotlinDebug\n*F\n+ 1 GenericClusterDisplay.kt\ncom/shilapi/xcertplay/GenericClusterDisplay\n*L\n68#1:370\n68#1:371,2\n73#1:373,3\n75#1:376\n75#1:377,3\n89#1:380\n89#1:381,3\n90#1:384\n90#1:385,3\n90#1:388\n90#1:389,2\n116#1:391,2\n117#1:393\n117#1:394,2\n125#1:396,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c0\u0002\u0018\u00002\u00020\u0001:\u000278B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000cJ\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\u0010\u001a\u00020\u0011J\u001e\u0010\u0012\u001a\u00020\n2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000e2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\nJ\u000e\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u000fJ\u0014\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u000e2\u0006\u0010\u0010\u001a\u00020\u0011J\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u0010\u001a\u00020\u0011J\u0016\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0016J\u0015\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0010\u001a\u00020\u0011H\u0000\u00a2\u0006\u0002\u0008\u001eJ \u0010\u001f\u001a\u0004\u0018\u00010\u00162\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u000e2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aJ\u0010\u0010 \u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0010\u001a\u00020\u0011J\u0010\u0010!\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u001c\u0010\"\u001a\u0004\u0018\u00010#2\u0006\u0010\u0010\u001a\u00020\u00112\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u0016J\u000e\u0010%\u001a\u00020\u00112\u0006\u0010&\u001a\u00020\u0011J\u0010\u0010\'\u001a\u00020(2\u0006\u0010\u0017\u001a\u00020\u000fH\u0002J\u0018\u0010)\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u000fH\u0002J\u0018\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u000fH\u0002J\u000e\u0010-\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0016J2\u0010.\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000c0/2\u0006\u00100\u001a\u00020\u000c2\u0006\u00101\u001a\u00020\u000c2\u0006\u00102\u001a\u00020\u000c2\u0006\u00103\u001a\u00020\u000cJ\u0018\u00104\u001a\n 6*\u0004\u0018\u000105052\u0006\u0010\u0010\u001a\u00020\u0011H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u00069"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/GenericClusterDisplay;",
        "",
        "<init>",
        "()V",
        "PREFS",
        "",
        "KEY_NAME",
        "KEY_WIDTH",
        "KEY_HEIGHT",
        "supportedSdk",
        "",
        "sdk",
        "",
        "presentationDisplays",
        "",
        "Landroid/view/Display;",
        "context",
        "Landroid/content/Context;",
        "bydPresent",
        "names",
        "dilink51",
        "candidate",
        "Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;",
        "display",
        "candidates",
        "choice",
        "Lcom/shilapi/xcertplay/GenericClusterDisplay$Choice;",
        "saveChoice",
        "",
        "clearChoice",
        "clearChoice$common_release",
        "select",
        "selected",
        "findDisplay",
        "streamConfig",
        "Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;",
        "chosen",
        "presentationContext",
        "activity",
        "currentMetrics",
        "Landroid/util/DisplayMetrics;",
        "metricsMatch",
        "sizeConfiguration",
        "Landroid/content/res/Configuration;",
        "base",
        "label",
        "fit",
        "Lkotlin/Pair;",
        "width",
        "height",
        "contentWidth",
        "contentHeight",
        "prefs",
        "Landroid/content/SharedPreferences;",
        "kotlin.jvm.PlatformType",
        "Candidate",
        "Choice",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/GenericClusterDisplay;

.field private static final KEY_HEIGHT:Ljava/lang/String; = "height"

.field private static final KEY_NAME:Ljava/lang/String; = "name"

.field private static final KEY_WIDTH:Ljava/lang/String; = "width"

.field private static final PREFS:Ljava/lang/String; = "free_auto_cluster_display"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/GenericClusterDisplay;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/GenericClusterDisplay;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/GenericClusterDisplay;->INSTANCE:Lcom/shilapi/xcertplay/GenericClusterDisplay;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$metricsMatch(Lcom/shilapi/xcertplay/GenericClusterDisplay;Landroid/content/Context;Landroid/view/Display;)Z
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/GenericClusterDisplay;->metricsMatch(Landroid/content/Context;Landroid/view/Display;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$sizeConfiguration(Lcom/shilapi/xcertplay/GenericClusterDisplay;Landroid/content/Context;Landroid/view/Display;)Landroid/content/res/Configuration;
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/GenericClusterDisplay;->sizeConfiguration(Landroid/content/Context;Landroid/view/Display;)Landroid/content/res/Configuration;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic bydPresent$default(Lcom/shilapi/xcertplay/GenericClusterDisplay;Ljava/util/List;ZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 72
    sget-object p2, Lcom/shilapi/xcertplay/DiLink51ClusterLayout;->INSTANCE:Lcom/shilapi/xcertplay/DiLink51ClusterLayout;

    const/4 p3, 0x1

    const/4 p4, 0x0

    invoke-static {p2, p4, p3, p4}, Lcom/shilapi/xcertplay/DiLink51ClusterLayout;->supported$default(Lcom/shilapi/xcertplay/DiLink51ClusterLayout;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/GenericClusterDisplay;->bydPresent(Ljava/util/List;Z)Z

    move-result p0

    return p0
.end method

.method private final currentMetrics(Landroid/view/Display;)Landroid/util/DisplayMetrics;
    .locals 1

    .line 155
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 157
    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-object v0
.end method

.method private final metricsMatch(Landroid/content/Context;Landroid/view/Display;)Z
    .locals 2

    .line 161
    invoke-direct {p0, p2}, Lcom/shilapi/xcertplay/GenericClusterDisplay;->currentMetrics(Landroid/view/Display;)Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 163
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v1, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v0, v1, :cond_0

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iget p2, p2, Landroid/util/DisplayMetrics;->densityDpi:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    const-string v0, "free_auto_cluster_display"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method

.method private final sizeConfiguration(Landroid/content/Context;Landroid/view/Display;)Landroid/content/res/Configuration;
    .locals 3

    .line 167
    invoke-direct {p0, p2}, Lcom/shilapi/xcertplay/GenericClusterDisplay;->currentMetrics(Landroid/view/Display;)Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 168
    iget v0, p2, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 169
    :goto_1
    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 170
    iget p1, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 171
    iget p1, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float p1, p1

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 172
    iget p1, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v0, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 173
    iget p1, p2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v1, p1}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/content/res/Configuration;I)V

    .line 174
    iget p1, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt p1, p2, :cond_2

    const/4 p1, 0x2

    goto :goto_2

    :cond_2
    const/4 p1, 0x1

    :goto_2
    iput p1, v1, Landroid/content/res/Configuration;->orientation:I

    return-object v1
.end method

.method public static synthetic streamConfig$default(Lcom/shilapi/xcertplay/GenericClusterDisplay;Landroid/content/Context;Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;ILjava/lang/Object;)Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 129
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/GenericClusterDisplay;->selected(Landroid/content/Context;)Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/GenericClusterDisplay;->streamConfig(Landroid/content/Context;Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;)Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic supportedSdk$default(Lcom/shilapi/xcertplay/GenericClusterDisplay;IILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 61
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/GenericClusterDisplay;->supportedSdk(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final bydPresent(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/GenericClusterDisplay;->presentationDisplays(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 376
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 377
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 378
    check-cast v1, Landroid/view/Display;

    .line 75
    invoke-static {v1}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Display;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    .line 378
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 379
    :cond_1
    check-cast v0, Ljava/util/List;

    const/4 p1, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 75
    invoke-static {p0, v0, v2, p1, v1}, Lcom/shilapi/xcertplay/GenericClusterDisplay;->bydPresent$default(Lcom/shilapi/xcertplay/GenericClusterDisplay;Ljava/util/List;ZILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bydPresent(Ljava/util/List;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/shilapi/xcertplay/E01MapCard;->target(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, "names"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_4

    .line 73
    check-cast p1, Ljava/lang/Iterable;

    .line 373
    instance-of p2, p1, Ljava/util/Collection;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 374
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 73
    check-cast p2, Ljava/lang/CharSequence;

    const-string v1, "fission_bg_XDJAScreenProjection"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p2, v1, v0, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_3
    :goto_0
    return v0

    :cond_4
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public final candidate(Landroid/view/Display;)Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;
    .locals 9

    const-string v0, "display"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 80
    invoke-static {p1, v0}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/view/Display;Landroid/util/DisplayMetrics;)V

    .line 81
    new-instance v1, Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-static {p1}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Display;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, ""

    :cond_0
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 82
    iget v6, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v7, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result v8

    .line 81
    invoke-direct/range {v1 .. v8}, Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;-><init>(ILjava/lang/String;IIFII)V

    return-object v1
.end method

.method public final candidates(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 87
    invoke-static {p0, v0, v1, v2}, Lcom/shilapi/xcertplay/GenericClusterDisplay;->supportedSdk$default(Lcom/shilapi/xcertplay/GenericClusterDisplay;IILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 88
    :cond_0
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/GenericClusterDisplay;->presentationDisplays(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    .line 89
    check-cast p1, Ljava/lang/Iterable;

    .line 380
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 381
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 382
    check-cast v5, Landroid/view/Display;

    .line 89
    invoke-static {v5}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Display;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v5, ""

    .line 382
    :cond_1
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 383
    :cond_2
    check-cast v1, Ljava/util/List;

    const/4 v4, 0x2

    .line 89
    invoke-static {p0, v1, v0, v4, v2}, Lcom/shilapi/xcertplay/GenericClusterDisplay;->bydPresent$default(Lcom/shilapi/xcertplay/GenericClusterDisplay;Ljava/util/List;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 384
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 385
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 386
    check-cast v1, Landroid/view/Display;

    .line 90
    invoke-virtual {p0, v1}, Lcom/shilapi/xcertplay/GenericClusterDisplay;->candidate(Landroid/view/Display;)Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;

    move-result-object v1

    .line 386
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 387
    :cond_4
    check-cast v0, Ljava/util/List;

    .line 384
    check-cast v0, Ljava/lang/Iterable;

    .line 388
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/Collection;

    .line 389
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;

    .line 90
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;->getWidth()I

    move-result v3

    if-lez v3, :cond_5

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;->getHeight()I

    move-result v2

    if-lez v2, :cond_5

    .line 389
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 390
    :cond_6
    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final choice(Landroid/content/Context;)Lcom/shilapi/xcertplay/GenericClusterDisplay$Choice;
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/GenericClusterDisplay;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 95
    const-string v0, "name"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    .line 96
    :cond_0
    new-instance v1, Lcom/shilapi/xcertplay/GenericClusterDisplay$Choice;

    const-string/jumbo v2, "width"

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "height"

    invoke-interface {p1, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-direct {v1, v0, v2, p1}, Lcom/shilapi/xcertplay/GenericClusterDisplay$Choice;-><init>(Ljava/lang/String;II)V

    return-object v1
.end method

.method public final clearChoice$common_release(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/GenericClusterDisplay;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final findDisplay(Landroid/content/Context;)Landroid/view/Display;
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/GenericClusterDisplay;->selected(Landroid/content/Context;)Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 125
    :cond_0
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/GenericClusterDisplay;->presentationDisplays(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 396
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/view/Display;

    .line 125
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;->getId()I

    move-result v4

    if-ne v3, v4, :cond_1

    move-object v1, v2

    .line 397
    :cond_2
    check-cast v1, Landroid/view/Display;

    return-object v1
.end method

.method public final fit(IIII)Lkotlin/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-lez p1, :cond_2

    if-lez p2, :cond_2

    if-lez p3, :cond_2

    if-gtz p4, :cond_0

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    int-to-long v2, p4

    mul-long v0, v0, v2

    int-to-long v2, p2

    int-to-long v4, p3

    mul-long v2, v2, v4

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-lez v5, :cond_1

    int-to-double v0, p2

    int-to-double v2, p3

    .line 189
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    int-to-double p3, p4

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide p3

    long-to-int p4, p3

    invoke-static {p4, v4, p1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1

    .line 191
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    int-to-double v1, p1

    int-to-double v5, p4

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v5

    int-to-double p3, p3

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide p3

    long-to-int p1, p3

    invoke-static {p1, v4, p2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const/4 p3, 0x0

    .line 187
    invoke-static {p1, p3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final label(Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;)Ljava/lang/String;
    .locals 4

    const-string v0, "candidate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;->getName()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Display"

    :cond_0
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;->getId()I

    move-result p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " \u00b7 "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\u00d7"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " \u00b7 ID "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final presentationContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    new-instance v0, Lcom/shilapi/xcertplay/GenericClusterDisplay$presentationContext$1;

    invoke-direct {v0, p1}, Lcom/shilapi/xcertplay/GenericClusterDisplay$presentationContext$1;-><init>(Landroid/content/Context;)V

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public final presentationDisplays(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/Display;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 66
    :cond_0
    invoke-static {}, Landroidx/core/app/NavUtils$$ExternalSyntheticApiModelOutline0;->m$12()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/shilapi/xcertplay/compat/Api19Kt;->systemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/os/BundleKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/hardware/display/DisplayManager;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 67
    :cond_1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/GenericClusterDisplay;

    const-string v0, "android.hardware.display.category.PRESENTATION"

    invoke-static {p1, v0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/display/DisplayManager;Ljava/lang/String;)[Landroid/view/Display;

    move-result-object p1

    const-string v0, "getDisplays(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object p1, v0

    :cond_2
    check-cast p1, Ljava/lang/Iterable;

    .line 370
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 371
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/view/Display;

    .line 68
    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    if-eqz v2, :cond_3

    .line 371
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 372
    :cond_4
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final saveChoice(Landroid/content/Context;Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "candidate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/GenericClusterDisplay;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "name"

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string/jumbo v0, "width"

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;->getWidth()I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 101
    const-string v0, "height"

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;->getHeight()I

    move-result p2

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final select(Ljava/util/List;Lcom/shilapi/xcertplay/GenericClusterDisplay$Choice;)Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;",
            ">;",
            "Lcom/shilapi/xcertplay/GenericClusterDisplay$Choice;",
            ")",
            "Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;"
        }
    .end annotation

    const-string v0, "candidates"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    if-nez p2, :cond_1

    .line 115
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;

    return-object p1

    .line 116
    :cond_1
    check-cast p1, Ljava/lang/Iterable;

    .line 391
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;

    .line 116
    invoke-virtual {v3, p2}, Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;->matches(Lcom/shilapi/xcertplay/GenericClusterDisplay$Choice;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, v2

    :cond_3
    check-cast v1, Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;

    if-eqz v1, :cond_4

    return-object v1

    .line 393
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 394
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;

    .line 117
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/GenericClusterDisplay$Choice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 394
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 395
    :cond_6
    check-cast v0, Ljava/util/List;

    .line 117
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->singleOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;

    return-object p1
.end method

.method public final selected(Landroid/content/Context;)Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/GenericClusterDisplay;->candidates(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/GenericClusterDisplay;->choice(Landroid/content/Context;)Lcom/shilapi/xcertplay/GenericClusterDisplay$Choice;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/shilapi/xcertplay/GenericClusterDisplay;->select(Ljava/util/List;Lcom/shilapi/xcertplay/GenericClusterDisplay$Choice;)Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;

    move-result-object p1

    return-object p1
.end method

.method public final streamConfig(Landroid/content/Context;Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;)Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 131
    :cond_0
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;->getId()I

    move-result v6

    sget-object v0, Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay;->INSTANCE:Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay;

    .line 132
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;->getHeight()I

    move-result v2

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;->getXdpi()F

    move-result v3

    .line 133
    sget-object p2, Lcom/shilapi/xcertplay/AirPlayPersistence;->INSTANCE:Lcom/shilapi/xcertplay/AirPlayPersistence;

    invoke-virtual {p2, p1}, Lcom/shilapi/xcertplay/AirPlayPersistence;->loadClusterMapScalePercent(Landroid/content/Context;)I

    move-result v4

    .line 134
    sget-object p2, Lcom/shilapi/xcertplay/AirPlayPersistence;->INSTANCE:Lcom/shilapi/xcertplay/AirPlayPersistence;

    invoke-virtual {p2, p1}, Lcom/shilapi/xcertplay/AirPlayPersistence;->loadClusterContent(Landroid/content/Context;)Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay$Content;

    move-result-object v5

    .line 131
    invoke-virtual/range {v0 .. v5}, Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay;->genericConfig(IIFILcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay$Content;)Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;

    move-result-object p1

    invoke-static {p1, v6}, Lcom/shilapi/xcertplay/E01DisplayConfig;->adjust(Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;I)Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;

    move-result-object p1

    return-object p1
.end method

.method public final supportedSdk(I)Z
    .locals 1

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
