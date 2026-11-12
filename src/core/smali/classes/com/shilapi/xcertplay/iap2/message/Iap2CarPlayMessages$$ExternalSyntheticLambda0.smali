.class public final synthetic Lcom/shilapi/xcertplay/iap2/message/Iap2CarPlayMessages$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Ljava/lang/Long;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2CarPlayMessages$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2CarPlayMessages$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2CarPlayMessages$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2CarPlayMessages$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Long;

    check-cast p1, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    invoke-static {v0, v1, p1}, Lcom/shilapi/xcertplay/iap2/message/Iap2CarPlayMessages;->$r8$lambda$RHAsDx9Ix_7dbf7aHvYst1myiLc(Ljava/util/List;Ljava/lang/Long;Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
