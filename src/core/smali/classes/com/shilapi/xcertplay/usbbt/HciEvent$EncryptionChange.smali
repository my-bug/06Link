.class public final Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;
.super Lcom/shilapi/xcertplay/usbbt/HciEvent;
.source "HciEvents.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/usbbt/HciEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EncryptionChange"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0006H\u00c6\u0003J\'\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00062\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;",
        "Lcom/shilapi/xcertplay/usbbt/HciEvent;",
        "status",
        "",
        "handle",
        "enabled",
        "",
        "<init>",
        "(IIZ)V",
        "getStatus",
        "()I",
        "getHandle",
        "getEnabled",
        "()Z",
        "component1",
        "component2",
        "component3",
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
.field private final enabled:Z

.field private final handle:I

.field private final status:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/usbbt/HciEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;->status:I

    iput p2, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;->handle:I

    iput-boolean p3, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;->enabled:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;IIZILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;->status:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;->handle:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;->enabled:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;->copy(IIZ)Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;->status:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;->handle:I

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;->enabled:Z

    return v0
.end method

.method public final copy(IIZ)Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;

    invoke-direct {v0, p1, p2, p3}, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;-><init>(IIZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;

    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;->status:I

    iget v3, p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;->status:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;->handle:I

    iget v3, p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;->handle:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;->enabled:Z

    iget-boolean p1, p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;->enabled:Z

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getEnabled()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;->enabled:Z

    return v0
.end method

.method public final getHandle()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;->handle:I

    return v0
.end method

.method public final getStatus()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;->status:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;->status:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;->handle:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;->enabled:Z

    invoke-static {v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;->status:I

    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;->handle:I

    iget-boolean v2, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;->enabled:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "EncryptionChange(status="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", handle="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", enabled="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
