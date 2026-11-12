.class public final Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair$Result;
.super Ljava/lang/Object;
.source "AdbNmsRouteRepair.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair$Result;",
        "",
        "ok",
        "",
        "detail",
        "",
        "<init>",
        "(ZLjava/lang/String;)V",
        "getOk",
        "()Z",
        "getDetail",
        "()Ljava/lang/String;",
        "shared_release"
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

.field private final ok:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 1

    const-string v0, "detail"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair$Result;->ok:Z

    iput-object p2, p0, Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair$Result;->detail:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDetail()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair$Result;->detail:Ljava/lang/String;

    return-object v0
.end method

.method public final getOk()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair$Result;->ok:Z

    return v0
.end method
