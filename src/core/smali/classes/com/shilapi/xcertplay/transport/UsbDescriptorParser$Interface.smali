.class public final Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;
.super Ljava/lang/Object;
.source "UsbConfigCompat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/transport/UsbDescriptorParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Interface"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0016\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\t\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003JE\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001c\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001d\u001a\u00020\u001eH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000cR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000cR\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000c\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;",
        "",
        "number",
        "",
        "alternateSetting",
        "interfaceClass",
        "interfaceSubclass",
        "interfaceProtocol",
        "flatIndex",
        "<init>",
        "(IIIIII)V",
        "getNumber",
        "()I",
        "getAlternateSetting",
        "getInterfaceClass",
        "getInterfaceSubclass",
        "getInterfaceProtocol",
        "getFlatIndex",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
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
.field private final alternateSetting:I

.field private final flatIndex:I

.field private final interfaceClass:I

.field private final interfaceProtocol:I

.field private final interfaceSubclass:I

.field private final number:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;->number:I

    .line 51
    iput p2, p0, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;->alternateSetting:I

    .line 52
    iput p3, p0, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;->interfaceClass:I

    .line 53
    iput p4, p0, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;->interfaceSubclass:I

    .line 54
    iput p5, p0, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;->interfaceProtocol:I

    .line 56
    iput p6, p0, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;->flatIndex:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;IIIIIIILjava/lang/Object;)Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget p1, p0, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;->number:I

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget p2, p0, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;->alternateSetting:I

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    iget p3, p0, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;->interfaceClass:I

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    iget p4, p0, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;->interfaceSubclass:I

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    iget p5, p0, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;->interfaceProtocol:I

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    iget p6, p0, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;->flatIndex:I

    :cond_5
    move p7, p5

    move p8, p6

    move p5, p3

    move p6, p4

    move p3, p1

    move p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p8}, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;->copy(IIIIII)Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;->number:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;->alternateSetting:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;->interfaceClass:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;->interfaceSubclass:I

    return v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;->interfaceProtocol:I

    return v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;->flatIndex:I

    return v0
.end method

.method public final copy(IIIIII)Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;
    .locals 7

    new-instance v0, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;-><init>(IIIIII)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;

    iget v1, p0, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;->number:I

    iget v3, p1, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;->number:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;->alternateSetting:I

    iget v3, p1, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;->alternateSetting:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;->interfaceClass:I

    iget v3, p1, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;->interfaceClass:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;->interfaceSubclass:I

    iget v3, p1, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;->interfaceSubclass:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;->interfaceProtocol:I

    iget v3, p1, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;->interfaceProtocol:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;->flatIndex:I

    iget p1, p1, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;->flatIndex:I

    if-eq v1, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getAlternateSetting()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;->alternateSetting:I

    return v0
.end method

.method public final getFlatIndex()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;->flatIndex:I

    return v0
.end method

.method public final getInterfaceClass()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;->interfaceClass:I

    return v0
.end method

.method public final getInterfaceProtocol()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;->interfaceProtocol:I

    return v0
.end method

.method public final getInterfaceSubclass()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;->interfaceSubclass:I

    return v0
.end method

.method public final getNumber()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;->number:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;->number:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;->alternateSetting:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;->interfaceClass:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;->interfaceSubclass:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;->interfaceProtocol:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;->flatIndex:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget v0, p0, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;->number:I

    iget v1, p0, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;->alternateSetting:I

    iget v2, p0, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;->interfaceClass:I

    iget v3, p0, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;->interfaceSubclass:I

    iget v4, p0, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;->interfaceProtocol:I

    iget v5, p0, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;->flatIndex:I

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Interface(number="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", alternateSetting="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", interfaceClass="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", interfaceSubclass="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", interfaceProtocol="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", flatIndex="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
