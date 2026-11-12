.class public final Lcom/shilapi/xcertplay/ClusterMapPresentation$Companion;
.super Ljava/lang/Object;
.source "ClusterMapPresentation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/ClusterMapPresentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nClusterMapPresentation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClusterMapPresentation.kt\ncom/shilapi/xcertplay/ClusterMapPresentation$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,192:1\n11228#2:193\n11563#2,3:194\n1310#2,2:197\n*S KotlinDebug\n*F\n+ 1 ClusterMapPresentation.kt\ncom/shilapi/xcertplay/ClusterMapPresentation$Companion\n*L\n143#1:193\n143#1:194,3\n145#1:197,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u000c\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/ClusterMapPresentation$Companion;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "findDisplay",
        "Landroid/view/Display;",
        "context",
        "Landroid/content/Context;",
        "theme",
        "Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;",
        "describeDisplays",
        "sizeOf",
        "Landroid/graphics/Point;",
        "display",
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


# direct methods
.method public static synthetic $r8$lambda$HvXBTWcUFTGx1nwTrnkp1oML2s8(Landroid/view/Display;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/ClusterMapPresentation$Companion;->describeDisplays$lambda$3(Landroid/view/Display;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/ClusterMapPresentation$Companion;-><init>()V

    return-void
.end method

.method private static final describeDisplays$lambda$3(Landroid/view/Display;)Ljava/lang/CharSequence;
    .locals 2

    .line 155
    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    invoke-static {p0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Display;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static synthetic findDisplay$default(Lcom/shilapi/xcertplay/ClusterMapPresentation$Companion;Landroid/content/Context;Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;ILjava/lang/Object;)Landroid/view/Display;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 139
    sget-object p2, Lcom/shilapi/xcertplay/DiLink51ClusterLayout;->INSTANCE:Lcom/shilapi/xcertplay/DiLink51ClusterLayout;

    invoke-virtual {p2, p1}, Lcom/shilapi/xcertplay/DiLink51ClusterLayout;->theme(Landroid/content/Context;)Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/ClusterMapPresentation$Companion;->findDisplay(Landroid/content/Context;Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;)Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final describeDisplays(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-static {}, Landroidx/core/app/NavUtils$$ExternalSyntheticApiModelOutline0;->m$12()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/shilapi/xcertplay/compat/Api19Kt;->systemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/os/BundleKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/hardware/display/DisplayManager;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/display/DisplayManager;)[Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    new-instance v6, Lcom/shilapi/xcertplay/ClusterMapPresentation$Companion$$ExternalSyntheticLambda3;

    invoke-direct {v6}, Lcom/shilapi/xcertplay/ClusterMapPresentation$Companion$$ExternalSyntheticLambda3;-><init>()V

    const/16 v7, 0x1f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v8}, Lkotlin/collections/ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    return-object p1
.end method

.method public final findDisplay(Landroid/content/Context;Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;)Landroid/view/Display;
    .locals 7

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/shilapi/xcertplay/E01MapCard;->target(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "theme"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-static {}, Landroidx/core/app/NavUtils$$ExternalSyntheticApiModelOutline0;->m$12()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/shilapi/xcertplay/compat/Api19Kt;->systemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/os/BundleKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/hardware/display/DisplayManager;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 141
    const-string v1, "android.hardware.display.category.PRESENTATION"

    invoke-static {p1, v1}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/display/DisplayManager;Ljava/lang/String;)[Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 142
    sget-object v1, Lcom/shilapi/xcertplay/DiLink51ClusterLayout;->INSTANCE:Lcom/shilapi/xcertplay/DiLink51ClusterLayout;

    .line 193
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 194
    array-length v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, p1, v5

    .line 143
    invoke-static {v6}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Display;)Ljava/lang/String;

    move-result-object v6

    .line 195
    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 196
    :cond_1
    check-cast v2, Ljava/util/List;

    .line 143
    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v5, "FINGERPRINT"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v1, v2, v3, p2}, Lcom/shilapi/xcertplay/DiLink51ClusterLayout;->displayName(Ljava/util/List;Ljava/lang/String;Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v0

    .line 197
    :cond_2
    array-length v2, p1

    :goto_1
    if-ge v4, v2, :cond_4

    aget-object v3, p1, v4

    .line 145
    invoke-static {v3}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Display;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    move-object v3, v0

    :goto_2
    if-eqz v3, :cond_6

    .line 146
    sget-object p1, Lcom/shilapi/xcertplay/DiLink51ClusterLayout;->INSTANCE:Lcom/shilapi/xcertplay/DiLink51ClusterLayout;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lcom/shilapi/xcertplay/DiLink51ClusterLayout;->supported$default(Lcom/shilapi/xcertplay/DiLink51ClusterLayout;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return-object v3

    .line 147
    :cond_5
    sget-object p1, Lcom/shilapi/xcertplay/ClusterMapPresentation;->Companion:Lcom/shilapi/xcertplay/ClusterMapPresentation$Companion;

    invoke-virtual {p1, v3}, Lcom/shilapi/xcertplay/ClusterMapPresentation$Companion;->sizeOf(Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object p1

    .line 148
    sget-object v1, Lcom/shilapi/xcertplay/DiLink51ClusterLayout;->INSTANCE:Lcom/shilapi/xcertplay/DiLink51ClusterLayout;

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, p1, p2}, Lcom/shilapi/xcertplay/DiLink51ClusterLayout;->plan(IILcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;)Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;

    move-result-object p1

    if-eqz p1, :cond_6

    return-object v3

    :cond_6
    return-object v0
.end method

.method public final sizeOf(Landroid/view/Display;)Landroid/graphics/Point;
    .locals 1

    const-string v0, "display"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 159
    invoke-static {p1, v0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Display;Landroid/graphics/Point;)V

    return-object v0
.end method
