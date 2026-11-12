.class public final Lcom/shilapi/xcertplay/FitBox$Group;
.super Ljava/lang/Object;
.source "CarLayout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/FitBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Group"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCarLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CarLayout.kt\ncom/shilapi/xcertplay/FitBox$Group\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,378:1\n774#2:379\n865#2,2:380\n1#3:382\n*S KotlinDebug\n*F\n+ 1 CarLayout.kt\ncom/shilapi/xcertplay/FitBox$Group\n*L\n103#1:379\n103#1:380,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\r\u0010\t\u001a\u00020\nH\u0000\u00a2\u0006\u0002\u0008\u000bR\u001a\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/FitBox$Group;",
        "",
        "<init>",
        "()V",
        "boxes",
        "",
        "Lcom/shilapi/xcertplay/FitBox;",
        "getBoxes$common_release",
        "()Ljava/util/List;",
        "scale",
        "",
        "scale$common_release",
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
.field private final boxes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/FitBox;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/shilapi/xcertplay/FitBox$Group;->boxes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getBoxes$common_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/FitBox;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/shilapi/xcertplay/FitBox$Group;->boxes:Ljava/util/List;

    return-object v0
.end method

.method public final scale$common_release()F
    .locals 5

    .line 103
    iget-object v0, p0, Lcom/shilapi/xcertplay/FitBox$Group;->boxes:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 379
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 380
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/shilapi/xcertplay/FitBox;

    .line 103
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/FitBox;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 380
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 381
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 103
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shilapi/xcertplay/FitBox;

    # getter for: Lcom/shilapi/xcertplay/FitBox;->needed:F
    invoke-static {v1}, Lcom/shilapi/xcertplay/FitBox;->access$getNeeded$p(Lcom/shilapi/xcertplay/FitBox;)F

    move-result v1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shilapi/xcertplay/FitBox;

    # getter for: Lcom/shilapi/xcertplay/FitBox;->needed:F
    invoke-static {v2}, Lcom/shilapi/xcertplay/FitBox;->access$getNeeded$p(Lcom/shilapi/xcertplay/FitBox;)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_1

    :cond_3
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method
