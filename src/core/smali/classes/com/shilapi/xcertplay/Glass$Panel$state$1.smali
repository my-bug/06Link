.class public final Lcom/shilapi/xcertplay/Glass$Panel$state$1;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "Glass.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/Glass$Panel;-><init>(Lcom/shilapi/xcertplay/Glass$Palette;Lcom/shilapi/xcertplay/Glass$Kind;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/shilapi/xcertplay/Glass$Panel$state$1",
        "Landroid/graphics/drawable/Drawable$ConstantState;",
        "newDrawable",
        "Landroid/graphics/drawable/Drawable;",
        "getChangingConfigurations",
        "",
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
.field final synthetic this$0:Lcom/shilapi/xcertplay/Glass$Panel;


# direct methods
.method constructor <init>(Lcom/shilapi/xcertplay/Glass$Panel;)V
    .locals 0

    iput-object p1, p0, Lcom/shilapi/xcertplay/Glass$Panel$state$1;->this$0:Lcom/shilapi/xcertplay/Glass$Panel;

    .line 253
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 254
    new-instance v0, Lcom/shilapi/xcertplay/Glass$Panel;

    iget-object v1, p0, Lcom/shilapi/xcertplay/Glass$Panel$state$1;->this$0:Lcom/shilapi/xcertplay/Glass$Panel;

    # getter for: Lcom/shilapi/xcertplay/Glass$Panel;->palette:Lcom/shilapi/xcertplay/Glass$Palette;
    invoke-static {v1}, Lcom/shilapi/xcertplay/Glass$Panel;->access$getPalette$p(Lcom/shilapi/xcertplay/Glass$Panel;)Lcom/shilapi/xcertplay/Glass$Palette;

    move-result-object v1

    iget-object v2, p0, Lcom/shilapi/xcertplay/Glass$Panel$state$1;->this$0:Lcom/shilapi/xcertplay/Glass$Panel;

    # getter for: Lcom/shilapi/xcertplay/Glass$Panel;->kind:Lcom/shilapi/xcertplay/Glass$Kind;
    invoke-static {v2}, Lcom/shilapi/xcertplay/Glass$Panel;->access$getKind$p(Lcom/shilapi/xcertplay/Glass$Panel;)Lcom/shilapi/xcertplay/Glass$Kind;

    move-result-object v2

    iget-object v3, p0, Lcom/shilapi/xcertplay/Glass$Panel$state$1;->this$0:Lcom/shilapi/xcertplay/Glass$Panel;

    # getter for: Lcom/shilapi/xcertplay/Glass$Panel;->radiusDp:F
    invoke-static {v3}, Lcom/shilapi/xcertplay/Glass$Panel;->access$getRadiusDp$p(Lcom/shilapi/xcertplay/Glass$Panel;)F

    move-result v3

    iget-object v4, p0, Lcom/shilapi/xcertplay/Glass$Panel$state$1;->this$0:Lcom/shilapi/xcertplay/Glass$Panel;

    # getter for: Lcom/shilapi/xcertplay/Glass$Panel;->density:F
    invoke-static {v4}, Lcom/shilapi/xcertplay/Glass$Panel;->access$getDensity$p(Lcom/shilapi/xcertplay/Glass$Panel;)F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/shilapi/xcertplay/Glass$Panel;-><init>(Lcom/shilapi/xcertplay/Glass$Palette;Lcom/shilapi/xcertplay/Glass$Kind;FF)V

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
