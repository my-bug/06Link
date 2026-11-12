.class public final Lcom/shilapi/xcertplay/orchestration/CarPlayControllerKt;
.super Ljava/lang/Object;
.source "CarPlayController.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a \u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0000\u001a \u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0008\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\u0001H\u0000\u001a\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bH\u0000\u00a8\u0006\r"
    }
    d2 = {
        "keepsWirelessSessionAfterBootstrapError",
        "",
        "error",
        "",
        "wirelessActive",
        "handoffInProgress",
        "isWirelessHandoffInProgress",
        "handoffRequested",
        "tunnelActive",
        "sessionActive",
        "wirelessBluetoothIdentification",
        "Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;",
        "identification",
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
.method public static final isWirelessHandoffInProgress(ZZZ)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final keepsWirelessSessionAfterBootstrapError(Ljava/lang/Throwable;ZZ)Z
    .locals 1

    const-string v0, "error"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    instance-of p0, p0, Ljava/lang/Error;

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static final wirelessBluetoothIdentification(Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;)Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;
    .locals 18

    const-string v0, "identification"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v16, 0x1bff

    const/16 v17, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 254
    invoke-static/range {v1 .. v17}, Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;->copy$default(Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/transport/Iap2WirelessIdentification;ZZLcom/shilapi/xcertplay/transport/EvChargingConnectors;ZILjava/lang/Object;)Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;

    move-result-object v0

    return-object v0
.end method
