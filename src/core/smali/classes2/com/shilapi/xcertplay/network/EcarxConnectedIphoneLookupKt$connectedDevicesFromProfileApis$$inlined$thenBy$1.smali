.class public final Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookupKt$connectedDevicesFromProfileApis$$inlined$thenBy$1;
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
    value = "SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$thenBy$1\n+ 2 EcarxConnectedIphoneLookup.kt\ncom/shilapi/xcertplay/network/EcarxConnectedIphoneLookupKt\n*L\n1#1,328:1\n146#2:329\n*E\n"
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


# instance fields
.field final synthetic $this_thenBy:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookupKt$connectedDevicesFromProfileApis$$inlined$thenBy$1;->$this_thenBy:Ljava/util/Comparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookupKt$connectedDevicesFromProfileApis$$inlined$thenBy$1;->$this_thenBy:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 145
    .local v0, "previousCompare":I
    if-eqz v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/shilapi/xcertplay/network/EcarxConnectedDevice;

    .local v1, "p0":Lcom/shilapi/xcertplay/network/EcarxConnectedDevice;
    const/4 v2, 0x0

    .line 329
    .local v2, "$i$a$-thenBy-EcarxConnectedIphoneLookupKt$connectedDevicesFromProfileApis$4":I
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/network/EcarxConnectedDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 145
    .end local v1    # "p0":Lcom/shilapi/xcertplay/network/EcarxConnectedDevice;
    .end local v2    # "$i$a$-thenBy-EcarxConnectedIphoneLookupKt$connectedDevicesFromProfileApis$4":I
    check-cast v1, Ljava/lang/Comparable;

    move-object v2, p2

    check-cast v2, Lcom/shilapi/xcertplay/network/EcarxConnectedDevice;

    .local v2, "p0":Lcom/shilapi/xcertplay/network/EcarxConnectedDevice;
    const/4 v3, 0x0

    .line 329
    .local v3, "$i$a$-thenBy-EcarxConnectedIphoneLookupKt$connectedDevicesFromProfileApis$4":I
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/network/EcarxConnectedDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 145
    .end local v2    # "p0":Lcom/shilapi/xcertplay/network/EcarxConnectedDevice;
    .end local v3    # "$i$a$-thenBy-EcarxConnectedIphoneLookupKt$connectedDevicesFromProfileApis$4":I
    check-cast v2, Ljava/lang/Comparable;

    invoke-static {v1, v2}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v1

    :goto_0
    return v1
.end method
