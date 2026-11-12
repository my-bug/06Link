.class final synthetic Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "WirelessGroupKeeper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;-><init>(Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Long;",
        "Lkotlin/jvm/functions/Function0<",
        "+",
        "Lkotlin/Unit;",
        ">;",
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

    const-class v3, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Companion;

    const-string v5, "daemonAfter(JLkotlin/jvm/functions/Function0;)V"

    const/4 v6, 0x0

    const/4 v1, 0x2

    const-string v4, "daemonAfter"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 13
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$1;->invoke(JLkotlin/jvm/functions/Function0;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(JLkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "p1"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Companion;

    # invokes: Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Companion;->daemonAfter(JLkotlin/jvm/functions/Function0;)V
    invoke-static {v0, p1, p2, p3}, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Companion;->access$daemonAfter(Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Companion;JLkotlin/jvm/functions/Function0;)V

    return-void
.end method
