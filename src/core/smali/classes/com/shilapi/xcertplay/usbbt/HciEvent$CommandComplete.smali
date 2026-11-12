.class public final Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;
.super Lcom/shilapi/xcertplay/usbbt/HciEvent;
.source "HciEvents.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/usbbt/HciEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CommandComplete"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0096\u0002J\u0008\u0010\u0014\u001a\u00020\u0003H\u0016J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0006H\u00c6\u0003J\'\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u00c6\u0001J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u000e\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\n\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;",
        "Lcom/shilapi/xcertplay/usbbt/HciEvent;",
        "numCommandPackets",
        "",
        "opcode",
        "returnParameters",
        "",
        "<init>",
        "(II[B)V",
        "getNumCommandPackets",
        "()I",
        "getOpcode",
        "getReturnParameters",
        "()[B",
        "status",
        "getStatus",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "component1",
        "component2",
        "component3",
        "copy",
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

.field private final returnParameters:[B


# direct methods
.method public constructor <init>(II[B)V
    .locals 1

    const-string v0, "returnParameters"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/usbbt/HciEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;->numCommandPackets:I

    iput p2, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;->opcode:I

    iput-object p3, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;->returnParameters:[B

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;II[BILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;->numCommandPackets:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;->opcode:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;->returnParameters:[B

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;->copy(II[B)Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;->numCommandPackets:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;->opcode:I

    return v0
.end method

.method public final component3()[B
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;->returnParameters:[B

    return-object v0
.end method

.method public final copy(II[B)Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;
    .locals 1

    const-string v0, "returnParameters"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;

    invoke-direct {v0, p1, p2, p3}, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;-><init>(II[B)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 12
    instance-of v0, p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;

    iget v0, p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;->numCommandPackets:I

    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;->numCommandPackets:I

    if-ne v0, v1, :cond_0

    .line 13
    iget v0, p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;->opcode:I

    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;->opcode:I

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;->returnParameters:[B

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;->returnParameters:[B

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getNumCommandPackets()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;->numCommandPackets:I

    return v0
.end method

.method public final getOpcode()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;->opcode:I

    return v0
.end method

.method public final getReturnParameters()[B
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;->returnParameters:[B

    return-object v0
.end method

.method public final getStatus()I
    .locals 3

    .line 11
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;->returnParameters:[B

    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_1
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 14
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;->opcode:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;->returnParameters:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;->numCommandPackets:I

    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;->opcode:I

    iget-object v2, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;->returnParameters:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CommandComplete(numCommandPackets="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", opcode="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", returnParameters="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
