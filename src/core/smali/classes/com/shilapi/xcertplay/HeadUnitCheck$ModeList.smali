.class public final Lcom/shilapi/xcertplay/HeadUnitCheck$ModeList;
.super Ljava/lang/Object;
.source "HeadUnitCheck.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/HeadUnitCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModeList"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0015\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/HeadUnitCheck$ModeList;",
        "",
        "modes",
        "",
        "Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;",
        "<init>",
        "(Ljava/util/List;)V",
        "getModes",
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
.field private final modes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;",
            ">;)V"
        }
    .end annotation

    const-string v0, "modes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$ModeList;->modes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getModes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;",
            ">;"
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$ModeList;->modes:Ljava/util/List;

    return-object v0
.end method
