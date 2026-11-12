.class public final Lcom/shilapi/xcertplay/usbbt/HciAcl$Packet;
.super Ljava/lang/Object;
.source "HciAcl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/usbbt/HciAcl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Packet"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u0011\u001a\u00020\u0003H\u0016J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0006H\u00c6\u0003J\'\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u00c6\u0001J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/HciAcl$Packet;",
        "",
        "handle",
        "",
        "boundary",
        "data",
        "",
        "<init>",
        "(II[B)V",
        "getHandle",
        "()I",
        "getBoundary",
        "getData",
        "()[B",
        "equals",
        "",
        "other",
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
.field private final boundary:I

.field private final data:[B

.field private final handle:I


# direct methods
.method public constructor <init>(II[B)V
    .locals 1

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/shilapi/xcertplay/usbbt/HciAcl$Packet;->handle:I

    iput p2, p0, Lcom/shilapi/xcertplay/usbbt/HciAcl$Packet;->boundary:I

    iput-object p3, p0, Lcom/shilapi/xcertplay/usbbt/HciAcl$Packet;->data:[B

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/usbbt/HciAcl$Packet;II[BILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/HciAcl$Packet;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/shilapi/xcertplay/usbbt/HciAcl$Packet;->handle:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/shilapi/xcertplay/usbbt/HciAcl$Packet;->boundary:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/shilapi/xcertplay/usbbt/HciAcl$Packet;->data:[B

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/usbbt/HciAcl$Packet;->copy(II[B)Lcom/shilapi/xcertplay/usbbt/HciAcl$Packet;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciAcl$Packet;->handle:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciAcl$Packet;->boundary:I

    return v0
.end method

.method public final component3()[B
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/HciAcl$Packet;->data:[B

    return-object v0
.end method

.method public final copy(II[B)Lcom/shilapi/xcertplay/usbbt/HciAcl$Packet;
    .locals 1

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/shilapi/xcertplay/usbbt/HciAcl$Packet;

    invoke-direct {v0, p1, p2, p3}, Lcom/shilapi/xcertplay/usbbt/HciAcl$Packet;-><init>(II[B)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 15
    instance-of v0, p1, Lcom/shilapi/xcertplay/usbbt/HciAcl$Packet;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/shilapi/xcertplay/usbbt/HciAcl$Packet;

    iget v0, p1, Lcom/shilapi/xcertplay/usbbt/HciAcl$Packet;->handle:I

    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/HciAcl$Packet;->handle:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/shilapi/xcertplay/usbbt/HciAcl$Packet;->boundary:I

    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/HciAcl$Packet;->boundary:I

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lcom/shilapi/xcertplay/usbbt/HciAcl$Packet;->data:[B

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/HciAcl$Packet;->data:[B

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getBoundary()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciAcl$Packet;->boundary:I

    return v0
.end method

.method public final getData()[B
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/HciAcl$Packet;->data:[B

    return-object v0
.end method

.method public final getHandle()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciAcl$Packet;->handle:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 16
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciAcl$Packet;->handle:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/HciAcl$Packet;->data:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciAcl$Packet;->handle:I

    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/HciAcl$Packet;->boundary:I

    iget-object v2, p0, Lcom/shilapi/xcertplay/usbbt/HciAcl$Packet;->data:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Packet(handle="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", boundary="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", data="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
