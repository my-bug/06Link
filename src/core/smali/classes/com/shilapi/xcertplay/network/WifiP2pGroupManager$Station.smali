.class final Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Station;
.super Ljava/lang/Object;
.source "WifiP2pGroupManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Station"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWifiP2pGroupManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WifiP2pGroupManager.kt\ncom/shilapi/xcertplay/network/WifiP2pGroupManager$Station\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,950:1\n1#2:951\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0008\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010\u000bJ&\u0010\u0011\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0012J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\u000c\u001a\u0004\u0008\n\u0010\u000bR\u0013\u0010\r\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000b\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Station;",
        "",
        "state",
        "Landroid/net/wifi/SupplicantState;",
        "reportedFrequency",
        "",
        "<init>",
        "(Landroid/net/wifi/SupplicantState;Ljava/lang/Integer;)V",
        "getState",
        "()Landroid/net/wifi/SupplicantState;",
        "getReportedFrequency",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "alignmentFrequency",
        "getAlignmentFrequency",
        "component1",
        "component2",
        "copy",
        "(Landroid/net/wifi/SupplicantState;Ljava/lang/Integer;)Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Station;",
        "equals",
        "",
        "other",
        "hashCode",
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
.field private final reportedFrequency:Ljava/lang/Integer;

.field private final state:Landroid/net/wifi/SupplicantState;


# direct methods
.method public constructor <init>(Landroid/net/wifi/SupplicantState;Ljava/lang/Integer;)V
    .locals 0

    .line 697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Station;->state:Landroid/net/wifi/SupplicantState;

    iput-object p2, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Station;->reportedFrequency:Ljava/lang/Integer;

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Station;Landroid/net/wifi/SupplicantState;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Station;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Station;->state:Landroid/net/wifi/SupplicantState;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Station;->reportedFrequency:Ljava/lang/Integer;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Station;->copy(Landroid/net/wifi/SupplicantState;Ljava/lang/Integer;)Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Station;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/net/wifi/SupplicantState;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Station;->state:Landroid/net/wifi/SupplicantState;

    return-object v0
.end method

.method public final component2()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Station;->reportedFrequency:Ljava/lang/Integer;

    return-object v0
.end method

.method public final copy(Landroid/net/wifi/SupplicantState;Ljava/lang/Integer;)Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Station;
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Station;

    invoke-direct {v0, p1, p2}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Station;-><init>(Landroid/net/wifi/SupplicantState;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Station;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Station;

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Station;->state:Landroid/net/wifi/SupplicantState;

    iget-object v3, p1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Station;->state:Landroid/net/wifi/SupplicantState;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Station;->reportedFrequency:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Station;->reportedFrequency:Ljava/lang/Integer;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getAlignmentFrequency()Ljava/lang/Integer;
    .locals 5

    .line 701
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Station;->reportedFrequency:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Station;->state:Landroid/net/wifi/SupplicantState;

    sget-object v4, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v3, v4, :cond_0

    if-lez v2, :cond_0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public final getReportedFrequency()Ljava/lang/Integer;
    .locals 1

    .line 697
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Station;->reportedFrequency:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getState()Landroid/net/wifi/SupplicantState;
    .locals 1

    .line 697
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Station;->state:Landroid/net/wifi/SupplicantState;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Station;->state:Landroid/net/wifi/SupplicantState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/SupplicantState;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Station;->reportedFrequency:Ljava/lang/Integer;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Station;->state:Landroid/net/wifi/SupplicantState;

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Station;->reportedFrequency:Ljava/lang/Integer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Station(state="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", reportedFrequency="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
