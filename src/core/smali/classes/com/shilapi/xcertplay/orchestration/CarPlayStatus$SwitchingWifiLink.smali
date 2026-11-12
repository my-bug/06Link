.class public final Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SwitchingWifiLink;
.super Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;
.source "CarPlayController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SwitchingWifiLink"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B)\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0008H\u00c6\u0003J3\u0010\u0016\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u00d6\u0003J\t\u0010\u001b\u001a\u00020\u001cH\u00d6\u0001J\t\u0010\u001d\u001a\u00020\u0008H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SwitchingWifiLink;",
        "Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;",
        "from",
        "Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;",
        "to",
        "afterSeconds",
        "",
        "evidence",
        "",
        "<init>",
        "(Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;JLjava/lang/String;)V",
        "getFrom",
        "()Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;",
        "getTo",
        "getAfterSeconds",
        "()J",
        "getEvidence",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
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
.field private final afterSeconds:J

.field private final evidence:Ljava/lang/String;

.field private final from:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

.field private final to:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;


# direct methods
.method public constructor <init>(Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;JLjava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "to"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "evidence"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 146
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SwitchingWifiLink;->from:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    iput-object p2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SwitchingWifiLink;->to:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    iput-wide p3, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SwitchingWifiLink;->afterSeconds:J

    iput-object p5, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SwitchingWifiLink;->evidence:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SwitchingWifiLink;Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;JLjava/lang/String;ILjava/lang/Object;)Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SwitchingWifiLink;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SwitchingWifiLink;->from:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SwitchingWifiLink;->to:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget-wide p3, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SwitchingWifiLink;->afterSeconds:J

    :cond_2
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_3

    iget-object p5, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SwitchingWifiLink;->evidence:Ljava/lang/String;

    :cond_3
    move-object p7, p5

    move-wide p5, p3

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p7}, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SwitchingWifiLink;->copy(Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;JLjava/lang/String;)Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SwitchingWifiLink;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SwitchingWifiLink;->from:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    return-object v0
.end method

.method public final component2()Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SwitchingWifiLink;->to:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    return-object v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SwitchingWifiLink;->afterSeconds:J

    return-wide v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SwitchingWifiLink;->evidence:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;JLjava/lang/String;)Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SwitchingWifiLink;
    .locals 7

    const-string/jumbo v0, "to"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "evidence"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SwitchingWifiLink;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SwitchingWifiLink;-><init>(Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;JLjava/lang/String;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SwitchingWifiLink;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SwitchingWifiLink;

    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SwitchingWifiLink;->from:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    iget-object v3, p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SwitchingWifiLink;->from:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SwitchingWifiLink;->to:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    iget-object v3, p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SwitchingWifiLink;->to:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SwitchingWifiLink;->afterSeconds:J

    iget-wide v5, p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SwitchingWifiLink;->afterSeconds:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SwitchingWifiLink;->evidence:Ljava/lang/String;

    iget-object p1, p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SwitchingWifiLink;->evidence:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getAfterSeconds()J
    .locals 2

    .line 146
    iget-wide v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SwitchingWifiLink;->afterSeconds:J

    return-wide v0
.end method

.method public final getEvidence()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SwitchingWifiLink;->evidence:Ljava/lang/String;

    return-object v0
.end method

.method public final getFrom()Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SwitchingWifiLink;->from:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    return-object v0
.end method

.method public final getTo()Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SwitchingWifiLink;->to:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SwitchingWifiLink;->from:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SwitchingWifiLink;->to:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SwitchingWifiLink;->afterSeconds:J

    invoke-static {v1, v2}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SwitchingWifiLink;->evidence:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SwitchingWifiLink;->from:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SwitchingWifiLink;->to:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    iget-wide v2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SwitchingWifiLink;->afterSeconds:J

    iget-object v4, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SwitchingWifiLink;->evidence:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SwitchingWifiLink(from="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", to="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", afterSeconds="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", evidence="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
