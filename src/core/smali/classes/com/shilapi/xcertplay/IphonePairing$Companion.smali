.class public final Lcom/shilapi/xcertplay/IphonePairing$Companion;
.super Ljava/lang/Object;
.source "IphonePairing.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/IphonePairing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIphonePairing.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IphonePairing.kt\ncom/shilapi/xcertplay/IphonePairing$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,279:1\n1#2:280\n12637#3,2:281\n*S KotlinDebug\n*F\n+ 1 IphonePairing.kt\ncom/shilapi/xcertplay/IphonePairing$Companion\n*L\n236#1:281,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rJ\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\rJ\u000e\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rJ\"\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00170\u0016R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0007\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/IphonePairing$Companion;",
        "",
        "<init>",
        "()V",
        "IAP2_UUID",
        "Ljava/util/UUID;",
        "getIAP2_UUID",
        "()Ljava/util/UUID;",
        "IAP2_UUID_REVERSED",
        "getIAP2_UUID_REVERSED",
        "isPhone",
        "",
        "device",
        "Landroid/bluetooth/BluetoothDevice;",
        "kind",
        "Lcom/shilapi/xcertplay/IphonePairing$Kind;",
        "isCandidate",
        "watchBonding",
        "Landroid/content/BroadcastReceiver;",
        "activity",
        "Landroid/app/Activity;",
        "onPaired",
        "Lkotlin/Function1;",
        "",
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
.method private constructor <init>()V
    .locals 0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/IphonePairing$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getIAP2_UUID()Ljava/util/UUID;
    .locals 1

    .line 209
    # getter for: Lcom/shilapi/xcertplay/IphonePairing;->IAP2_UUID:Ljava/util/UUID;
    invoke-static {}, Lcom/shilapi/xcertplay/IphonePairing;->access$getIAP2_UUID$cp()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public final getIAP2_UUID_REVERSED()Ljava/util/UUID;
    .locals 1

    .line 215
    # getter for: Lcom/shilapi/xcertplay/IphonePairing;->IAP2_UUID_REVERSED:Ljava/util/UUID;
    invoke-static {}, Lcom/shilapi/xcertplay/IphonePairing;->access$getIAP2_UUID_REVERSED$cp()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public final isCandidate(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    const-string v0, "device"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/IphonePairing$Companion;->kind(Landroid/bluetooth/BluetoothDevice;)Lcom/shilapi/xcertplay/IphonePairing$Kind;

    move-result-object v0

    sget-object v1, Lcom/shilapi/xcertplay/IphonePairing$Kind;->NOT_IPHONE:Lcom/shilapi/xcertplay/IphonePairing$Kind;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/IphonePairing$Companion;->isPhone(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/IphonePairing$Companion;->kind(Landroid/bluetooth/BluetoothDevice;)Lcom/shilapi/xcertplay/IphonePairing$Kind;

    move-result-object p1

    sget-object v0, Lcom/shilapi/xcertplay/IphonePairing$Kind;->IPHONE:Lcom/shilapi/xcertplay/IphonePairing$Kind;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final isPhone(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    const-string v0, "device"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 223
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/IphonePairing$Companion;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v0

    :cond_1
    check-cast v1, Ljava/lang/Integer;

    .line 224
    :try_start_1
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v2, p0

    check-cast v2, Lcom/shilapi/xcertplay/IphonePairing$Companion;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_3

    :cond_2
    move-object v0, p1

    :goto_3
    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    :cond_3
    const/4 p1, 0x1

    if-nez v1, :cond_4

    goto :goto_4

    .line 225
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x200

    if-eq v1, v2, :cond_6

    :goto_4
    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "iphone"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, p1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    const/4 p1, 0x0

    :cond_6
    :goto_5
    return p1
.end method

.method public final kind(Landroid/bluetooth/BluetoothDevice;)Lcom/shilapi/xcertplay/IphonePairing$Kind;
    .locals 7

    const-string v0, "device"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/IphonePairing$Companion;

    invoke-static {p1}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/bluetooth/BluetoothDevice;)[Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, [Landroid/os/ParcelUuid;

    if-eqz v0, :cond_3

    .line 281
    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 236
    invoke-virtual {v4}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    sget-object v6, Lcom/shilapi/xcertplay/IphonePairing;->Companion:Lcom/shilapi/xcertplay/IphonePairing$Companion;

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/IphonePairing$Companion;->getIAP2_UUID()Ljava/util/UUID;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    sget-object v5, Lcom/shilapi/xcertplay/IphonePairing;->Companion:Lcom/shilapi/xcertplay/IphonePairing$Companion;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/IphonePairing$Companion;->getIAP2_UUID_REVERSED()Ljava/util/UUID;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    sget-object p1, Lcom/shilapi/xcertplay/IphonePairing$Kind;->IPHONE:Lcom/shilapi/xcertplay/IphonePairing$Kind;

    return-object p1

    .line 237
    :cond_3
    :try_start_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/IphonePairing$Companion;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_3
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    move-object v2, p1

    :goto_4
    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_5

    const-string v2, ""

    :cond_5
    check-cast v2, Ljava/lang/CharSequence;

    const-string p1, "iphone"

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    invoke-static {v2, p1, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/shilapi/xcertplay/IphonePairing$Kind;->IPHONE:Lcom/shilapi/xcertplay/IphonePairing$Kind;

    return-object p1

    :cond_6
    if-eqz v0, :cond_8

    .line 238
    array-length p1, v0

    if-nez p1, :cond_7

    goto :goto_5

    :cond_7
    sget-object p1, Lcom/shilapi/xcertplay/IphonePairing$Kind;->NOT_IPHONE:Lcom/shilapi/xcertplay/IphonePairing$Kind;

    goto :goto_6

    :cond_8
    :goto_5
    sget-object p1, Lcom/shilapi/xcertplay/IphonePairing$Kind;->UNKNOWN:Lcom/shilapi/xcertplay/IphonePairing$Kind;

    :goto_6
    return-object p1
.end method

.method public final watchBonding(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)Landroid/content/BroadcastReceiver;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
