.class public final Lcom/shilapi/xcertplay/CarBrandPickerActivity$searchRow$1$1;
.super Ljava/lang/Object;
.source "CarBrandPickerActivity.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/CarBrandPickerActivity;->searchRow()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J*\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0016J*\u0010\n\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J\u0012\u0010\u000c\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\rH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "com/shilapi/xcertplay/CarBrandPickerActivity$searchRow$1$1",
        "Landroid/text/TextWatcher;",
        "beforeTextChanged",
        "",
        "s",
        "",
        "start",
        "",
        "count",
        "after",
        "onTextChanged",
        "before",
        "afterTextChanged",
        "Landroid/text/Editable;",
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
.field final synthetic this$0:Lcom/shilapi/xcertplay/CarBrandPickerActivity;


# direct methods
.method constructor <init>(Lcom/shilapi/xcertplay/CarBrandPickerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/shilapi/xcertplay/CarBrandPickerActivity$searchRow$1$1;->this$0:Lcom/shilapi/xcertplay/CarBrandPickerActivity;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarBrandPickerActivity$searchRow$1$1;->this$0:Lcom/shilapi/xcertplay/CarBrandPickerActivity;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    invoke-static {v0, p1}, Lcom/shilapi/xcertplay/CarBrandPickerActivity;->access$setQueryText$p(Lcom/shilapi/xcertplay/CarBrandPickerActivity;Ljava/lang/String;)V

    .line 190
    iget-object p1, p0, Lcom/shilapi/xcertplay/CarBrandPickerActivity$searchRow$1$1;->this$0:Lcom/shilapi/xcertplay/CarBrandPickerActivity;

    # getter for: Lcom/shilapi/xcertplay/CarBrandPickerActivity;->adapter:Lcom/shilapi/xcertplay/CarBrandPickerActivity$BrandAdapter;
    invoke-static {p1}, Lcom/shilapi/xcertplay/CarBrandPickerActivity;->access$getAdapter$p(Lcom/shilapi/xcertplay/CarBrandPickerActivity;)Lcom/shilapi/xcertplay/CarBrandPickerActivity$BrandAdapter;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "adapter"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v1, p1

    :goto_1
    sget-object p1, Lcom/shilapi/xcertplay/CarBrandCatalog;->INSTANCE:Lcom/shilapi/xcertplay/CarBrandCatalog;

    iget-object v0, p0, Lcom/shilapi/xcertplay/CarBrandPickerActivity$searchRow$1$1;->this$0:Lcom/shilapi/xcertplay/CarBrandPickerActivity;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/CarBrandPickerActivity;->getBrands$common_release()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/shilapi/xcertplay/CarBrandPickerActivity$searchRow$1$1;->this$0:Lcom/shilapi/xcertplay/CarBrandPickerActivity;

    # getter for: Lcom/shilapi/xcertplay/CarBrandPickerActivity;->queryText:Ljava/lang/String;
    invoke-static {v2}, Lcom/shilapi/xcertplay/CarBrandPickerActivity;->access$getQueryText$p(Lcom/shilapi/xcertplay/CarBrandPickerActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/shilapi/xcertplay/CarBrandCatalog;->filter(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/shilapi/xcertplay/CarBrandPickerActivity$BrandAdapter;->replace(Ljava/util/List;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
