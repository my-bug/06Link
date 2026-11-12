.class public final Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookupKt;
.super Ljava/lang/Object;
.source "EcarxConnectedIphoneLookup.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEcarxConnectedIphoneLookup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EcarxConnectedIphoneLookup.kt\ncom/shilapi/xcertplay/network/EcarxConnectedIphoneLookupKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,195:1\n1208#2,2:196\n1236#2,4:198\n1208#2,2:202\n1236#2,4:204\n1563#2:208\n1634#2,2:209\n1636#2:212\n1563#2:217\n1634#2,3:218\n1617#2,9:221\n1869#2:230\n1870#2:232\n1626#2:233\n1#3:211\n1#3:231\n1310#4,2:213\n1310#4,2:215\n1310#4,2:234\n*S KotlinDebug\n*F\n+ 1 EcarxConnectedIphoneLookup.kt\ncom/shilapi/xcertplay/network/EcarxConnectedIphoneLookupKt\n*L\n132#1:196,2\n132#1:198,4\n133#1:202,2\n133#1:204,4\n135#1:208\n135#1:209,2\n135#1:212\n170#1:217\n170#1:218,3\n173#1:221,9\n173#1:230\n173#1:232\n173#1:233\n173#1:231\n151#1:213,2\n163#1:215,2\n188#1:234,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\u001a6\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0016\u0008\u0002\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0007H\u0000\u001a\u001a\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0008H\u0000\u001a\u0016\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\r\u001a\u00020\u0004H\u0002\u001a\u001a\u0010\u000e\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0008H\u0002\"\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "connectedDevicesFromProfileApis",
        "",
        "Lcom/shilapi/xcertplay/network/EcarxConnectedDevice;",
        "hfpApi",
        "",
        "a2dpApi",
        "resolveRemoteName",
        "Lkotlin/Function1;",
        "",
        "queryBtRemoteDeviceName",
        "adapterApi",
        "address",
        "queryConnectedDevices",
        "api",
        "invokeStringMethod",
        "target",
        "name",
        "BLUETOOTH_ADDRESS",
        "Lkotlin/text/Regex;",
        "shared"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final BLUETOOTH_ADDRESS:Lkotlin/text/Regex;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 194
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "^[0-9A-F]{2}(:[0-9A-F]{2}){5}$"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookupKt;->BLUETOOTH_ADDRESS:Lkotlin/text/Regex;

    return-void
.end method

