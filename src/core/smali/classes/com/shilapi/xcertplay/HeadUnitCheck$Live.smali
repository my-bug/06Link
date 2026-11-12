.class public final Lcom/shilapi/xcertplay/HeadUnitCheck$Live;
.super Ljava/lang/Object;
.source "HeadUnitCheck.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/HeadUnitCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Live"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/HeadUnitCheck$Live;",
        "",
        "wireless",
        "",
        "phase",
        "Lcom/shilapi/xcertplay/ConnectionProgress$Phase;",
        "step",
        "",
        "detail",
        "",
        "<init>",
        "(ZLcom/shilapi/xcertplay/ConnectionProgress$Phase;ILjava/lang/String;)V",
        "getWireless",
        "()Z",
        "getPhase",
        "()Lcom/shilapi/xcertplay/ConnectionProgress$Phase;",
        "getStep",
        "()I",
        "getDetail",
        "()Ljava/lang/String;",
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
.field private final detail:Ljava/lang/String;

.field private final phase:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

.field private final step:I

.field private final wireless:Z


# direct methods
.method public constructor <init>(ZLcom/shilapi/xcertplay/ConnectionProgress$Phase;ILjava/lang/String;)V
    .locals 1

    const-string v0, "phase"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Live;->wireless:Z

    iput-object p2, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Live;->phase:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    iput p3, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Live;->step:I

    iput-object p4, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Live;->detail:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDetail()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Live;->detail:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhase()Lcom/shilapi/xcertplay/ConnectionProgress$Phase;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Live;->phase:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    return-object v0
.end method

.method public final getStep()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Live;->step:I

    return v0
.end method

.method public final getWireless()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Live;->wireless:Z

    return v0
.end method
