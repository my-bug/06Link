.class public Lorg/bouncycastle/crypto/engines/VMPCEngine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/StreamCipher;


# instance fields
.field protected P:[B

.field protected n:B

.field protected s:B

.field protected workingIV:[B

.field protected workingKey:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->n:B

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iput-byte v0, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "VMPC"

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 5

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->workingIV:[B

    if-eqz v0, :cond_1

    array-length v2, v0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_1

    array-length v0, v0

    const/16 v2, 0x300

    if-gt v0, v2, :cond_1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->workingKey:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->workingIV:[B

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/VMPCEngine;->initKey([B[B)V

    new-instance v0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/VMPCEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->workingKey:[B

    array-length v3, v2

    const/16 v4, 0x20

    if-lt v3, v4, :cond_0

    const/16 v2, 0x100

    goto :goto_0

    :cond_0
    array-length v2, v2

    mul-int/lit8 v2, v2, 0x8

    :goto_0
    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object p1

    invoke-direct {v0, v1, v2, p2, p1}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "VMPC requires 1 to 768 bytes of IV"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "VMPC init parameters must include a key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "VMPC init parameters must include an IV"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected initKey([B[B)V
    .locals 7

    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    const/16 v1, 0x100

    new-array v2, v1, [B

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    int-to-byte v4, v2

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0x300

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v3, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    and-int/lit16 v4, v1, 0xff

    aget-byte v5, v2, v4

    add-int/2addr v3, v5

    array-length v6, p1

    rem-int v6, v1, v6

    aget-byte v6, p1, v6

    add-int/2addr v3, v6

    and-int/lit16 v3, v3, 0xff

    aget-byte v3, v2, v3

    iput-byte v3, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    and-int/lit16 v6, v3, 0xff

    aget-byte v6, v2, v6

    aput-byte v6, v2, v4

    and-int/lit16 v3, v3, 0xff

    aput-byte v5, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_2
    if-ge p1, v2, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v3, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    and-int/lit16 v4, p1, 0xff

    aget-byte v5, v1, v4

    add-int/2addr v3, v5

    array-length v6, p2

    rem-int v6, p1, v6

    aget-byte v6, p2, v6

    add-int/2addr v3, v6

    and-int/lit16 v3, v3, 0xff

    aget-byte v3, v1, v3

    iput-byte v3, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    and-int/lit16 v6, v3, 0xff

    aget-byte v6, v1, v6

    aput-byte v6, v1, v4

    and-int/lit16 v3, v3, 0xff

    aput-byte v5, v1, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    iput-byte v0, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->n:B

    return-void
.end method

.method public processBytes([BII[BI)I
    .locals 8

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_2

    add-int v0, p5, p3

    array-length v1, p4

    if-gt v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v2, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    iget-byte v3, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->n:B

    and-int/lit16 v4, v3, 0xff

    aget-byte v4, v1, v4

    add-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v1, v2

    iput-byte v2, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    and-int/lit16 v4, v2, 0xff

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, v1, v4

    add-int/lit8 v4, v4, 0x1

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, v1, v4

    and-int/lit16 v5, v3, 0xff

    aget-byte v5, v1, v5

    and-int/lit16 v6, v3, 0xff

    and-int/lit16 v7, v2, 0xff

    aget-byte v7, v1, v7

    aput-byte v7, v1, v6

    and-int/lit16 v2, v2, 0xff

    aput-byte v5, v1, v2

    add-int/lit8 v3, v3, 0x1

    and-int/lit16 v1, v3, 0xff

    int-to-byte v1, v1

    iput-byte v1, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->n:B

    add-int v1, v0, p5

    add-int v2, v0, p2

    aget-byte v2, p1, v2

    xor-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p3

    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->workingKey:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->workingIV:[B

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/VMPCEngine;->initKey([B[B)V

    return-void
.end method

.method public returnByte(B)B
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v1, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    iget-byte v2, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->n:B

    and-int/lit16 v3, v2, 0xff

    aget-byte v3, v0, v3

    add-int/2addr v1, v3

    and-int/lit16 v1, v1, 0xff

    aget-byte v1, v0, v1

    iput-byte v1, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    and-int/lit16 v3, v1, 0xff

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    aget-byte v3, v0, v3

    add-int/lit8 v3, v3, 0x1

    and-int/lit16 v3, v3, 0xff

    aget-byte v3, v0, v3

    and-int/lit16 v4, v2, 0xff

    aget-byte v4, v0, v4

    and-int/lit16 v5, v2, 0xff

    and-int/lit16 v6, v1, 0xff

    aget-byte v6, v0, v6

    aput-byte v6, v0, v5

    and-int/lit16 v1, v1, 0xff

    aput-byte v4, v0, v1

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v0, v2, 0xff

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->n:B

    xor-int/2addr p1, v3

    int-to-byte p1, p1

    return p1
.end method
