.class public final Lcom/shilapi/xcertplay/LocalizedOptionsKt;
.super Ljava/lang/Object;
.source "LocalizedOptions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/LocalizedOptionsKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0000\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0004H\u0000\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0004H\u0000\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0004H\u0000\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0004H\u0000\u001a\u000c\u0010\t\u001a\u00020\n*\u00020\u000bH\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "localizedLabel",
        "",
        "Lcom/shilapi/xcertplay/airplay/CarPlaySize;",
        "context",
        "Landroid/content/Context;",
        "Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;",
        "Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Contrast;",
        "Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;",
        "Lcom/shilapi/xcertplay/transport/EvChargingConnectors;",
        "messageResource",
        "",
        "Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;",
        "common_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final localizedLabel(Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Contrast;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sget-object v0, Lcom/shilapi/xcertplay/LocalizedOptionsKt$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Contrast;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 25
    sget p0, Lcom/shilapi/xcertplay/host/R$string;->option_contrast_dark:I

    goto :goto_0

    .line 22
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 24
    :cond_1
    sget p0, Lcom/shilapi/xcertplay/host/R$string;->option_contrast_light:I

    goto :goto_0

    .line 23
    :cond_2
    sget p0, Lcom/shilapi/xcertplay/host/R$string;->option_contrast_default:I

    .line 22
    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final localizedLabel(Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget-object v0, Lcom/shilapi/xcertplay/LocalizedOptionsKt$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 19
    sget p0, Lcom/shilapi/xcertplay/host/R$string;->option_theme_simple:I

    goto :goto_0

    .line 16
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 18
    :cond_1
    sget p0, Lcom/shilapi/xcertplay/host/R$string;->option_theme_map:I

    goto :goto_0

    .line 17
    :cond_2
    sget p0, Lcom/shilapi/xcertplay/host/R$string;->option_theme_scenario:I

    .line 16
    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final localizedLabel(Lcom/shilapi/xcertplay/airplay/CarPlaySize;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v0, Lcom/shilapi/xcertplay/LocalizedOptionsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/airplay/CarPlaySize;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 13
    sget p0, Lcom/shilapi/xcertplay/host/R$string;->option_size_small:I

    goto :goto_0

    .line 10
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 12
    :cond_1
    sget p0, Lcom/shilapi/xcertplay/host/R$string;->option_size_medium:I

    goto :goto_0

    .line 11
    :cond_2
    sget p0, Lcom/shilapi/xcertplay/host/R$string;->option_size_large:I

    .line 10
    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final localizedLabel(Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object v0, Lcom/shilapi/xcertplay/LocalizedOptionsKt$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 32
    sget p0, Lcom/shilapi/xcertplay/host/R$string;->navi_mode_full:I

    goto :goto_0

    .line 28
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 31
    :cond_1
    sget p0, Lcom/shilapi/xcertplay/host/R$string;->navi_mode_small:I

    goto :goto_0

    .line 30
    :cond_2
    sget p0, Lcom/shilapi/xcertplay/host/R$string;->navi_mode_turn_on_by_navi:I

    goto :goto_0

    .line 29
    :cond_3
    sget p0, Lcom/shilapi/xcertplay/host/R$string;->navi_mode_off:I

    .line 28
    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final localizedLabel(Lcom/shilapi/xcertplay/transport/EvChargingConnectors;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object v0, Lcom/shilapi/xcertplay/LocalizedOptionsKt$WhenMappings;->$EnumSwitchMapping$4:[I

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/transport/EvChargingConnectors;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 38
    sget p0, Lcom/shilapi/xcertplay/host/R$string;->connectors_ccs1_j1772:I

    goto :goto_0

    .line 35
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 37
    :cond_1
    sget p0, Lcom/shilapi/xcertplay/host/R$string;->connectors_gb_t:I

    goto :goto_0

    .line 36
    :cond_2
    sget p0, Lcom/shilapi/xcertplay/host/R$string;->connectors_ccs2_type2:I

    .line 35
    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final messageResource(Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    sget-object v0, Lcom/shilapi/xcertplay/LocalizedOptionsKt$WhenMappings;->$EnumSwitchMapping$5:[I

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 45
    sget p0, Lcom/shilapi/xcertplay/host/R$string;->hotspot_error_password_length:I

    return p0

    .line 41
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 44
    :cond_1
    sget p0, Lcom/shilapi/xcertplay/host/R$string;->hotspot_error_invalid_character:I

    return p0

    .line 43
    :cond_2
    sget p0, Lcom/shilapi/xcertplay/host/R$string;->hotspot_error_long_name:I

    return p0

    .line 42
    :cond_3
    sget p0, Lcom/shilapi/xcertplay/host/R$string;->hotspot_error_empty_name:I

    return p0
.end method
