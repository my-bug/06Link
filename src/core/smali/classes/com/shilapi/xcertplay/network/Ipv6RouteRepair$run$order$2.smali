.class final synthetic Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$run$order$2;
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

.field final synthetic $runSu:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/shilapi/xcertplay/network/RootShell$Result;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $suAvailable:Z

.field final synthetic $tried:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method constructor <init>(ZLjava/util/List;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function1;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/shilapi/xcertplay/network/RootShell$Result;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$run$order$2;->$suAvailable:Z

    iput-object p2, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$run$order$2;->$notes:Ljava/util/List;

    iput-object p3, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$run$order$2;->$tried:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p4, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$run$order$2;->$runSu:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$run$order$2;->$commands:Ljava/util/List;

    const-class v2, Lkotlin/jvm/internal/Intrinsics$Kotlin;

    const-string v4, "run$trySu(ZLjava/util/List;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function1;Ljava/util/List;)Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;"

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-string/jumbo v3, "trySu"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;
    .locals 5

    .line 125
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$run$order$2;->$suAvailable:Z

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$run$order$2;->$notes:Ljava/util/List;

    iget-object v2, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$run$order$2;->$tried:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v3, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$run$order$2;->$runSu:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$run$order$2;->$commands:Ljava/util/List;

    # invokes: Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->run$trySu(ZLjava/util/List;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function1;Ljava/util/List;)Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;
    invoke-static {v0, v1, v2, v3, v4}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->access$run$trySu(ZLjava/util/List;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function1;Ljava/util/List;)Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 125
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$run$order$2;->invoke()Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;

    move-result-object v0

    return-object v0
.end method
