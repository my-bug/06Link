.class final Lcom/shilapi/xcertplay/DiPlayActivity$Tile;
.super Ljava/lang/Object;
.source "DiPlayActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/DiPlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Tile"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/DiPlayActivity$Tile;",
        "",
        "card",
        "Landroid/widget/FrameLayout;",
        "content",
        "Landroid/widget/LinearLayout;",
        "<init>",
        "(Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;)V",
        "getCard",
        "()Landroid/widget/FrameLayout;",
        "getContent",
        "()Landroid/widget/LinearLayout;",
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
.field private final card:Landroid/widget/FrameLayout;

.field private final content:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;)V
    .locals 1

    const-string v0, "card"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/DiPlayActivity$Tile;->card:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/shilapi/xcertplay/DiPlayActivity$Tile;->content:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final getCard()Landroid/widget/FrameLayout;
    .locals 1

    .line 1560
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity$Tile;->card:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final getContent()Landroid/widget/LinearLayout;
    .locals 1

    .line 1560
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity$Tile;->content:Landroid/widget/LinearLayout;

    return-object v0
.end method
