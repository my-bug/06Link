.class public final Lcom/shilapi/xcertplay/transport/Iap2VehicleStatusKt;
.super Ljava/lang/Object;
.source "Iap2VehicleStatus.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "withVehicleStatusFrom",
        "Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;",
        "provider",
        "Lcom/shilapi/xcertplay/transport/VehicleStatusProvider;",
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
.method public static final withVehicleStatusFrom(Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;Lcom/shilapi/xcertplay/transport/VehicleStatusProvider;)Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;
    .locals 18

    move-object/from16 v1, p0

    const-string v0, "<this>"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;->getVehicleStatusEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Lcom/shilapi/xcertplay/transport/VehicleStatusProvider;->snapshot()Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/16 v16, 0x37ff

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

    invoke-static/range {v1 .. v17}, Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;->copy$default(Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/transport/Iap2WirelessIdentification;ZZLcom/shilapi/xcertplay/transport/EvChargingConnectors;ZILjava/lang/Object;)Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;

    move-result-object v0

    return-object v0

    :cond_1
    return-object p0
.end method
