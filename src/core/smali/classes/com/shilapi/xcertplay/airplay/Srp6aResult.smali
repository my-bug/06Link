.class public final Lcom/shilapi/xcertplay/airplay/Srp6aResult;
.super Ljava/lang/Object;
.source "Srp6a.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u000f\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J+\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00032\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000c\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/Srp6aResult;",
        "",
        "ok",
        "",
        "sessionKey",
        "",
        "serverProof",
        "<init>",
        "(Z[B[B)V",
        "getOk",
        "()Z",
        "getSessionKey",
        "()[B",
        "getServerProof",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
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
.field private final ok:Z

.field private final serverProof:[B

.field private final sessionKey:[B


# direct methods
.method public constructor <init>(Z[B[B)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/airplay/Srp6aResult;->ok:Z

    .line 69
    iput-object p2, p0, Lcom/shilapi/xcertplay/airplay/Srp6aResult;->sessionKey:[B

    .line 70
    iput-object p3, p0, Lcom/shilapi/xcertplay/airplay/Srp6aResult;->serverProof:[B

    return-void
.end method

.method public synthetic constructor <init>(Z[B[BILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 67
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/airplay/Srp6aResult;-><init>(Z[B[B)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/airplay/Srp6aResult;Z[B[BILjava/lang/Object;)Lcom/shilapi/xcertplay/airplay/Srp6aResult;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-boolean p1, p0, Lcom/shilapi/xcertplay/airplay/Srp6aResult;->ok:Z

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/shilapi/xcertplay/airplay/Srp6aResult;->sessionKey:[B

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/shilapi/xcertplay/airplay/Srp6aResult;->serverProof:[B

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/airplay/Srp6aResult;->copy(Z[B[B)Lcom/shilapi/xcertplay/airplay/Srp6aResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/airplay/Srp6aResult;->ok:Z

    return v0
.end method

.method public final component2()[B
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/Srp6aResult;->sessionKey:[B

    return-object v0
.end method

.method public final component3()[B
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/Srp6aResult;->serverProof:[B

    return-object v0
.end method

.method public final copy(Z[B[B)Lcom/shilapi/xcertplay/airplay/Srp6aResult;
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/airplay/Srp6aResult;

    invoke-direct {v0, p1, p2, p3}, Lcom/shilapi/xcertplay/airplay/Srp6aResult;-><init>(Z[B[B)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/airplay/Srp6aResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/airplay/Srp6aResult;

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/airplay/Srp6aResult;->ok:Z

    iget-boolean v3, p1, Lcom/shilapi/xcertplay/airplay/Srp6aResult;->ok:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/Srp6aResult;->sessionKey:[B

    iget-object v3, p1, Lcom/shilapi/xcertplay/airplay/Srp6aResult;->sessionKey:[B

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/Srp6aResult;->serverProof:[B

    iget-object p1, p1, Lcom/shilapi/xcertplay/airplay/Srp6aResult;->serverProof:[B

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getOk()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/airplay/Srp6aResult;->ok:Z

    return v0
.end method

.method public final getServerProof()[B
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/Srp6aResult;->serverProof:[B

    return-object v0
.end method

.method public final getSessionKey()[B
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/Srp6aResult;->sessionKey:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/airplay/Srp6aResult;->ok:Z

    invoke-static {v0}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/Srp6aResult;->sessionKey:[B

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/Srp6aResult;->serverProof:[B

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/airplay/Srp6aResult;->ok:Z

    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/Srp6aResult;->sessionKey:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/shilapi/xcertplay/airplay/Srp6aResult;->serverProof:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Srp6aResult(ok="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", sessionKey="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", serverProof="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
