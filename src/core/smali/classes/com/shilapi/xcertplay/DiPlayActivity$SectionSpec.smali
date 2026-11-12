.class final Lcom/shilapi/xcertplay/DiPlayActivity$SectionSpec;
.super Ljava/lang/Object;
.source "DiPlayActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/DiPlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SectionSpec"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\n\u0008\u0002\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\u0010\u001a\u0004\u0008\u000e\u0010\u000fR\u001d\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/DiPlayActivity$SectionSpec;",
        "",
        "title",
        "",
        "icon",
        "",
        "build",
        "Lkotlin/Function1;",
        "Landroid/widget/LinearLayout;",
        "",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/Integer;Lkotlin/jvm/functions/Function1;)V",
        "getTitle",
        "()Ljava/lang/String;",
        "getIcon",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getBuild",
        "()Lkotlin/jvm/functions/Function1;",
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
.field private final build:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/widget/LinearLayout;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final icon:Ljava/lang/Integer;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/widget/LinearLayout;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "build"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1015
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/DiPlayActivity$SectionSpec;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/shilapi/xcertplay/DiPlayActivity$SectionSpec;->icon:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/shilapi/xcertplay/DiPlayActivity$SectionSpec;->build:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final getBuild()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/widget/LinearLayout;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1015
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity$SectionSpec;->build:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getIcon()Ljava/lang/Integer;
    .locals 1

    .line 1015
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity$SectionSpec;->icon:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 1015
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity$SectionSpec;->title:Ljava/lang/String;

    return-object v0
.end method
