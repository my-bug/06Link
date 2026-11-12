.class public final Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookupKt$connectedDevicesFromProfileApis$$inlined$compareBy$1;
.super Ljava/lang/Object;
.source "Comparisons.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookupKt;->connectedDevicesFromProfileApis(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 EcarxConnectedIphoneLookup.kt\ncom/shilapi/xcertplay/network/EcarxConnectedIphoneLookupKt\n*L\n1#1,328:1\n145#2:329\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 102
    move-object v0, p1

    check-cast v0, Lcom/shilapi/xcertplay/network/EcarxConnectedDevice;

    .local v0, "it":Lcom/shilapi/xcertplay/network/EcarxConnectedDevice;
    const/4 v1, 0x0

    .line 329
    .local v1, "$i$a$-compareBy-EcarxConnectedIphoneLookupKt$connectedDevicesFromProfileApis$3":I
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/EcarxConnectedDevice;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "US"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "toLowerCase(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Comparable;

    .line 102
    .end local v0    # "it":Lcom/shilapi/xcertplay/network/EcarxConnectedDevice;
    .end local v1    # "$i$a$-compareBy-EcarxConnectedIphoneLookupKt$connectedDevicesFromProfileApis$3":I
    move-object v0, p2

    check-cast v0, Lcom/shilapi/xcertplay/network/EcarxConnectedDevice;

    .restart local v0    # "it":Lcom/shilapi/xcertplay/network/EcarxConnectedDevice;
    const/4 v1, 0x0

    .line 329
    .restart local v1    # "$i$a$-compareBy-EcarxConnectedIphoneLookupKt$connectedDevicesFromProfileApis$3":I
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/EcarxConnectedDevice;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Comparable;

    .line 102
    .end local v0    # "it":Lcom/shilapi/xcertplay/network/EcarxConnectedDevice;
    .end local v1    # "$i$a$-compareBy-EcarxConnectedIphoneLookupKt$connectedDevicesFromProfileApis$3":I
    invoke-static {v2, v4}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    return v0
.end method
