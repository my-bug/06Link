.class public final Lcom/shilapi/xcertplay/usbbt/HciEvent$SimplePairingComplete;
.super Lcom/shilapi/xcertplay/usbbt/HciEvent;
.source "HciEvents.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/usbbt/HciEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SimplePairingComplete"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/HciEvent$SimplePairingComplete;",
        "Lcom/shilapi/xcertplay/usbbt/HciEvent;",
        "status",
        "",
        "addr",
        "Lcom/shilapi/xcertplay/usbbt/BdAddr;",
        "<init>",
        "(ILcom/shilapi/xcertplay/usbbt/BdAddr;)V",
        "getStatus",
        "()I",
        "getAddr",
        "()Lcom/shilapi/xcertplay/usbbt/BdAddr;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
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

.field private final status:I


# direct methods
.method public constructor <init>(ILcom/shilapi/xcertplay/usbbt/BdAddr;)V
    .locals 1

    const-string v0, "addr"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/usbbt/HciEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$SimplePairingComplete;->status:I

    iput-object p2, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$SimplePairingComplete;->addr:Lcom/shilapi/xcertplay/usbbt/BdAddr;

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/usbbt/HciEvent$SimplePairingComplete;ILcom/shilapi/xcertplay/usbbt/BdAddr;ILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/HciEvent$SimplePairingComplete;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$SimplePairingComplete;->status:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$SimplePairingComplete;->addr:Lcom/shilapi/xcertplay/usbbt/BdAddr;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/usbbt/HciEvent$SimplePairingComplete;->copy(ILcom/shilapi/xcertplay/usbbt/BdAddr;)Lcom/shilapi/xcertplay/usbbt/HciEvent$SimplePairingComplete;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$SimplePairingComplete;->status:I

    return v0
.end method

.method public final component2()Lcom/shilapi/xcertplay/usbbt/BdAddr;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$SimplePairingComplete;->addr:Lcom/shilapi/xcertplay/usbbt/BdAddr;

    return-object v0
.end method

.method public final copy(ILcom/shilapi/xcertplay/usbbt/BdAddr;)Lcom/shilapi/xcertplay/usbbt/HciEvent$SimplePairingComplete;
    .locals 1

    const-string v0, "addr"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/shilapi/xcertplay/usbbt/HciEvent$SimplePairingComplete;

    invoke-direct {v0, p1, p2}, Lcom/shilapi/xcertplay/usbbt/HciEvent$SimplePairingComplete;-><init>(ILcom/shilapi/xcertplay/usbbt/BdAddr;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$SimplePairingComplete;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$SimplePairingComplete;

    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$SimplePairingComplete;->status:I

    iget v3, p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$SimplePairingComplete;->status:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$SimplePairingComplete;->addr:Lcom/shilapi/xcertplay/usbbt/BdAddr;

    iget-object p1, p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$SimplePairingComplete;->addr:Lcom/shilapi/xcertplay/usbbt/BdAddr;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getAddr()Lcom/shilapi/xcertplay/usbbt/BdAddr;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$SimplePairingComplete;->addr:Lcom/shilapi/xcertplay/usbbt/BdAddr;

    return-object v0
.end method

.method public final getStatus()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$SimplePairingComplete;->status:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$SimplePairingComplete;->status:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$SimplePairingComplete;->addr:Lcom/shilapi/xcertplay/usbbt/BdAddr;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/BdAddr;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$SimplePairingComplete;->status:I

    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$SimplePairingComplete;->addr:Lcom/shilapi/xcertplay/usbbt/BdAddr;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SimplePairingComplete(status="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", addr="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
