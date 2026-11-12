.class public final Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;
.super Lcom/shilapi/xcertplay/usbbt/HciEvent;
.source "HciEvents.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/usbbt/HciEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CommandStatus"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\'\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\t\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;",
        "Lcom/shilapi/xcertplay/usbbt/HciEvent;",
        "status",
        "",
        "numCommandPackets",
        "opcode",
        "<init>",
        "(III)V",
        "getStatus",
        "()I",
        "getNumCommandPackets",
        "getOpcode",
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
.field private final numCommandPackets:I

.field private final opcode:I

.field private final status:I


# direct methods
.method public constructor <init>(III)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/usbbt/HciEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;->status:I

    iput p2, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;->numCommandPackets:I

    iput p3, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;->opcode:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;IIIILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;->status:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;->numCommandPackets:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;->opcode:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;->copy(III)Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;->status:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;->numCommandPackets:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;->opcode:I

    return v0
.end method

.method public final copy(III)Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;

    invoke-direct {v0, p1, p2, p3}, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;-><init>(III)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;

    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;->status:I

    iget v3, p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;->status:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;->numCommandPackets:I

    iget v3, p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;->numCommandPackets:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;->opcode:I

    iget p1, p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;->opcode:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getNumCommandPackets()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;->numCommandPackets:I

    return v0
.end method

.method public final getOpcode()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;->opcode:I

    return v0
.end method

.method public final getStatus()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;->status:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;->status:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;->numCommandPackets:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;->opcode:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;->status:I

    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;->numCommandPackets:I

    iget v2, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;->opcode:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CommandStatus(status="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", numCommandPackets="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", opcode="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
