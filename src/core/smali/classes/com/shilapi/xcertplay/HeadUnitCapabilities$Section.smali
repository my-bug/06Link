.class public final Lcom/shilapi/xcertplay/HeadUnitCapabilities$Section;
.super Ljava/lang/Object;
.source "HeadUnitCapabilities.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/HeadUnitCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Section"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/HeadUnitCapabilities$Section;",
        "",
        "title",
        "",
        "items",
        "",
        "Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;",
        "<init>",
        "(Ljava/lang/String;Ljava/util/List;)V",
        "getTitle",
        "()Ljava/lang/String;",
        "getItems",
        "()Ljava/util/List;",
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
.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Section;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Section;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Section;->items:Ljava/util/List;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Section;->title:Ljava/lang/String;

    return-object v0
.end method
