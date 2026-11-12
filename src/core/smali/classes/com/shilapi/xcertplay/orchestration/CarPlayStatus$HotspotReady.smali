.class public final Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;
.super Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;
.source "CarPlayController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HotspotReady"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0015\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003JE\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u00d6\u0003J\t\u0010\u001f\u001a\u00020\u0006H\u00d6\u0001J\t\u0010 \u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\rR\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\rR\u0011\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\r\u00a8\u0006!"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;",
        "Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;",
        "ssid",
        "",
        "band",
        "channel",
        "",
        "bssid",
        "address",
        "backend",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getSsid",
        "()Ljava/lang/String;",
        "getBand",
        "getChannel",
        "()I",
        "getBssid",
        "getAddress",
        "getBackend",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
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
.field private final address:Ljava/lang/String;

.field private final backend:Ljava/lang/String;

.field private final band:Ljava/lang/String;

.field private final bssid:Ljava/lang/String;

.field private final channel:I

.field private final ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "ssid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "band"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bssid"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backend"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 132
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 126
    iput-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->ssid:Ljava/lang/String;

    .line 127
    iput-object p2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->band:Ljava/lang/String;

    .line 128
    iput p3, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->channel:I

    .line 129
    iput-object p4, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->bssid:Ljava/lang/String;

    .line 130
    iput-object p5, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->address:Ljava/lang/String;

    .line 131
    iput-object p6, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->backend:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->ssid:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->band:Ljava/lang/String;

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    iget p3, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->channel:I

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    iget-object p4, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->bssid:Ljava/lang/String;

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    iget-object p5, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->address:Ljava/lang/String;

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    iget-object p6, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->backend:Ljava/lang/String;

    :cond_5
    move-object p7, p5

    move-object p8, p6

    move p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p8}, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->copy(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->band:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->channel:I

    return v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->bssid:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->address:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->backend:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;
    .locals 8

    const-string/jumbo v0, "ssid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "band"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bssid"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backend"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;

    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->ssid:Ljava/lang/String;

    iget-object v3, p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->ssid:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->band:Ljava/lang/String;

    iget-object v3, p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->band:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->channel:I

    iget v3, p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->channel:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->bssid:Ljava/lang/String;

    iget-object v3, p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->bssid:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->address:Ljava/lang/String;

    iget-object v3, p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->address:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->backend:Ljava/lang/String;

    iget-object p1, p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->backend:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getAddress()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->address:Ljava/lang/String;

    return-object v0
.end method

.method public final getBackend()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->backend:Ljava/lang/String;

    return-object v0
.end method

.method public final getBand()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->band:Ljava/lang/String;

    return-object v0
.end method

.method public final getBssid()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->bssid:Ljava/lang/String;

    return-object v0
.end method

.method public final getChannel()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->channel:I

    return v0
.end method

.method public final getSsid()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->ssid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->band:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->channel:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->bssid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->address:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->backend:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->ssid:Ljava/lang/String;

    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->band:Ljava/lang/String;

    iget v2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->channel:I

    iget-object v3, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->bssid:Ljava/lang/String;

    iget-object v4, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->address:Ljava/lang/String;

    iget-object v5, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->backend:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "HotspotReady(ssid="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", band="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", channel="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", bssid="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", address="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", backend="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
