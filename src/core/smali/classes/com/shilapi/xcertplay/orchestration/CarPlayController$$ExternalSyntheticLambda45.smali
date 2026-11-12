.class public final synthetic Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda45;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda45;->f$0:Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda45;->f$0:Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->$r8$lambda$CVEUaNZr8H_jSiT4sKKhZBmgr94(Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;

    move-result-object p1

    return-object p1
.end method
