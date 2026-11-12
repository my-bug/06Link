.class Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;
.super Ljava/security/SecureRandom;


# instance fields
.field private hashAlgo:Lorg/bouncycastle/crypto/Digest;

.field private key:[B

.field private seed:[B

.field private v:[B


# direct methods
.method public constructor <init>([BLorg/bouncycastle/crypto/Digest;)V
    .locals 0

    invoke-direct {p0}, Ljava/security/SecureRandom;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->seed:[B

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->hashAlgo:Lorg/bouncycastle/crypto/Digest;

    const/16 p1, 0x100

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->init(I)V

    return-void
.end method

.method private AES256_CTR_DRBG_Update([B[B[B)V
    .locals 8

    const/16 v0, 0x30

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_2

    const/16 v4, 0xf

    :goto_1
    if-ltz v4, :cond_1

    aget-byte v5, p3, v4

    and-int/lit16 v6, v5, 0xff

    const/16 v7, 0xff

    if-ne v6, v7, :cond_0

    aput-byte v2, p3, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    aput-byte v5, p3, v4

    :cond_1
    mul-int/lit8 v4, v3, 0x10

    invoke-direct {p0, p2, p3, v1, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->AES256_ECB([B[B[BI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_3

    aget-byte v4, v1, v3

    aget-byte v5, p1, v3

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    array-length p1, p2

    invoke-static {v1, v2, p2, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p1, 0x20

    array-length p2, p3

    invoke-static {v1, p1, p3, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private AES256_ECB([B[B[BI)V
    .locals 2

    :try_start_0
    new-instance v0, Lorg/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/AESEngine;-><init>()V

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v1, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/bouncycastle/crypto/engines/AESEngine;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    const/4 p1, 0x0

    :goto_0
    array-length v1, p2

    if-eq p1, v1, :cond_0

    add-int v1, p4, p1

    invoke-virtual {v0, p2, p1, p3, v1}, Lorg/bouncycastle/crypto/engines/AESEngine;->processBlock([BI[BI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 p1, p1, 0x10

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "drbg failure: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method private init(I)V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->seed:[B

    array-length v1, v0

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->randombytes_init([BI)V

    return-void

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->hashAlgo:Lorg/bouncycastle/crypto/Digest;

    array-length v3, v0

    sub-int/2addr v2, v3

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->hash(Lorg/bouncycastle/crypto/Digest;[BI)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->seed:[B

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->randombytes_init([BI)V

    return-void
.end method

.method private randombytes_init([BI)V
    .locals 2

    const/16 p2, 0x30

    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p1, 0x20

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->key:[B

    const/16 p2, 0x10

    new-array p2, p2, [B

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->v:[B

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->AES256_CTR_DRBG_Update([B[B[B)V

    return-void
.end method


# virtual methods
.method public nextBytes([B)V
    .locals 11

    const/16 v0, 0x10

    new-array v1, v0, [B

    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-lez v2, :cond_3

    const/16 v5, 0xf

    const/16 v6, 0xf

    :goto_1
    if-ltz v6, :cond_1

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->v:[B

    aget-byte v8, v7, v6

    and-int/lit16 v9, v8, 0xff

    const/16 v10, 0xff

    if-ne v9, v10, :cond_0

    aput-byte v3, v7, v6

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    int-to-byte v8, v8

    aput-byte v8, v7, v6

    :cond_1
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->key:[B

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->v:[B

    invoke-direct {p0, v6, v7, v1, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->AES256_ECB([B[B[BI)V

    if-le v2, v5, :cond_2

    invoke-static {v1, v3, p1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, 0x10

    add-int/lit8 v2, v2, -0x10

    goto :goto_0

    :cond_2
    invoke-static {v1, v3, p1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->key:[B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->v:[B

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->AES256_CTR_DRBG_Update([B[B[B)V

    return-void
.end method
