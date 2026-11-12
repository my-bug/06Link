.class public final Lcom/shilapi/xcertplay/orchestration/ReturnResume;
.super Ljava/lang/Object;
.source "SetupProblem.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0013\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\rJ\u0006\u0010\u000e\u001a\u00020\u000bJ!\u0010\u000f\u001a\u0004\u0018\u00018\u00002\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00120\u0011\u00a2\u0006\u0002\u0010\u0013R$\u0010\u0006\u001a\u0004\u0018\u00018\u00002\u0008\u0010\u0005\u001a\u0004\u0018\u00018\u0000@BX\u0086\u000e\u00a2\u0006\n\n\u0002\u0010\t\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/orchestration/ReturnResume;",
        "K",
        "",
        "<init>",
        "()V",
        "value",
        "armed",
        "getArmed",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "arm",
        "",
        "step",
        "(Ljava/lang/Object;)V",
        "disarm",
        "onReturn",
        "done",
        "Lkotlin/Function1;",
        "",
        "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "shared_release"
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
.field private armed:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final arm(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    const-string/jumbo v0, "step"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    iput-object p1, p0, Lcom/shilapi/xcertplay/orchestration/ReturnResume;->armed:Ljava/lang/Object;

    return-void
.end method

.method public final disarm()V
    .locals 1

    const/4 v0, 0x0

    .line 213
    iput-object v0, p0, Lcom/shilapi/xcertplay/orchestration/ReturnResume;->armed:Ljava/lang/Object;

    return-void
.end method

.method public final getArmed()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/ReturnResume;->armed:Ljava/lang/Object;

    return-object v0
.end method

.method public final onReturn(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TK;",
            "Ljava/lang/Boolean;",
            ">;)TK;"
        }
    .end annotation

    const-string v0, "done"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/ReturnResume;->armed:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 218
    :cond_0
    iput-object v1, p0, Lcom/shilapi/xcertplay/orchestration/ReturnResume;->armed:Ljava/lang/Object;

    .line 219
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v0

    :cond_1
    return-object v1
.end method
