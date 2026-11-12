.class public final Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;
.super Lcom/shilapi/xcertplay/usbbt/HciEvent;
.source "HciEvents.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/usbbt/HciEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConnectionComplete"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0012\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\tH\u00c6\u0003J;\u0010\u0019\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u00c6\u0001J\u0013\u0010\u001a\u001a\u00020\t2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001e\u001a\u00020\u001fH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\rR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006 "
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;",
        "Lcom/shilapi/xcertplay/usbbt/HciEvent;",
        "status",
        "",
        "handle",
        "addr",
        "Lcom/shilapi/xcertplay/usbbt/BdAddr;",
        "linkType",
        "encrypted",
        "",
        "<init>",
        "(IILcom/shilapi/xcertplay/usbbt/BdAddr;IZ)V",
        "getStatus",
        "()I",
        "getHandle",
        "getAddr",
        "()Lcom/shilapi/xcertplay/usbbt/BdAddr;",
        "getLinkType",
        "getEncrypted",
        "()Z",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
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

.field private final encrypted:Z

.field private final handle:I

.field private final linkType:I

.field private final status:I


# direct methods
.method public constructor <init>(IILcom/shilapi/xcertplay/usbbt/BdAddr;IZ)V
    .locals 1

    const-string v0, "addr"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/usbbt/HciEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->status:I

    iput p2, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->handle:I

    iput-object p3, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->addr:Lcom/shilapi/xcertplay/usbbt/BdAddr;

    iput p4, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->linkType:I

    iput-boolean p5, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->encrypted:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;IILcom/shilapi/xcertplay/usbbt/BdAddr;IZILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->status:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget p2, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->handle:I

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget-object p3, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->addr:Lcom/shilapi/xcertplay/usbbt/BdAddr;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    iget p4, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->linkType:I

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget-boolean p5, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->encrypted:Z

    :cond_4
    move p6, p4

    move p7, p5

    move p4, p2

    move-object p5, p3

    move-object p2, p0

    move p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->copy(IILcom/shilapi/xcertplay/usbbt/BdAddr;IZ)Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->status:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->handle:I

    return v0
.end method

.method public final component3()Lcom/shilapi/xcertplay/usbbt/BdAddr;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->addr:Lcom/shilapi/xcertplay/usbbt/BdAddr;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->linkType:I

    return v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->encrypted:Z

    return v0
.end method

.method public final copy(IILcom/shilapi/xcertplay/usbbt/BdAddr;IZ)Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;
    .locals 7

    const-string v0, "addr"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;-><init>(IILcom/shilapi/xcertplay/usbbt/BdAddr;IZ)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;

    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->status:I

    iget v3, p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->status:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->handle:I

    iget v3, p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->handle:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->addr:Lcom/shilapi/xcertplay/usbbt/BdAddr;

    iget-object v3, p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->addr:Lcom/shilapi/xcertplay/usbbt/BdAddr;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->linkType:I

    iget v3, p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->linkType:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->encrypted:Z

    iget-boolean p1, p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->encrypted:Z

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getAddr()Lcom/shilapi/xcertplay/usbbt/BdAddr;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->addr:Lcom/shilapi/xcertplay/usbbt/BdAddr;

    return-object v0
.end method

.method public final getEncrypted()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->encrypted:Z

    return v0
.end method

.method public final getHandle()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->handle:I

    return v0
.end method

.method public final getLinkType()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->linkType:I

    return v0
.end method

.method public final getStatus()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->status:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->status:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->handle:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->addr:Lcom/shilapi/xcertplay/usbbt/BdAddr;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/BdAddr;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->linkType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->encrypted:Z

    invoke-static {v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->status:I

    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->handle:I

    iget-object v2, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->addr:Lcom/shilapi/xcertplay/usbbt/BdAddr;

    iget v3, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->linkType:I

    iget-boolean v4, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->encrypted:Z

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ConnectionComplete(status="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", handle="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", addr="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", linkType="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", encrypted="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
