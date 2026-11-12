.class final synthetic Lcom/shilapi/xcertplay/hud/BydHudBridge$initialize$1$2;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "BydHudBridge.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/hud/BydHudBridge;->initialize(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
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

    const-class v3, Lcom/shilapi/xcertplay/hud/BydHudBridge;

    const-string/jumbo v5, "tick()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-string/jumbo v4, "tick"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/hud/BydHudBridge$initialize$1$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/shilapi/xcertplay/hud/BydHudBridge$initialize$1$2;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/shilapi/xcertplay/hud/BydHudBridge;

    # invokes: Lcom/shilapi/xcertplay/hud/BydHudBridge;->tick()V
    invoke-static {v0}, Lcom/shilapi/xcertplay/hud/BydHudBridge;->access$tick(Lcom/shilapi/xcertplay/hud/BydHudBridge;)V

    return-void
.end method
