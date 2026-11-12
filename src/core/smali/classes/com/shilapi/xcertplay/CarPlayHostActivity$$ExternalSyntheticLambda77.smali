.class public final synthetic Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda77;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/CarPlayHostActivity;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda77;->f$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    iput-object p2, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda77;->f$1:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda77;->f$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    iget-object v1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$$ExternalSyntheticLambda77;->f$1:Lkotlin/jvm/functions/Function2;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/util/Map;

    invoke-static {v0, v1, p1, p2}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->$r8$lambda$NCj_n-iesX9EmexHjdzqCE63y0k(Lcom/shilapi/xcertplay/CarPlayHostActivity;Lkotlin/jvm/functions/Function2;ZLjava/util/Map;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
