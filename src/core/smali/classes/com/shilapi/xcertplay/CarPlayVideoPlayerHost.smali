.class public interface abstract Lcom/shilapi/xcertplay/CarPlayVideoPlayerHost;
.super Ljava/lang/Object;
.source "CarPlayVideoPlayerHost.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/CarPlayVideoPlayerHost$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008`\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bJ,\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00030\tH&J\u0008\u0010\u000b\u001a\u00020\u000cH&J\u0018\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\nH&J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0013H&J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\nH&J\u0010\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\nH&J\u000f\u0010\u0018\u001a\u0004\u0018\u00010\nH&\u00a2\u0006\u0002\u0010\u0019J\u0008\u0010\u001a\u001a\u00020\u0003H&\u00a8\u0006\u001c\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/CarPlayVideoPlayerHost;",
        "",
        "attach",
        "",
        "activity",
        "Landroid/app/Activity;",
        "container",
        "Landroid/widget/FrameLayout;",
        "onError",
        "Lkotlin/Function1;",
        "",
        "state",
        "Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;",
        "load",
        "url",
        "",
        "startMillis",
        "applyRate",
        "playing",
        "",
        "skip",
        "deltaMillis",
        "applySeek",
        "targetMillis",
        "currentPositionMillis",
        "()Ljava/lang/Integer;",
        "release",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/shilapi/xcertplay/CarPlayVideoPlayerHost$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/shilapi/xcertplay/CarPlayVideoPlayerHost$Companion;->$$INSTANCE:Lcom/shilapi/xcertplay/CarPlayVideoPlayerHost$Companion;

    sput-object v0, Lcom/shilapi/xcertplay/CarPlayVideoPlayerHost;->Companion:Lcom/shilapi/xcertplay/CarPlayVideoPlayerHost$Companion;

    return-void
.end method


# virtual methods
.method public abstract applyRate(Z)V
.end method

.method public abstract applySeek(I)V
.end method

.method public abstract attach(Landroid/app/Activity;Landroid/widget/FrameLayout;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/widget/FrameLayout;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract currentPositionMillis()Ljava/lang/Integer;
.end method

.method public abstract load(Ljava/lang/String;I)V
.end method

.method public abstract release()V
.end method

.method public abstract skip(I)V
.end method

.method public abstract state()Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;
.end method