.method public static final connectedDevicesFromProfileApis(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 19
    .param p0, "hfpApi"    # Ljava/lang/Object;
    .param p1, "a2dpApi"    # Ljava/lang/Object;
    .param p2, "resolveRemoteName"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/network/EcarxConnectedDevice;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p2

    const-string v1, "hfpApi"

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "a2dpApi"

    move-object/from16 v3, p1

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "resolveRemoteName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-static {v2}, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookupKt;->queryConnectedDevices(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$associateBy$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 196
    .local v4, "$i$f$associateBy":I
    const/16 v5, 0xa

    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-static {v6}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v6

    .line 197
    .local v6, "capacity$iv":I
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8, v6}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v8, Ljava/util/Map;

    .local v8, "destination$iv$iv":Ljava/util/Map;
    move-object v9, v1

    .local v9, "$this$associateByTo$iv$iv":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 198
    .local v10, "$i$f$associateByTo":I
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 199
    .local v12, "element$iv$iv":Ljava/lang/Object;
    move-object v13, v12

    check-cast v13, Lcom/shilapi/xcertplay/network/EcarxConnectedDevice;

    .local v13, "p0":Lcom/shilapi/xcertplay/network/EcarxConnectedDevice;
    const/4 v14, 0x0

    .line 132
    .local v14, "$i$a$-associateBy-EcarxConnectedIphoneLookupKt$connectedDevicesFromProfileApis$hfpDevices$1":I
    invoke-virtual {v13}, Lcom/shilapi/xcertplay/network/EcarxConnectedDevice;->getAddress()Ljava/lang/String;

    move-result-object v13

    .line 199
    .end local v13    # "p0":Lcom/shilapi/xcertplay/network/EcarxConnectedDevice;
    .end local v14    # "$i$a$-associateBy-EcarxConnectedIphoneLookupKt$connectedDevicesFromProfileApis$hfpDevices$1":I
    invoke-interface {v8, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 201
    .end local v12    # "element$iv$iv":Ljava/lang/Object;
    :cond_0
    nop

    .line 197
    .end local v8    # "destination$iv$iv":Ljava/util/Map;
    .end local v9    # "$this$associateByTo$iv$iv":Ljava/lang/Iterable;
    .end local v10    # "$i$f$associateByTo":I
    nop

    .line 132
    .end local v1    # "$this$associateBy$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$associateBy":I
    .end local v6    # "capacity$iv":I
    nop

    .line 133
    .local v8, "hfpDevices":Ljava/util/Map;
    invoke-static {v3}, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookupKt;->queryConnectedDevices(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .restart local v1    # "$this$associateBy$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 202
    .restart local v4    # "$i$f$associateBy":I
    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-static {v6}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v6

    invoke-static {v6, v7}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v6

    .line 203
    .restart local v6    # "capacity$iv":I
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7, v6}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v7, Ljava/util/Map;

    .local v7, "destination$iv$iv":Ljava/util/Map;
    move-object v9, v1

    .restart local v9    # "$this$associateByTo$iv$iv":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 204
    .restart local v10    # "$i$f$associateByTo":I
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 205
    .restart local v12    # "element$iv$iv":Ljava/lang/Object;
    move-object v13, v12

    check-cast v13, Lcom/shilapi/xcertplay/network/EcarxConnectedDevice;

    .restart local v13    # "p0":Lcom/shilapi/xcertplay/network/EcarxConnectedDevice;
    const/4 v14, 0x0

    .line 133
    .local v14, "$i$a$-associateBy-EcarxConnectedIphoneLookupKt$connectedDevicesFromProfileApis$a2dpDevices$1":I
    invoke-virtual {v13}, Lcom/shilapi/xcertplay/network/EcarxConnectedDevice;->getAddress()Ljava/lang/String;

    move-result-object v13

    .line 205
    .end local v13    # "p0":Lcom/shilapi/xcertplay/network/EcarxConnectedDevice;
    .end local v14    # "$i$a$-associateBy-EcarxConnectedIphoneLookupKt$connectedDevicesFromProfileApis$a2dpDevices$1":I
    invoke-interface {v7, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 207
    .end local v12    # "element$iv$iv":Ljava/lang/Object;
    :cond_1
    nop

    .line 203
    .end local v7    # "destination$iv$iv":Ljava/util/Map;
    .end local v9    # "$this$associateByTo$iv$iv":Ljava/lang/Iterable;
    .end local v10    # "$i$f$associateByTo":I
    nop

    .line 133
    .end local v1    # "$this$associateBy$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$associateBy":I
    .end local v6    # "capacity$iv":I
    nop

    .line 134
    .local v7, "a2dpDevices":Ljava/util/Map;
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->intersect(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 135
    nop

    .local v1, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 208
    .local v4, "$i$f$map":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v5, v6

    check-cast v5, Ljava/util/Collection;

    .local v5, "destination$iv$iv":Ljava/util/Collection;
    move-object v6, v1

    .local v6, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 209
    .local v9, "$i$f$mapTo":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 210
    .local v11, "item$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Ljava/lang/String;

    .local v12, "address":Ljava/lang/String;
    const/4 v13, 0x0

    .line 136
    .local v13, "$i$a$-map-EcarxConnectedIphoneLookupKt$connectedDevicesFromProfileApis$2":I
    invoke-static {v8, v12}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/shilapi/xcertplay/network/EcarxConnectedDevice;

    invoke-virtual {v14}, Lcom/shilapi/xcertplay/network/EcarxConnectedDevice;->getName()Ljava/lang/String;

    move-result-object v14

    .line 137
    .local v14, "hfpName":Ljava/lang/String;
    invoke-static {v7, v12}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/shilapi/xcertplay/network/EcarxConnectedDevice;

    invoke-virtual {v15}, Lcom/shilapi/xcertplay/network/EcarxConnectedDevice;->getName()Ljava/lang/String;

    move-result-object v15

    .line 138
    .local v15, "a2dpName":Ljava/lang/String;
    move-object/from16 v16, v14

    check-cast v16, Ljava/lang/CharSequence;

    invoke-static/range {v16 .. v16}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 211
    const/16 v16, 0x0

    .line 138
    .local v16, "$i$a$-ifBlank-EcarxConnectedIphoneLookupKt$connectedDevicesFromProfileApis$2$profileName$1":I
    move-object/from16 v16, v15

    .end local v16    # "$i$a$-ifBlank-EcarxConnectedIphoneLookupKt$connectedDevicesFromProfileApis$2$profileName$1":I
    :cond_2
    check-cast v16, Ljava/lang/String;

    .line 139
    .local v16, "profileName":Ljava/lang/String;
    move-object/from16 v17, v16

    check-cast v17, Ljava/lang/CharSequence;

    invoke-static/range {v17 .. v17}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_5

    const/16 v17, 0x0

    .line 140
    .local v17, "$i$a$-ifBlank-EcarxConnectedIphoneLookupKt$connectedDevicesFromProfileApis$2$name$1":I
    invoke-interface {v0, v12}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    if-eqz v18, :cond_3

    check-cast v18, Ljava/lang/CharSequence;

    invoke-static/range {v18 .. v18}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    goto :goto_3

    :cond_3
    const/16 v18, 0x0

    :goto_3
    if-nez v18, :cond_4

    const-string v18, ""

    .line 139
    .end local v17    # "$i$a$-ifBlank-EcarxConnectedIphoneLookupKt$connectedDevicesFromProfileApis$2$name$1":I
    :cond_4
    move-object/from16 v17, v18

    :cond_5
    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/String;

    .line 142
    .local v0, "name":Ljava/lang/String;
    move-object/from16 v17, v1

    .end local v1    # "$this$map$iv":Ljava/lang/Iterable;
    .local v17, "$this$map$iv":Ljava/lang/Iterable;
    new-instance v1, Lcom/shilapi/xcertplay/network/EcarxConnectedDevice;

    invoke-direct {v1, v12, v0}, Lcom/shilapi/xcertplay/network/EcarxConnectedDevice;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .end local v0    # "name":Ljava/lang/String;
    .end local v12    # "address":Ljava/lang/String;
    .end local v13    # "$i$a$-map-EcarxConnectedIphoneLookupKt$connectedDevicesFromProfileApis$2":I
    .end local v14    # "hfpName":Ljava/lang/String;
    .end local v15    # "a2dpName":Ljava/lang/String;
    .end local v16    # "profileName":Ljava/lang/String;
    invoke-interface {v5, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    goto :goto_2

    .line 212
    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    .end local v17    # "$this$map$iv":Ljava/lang/Iterable;
    .restart local v1    # "$this$map$iv":Ljava/lang/Iterable;
    :cond_6
    move-object/from16 v17, v1

    .end local v1    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$mapTo":I
    .restart local v17    # "$this$map$iv":Ljava/lang/Iterable;
    move-object v0, v5

    check-cast v0, Ljava/util/List;

    .line 208
    nop

    .end local v4    # "$i$f$map":I
    .end local v17    # "$this$map$iv":Ljava/lang/Iterable;
    check-cast v0, Ljava/lang/Iterable;

    .line 145
    new-instance v1, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookupKt$connectedDevicesFromProfileApis$$inlined$compareBy$1;

    invoke-direct {v1}, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookupKt$connectedDevicesFromProfileApis$$inlined$compareBy$1;-><init>()V

    check-cast v1, Ljava/util/Comparator;

    .line 146
    new-instance v4, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookupKt$connectedDevicesFromProfileApis$$inlined$thenBy$1;

    invoke-direct {v4, v1}, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookupKt$connectedDevicesFromProfileApis$$inlined$thenBy$1;-><init>(Ljava/util/Comparator;)V

    check-cast v4, Ljava/util/Comparator;

    .line 144
    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 134
    return-object v0
.end method

.method public static synthetic connectedDevicesFromProfileApis$default(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 127
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    .line 130
    sget-object p2, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookupKt$connectedDevicesFromProfileApis$1;->INSTANCE:Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookupKt$connectedDevicesFromProfileApis$1;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    .line 127
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookupKt;->connectedDevicesFromProfileApis(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final invokeStringMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;

    .line 187
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 v1, 0x0

    .line 190
    .local v1, "$i$a$-runCatching-EcarxConnectedIphoneLookupKt$invokeStringMethod$1":I
    nop

    .line 188
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v3, "getMethods(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, [Ljava/lang/Object;

    .local v2, "$this$firstOrNull$iv":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 234
    .local v3, "$i$f$firstOrNull":I
    array-length v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_3

    aget-object v7, v2, v6

    .local v7, "element$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Ljava/lang/reflect/Method;

    .local v8, "it":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    .line 189
    .local v9, "$i$a$-firstOrNull-EcarxConnectedIphoneLookupKt$invokeStringMethod$1$1":I
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    const-string v11, "getParameterTypes(...)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, [Ljava/lang/Object;

    array-length v10, v10

    const/4 v11, 0x1

    if-nez v10, :cond_0

    const/4 v10, 0x1

    goto :goto_1

    :cond_0
    const/4 v10, 0x0

    :goto_1
    if-eqz v10, :cond_1

    goto :goto_2

    :cond_1
    const/4 v11, 0x0

    .line 234
    .end local v8    # "it":Ljava/lang/reflect/Method;
    .end local v9    # "$i$a$-firstOrNull-EcarxConnectedIphoneLookupKt$invokeStringMethod$1$1":I
    :goto_2
    if-eqz v11, :cond_2

    goto :goto_3

    .end local v7    # "element$iv":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 235
    :cond_3
    move-object v7, v0

    .line 188
    .end local v2    # "$this$firstOrNull$iv":[Ljava/lang/Object;
    .end local v3    # "$i$f$firstOrNull":I
    :goto_3
    check-cast v7, Ljava/lang/reflect/Method;

    .line 190
    if-eqz v7, :cond_4

    .line 188
    nop

    .line 190
    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v7, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 188
    nop

    .line 190
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_4
    move-object v2, v0

    .line 187
    .end local v1    # "$i$a$-runCatching-EcarxConnectedIphoneLookupKt$invokeStringMethod$1":I
    :goto_4
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 191
    :goto_5
    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_6

    :cond_5
    move-object v0, v1

    :goto_6
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static final queryBtRemoteDeviceName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "adapterApi"    # Ljava/lang/Object;
    .param p1, "address"    # Ljava/lang/String;

    const-string v0, "adapterApi"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v1, "getMethods(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/Object;

    .local v0, "$this$firstOrNull$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 213
    .local v1, "$i$f$firstOrNull":I
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ge v4, v2, :cond_2

    aget-object v7, v0, v4

    .local v7, "element$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Ljava/lang/reflect/Method;

    .local v8, "it":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    .line 152
    .local v9, "$i$a$-firstOrNull-EcarxConnectedIphoneLookupKt$queryBtRemoteDeviceName$method$1":I
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "getBtRemoteDeviceName"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 153
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    array-length v10, v10

    if-ne v10, v5, :cond_0

    .line 154
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    aget-object v10, v10, v3

    const-class v11, Ljava/lang/String;

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    .line 213
    .end local v8    # "it":Ljava/lang/reflect/Method;
    .end local v9    # "$i$a$-firstOrNull-EcarxConnectedIphoneLookupKt$queryBtRemoteDeviceName$method$1":I
    :goto_1
    if-eqz v8, :cond_1

    goto :goto_2

    .end local v7    # "element$iv":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 214
    :cond_2
    move-object v7, v6

    .line 151
    .end local v0    # "$this$firstOrNull$iv":[Ljava/lang/Object;
    .end local v1    # "$i$f$firstOrNull":I
    :goto_2
    check-cast v7, Ljava/lang/reflect/Method;

    if-nez v7, :cond_3

    .line 155
    return-object v6

    .line 158
    .local v7, "method":Ljava/lang/reflect/Method;
    :cond_3
    nop

    .line 159
    nop

    .line 156
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 211
    const/4 v0, 0x0

    .line 156
    .local v0, "$i$a$-runCatching-EcarxConnectedIphoneLookupKt$queryBtRemoteDeviceName$1":I
    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {v7, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v0    # "$i$a$-runCatching-EcarxConnectedIphoneLookupKt$queryBtRemoteDeviceName$1":I
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 157
    :goto_3
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v0, v6

    .line 158
    :cond_4
    if-eqz v0, :cond_5

    .line 156
    nop

    .line 158
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_5

    .line 156
    nop

    .line 159
    move-object v1, v0

    .line 211
    .local v1, "it":Ljava/lang/String;
    const/4 v2, 0x0

    .line 159
    .local v2, "$i$a$-takeIf-EcarxConnectedIphoneLookupKt$queryBtRemoteDeviceName$2":I
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    .end local v1    # "it":Ljava/lang/String;
    .end local v2    # "$i$a$-takeIf-EcarxConnectedIphoneLookupKt$queryBtRemoteDeviceName$2":I
    if-nez v3, :cond_6

    move-object v6, v0

    goto :goto_4

    .line 158
    :cond_5
    nop

    .line 156
    :cond_6
    :goto_4
    return-object v6
.end method

.method private static final queryConnectedDevices(Ljava/lang/Object;)Ljava/util/List;
    .locals 21
    .param p0, "api"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/network/EcarxConnectedDevice;",
            ">;"
        }
    .end annotation

    .line 163
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v1, "getMethods(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/Object;

    .local v0, "$this$firstOrNull$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 215
    .local v1, "$i$f$firstOrNull":I
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v6, v0, v4

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/lang/reflect/Method;

    .local v7, "it":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    .line 164
    .local v8, "$i$a$-firstOrNull-EcarxConnectedIphoneLookupKt$queryConnectedDevices$method$1":I
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "getConnectedDevices"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    const-string v10, "getParameterTypes(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, [Ljava/lang/Object;

    array-length v9, v9

    const/4 v10, 0x1

    if-nez v9, :cond_0

    const/4 v9, 0x1

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_1

    goto :goto_2

    :cond_1
    const/4 v10, 0x0

    .line 215
    .end local v7    # "it":Ljava/lang/reflect/Method;
    .end local v8    # "$i$a$-firstOrNull-EcarxConnectedIphoneLookupKt$queryConnectedDevices$method$1":I
    :goto_2
    if-eqz v10, :cond_2

    goto :goto_3

    .end local v6    # "element$iv":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 216
    :cond_3
    const/4 v6, 0x0

    .line 163
    .end local v0    # "$this$firstOrNull$iv":[Ljava/lang/Object;
    .end local v1    # "$i$f$firstOrNull":I
    :goto_3
    check-cast v6, Ljava/lang/reflect/Method;

    if-nez v6, :cond_4

    .line 165
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 166
    .local v6, "method":Ljava/lang/reflect/Method;
    :cond_4
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 211
    const/4 v0, 0x0

    .line 166
    .local v0, "$i$a$-runCatching-EcarxConnectedIphoneLookupKt$queryConnectedDevices$raw$1":I
    new-array v1, v3, [Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v2, p0

    :try_start_1
    invoke-virtual {v6, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v0    # "$i$a$-runCatching-EcarxConnectedIphoneLookupKt$queryConnectedDevices$raw$1":I
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v2, p0

    :goto_4
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_5
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    :cond_5
    if-nez v0, :cond_6

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 167
    .local v0, "raw":Ljava/lang/Object;
    :cond_6
    nop

    .line 168
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    goto :goto_7

    .line 169
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 170
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v3, v1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 217
    .local v3, "$i$f$map":I
    new-instance v4, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v1, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v7, v1

    .local v7, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 218
    .local v8, "$i$f$mapTo":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    move-object v10, v9

    check-cast v10, Lkotlin/collections/IntIterator;

    invoke-virtual {v10}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v10

    .line 219
    .local v10, "item$iv$iv":I
    move v11, v10

    .local v11, "it":I
    const/4 v12, 0x0

    .line 170
    .local v12, "$i$a$-map-EcarxConnectedIphoneLookupKt$queryConnectedDevices$devices$1":I
    invoke-static {v0, v11}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v11

    .line 219
    .end local v11    # "it":I
    .end local v12    # "$i$a$-map-EcarxConnectedIphoneLookupKt$queryConnectedDevices$devices$1":I
    invoke-interface {v4, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 220
    .end local v10    # "item$iv$iv":I
    :cond_8
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v7    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$mapTo":I
    check-cast v4, Ljava/util/List;

    .line 217
    move-object v1, v4

    .end local v1    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$map":I
    goto :goto_7

    .line 171
    :cond_9
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 167
    :goto_7
    nop

    .line 173
    .local v1, "devices":Ljava/util/List;
    move-object v3, v1

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 221
    .local v4, "$i$f$mapNotNull":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .local v7, "destination$iv$iv":Ljava/util/Collection;
    move-object v8, v3

    .local v8, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 229
    .local v9, "$i$f$mapNotNullTo":I
    move-object v10, v8

    .local v10, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 230
    .local v11, "$i$f$forEach":I
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_12

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .local v13, "element$iv$iv$iv":Ljava/lang/Object;
    move-object v14, v13

    .local v14, "element$iv$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 229
    .local v15, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object/from16 v16, v14

    .local v16, "device":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 174
    .local v17, "$i$a$-mapNotNull-EcarxConnectedIphoneLookupKt$queryConnectedDevices$1":I
    if-nez v16, :cond_a

    move-object/from16 v18, v0

    move-object/from16 v16, v1

    const/4 v2, 0x0

    goto/16 :goto_c

    .line 175
    :cond_a
    nop

    .line 178
    nop

    .line 177
    nop

    .line 175
    const-string v5, "getAddress"

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    .end local v16    # "device":Ljava/lang/Object;
    .local v0, "device":Ljava/lang/Object;
    .local v18, "raw":Ljava/lang/Object;
    invoke-static {v0, v5}, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookupKt;->invokeStringMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 176
    if-eqz v5, :cond_f

    .line 175
    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 176
    nop

    .line 177
    if-eqz v5, :cond_e

    .line 175
    nop

    .line 177
    move-object/from16 v16, v1

    .end local v1    # "devices":Ljava/util/List;
    .local v16, "devices":Ljava/util/List;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "US"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "toUpperCase(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    if-eqz v1, :cond_10

    .line 175
    nop

    .line 178
    move-object v2, v1

    .line 211
    .local v2, "it":Ljava/lang/String;
    const/4 v5, 0x0

    .line 178
    .local v5, "$i$a$-takeIf-EcarxConnectedIphoneLookupKt$queryConnectedDevices$1$address$1":I
    move-object/from16 v19, v1

    sget-object v1, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookupKt;->BLUETOOTH_ADDRESS:Lkotlin/text/Regex;

    move-object/from16 v20, v2

    .end local v2    # "it":Ljava/lang/String;
    .local v20, "it":Ljava/lang/String;
    move-object/from16 v2, v20

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v1

    .end local v5    # "$i$a$-takeIf-EcarxConnectedIphoneLookupKt$queryConnectedDevices$1$address$1":I
    .end local v20    # "it":Ljava/lang/String;
    if-eqz v1, :cond_b

    move-object/from16 v1, v19

    goto :goto_9

    :cond_b
    const/4 v1, 0x0

    .line 175
    :goto_9
    if-eqz v1, :cond_10

    .line 180
    .local v1, "address":Ljava/lang/String;
    new-instance v2, Lcom/shilapi/xcertplay/network/EcarxConnectedDevice;

    .line 181
    nop

    .line 182
    const-string v5, "getName"

    invoke-static {v0, v5}, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookupKt;->invokeStringMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_a

    :cond_c
    const/4 v5, 0x0

    :goto_a
    if-nez v5, :cond_d

    const-string v5, ""

    .line 180
    :cond_d
    invoke-direct {v2, v1, v5}, Lcom/shilapi/xcertplay/network/EcarxConnectedDevice;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    goto :goto_c

    .line 177
    .end local v16    # "devices":Ljava/util/List;
    .local v1, "devices":Ljava/util/List;
    :cond_e
    move-object/from16 v16, v1

    .end local v1    # "devices":Ljava/util/List;
    .restart local v16    # "devices":Ljava/util/List;
    goto :goto_b

    .line 176
    .end local v16    # "devices":Ljava/util/List;
    .restart local v1    # "devices":Ljava/util/List;
    :cond_f
    move-object/from16 v16, v1

    .line 179
    .end local v1    # "devices":Ljava/util/List;
    .restart local v16    # "devices":Ljava/util/List;
    :cond_10
    :goto_b
    const/4 v2, 0x0

    .line 229
    .end local v0    # "device":Ljava/lang/Object;
    .end local v17    # "$i$a$-mapNotNull-EcarxConnectedIphoneLookupKt$queryConnectedDevices$1":I
    :goto_c
    if-eqz v2, :cond_11

    .line 231
    .local v2, "it$iv$iv":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 229
    .local v0, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v7, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 230
    .end local v0    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    .end local v2    # "it$iv$iv":Ljava/lang/Object;
    .end local v14    # "element$iv$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    :cond_11
    move-object/from16 v2, p0

    move-object/from16 v1, v16

    move-object/from16 v0, v18

    .end local v13    # "element$iv$iv$iv":Ljava/lang/Object;
    goto/16 :goto_8

    .line 232
    .end local v16    # "devices":Ljava/util/List;
    .end local v18    # "raw":Ljava/lang/Object;
    .local v0, "raw":Ljava/lang/Object;
    .restart local v1    # "devices":Ljava/util/List;
    :cond_12
    move-object/from16 v18, v0

    .line 233
    .end local v0    # "raw":Ljava/lang/Object;
    .end local v10    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$forEach":I
    .restart local v18    # "raw":Ljava/lang/Object;
    nop

    .end local v7    # "destination$iv$iv":Ljava/util/Collection;
    .end local v8    # "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$mapNotNullTo":I
    move-object v0, v7

    check-cast v0, Ljava/util/List;

    .line 221
    nop

    .line 173
    .end local v3    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$mapNotNull":I
    return-object v0
.end method
