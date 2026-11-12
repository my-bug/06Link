.class public final Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;
.super Lcom/shilapi/xcertplay/usbbt/HciEvent;
.source "HciEvents.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/usbbt/HciEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IoCapabilityResponse"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\t\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0005H\u00c6\u0003J1\u0010\u0016\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0017\u001a\u00020\u00072\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u001cH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000e\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;",
        "Lcom/shilapi/xcertplay/usbbt/HciEvent;",
        "addr",
        "Lcom/shilapi/xcertplay/usbbt/BdAddr;",
        "ioCapability",
        "",
        "oobPresent",
        "",
        "authRequirements",
        "<init>",
        "(Lcom/shilapi/xcertplay/usbbt/BdAddr;IZI)V",
        "getAddr",
        "()Lcom/shilapi/xcertplay/usbbt/BdAddr;",
        "getIoCapability",
        "()I",
        "getOobPresent",
        "()Z",
        "getAuthRequirements",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "other",
        "",
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
.field private final addr:Lcom/shilapi/xcertplay/usbbt/BdAddr;

.field private final authRequirements:I

.field private final ioCapability:I

.field private final oobPresent:Z


# direct methods
.method public constructor <init>(Lcom/shilapi/xcertplay/usbbt/BdAddr;IZI)V
    .locals 1

    const-string v0, "addr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/usbbt/HciEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;->addr:Lcom/shilapi/xcertplay/usbbt/BdAddr;

    iput p2, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;->ioCapability:I

    iput-boolean p3, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;->oobPresent:Z

    iput p4, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;->authRequirements:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;Lcom/shilapi/xcertplay/usbbt/BdAddr;IZIILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;->addr:Lcom/shilapi/xcertplay/usbbt/BdAddr;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;->ioCapability:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-boolean p3, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;->oobPresent:Z

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;->authRequirements:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;->copy(Lcom/shilapi/xcertplay/usbbt/BdAddr;IZI)Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/shilapi/xcertplay/usbbt/BdAddr;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;->addr:Lcom/shilapi/xcertplay/usbbt/BdAddr;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;->ioCapability:I

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;->oobPresent:Z

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;->authRequirements:I

    return v0
.end method

.method public final copy(Lcom/shilapi/xcertplay/usbbt/BdAddr;IZI)Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;
    .locals 1

    const-string v0, "addr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;-><init>(Lcom/shilapi/xcertplay/usbbt/BdAddr;IZI)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;

    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;->addr:Lcom/shilapi/xcertplay/usbbt/BdAddr;

    iget-object v3, p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;->addr:Lcom/shilapi/xcertplay/usbbt/BdAddr;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;->ioCapability:I

    iget v3, p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;->ioCapability:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;->oobPresent:Z

    iget-boolean v3, p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;->oobPresent:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;->authRequirements:I

    iget p1, p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;->authRequirements:I

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getAddr()Lcom/shilapi/xcertplay/usbbt/BdAddr;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;->addr:Lcom/shilapi/xcertplay/usbbt/BdAddr;

    return-object v0
.end method

.method public final getAuthRequirements()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;->authRequirements:I

    return v0
.end method

.method public final getIoCapability()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;->ioCapability:I

    return v0
.end method

.method public final getOobPresent()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;->oobPresent:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;->addr:Lcom/shilapi/xcertplay/usbbt/BdAddr;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/BdAddr;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;->ioCapability:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;->oobPresent:Z

    invoke-static {v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;->authRequirements:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;->addr:Lcom/shilapi/xcertplay/usbbt/BdAddr;

    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;->ioCapability:I

    iget-boolean v2, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;->oobPresent:Z

    iget v3, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;->authRequirements:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IoCapabilityResponse(addr="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", ioCapability="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", oobPresent="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", authRequirements="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
