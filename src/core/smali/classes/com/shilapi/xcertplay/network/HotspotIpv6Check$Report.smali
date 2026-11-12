.class public final Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;
.super Ljava/lang/Object;
.source "HotspotIpv6Check.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/network/HotspotIpv6Check;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Report"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0012\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0008\u0010\u0018\u001a\u00020\u0005H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\n\n\u0002\u0010\u0012\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u000fR\u0011\u0010\t\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0016\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0015\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;",
        "",
        "result",
        "Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;",
        "interfaceName",
        "",
        "hotspotOn",
        "",
        "detail",
        "serving",
        "<init>",
        "(Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Z)V",
        "getResult",
        "()Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;",
        "getInterfaceName",
        "()Ljava/lang/String;",
        "getHotspotOn",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "getDetail",
        "getServing",
        "()Z",
        "blocksCarPlay",
        "getBlocksCarPlay",
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

.field private final hotspotOn:Ljava/lang/Boolean;

.field private final interfaceName:Ljava/lang/String;

.field private final result:Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;

.field private final serving:Z


# direct methods
.method public constructor <init>(Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detail"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;->result:Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;

    iput-object p2, p0, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;->interfaceName:Ljava/lang/String;

    iput-object p3, p0, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;->hotspotOn:Ljava/lang/Boolean;

    iput-object p4, p0, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;->detail:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;->serving:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    move v5, p5

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 33
    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;-><init>(Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final getBlocksCarPlay()Z
    .locals 5

    .line 36
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;->hotspotOn:Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;->serving:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;

    sget-object v3, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;->MISSING_ROUTE:Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;

    aput-object v3, v0, v2

    sget-object v3, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;->IPV6_DISABLED:Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;

    aput-object v3, v0, v1

    const/4 v3, 0x2

    sget-object v4, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;->NO_LINK_LOCAL:Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;

    aput-object v4, v0, v3

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iget-object v3, p0, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;->result:Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method public final getDetail()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;->detail:Ljava/lang/String;

    return-object v0
.end method

.method public final getHotspotOn()Ljava/lang/Boolean;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;->hotspotOn:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getInterfaceName()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;->interfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public final getResult()Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;->result:Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;

    return-object v0
.end method

.method public final getServing()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;->serving:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 39
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;->result:Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;->interfaceName:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "none"

    :cond_0
    iget-object v2, p0, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;->hotspotOn:Ljava/lang/Boolean;

    iget-boolean v3, p0, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;->serving:Z

    const-string v4, ""

    if-eqz v3, :cond_1

    const-string v3, " serving=true"

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    iget-object v5, p0, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;->detail:Ljava/lang/String;

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;->detail:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "result="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " iface="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " hotspotOn="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
