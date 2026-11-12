.class final synthetic Lcom/shilapi/xcertplay/orchestration/CarPlayController$start$2$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "CarPlayController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/orchestration/CarPlayController;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
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


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lcom/shilapi/xcertplay/orchestration/CarPlayVideoListener;

    const-string v5, "readParked()Ljava/lang/Boolean;"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-string v4, "readParked"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$start$2$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/shilapi/xcertplay/orchestration/CarPlayVideoListener;

    invoke-interface {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayVideoListener;->readParked()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 535
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$start$2$1;->invoke()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
