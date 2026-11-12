.class public final Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair$Codes;
.super Ljava/lang/Object;
.source "AdbNmsRouteRepair.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Codes"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J1\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\n\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair$Codes;",
        "",
        "listInterfaces",
        "",
        "getInterfaceConfig",
        "listTetheredInterfaces",
        "addRoute",
        "<init>",
        "(IIII)V",
        "getListInterfaces",
        "()I",
        "getGetInterfaceConfig",
        "getListTetheredInterfaces",
        "getAddRoute",
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
.field private final addRoute:I

.field private final getInterfaceConfig:I

.field private final listInterfaces:I

.field private final listTetheredInterfaces:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair$Codes;->listInterfaces:I

    iput p2, p0, Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair$Codes;->getInterfaceConfig:I

    iput p3, p0, Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair$Codes;->listTetheredInterfaces:I

    iput p4, p0, Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair$Codes;->addRoute:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair$Codes;IIIIILjava/lang/Object;)Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair$Codes;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair$Codes;->listInterfaces:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair$Codes;->getInterfaceConfig:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair$Codes;->listTetheredInterfaces:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair$Codes;->addRoute:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair$Codes;->copy(IIII)Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair$Codes;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair$Codes;->listInterfaces:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair$Codes;->getInterfaceConfig:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair$Codes;->listTetheredInterfaces:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair$Codes;->addRoute:I

    return v0
.end method

.method public final copy(IIII)Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair$Codes;
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair$Codes;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair$Codes;-><init>(IIII)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair$Codes;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair$Codes;

    iget v1, p0, Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair$Codes;->listInterfaces:I

    iget v3, p1, Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair$Codes;->listInterfaces:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair$Codes;->getInterfaceConfig:I

    iget v3, p1, Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair$Codes;->getInterfaceConfig:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair$Codes;->listTetheredInterfaces:I

    iget v3, p1, Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair$Codes;->listTetheredInterfaces:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair$Codes;->addRoute:I

    iget p1, p1, Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair$Codes;->addRoute:I

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getAddRoute()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair$Codes;->addRoute:I

    return v0
.end method

.method public final getGetInterfaceConfig()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair$Codes;->getInterfaceConfig:I

    return v0
.end method

.method public final getListInterfaces()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair$Codes;->listInterfaces:I

    return v0
.end method

.method public final getListTetheredInterfaces()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair$Codes;->listTetheredInterfaces:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair$Codes;->listInterfaces:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair$Codes;->getInterfaceConfig:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair$Codes;->listTetheredInterfaces:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair$Codes;->addRoute:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair$Codes;->listInterfaces:I

    iget v1, p0, Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair$Codes;->getInterfaceConfig:I

    iget v2, p0, Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair$Codes;->listTetheredInterfaces:I

    iget v3, p0, Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair$Codes;->addRoute:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Codes(listInterfaces="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", getInterfaceConfig="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", listTetheredInterfaces="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", addRoute="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
