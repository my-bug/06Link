.class final synthetic Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$run$order$4;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "Ipv6RouteRepair.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->run$shared_release(Ljava/util/List;ZLkotlin/jvm/functions/Function1;Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;ILkotlin/jvm/functions/Function0;)Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;",
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


# instance fields
.field final synthetic $commands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $notes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $openAdb:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $sdk:I

.field final synthetic $tried:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;Ljava/util/List;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$run$order$4;->$openAdb:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$run$order$4;->$notes:Ljava/util/List;

    iput-object p3, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$run$order$4;->$tried:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p4, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$run$order$4;->$commands:Ljava/util/List;

    iput p5, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$run$order$4;->$sdk:I

    const-class v2, Lkotlin/jvm/internal/Intrinsics$Kotlin;

    const-string v4, "run$tryAdb(Lkotlin/jvm/functions/Function0;Ljava/util/List;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/List;I)Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;"

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-string/jumbo v3, "tryAdb"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;
    .locals 5

    .line 125
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$run$order$4;->$openAdb:Lkotlin/jvm/functions/Function0;

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$run$order$4;->$notes:Ljava/util/List;

    iget-object v2, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$run$order$4;->$tried:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v3, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$run$order$4;->$commands:Ljava/util/List;

    iget v4, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$run$order$4;->$sdk:I

    # invokes: Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->run$tryAdb(Lkotlin/jvm/functions/Function0;Ljava/util/List;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/List;I)Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;
    invoke-static {v0, v1, v2, v3, v4}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->access$run$tryAdb(Lkotlin/jvm/functions/Function0;Ljava/util/List;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/List;I)Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 125
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$run$order$4;->invoke()Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;

    move-result-object v0

    return-object v0
.end method
