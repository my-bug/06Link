.class public final Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfigKt;
.super Ljava/lang/Object;
.source "CarPlayRuntimeConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfigKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u001a\u0016\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "isManualHotspotChannelCompatible",
        "",
        "band",
        "Lcom/shilapi/xcertplay/orchestration/ManualHotspotBand;",
        "channel",
        "",
        "shared_release"
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
.method public static final isManualHotspotChannelCompatible(Lcom/shilapi/xcertplay/orchestration/ManualHotspotBand;I)Z
    .locals 3

    const-string v0, "band"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfigKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/orchestration/ManualHotspotBand;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_4

    const/4 v2, 0x2

    if-eq p0, v2, :cond_2

    const/4 v2, 0x3

    if-ne p0, v2, :cond_1

    const/16 p0, 0x20

    if-gt p0, p1, :cond_0

    const/16 p0, 0xb2

    if-ge p1, p0, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_2
    if-gt v1, p1, :cond_3

    const/16 p0, 0xf

    if-ge p1, p0, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    if-gt v1, p1, :cond_5

    const/16 p0, 0xc5

    if-ge p1, p0, :cond_5

    return v1

    :cond_5
    return v0
.end method
