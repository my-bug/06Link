.class public final Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneWifi;
.super Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;
.source "CarPlayController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WaitingForIphoneWifi"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\t\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0007J\u001a\u0010\n\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001\u00a2\u0006\u0002\u0010\u000bJ\u0013\u0010\u000c\u001a\u00020\u00032\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u00d6\u0003J\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneWifi;",
        "Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;",
        "joinedHotspot",
        "",
        "<init>",
        "(Ljava/lang/Boolean;)V",
        "getJoinedHotspot",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "component1",
        "copy",
        "(Ljava/lang/Boolean;)Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneWifi;",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
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
.field private final joinedHotspot:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;)V
    .locals 1

    const/4 v0, 0x0

    .line 140
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneWifi;->joinedHotspot:Ljava/lang/Boolean;

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneWifi;Ljava/lang/Boolean;ILjava/lang/Object;)Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneWifi;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneWifi;->joinedHotspot:Ljava/lang/Boolean;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneWifi;->copy(Ljava/lang/Boolean;)Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneWifi;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneWifi;->joinedHotspot:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final copy(Ljava/lang/Boolean;)Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneWifi;
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneWifi;

    invoke-direct {v0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneWifi;-><init>(Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneWifi;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneWifi;

    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneWifi;->joinedHotspot:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneWifi;->joinedHotspot:Ljava/lang/Boolean;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getJoinedHotspot()Ljava/lang/Boolean;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneWifi;->joinedHotspot:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneWifi;->joinedHotspot:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneWifi;->joinedHotspot:Ljava/lang/Boolean;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WaitingForIphoneWifi(joinedHotspot="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
