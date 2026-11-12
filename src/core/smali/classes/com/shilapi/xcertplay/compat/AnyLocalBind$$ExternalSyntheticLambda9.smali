.class public final synthetic Lcom/shilapi/xcertplay/compat/AnyLocalBind$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/compat/AnyLocalBind$$ExternalSyntheticLambda9;->f$0:Lkotlin/jvm/functions/Function1;

    iput p2, p0, Lcom/shilapi/xcertplay/compat/AnyLocalBind$$ExternalSyntheticLambda9;->f$1:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/compat/AnyLocalBind$$ExternalSyntheticLambda9;->f$0:Lkotlin/jvm/functions/Function1;

    iget v1, p0, Lcom/shilapi/xcertplay/compat/AnyLocalBind$$ExternalSyntheticLambda9;->f$1:I

    check-cast p1, Ljava/net/ServerSocket;

    check-cast p2, Ljava/net/InetSocketAddress;

    invoke-static {v0, v1, p1, p2}, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->$r8$lambda$93NVDxeW2rWgGjdwrybqUTjWf1I(Lkotlin/jvm/functions/Function1;ILjava/net/ServerSocket;Ljava/net/InetSocketAddress;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
