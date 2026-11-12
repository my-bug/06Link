.class final synthetic Lcom/shilapi/xcertplay/HeadUnitCheckActivity$write$text$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "HeadUnitCheckActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->write(Lcom/shilapi/xcertplay/HeadUnitCheck$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/String;",
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

    const-class v3, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;

    const-string v5, "join(Ljava/util/List;)Ljava/lang/String;"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-string v4, "join"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 264
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$write$text$1;->invoke(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$write$text$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;

    # invokes: Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->join(Ljava/util/List;)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->access$join(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
