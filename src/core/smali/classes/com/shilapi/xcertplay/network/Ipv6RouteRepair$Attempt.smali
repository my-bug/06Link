.class public final Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;
.super Ljava/lang/Object;
.source "Ipv6RouteRepair.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Attempt"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0008\u0010\u0012\u001a\u00020\u0008H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;",
        "",
        "via",
        "Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;",
        "ok",
        "",
        "tried",
        "detail",
        "",
        "<init>",
        "(Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;ZZLjava/lang/String;)V",
        "getVia",
        "()Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;",
        "getOk",
        "()Z",
        "getTried",
        "getDetail",
        "()Ljava/lang/String;",
        "toString",
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

.field private final tried:Z

.field private final via:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;


# direct methods
.method public constructor <init>(Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;ZZLjava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "via"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detail"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;->via:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    iput-boolean p2, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;->ok:Z

    iput-boolean p3, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;->tried:Z

    iput-object p4, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;->detail:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDetail()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;->detail:Ljava/lang/String;

    return-object v0
.end method

.method public final getOk()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;->ok:Z

    return v0
.end method

.method public final getTried()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;->tried:Z

    return v0
.end method

.method public final getVia()Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;->via:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 38
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;->via:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;->ok:Z

    iget-object v2, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;->detail:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "via="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ok="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
