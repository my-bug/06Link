.class public final Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;
.super Ljava/lang/Object;
.source "AirPlayIdentity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/airplay/AirPlayIdentity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0006H\u00c6\u0003J\'\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u0006H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u000e\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\r\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;",
        "",
        "privateKey",
        "",
        "publicKey",
        "pairingId",
        "",
        "<init>",
        "([B[BLjava/lang/String;)V",
        "getPrivateKey",
        "()[B",
        "getPublicKey",
        "getPairingId",
        "()Ljava/lang/String;",
        "publicKeyHex",
        "getPublicKeyHex",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/shilapi/xcertplay/airplay/AirPlayIdentity$Companion;


# instance fields
.field private final pairingId:Ljava/lang/String;

.field private final privateKey:[B

.field private final publicKey:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/airplay/AirPlayIdentity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/airplay/AirPlayIdentity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;->Companion:Lcom/shilapi/xcertplay/airplay/AirPlayIdentity$Companion;

    return-void
.end method

.method public constructor <init>([B[BLjava/lang/String;)V
    .locals 1

    const-string v0, "privateKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publicKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pairingId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;->privateKey:[B

    .line 8
    iput-object p2, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;->publicKey:[B

    .line 9
    iput-object p3, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;->pairingId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;[B[BLjava/lang/String;ILjava/lang/Object;)Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;->privateKey:[B

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;->publicKey:[B

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;->pairingId:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;->copy([B[BLjava/lang/String;)Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()[B
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;->privateKey:[B

    return-object v0
.end method

.method public final component2()[B
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;->publicKey:[B

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;->pairingId:Ljava/lang/String;

    return-object v0
.end method

.method public final copy([B[BLjava/lang/String;)Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;
    .locals 1

    const-string v0, "privateKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publicKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pairingId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;

    invoke-direct {v0, p1, p2, p3}, Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;-><init>([B[BLjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;

    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;->privateKey:[B

    iget-object v3, p1, Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;->privateKey:[B

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;->publicKey:[B

    iget-object v3, p1, Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;->publicKey:[B

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;->pairingId:Ljava/lang/String;

    iget-object p1, p1, Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;->pairingId:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getPairingId()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;->pairingId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrivateKey()[B
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;->privateKey:[B

    return-object v0
.end method

.method public final getPublicKey()[B
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;->publicKey:[B

    return-object v0
.end method

.method public final getPublicKeyHex()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;->publicKey:[B

    invoke-static {v0}, Lcom/shilapi/xcertplay/airplay/BytesKt;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;->privateKey:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;->publicKey:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;->pairingId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;->privateKey:[B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;->publicKey:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;->pairingId:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AirPlayIdentity(privateKey="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", publicKey="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", pairingId="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
