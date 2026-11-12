.class final Lcom/shilapi/xcertplay/orchestration/CarPlayController$1;
.super Ljava/lang/Object;
.source "CarPlayController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/orchestration/CarPlayController;-><init>(Landroid/content/Context;Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;Lcom/shilapi/xcertplay/airplay/AirPlayConfig;Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;Lcom/shilapi/xcertplay/airplay/PairingStore;Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;Lcom/shilapi/xcertplay/transport/VehicleStatusProvider;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayController$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$1;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$1;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$1;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayController$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 272
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$1;->invoke()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
