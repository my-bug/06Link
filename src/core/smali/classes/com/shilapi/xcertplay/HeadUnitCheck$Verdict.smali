.class public final Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;
.super Ljava/lang/Object;
.source "HeadUnitCheck.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/HeadUnitCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Verdict"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0007\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0007\u00a2\u0006\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0010\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;",
        "",
        "state",
        "Lcom/shilapi/xcertplay/HeadUnitCheck$State;",
        "step",
        "",
        "reason",
        "",
        "advice",
        "<init>",
        "(Lcom/shilapi/xcertplay/HeadUnitCheck$State;ILjava/util/List;Ljava/util/List;)V",
        "getState",
        "()Lcom/shilapi/xcertplay/HeadUnitCheck$State;",
        "getStep",
        "()I",
        "getReason",
        "()Ljava/util/List;",
        "getAdvice",
        "common_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final advice:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final reason:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final state:Lcom/shilapi/xcertplay/HeadUnitCheck$State;

.field private final step:I


# direct methods
.method public constructor <init>(Lcom/shilapi/xcertplay/HeadUnitCheck$State;ILjava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/HeadUnitCheck$State;",
            "I",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "advice"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;->state:Lcom/shilapi/xcertplay/HeadUnitCheck$State;

    iput p2, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;->step:I

    iput-object p3, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;->reason:Ljava/util/List;

    iput-object p4, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;->advice:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getAdvice()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;->advice:Ljava/util/List;

    return-object v0
.end method

.method public final getReason()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;->reason:Ljava/util/List;

    return-object v0
.end method

.method public final getState()Lcom/shilapi/xcertplay/HeadUnitCheck$State;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;->state:Lcom/shilapi/xcertplay/HeadUnitCheck$State;

    return-object v0
.end method

.method public final getStep()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;->step:I

    return v0
.end method
