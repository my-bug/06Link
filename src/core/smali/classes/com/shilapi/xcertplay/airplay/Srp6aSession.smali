.class public final Lcom/shilapi/xcertplay/airplay/Srp6aSession;
.super Ljava/lang/Object;
.source "Srp6a.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B1\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0016\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0003R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\r\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000c\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/Srp6aSession;",
        "",
        "salt",
        "",
        "publicKeyB",
        "Ljava/math/BigInteger;",
        "identifier",
        "verifier",
        "privateExponent",
        "<init>",
        "([BLjava/math/BigInteger;[BLjava/math/BigInteger;Ljava/math/BigInteger;)V",
        "getSalt",
        "()[B",
        "publicKey",
        "getPublicKey",
        "verify",
        "Lcom/shilapi/xcertplay/airplay/Srp6aResult;",
        "publicKeyA",
        "clientProof",
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
.field private final identifier:[B

.field private final privateExponent:Ljava/math/BigInteger;

.field private final publicKeyB:Ljava/math/BigInteger;

.field private final salt:[B

.field private final verifier:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>([BLjava/math/BigInteger;[BLjava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    const-string v0, "salt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publicKeyB"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "identifier"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "verifier"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privateExponent"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/Srp6aSession;->salt:[B

    .line 75
    iput-object p2, p0, Lcom/shilapi/xcertplay/airplay/Srp6aSession;->publicKeyB:Ljava/math/BigInteger;

    .line 76
    iput-object p3, p0, Lcom/shilapi/xcertplay/airplay/Srp6aSession;->identifier:[B

    .line 77
    iput-object p4, p0, Lcom/shilapi/xcertplay/airplay/Srp6aSession;->verifier:Ljava/math/BigInteger;

    .line 78
    iput-object p5, p0, Lcom/shilapi/xcertplay/airplay/Srp6aSession;->privateExponent:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public final getPublicKey()[B
    .locals 2

    .line 80
    sget-object v0, Lcom/shilapi/xcertplay/airplay/Srp6a;->INSTANCE:Lcom/shilapi/xcertplay/airplay/Srp6a;

    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/Srp6aSession;->publicKeyB:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/airplay/Srp6a;->pad$shared_release(Ljava/math/BigInteger;)[B

    move-result-object v0

    return-object v0
.end method

.method public final getSalt()[B
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/Srp6aSession;->salt:[B

    return-object v0
.end method

.method public final verify([B[B)Lcom/shilapi/xcertplay/airplay/Srp6aResult;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "publicKeyA"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "clientProof"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    sget-object v3, Lcom/shilapi/xcertplay/airplay/Srp6a;->INSTANCE:Lcom/shilapi/xcertplay/airplay/Srp6a;

    invoke-virtual {v3, v1}, Lcom/shilapi/xcertplay/airplay/Srp6a;->toBigInt$shared_release([B)Ljava/math/BigInteger;

    move-result-object v1

    .line 84
    sget-object v3, Lcom/shilapi/xcertplay/airplay/Srp6a;->INSTANCE:Lcom/shilapi/xcertplay/airplay/Srp6a;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/airplay/Srp6a;->modulus$shared_release()Ljava/math/BigInteger;

    move-result-object v3

    .line 85
    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->signum()I

    move-result v4

    if-nez v4, :cond_0

    new-instance v5, Lcom/shilapi/xcertplay/airplay/Srp6aResult;

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/shilapi/xcertplay/airplay/Srp6aResult;-><init>(Z[B[BILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5

    .line 87
    :cond_0
    sget-object v4, Lcom/shilapi/xcertplay/airplay/Srp6a;->INSTANCE:Lcom/shilapi/xcertplay/airplay/Srp6a;

    sget-object v5, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;

    sget-object v6, Lcom/shilapi/xcertplay/airplay/Srp6a;->INSTANCE:Lcom/shilapi/xcertplay/airplay/Srp6a;

    invoke-virtual {v6, v1}, Lcom/shilapi/xcertplay/airplay/Srp6a;->pad$shared_release(Ljava/math/BigInteger;)[B

    move-result-object v6

    sget-object v7, Lcom/shilapi/xcertplay/airplay/Srp6a;->INSTANCE:Lcom/shilapi/xcertplay/airplay/Srp6a;

    iget-object v8, v0, Lcom/shilapi/xcertplay/airplay/Srp6aSession;->publicKeyB:Ljava/math/BigInteger;

    invoke-virtual {v7, v8}, Lcom/shilapi/xcertplay/airplay/Srp6a;->pad$shared_release(Ljava/math/BigInteger;)[B

    move-result-object v7

    const/4 v8, 0x2

    new-array v9, v8, [[B

    const/4 v10, 0x0

    aput-object v6, v9, v10

    const/4 v6, 0x1

    aput-object v7, v9, v6

    invoke-virtual {v5, v9}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->sha512([[B)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/shilapi/xcertplay/airplay/Srp6a;->toBigInt$shared_release([B)Ljava/math/BigInteger;

    move-result-object v4

    .line 88
    iget-object v5, v0, Lcom/shilapi/xcertplay/airplay/Srp6aSession;->verifier:Ljava/math/BigInteger;

    invoke-virtual {v5, v4, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    const-string v5, "modPow(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    const-string v5, "multiply(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, v0, Lcom/shilapi/xcertplay/airplay/Srp6aSession;->privateExponent:Ljava/math/BigInteger;

    invoke-virtual {v4, v5, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 89
    sget-object v5, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;

    sget-object v7, Lcom/shilapi/xcertplay/airplay/Srp6a;->INSTANCE:Lcom/shilapi/xcertplay/airplay/Srp6a;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7, v4}, Lcom/shilapi/xcertplay/airplay/Srp6a;->toBytes$shared_release(Ljava/math/BigInteger;)[B

    move-result-object v4

    new-array v7, v6, [[B

    aput-object v4, v7, v10

    invoke-virtual {v5, v7}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->sha512([[B)[B

    move-result-object v4

    .line 91
    sget-object v5, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;

    sget-object v7, Lcom/shilapi/xcertplay/airplay/Srp6a;->INSTANCE:Lcom/shilapi/xcertplay/airplay/Srp6a;

    invoke-virtual {v7, v3}, Lcom/shilapi/xcertplay/airplay/Srp6a;->toBytes$shared_release(Ljava/math/BigInteger;)[B

    move-result-object v3

    new-array v7, v6, [[B

    aput-object v3, v7, v10

    invoke-virtual {v5, v7}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->sha512([[B)[B

    move-result-object v3

    .line 92
    sget-object v5, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;

    sget-object v7, Lcom/shilapi/xcertplay/airplay/Srp6a;->INSTANCE:Lcom/shilapi/xcertplay/airplay/Srp6a;

    sget-object v9, Lcom/shilapi/xcertplay/airplay/Srp6a;->INSTANCE:Lcom/shilapi/xcertplay/airplay/Srp6a;

    invoke-virtual {v9}, Lcom/shilapi/xcertplay/airplay/Srp6a;->generator$shared_release()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/shilapi/xcertplay/airplay/Srp6a;->toBytes$shared_release(Ljava/math/BigInteger;)[B

    move-result-object v7

    new-array v9, v6, [[B

    aput-object v7, v9, v10

    invoke-virtual {v5, v9}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->sha512([[B)[B

    move-result-object v5

    .line 93
    array-length v7, v3

    new-array v7, v7, [B

    .line 94
    array-length v9, v3

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v9, :cond_1

    .line 95
    aget-byte v12, v3, v11

    aget-byte v13, v5, v11

    xor-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v7, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 97
    :cond_1
    sget-object v3, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;

    .line 99
    sget-object v5, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;

    iget-object v9, v0, Lcom/shilapi/xcertplay/airplay/Srp6aSession;->identifier:[B

    new-array v11, v6, [[B

    aput-object v9, v11, v10

    invoke-virtual {v5, v11}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->sha512([[B)[B

    move-result-object v5

    .line 100
    iget-object v9, v0, Lcom/shilapi/xcertplay/airplay/Srp6aSession;->salt:[B

    .line 101
    sget-object v11, Lcom/shilapi/xcertplay/airplay/Srp6a;->INSTANCE:Lcom/shilapi/xcertplay/airplay/Srp6a;

    invoke-virtual {v11, v1}, Lcom/shilapi/xcertplay/airplay/Srp6a;->pad$shared_release(Ljava/math/BigInteger;)[B

    move-result-object v11

    .line 102
    sget-object v12, Lcom/shilapi/xcertplay/airplay/Srp6a;->INSTANCE:Lcom/shilapi/xcertplay/airplay/Srp6a;

    iget-object v13, v0, Lcom/shilapi/xcertplay/airplay/Srp6aSession;->publicKeyB:Ljava/math/BigInteger;

    invoke-virtual {v12, v13}, Lcom/shilapi/xcertplay/airplay/Srp6a;->pad$shared_release(Ljava/math/BigInteger;)[B

    move-result-object v12

    const/4 v13, 0x6

    .line 103
    new-array v13, v13, [[B

    aput-object v7, v13, v10

    aput-object v5, v13, v6

    aput-object v9, v13, v8

    const/4 v5, 0x3

    aput-object v11, v13, v5

    const/4 v7, 0x4

    aput-object v12, v13, v7

    const/4 v7, 0x5

    aput-object v4, v13, v7

    .line 97
    invoke-virtual {v3, v13}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->sha512([[B)[B

    move-result-object v3

    .line 105
    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v11, Lcom/shilapi/xcertplay/airplay/Srp6aResult;

    const/4 v15, 0x6

    const/16 v16, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v11 .. v16}, Lcom/shilapi/xcertplay/airplay/Srp6aResult;-><init>(Z[B[BILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v11

    .line 107
    :cond_2
    sget-object v3, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;

    sget-object v7, Lcom/shilapi/xcertplay/airplay/Srp6a;->INSTANCE:Lcom/shilapi/xcertplay/airplay/Srp6a;

    invoke-virtual {v7, v1}, Lcom/shilapi/xcertplay/airplay/Srp6a;->pad$shared_release(Ljava/math/BigInteger;)[B

    move-result-object v1

    new-array v5, v5, [[B

    aput-object v1, v5, v10

    aput-object v2, v5, v6

    aput-object v4, v5, v8

    invoke-virtual {v3, v5}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->sha512([[B)[B

    move-result-object v1

    .line 108
    new-instance v2, Lcom/shilapi/xcertplay/airplay/Srp6aResult;

    invoke-direct {v2, v6, v4, v1}, Lcom/shilapi/xcertplay/airplay/Srp6aResult;-><init>(Z[B[B)V

    return-object v2
.end method
