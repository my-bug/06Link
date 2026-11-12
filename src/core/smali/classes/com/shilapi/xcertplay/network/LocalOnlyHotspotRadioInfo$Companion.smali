.class public final Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Companion;
.super Ljava/lang/Object;
.source "LocalOnlyHotspotRadioInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLocalOnlyHotspotRadioInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocalOnlyHotspotRadioInfo.kt\ncom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,125:1\n669#2,11:126\n*S KotlinDebug\n*F\n+ 1 LocalOnlyHotspotRadioInfo.kt\ncom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Companion\n*L\n111#1:126,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J(\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000bJ \u0010\u000c\u001a\u0004\u0018\u00010\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Companion;",
        "",
        "<init>",
        "()V",
        "settledRadio",
        "Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Radio;",
        "radios",
        "",
        "bssid",
        "",
        "unchangedMillis",
        "",
        "matchingRadio",
        "shared_release"
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
.method private constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final matchingRadio(Ljava/util/List;Ljava/lang/String;)Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Radio;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Radio;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Radio;"
        }
    .end annotation

    const-string v0, "radios"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    check-cast p1, Ljava/lang/Iterable;

    .line 128
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 129
    move-object v4, v3

    check-cast v4, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Radio;

    if-eqz p2, :cond_0

    .line 112
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Radio;->getBssid()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, p2, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 113
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Radio;->getFrequencyMHz()I

    move-result v4

    invoke-static {v4}, Lcom/shilapi/xcertplay/network/WirelessHotspotManagerKt;->wifiFrequencyMhzToChannel(I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_0

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v3

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 136
    :goto_1
    check-cast v0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Radio;

    return-object v0
.end method

.method public final settledRadio(Ljava/util/List;Ljava/lang/String;J)Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Radio;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Radio;",
            ">;",
            "Ljava/lang/String;",
            "J)",
            "Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Radio;"
        }
    .end annotation

    const-string v0, "radios"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x7d0

    cmp-long v2, p3, v0

    if-ltz v2, :cond_0

    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Companion;->matchingRadio(Ljava/util/List;Ljava/lang/String;)Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Radio;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
