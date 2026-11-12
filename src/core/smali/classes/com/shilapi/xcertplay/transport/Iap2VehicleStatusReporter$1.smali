.class final synthetic Lcom/shilapi/xcertplay/transport/Iap2VehicleStatusReporter$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "Iap2VehicleStatus.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/transport/Iap2VehicleStatusReporter;-><init>(Lcom/shilapi/xcertplay/transport/VehicleStatusProvider;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Long;",
        ">;"
    }
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/transport/Iap2VehicleStatusReporter$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/transport/Iap2VehicleStatusReporter$1;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/transport/Iap2VehicleStatusReporter$1;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/transport/Iap2VehicleStatusReporter$1;->INSTANCE:Lcom/shilapi/xcertplay/transport/Iap2VehicleStatusReporter$1;

    return-void
.end method

.method constructor <init>()V
    .locals 6

    const-class v2, Ljava/lang/System;

    const-string v4, "nanoTime()J"

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-string v3, "nanoTime"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Long;
    .locals 2

    .line 94
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 94
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/transport/Iap2VehicleStatusReporter$1;->invoke()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
