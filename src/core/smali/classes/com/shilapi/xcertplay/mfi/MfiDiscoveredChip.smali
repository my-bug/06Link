.class public final Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;
.super Ljava/lang/Object;
.source "MfiDeviceScanner.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J1\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\n\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;",
        "",
        "address7Bit",
        "",
        "writeAddress8Bit",
        "readAddress8Bit",
        "deviceVersion",
        "<init>",
        "(IIII)V",
        "getAddress7Bit",
        "()I",
        "getWriteAddress8Bit",
        "getReadAddress8Bit",
        "getDeviceVersion",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
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
.field private final address7Bit:I

.field private final deviceVersion:I

.field private final readAddress8Bit:I

.field private final writeAddress8Bit:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput p1, p0, Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;->address7Bit:I

    .line 133
    iput p2, p0, Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;->writeAddress8Bit:I

    .line 134
    iput p3, p0, Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;->readAddress8Bit:I

    .line 135
    iput p4, p0, Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;->deviceVersion:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;IIIIILjava/lang/Object;)Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;->address7Bit:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;->writeAddress8Bit:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;->readAddress8Bit:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;->deviceVersion:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;->copy(IIII)Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;->address7Bit:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;->writeAddress8Bit:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;->readAddress8Bit:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;->deviceVersion:I

    return v0
.end method

.method public final copy(IIII)Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;-><init>(IIII)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;

    iget v1, p0, Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;->address7Bit:I

    iget v3, p1, Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;->address7Bit:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;->writeAddress8Bit:I

    iget v3, p1, Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;->writeAddress8Bit:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;->readAddress8Bit:I

    iget v3, p1, Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;->readAddress8Bit:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;->deviceVersion:I

    iget p1, p1, Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;->deviceVersion:I

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getAddress7Bit()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;->address7Bit:I

    return v0
.end method

.method public final getDeviceVersion()I
    .locals 1

    .line 135
    iget v0, p0, Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;->deviceVersion:I

    return v0
.end method

.method public final getReadAddress8Bit()I
    .locals 1

    .line 134
    iget v0, p0, Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;->readAddress8Bit:I

    return v0
.end method

.method public final getWriteAddress8Bit()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;->writeAddress8Bit:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;->address7Bit:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;->writeAddress8Bit:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;->readAddress8Bit:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;->deviceVersion:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;->address7Bit:I

    iget v1, p0, Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;->writeAddress8Bit:I

    iget v2, p0, Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;->readAddress8Bit:I

    iget v3, p0, Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;->deviceVersion:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "MfiDiscoveredChip(address7Bit="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", writeAddress8Bit="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", readAddress8Bit="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", deviceVersion="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
