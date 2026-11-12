.class public final Lcom/shilapi/xcertplay/CarBrandPickerActivity$BrandAdapter;
.super Landroid/widget/BaseAdapter;
.source "CarBrandPickerActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/CarBrandPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BrandAdapter"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0080\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0014\u0010\u0007\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003J\u0013\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u0000\u00a2\u0006\u0002\u0008\u000bJ\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\rH\u0016J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0010\u001a\u00020\rH\u0016J$\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0010\u001a\u00020\r2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/CarBrandPickerActivity$BrandAdapter;",
        "Landroid/widget/BaseAdapter;",
        "items",
        "",
        "Lcom/shilapi/xcertplay/CarBrand;",
        "<init>",
        "(Lcom/shilapi/xcertplay/CarBrandPickerActivity;Ljava/util/List;)V",
        "replace",
        "",
        "newItems",
        "current",
        "current$common_release",
        "getCount",
        "",
        "getItem",
        "",
        "position",
        "getItemId",
        "",
        "getView",
        "Landroid/view/View;",
        "convertView",
        "parent",
        "Landroid/view/ViewGroup;",
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
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/CarBrand;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/shilapi/xcertplay/CarBrandPickerActivity;


# direct methods
.method public constructor <init>(Lcom/shilapi/xcertplay/CarBrandPickerActivity;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/CarBrand;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    iput-object p1, p0, Lcom/shilapi/xcertplay/CarBrandPickerActivity$BrandAdapter;->this$0:Lcom/shilapi/xcertplay/CarBrandPickerActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/shilapi/xcertplay/CarBrandPickerActivity$BrandAdapter;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final current$common_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/CarBrand;",
            ">;"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarBrandPickerActivity$BrandAdapter;->items:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarBrandPickerActivity$BrandAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarBrandPickerActivity$BrandAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 312
    iget-object p3, p0, Lcom/shilapi/xcertplay/CarBrandPickerActivity$BrandAdapter;->this$0:Lcom/shilapi/xcertplay/CarBrandPickerActivity;

    iget-object v0, p0, Lcom/shilapi/xcertplay/CarBrandPickerActivity$BrandAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shilapi/xcertplay/CarBrand;

    # invokes: Lcom/shilapi/xcertplay/CarBrandPickerActivity;->cell(Lcom/shilapi/xcertplay/CarBrand;Landroid/view/View;)Landroid/view/View;
    invoke-static {p3, p1, p2}, Lcom/shilapi/xcertplay/CarBrandPickerActivity;->access$cell(Lcom/shilapi/xcertplay/CarBrandPickerActivity;Lcom/shilapi/xcertplay/CarBrand;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final replace(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/CarBrand;",
            ">;)V"
        }
    .end annotation

    const-string v0, "newItems"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    iput-object p1, p0, Lcom/shilapi/xcertplay/CarBrandPickerActivity$BrandAdapter;->items:Ljava/util/List;

    .line 304
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/CarBrandPickerActivity$BrandAdapter;->notifyDataSetChanged()V

    return-void
.end method
