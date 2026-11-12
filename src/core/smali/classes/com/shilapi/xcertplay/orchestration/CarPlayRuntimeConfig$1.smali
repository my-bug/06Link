.class final Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig$1;
.super Ljava/lang/Object;
.source "CarPlayRuntimeConfig.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;-><init>(Ljava/util/List;Lcom/shilapi/xcertplay/orchestration/MfiTarget;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;ILjava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/orchestration/CarPlayTransport;Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;Lcom/shilapi/xcertplay/orchestration/WirelessIpStrategy;ZLjava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/orchestration/ManualHotspotBand;ILcom/shilapi/xcertplay/orchestration/ManualHotspotSecurity;Lkotlin/jvm/functions/Function1;ZLjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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


# static fields
.field public static final INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig$1;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig$1;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig$1;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 88
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig$1;->invoke(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)Ljava/lang/Void;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
