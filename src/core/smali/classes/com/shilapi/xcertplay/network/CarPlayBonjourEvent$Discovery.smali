.class public final Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery;
.super Ljava/lang/Object;
.source "CarPlayBonjour.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Discovery"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery$Stage;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0001\u0019B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\'\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000c\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery;",
        "Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent;",
        "stage",
        "Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery$Stage;",
        "ipv4Count",
        "",
        "ipv6Count",
        "<init>",
        "(Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery$Stage;II)V",
        "getStage",
        "()Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery$Stage;",
        "getIpv4Count",
        "()I",
        "getIpv6Count",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "Stage",
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
.field private final ipv4Count:I

.field private final ipv6Count:I

.field private final stage:Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery$Stage;


# direct methods
.method public constructor <init>(Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery$Stage;II)V
    .locals 1

    const-string/jumbo v0, "stage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery;->stage:Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery$Stage;

    iput p2, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery;->ipv4Count:I

    iput p3, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery;->ipv6Count:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery$Stage;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 42
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery;-><init>(Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery$Stage;II)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery;Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery$Stage;IIILjava/lang/Object;)Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery;->stage:Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery$Stage;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery;->ipv4Count:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery;->ipv6Count:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery;->copy(Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery$Stage;II)Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery$Stage;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery;->stage:Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery$Stage;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery;->ipv4Count:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery;->ipv6Count:I

    return v0
.end method

.method public final copy(Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery$Stage;II)Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery;
    .locals 1

    const-string/jumbo v0, "stage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery;

    invoke-direct {v0, p1, p2, p3}, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery;-><init>(Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery$Stage;II)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery;

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery;->stage:Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery$Stage;

    iget-object v3, p1, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery;->stage:Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery$Stage;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery;->ipv4Count:I

    iget v3, p1, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery;->ipv4Count:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery;->ipv6Count:I

    iget p1, p1, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery;->ipv6Count:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getIpv4Count()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery;->ipv4Count:I

    return v0
.end method

.method public final getIpv6Count()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery;->ipv6Count:I

    return v0
.end method

.method public final getStage()Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery$Stage;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery;->stage:Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery$Stage;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery;->stage:Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery$Stage;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery$Stage;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery;->ipv4Count:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery;->ipv6Count:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery;->stage:Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery$Stage;

    iget v1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery;->ipv4Count:I

    iget v2, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery;->ipv6Count:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Discovery(stage="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", ipv4Count="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", ipv6Count="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
