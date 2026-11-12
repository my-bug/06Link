.class Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;
.super Ljava/lang/Object;


# static fields
.field public static final CrhBytes:I = 0x40

.field public static final DilithiumD:I = 0xd

.field public static final DilithiumN:I = 0x100

.field public static final DilithiumPolyT0PackedBytes:I = 0x1a0

.field public static final DilithiumPolyT1PackedBytes:I = 0x140

.field public static final DilithiumQ:I = 0x7fe001

.field public static final DilithiumQinv:I = 0x3802001

.field public static final DilithiumRootOfUnity:I = 0x6d9

.field public static final RndBytes:I = 0x20

.field public static final SeedBytes:I = 0x20

.field public static final TrBytes:I = 0x40


# instance fields
.field private final CryptoBytes:I

.field private final CryptoPublicKeyBytes:I

.field private final CryptoSecretKeyBytes:I

.field private final DilithiumBeta:I

.field private final DilithiumCTilde:I

.field private final DilithiumEta:I

.field private final DilithiumGamma1:I

.field private final DilithiumGamma2:I

.field private final DilithiumK:I

.field private final DilithiumL:I

.field private final DilithiumMode:I

.field private final DilithiumOmega:I

.field private final DilithiumPolyEtaPackedBytes:I

.field private final DilithiumPolyVecHPackedBytes:I

.field private final DilithiumPolyW1PackedBytes:I

.field private final DilithiumPolyZPackedBytes:I

.field private final DilithiumTau:I

.field private final PolyUniformGamma1NBlocks:I

.field private final random:Ljava/security/SecureRandom;

.field private final shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

.field private final symmetric:Lorg/bouncycastle/pqc/crypto/mldsa/Symmetric;


# direct methods
.method constructor <init>(ILjava/security/SecureRandom;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumMode:I

    const/16 v0, 0x20

    const/16 v1, 0x60

    const/high16 v2, 0x20000

    const/high16 v3, 0x80000

    const/4 v4, 0x4

    const/16 v5, 0x80

    const/4 v6, 0x2

    if-eq p1, v6, :cond_2

    const/4 v7, 0x3

    const/16 v8, 0x280

    const v9, 0x3ff00

    const/4 v10, 0x5

    if-eq p1, v7, :cond_1

    if-ne p1, v10, :cond_0

    const/16 p1, 0x8

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumK:I

    const/4 p1, 0x7

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumL:I

    iput v6, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumEta:I

    const/16 p1, 0x3c

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumTau:I

    const/16 p1, 0x78

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumBeta:I

    iput v3, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumGamma1:I

    iput v9, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumGamma2:I

    const/16 p1, 0x4b

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumOmega:I

    iput v8, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumPolyZPackedBytes:I

    iput v5, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumPolyW1PackedBytes:I

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumPolyEtaPackedBytes:I

    const/16 p1, 0x40

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The mode "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "is not supported by Crystals Dilithium!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    const/4 p1, 0x6

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumK:I

    iput v10, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumL:I

    iput v4, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumEta:I

    const/16 p1, 0x31

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumTau:I

    const/16 p1, 0xc4

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumBeta:I

    iput v3, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumGamma1:I

    iput v9, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumGamma2:I

    const/16 p1, 0x37

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumOmega:I

    iput v8, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumPolyZPackedBytes:I

    iput v5, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumPolyW1PackedBytes:I

    iput v5, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumPolyEtaPackedBytes:I

    const/16 p1, 0x30

    :goto_0
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumCTilde:I

    goto :goto_1

    :cond_2
    iput v4, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumK:I

    iput v4, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumL:I

    iput v6, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumEta:I

    const/16 p1, 0x27

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumTau:I

    const/16 p1, 0x4e

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumBeta:I

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumGamma1:I

    const p1, 0x17400

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumGamma2:I

    const/16 p1, 0x50

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumOmega:I

    const/16 p1, 0x240

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumPolyZPackedBytes:I

    const/16 p1, 0xc0

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumPolyW1PackedBytes:I

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumPolyEtaPackedBytes:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumCTilde:I

    :goto_1
    new-instance p1, Lorg/bouncycastle/pqc/crypto/mldsa/Symmetric$ShakeSymmetric;

    invoke-direct {p1}, Lorg/bouncycastle/pqc/crypto/mldsa/Symmetric$ShakeSymmetric;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->symmetric:Lorg/bouncycastle/pqc/crypto/mldsa/Symmetric;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->random:Ljava/security/SecureRandom;

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumOmega:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumK:I

    add-int/2addr p2, v1

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumPolyVecHPackedBytes:I

    mul-int/lit16 v4, v1, 0x140

    add-int/2addr v4, v0

    iput v4, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->CryptoPublicKeyBytes:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumL:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumPolyEtaPackedBytes:I

    mul-int v6, v0, v4

    add-int/2addr v6, v5

    mul-int v4, v4, v1

    add-int/2addr v6, v4

    mul-int/lit16 v1, v1, 0x1a0

    add-int/2addr v6, v1

    iput v6, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->CryptoSecretKeyBytes:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumCTilde:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumPolyZPackedBytes:I

    mul-int v0, v0, v4

    add-int/2addr v1, v0

    add-int/2addr v1, p2

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->CryptoBytes:I

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumGamma1:I

    if-ne p2, v2, :cond_3

    iget p2, p1, Lorg/bouncycastle/pqc/crypto/mldsa/Symmetric;->stream256BlockBytes:I

    add-int/lit16 p2, p2, 0x23f

    :goto_2
    iget p1, p1, Lorg/bouncycastle/pqc/crypto/mldsa/Symmetric;->stream256BlockBytes:I

    div-int/2addr p2, p1

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->PolyUniformGamma1NBlocks:I

    return-void

    :cond_3
    if-ne p2, v3, :cond_4

    iget p2, p1, Lorg/bouncycastle/pqc/crypto/mldsa/Symmetric;->stream256BlockBytes:I

    add-int/lit16 p2, p2, 0x27f

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Wrong Dilithium Gamma1!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method protected GetSymmetric()Lorg/bouncycastle/pqc/crypto/mldsa/Symmetric;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->symmetric:Lorg/bouncycastle/pqc/crypto/mldsa/Symmetric;

    return-object v0
.end method

.method public generateKeyPair()[[B
    .locals 2

    const/16 v0, 0x20

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->generateKeyPairInternal([B)[[B

    move-result-object v0

    return-object v0
.end method

.method generateKeyPairInternal([B)[[B
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const/16 v0, 0x80

    new-array v1, v0, [B

    const/16 v2, 0x40

    new-array v3, v2, [B

    const/16 v4, 0x20

    new-array v5, v4, [B

    new-array v8, v2, [B

    new-array v9, v4, [B

    new-instance v10, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;

    invoke-direct {v10, v6}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    new-instance v11, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;

    invoke-direct {v11, v6}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    new-instance v12, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;

    invoke-direct {v12, v6}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    new-instance v13, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;

    invoke-direct {v13, v6}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    new-instance v14, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;

    invoke-direct {v14, v6}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    iget-object v15, v6, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/4 v2, 0x0

    invoke-virtual {v15, v7, v2, v4}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    iget-object v15, v6, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    iget v4, v6, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumK:I

    int-to-byte v4, v4

    invoke-virtual {v15, v4}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update(B)V

    iget-object v4, v6, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    iget v15, v6, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumL:I

    int-to-byte v15, v15

    invoke-virtual {v4, v15}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update(B)V

    iget-object v4, v6, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {v4, v1, v2, v0}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    const/16 v0, 0x20

    invoke-static {v1, v2, v5, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v4, 0x40

    invoke-static {v1, v0, v8, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v4, 0x60

    invoke-static {v1, v4, v9, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v10, v5}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;->expandMatrix([B)V

    invoke-virtual {v11, v8, v2}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;->uniformEta([BS)V

    iget v0, v6, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumL:I

    int-to-short v0, v0

    invoke-virtual {v12, v8, v0}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->uniformEta([BS)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;

    invoke-direct {v0, v6}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    invoke-virtual {v11, v0}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;->copyPolyVecL(Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;->polyVecNtt()V

    invoke-virtual {v10, v13, v0}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;->pointwiseMontgomery(Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;)V

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->reduce()V

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->invNttToMont()V

    invoke-virtual {v13, v12}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->addPolyVecK(Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;)V

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->conditionalAddQ()V

    invoke-virtual {v13, v14}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->power2Round(Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;)V

    invoke-static {v13, v6}, Lorg/bouncycastle/pqc/crypto/mldsa/Packing;->packPublicKey(Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)[B

    move-result-object v8

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v1, 0x20

    invoke-virtual {v0, v5, v2, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    array-length v1, v8

    invoke-virtual {v0, v8, v2, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v4, 0x40

    invoke-virtual {v0, v3, v2, v4}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    move-object v1, v3

    move-object v0, v5

    move-object v2, v9

    move-object v4, v11

    move-object v5, v12

    move-object v3, v14

    const/4 v9, 0x0

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/mldsa/Packing;->packSecretKey([B[B[BLorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)[[B

    move-result-object v0

    aget-object v1, v0, v9

    const/4 v2, 0x1

    aget-object v3, v0, v2

    const/4 v4, 0x2

    aget-object v5, v0, v4

    const/4 v6, 0x3

    aget-object v10, v0, v6

    const/4 v11, 0x4

    aget-object v12, v0, v11

    const/4 v13, 0x5

    aget-object v0, v0, v13

    const/16 v14, 0x8

    new-array v14, v14, [[B

    aput-object v1, v14, v9

    aput-object v3, v14, v2

    aput-object v5, v14, v4

    aput-object v10, v14, v6

    aput-object v12, v14, v11

    aput-object v0, v14, v13

    const/4 v0, 0x6

    aput-object v8, v14, v0

    const/4 v0, 0x7

    aput-object v7, v14, v0

    return-object v14
.end method

.method generateSignature(Lorg/bouncycastle/crypto/digests/SHAKEDigest;[B[B[B[B[B[B)[B
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const/16 v8, 0x40

    new-array v9, v8, [B

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10, v8}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    iget v0, v6, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->CryptoBytes:I

    new-array v11, v0, [B

    new-array v12, v8, [B

    new-instance v1, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;

    invoke-direct {v1, v6}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    new-instance v13, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;

    invoke-direct {v13, v6}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    new-instance v14, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;

    invoke-direct {v14, v6}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;

    invoke-direct {v0, v6}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    new-instance v2, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;

    invoke-direct {v2, v6}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    new-instance v15, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;

    invoke-direct {v15, v6}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    new-instance v3, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;

    invoke-direct {v3, v6}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    new-instance v4, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;

    invoke-direct {v4, v6}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    new-instance v5, Lorg/bouncycastle/pqc/crypto/mldsa/Poly;

    invoke-direct {v5, v6}, Lorg/bouncycastle/pqc/crypto/mldsa/Poly;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    new-instance v8, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;

    invoke-direct {v8, v6}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/mldsa/Packing;->unpackSecretKey(Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;[B[B[BLorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    const/16 v3, 0x80

    move-object/from16 v4, p3

    invoke-static {v4, v3}, Lorg/bouncycastle/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    const/16 v5, 0x20

    move-object/from16 v3, p7

    invoke-static {v3, v10, v4, v5, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v3, 0x40

    invoke-static {v9, v10, v4, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v5, 0x80

    invoke-virtual {v7, v4, v10, v5}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    invoke-virtual {v7, v12, v10, v3}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    move-object/from16 v3, p2

    invoke-virtual {v8, v3}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;->expandMatrix([B)V

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;->polyVecNtt()V

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->polyVecNtt()V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->polyVecNtt()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x3e8

    if-ge v3, v5, :cond_4

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v4, 0x1

    int-to-short v5, v5

    invoke-virtual {v13, v12, v4}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;->uniformGamma1([BS)V

    invoke-virtual {v13, v14}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;->copyPolyVecL(Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;)V

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;->polyVecNtt()V

    invoke-virtual {v8, v15, v14}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;->pointwiseMontgomery(Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;)V

    invoke-virtual {v15}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->reduce()V

    invoke-virtual {v15}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->invNttToMont()V

    invoke-virtual {v15}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->conditionalAddQ()V

    move-object/from16 v4, v16

    invoke-virtual {v15, v4}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->decompose(Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;)V

    invoke-virtual {v15}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->packW1()[B

    move-result-object v10

    move/from16 p2, v3

    iget v3, v6, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumK:I

    move/from16 p3, v3

    iget v3, v6, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumPolyW1PackedBytes:I

    mul-int v3, v3, p3

    move/from16 p3, v5

    const/4 v5, 0x0

    invoke-static {v10, v5, v11, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v3, 0x40

    invoke-virtual {v7, v9, v5, v3}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    iget v10, v6, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumK:I

    iget v3, v6, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumPolyW1PackedBytes:I

    mul-int v10, v10, v3

    invoke-virtual {v7, v11, v5, v10}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    iget v3, v6, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumCTilde:I

    invoke-virtual {v7, v11, v5, v3}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    iget v3, v6, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumCTilde:I

    invoke-static {v11, v5, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    move-object/from16 v10, v18

    invoke-virtual {v10, v3}, Lorg/bouncycastle/pqc/crypto/mldsa/Poly;->challenge([B)V

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/mldsa/Poly;->polyNtt()V

    invoke-virtual {v14, v10, v1}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;->pointwisePolyMontgomery(Lorg/bouncycastle/pqc/crypto/mldsa/Poly;Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;)V

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;->invNttToMont()V

    invoke-virtual {v14, v13}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;->addPolyVecL(Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;)V

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;->reduce()V

    iget v3, v6, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumGamma1:I

    iget v5, v6, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumBeta:I

    sub-int/2addr v3, v5

    invoke-virtual {v14, v3}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;->checkNorm(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 p4, v1

    move-object/from16 v3, v17

    goto :goto_1

    :cond_0
    move-object/from16 v3, v17

    invoke-virtual {v3, v10, v2}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->pointwisePolyMontgomery(Lorg/bouncycastle/pqc/crypto/mldsa/Poly;Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;)V

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->invNttToMont()V

    invoke-virtual {v4, v3}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->subtract(Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;)V

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->reduce()V

    iget v5, v6, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumGamma2:I

    move-object/from16 p4, v1

    iget v1, v6, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumBeta:I

    sub-int/2addr v5, v1

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->checkNorm(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v10, v0}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->pointwisePolyMontgomery(Lorg/bouncycastle/pqc/crypto/mldsa/Poly;Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;)V

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->invNttToMont()V

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->reduce()V

    iget v1, v6, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumGamma2:I

    invoke-virtual {v3, v1}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->checkNorm(I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v4, v3}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->addPolyVecK(Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;)V

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->conditionalAddQ()V

    invoke-virtual {v3, v4, v15}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->makeHint(Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;)I

    move-result v1

    iget v5, v6, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumOmega:I

    if-le v1, v5, :cond_3

    :goto_1
    move-object/from16 v1, p4

    move-object/from16 v17, v3

    move-object/from16 v16, v4

    move-object/from16 v18, v10

    const/4 v10, 0x0

    move/from16 v3, p2

    move/from16 v4, p3

    goto/16 :goto_0

    :cond_3
    invoke-static {v11, v14, v3, v6}, Lorg/bouncycastle/pqc/crypto/mldsa/Packing;->packSignature([BLorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)[B

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method getCryptoBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->CryptoBytes:I

    return v0
.end method

.method getCryptoPublicKeyBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->CryptoPublicKeyBytes:I

    return v0
.end method

.method getCryptoSecretKeyBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->CryptoSecretKeyBytes:I

    return v0
.end method

.method getDilithiumBeta()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumBeta:I

    return v0
.end method

.method getDilithiumCTilde()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumCTilde:I

    return v0
.end method

.method getDilithiumEta()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumEta:I

    return v0
.end method

.method getDilithiumGamma1()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumGamma1:I

    return v0
.end method

.method getDilithiumGamma2()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumGamma2:I

    return v0
.end method

.method getDilithiumK()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumK:I

    return v0
.end method

.method getDilithiumL()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumL:I

    return v0
.end method

.method getDilithiumMode()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumMode:I

    return v0
.end method

.method getDilithiumOmega()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumOmega:I

    return v0
.end method

.method getDilithiumPolyEtaPackedBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumPolyEtaPackedBytes:I

    return v0
.end method

.method getDilithiumPolyVecHPackedBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumPolyVecHPackedBytes:I

    return v0
.end method

.method getDilithiumPolyW1PackedBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumPolyW1PackedBytes:I

    return v0
.end method

.method getDilithiumPolyZPackedBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumPolyZPackedBytes:I

    return v0
.end method

.method getDilithiumTau()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumTau:I

    return v0
.end method

.method getPolyUniformGamma1NBlocks()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->PolyUniformGamma1NBlocks:I

    return v0
.end method

.method getShake256Digest()Lorg/bouncycastle/crypto/digests/SHAKEDigest;
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(Lorg/bouncycastle/crypto/digests/SHAKEDigest;)V

    return-object v0
.end method

.method initSign([BZ[B)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    if-eqz p3, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {p1, p2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update(B)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    array-length p2, p3

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update(B)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    array-length p2, p3

    invoke-virtual {p1, p3, v2, p2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    :cond_0
    return-void
.end method

.method initVerify([B[BZ[B)V
    .locals 5

    const/16 v0, 0x40

    new-array v1, v0, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    array-length v3, p1

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4, v3}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    array-length v2, p2

    invoke-virtual {p1, p2, v4, v2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {p1, v1, v4, v0}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {p1, v1, v4, v0}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    if-eqz p4, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {p1, p3}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update(B)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    array-length p2, p4

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update(B)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    array-length p2, p4

    invoke-virtual {p1, p4, v4, p2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    :cond_0
    return-void
.end method

.method public signInternal([BI[B[B[B[B[B[B)[B
    .locals 2

    move v0, p2

    new-instance p2, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-direct {p2, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(Lorg/bouncycastle/crypto/digests/SHAKEDigest;)V

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1, v0}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    move-object p1, p0

    invoke-virtual/range {p1 .. p8}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->generateSignature(Lorg/bouncycastle/crypto/digests/SHAKEDigest;[B[B[B[B[B[B)[B

    move-result-object p2

    return-object p2
.end method

.method public verifyInternal([BILorg/bouncycastle/crypto/digests/SHAKEDigest;[B[B)Z
    .locals 10

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->CryptoBytes:I

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    return v1

    :cond_0
    const/16 p2, 0x40

    new-array v0, p2, [B

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumCTilde:I

    new-array v2, v2, [B

    new-instance v3, Lorg/bouncycastle/pqc/crypto/mldsa/Poly;

    invoke-direct {v3, p0}, Lorg/bouncycastle/pqc/crypto/mldsa/Poly;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    new-instance v4, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;

    invoke-direct {v4, p0}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    new-instance v5, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;

    invoke-direct {v5, p0}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    new-instance v6, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;

    invoke-direct {v6, p0}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    new-instance v7, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;

    invoke-direct {v7, p0}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    new-instance v8, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;

    invoke-direct {v8, p0}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    invoke-static {v6, p5, p0}, Lorg/bouncycastle/pqc/crypto/mldsa/Packing;->unpackPublicKey(Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;[BLorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;

    move-result-object p5

    invoke-static {v5, v8, p1, p0}, Lorg/bouncycastle/pqc/crypto/mldsa/Packing;->unpackSignature(Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;[BLorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)Z

    move-result v6

    if-nez v6, :cond_1

    return v1

    :cond_1
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumCTilde:I

    invoke-static {p1, v1, v6}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->getDilithiumGamma1()I

    move-result v6

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->getDilithiumBeta()I

    move-result v9

    sub-int/2addr v6, v9

    invoke-virtual {v5, v6}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;->checkNorm(I)Z

    move-result v6

    if-eqz v6, :cond_2

    return v1

    :cond_2
    invoke-virtual {p3, v0, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BI)I

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumCTilde:I

    invoke-static {p1, v1, p3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p3

    invoke-virtual {v3, p3}, Lorg/bouncycastle/pqc/crypto/mldsa/Poly;->challenge([B)V

    invoke-virtual {v4, p4}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;->expandMatrix([B)V

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;->polyVecNtt()V

    invoke-virtual {v4, v7, v5}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;->pointwiseMontgomery(Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;)V

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/mldsa/Poly;->polyNtt()V

    invoke-virtual {p5}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->shiftLeft()V

    invoke-virtual {p5}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->polyVecNtt()V

    invoke-virtual {p5, v3, p5}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->pointwisePolyMontgomery(Lorg/bouncycastle/pqc/crypto/mldsa/Poly;Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;)V

    invoke-virtual {v7, p5}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->subtract(Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;)V

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->reduce()V

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->invNttToMont()V

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->conditionalAddQ()V

    invoke-virtual {v7, v7, v8}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->useHint(Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;)V

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->packW1()[B

    move-result-object p3

    new-instance p4, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 p5, 0x100

    invoke-direct {p4, p5}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    invoke-virtual {p4, v0, v1, p2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumK:I

    iget p5, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumPolyW1PackedBytes:I

    mul-int p2, p2, p5

    invoke-virtual {p4, p3, v1, p2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumCTilde:I

    invoke-virtual {p4, v2, v1, p2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    invoke-static {p1, v2}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p1

    return p1
.end method

.method public verifyInternal([BI[BI[B[B)Z
    .locals 13

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->CryptoBytes:I

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x40

    new-array v2, v0, [B

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumCTilde:I

    new-array v3, v3, [B

    new-instance v4, Lorg/bouncycastle/pqc/crypto/mldsa/Poly;

    invoke-direct {v4, p0}, Lorg/bouncycastle/pqc/crypto/mldsa/Poly;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    new-instance v5, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;

    invoke-direct {v5, p0}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    new-instance v6, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;

    invoke-direct {v6, p0}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    new-instance v7, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;

    invoke-direct {v7, p0}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    new-instance v8, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;

    invoke-direct {v8, p0}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    new-instance v9, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;

    invoke-direct {v9, p0}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    move-object/from16 v10, p6

    invoke-static {v7, v10, p0}, Lorg/bouncycastle/pqc/crypto/mldsa/Packing;->unpackPublicKey(Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;[BLorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;

    move-result-object v7

    invoke-static {v6, v9, p1, p0}, Lorg/bouncycastle/pqc/crypto/mldsa/Packing;->unpackSignature(Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;[BLorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)Z

    move-result v10

    if-nez v10, :cond_1

    return v1

    :cond_1
    iget v10, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumCTilde:I

    invoke-static {p1, v1, v10}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->getDilithiumGamma1()I

    move-result v10

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->getDilithiumBeta()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v6, v10}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;->checkNorm(I)Z

    move-result v10

    if-eqz v10, :cond_2

    return v1

    :cond_2
    iget-object v10, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    move-object/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual {v10, v11, v1, v12}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    iget-object v10, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {v10, v2, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BI)I

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumCTilde:I

    invoke-static {p1, v1, v10}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    invoke-virtual {v4, v10}, Lorg/bouncycastle/pqc/crypto/mldsa/Poly;->challenge([B)V

    move-object/from16 v10, p5

    invoke-virtual {v5, v10}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;->expandMatrix([B)V

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;->polyVecNtt()V

    invoke-virtual {v5, v8, v6}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;->pointwiseMontgomery(Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;)V

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/mldsa/Poly;->polyNtt()V

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->shiftLeft()V

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->polyVecNtt()V

    invoke-virtual {v7, v4, v7}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->pointwisePolyMontgomery(Lorg/bouncycastle/pqc/crypto/mldsa/Poly;Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;)V

    invoke-virtual {v8, v7}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->subtract(Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;)V

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->reduce()V

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->invNttToMont()V

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->conditionalAddQ()V

    invoke-virtual {v8, v8, v9}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->useHint(Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;)V

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->packW1()[B

    move-result-object v4

    new-instance v5, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v6, 0x100

    invoke-direct {v5, v6}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    invoke-virtual {v5, v2, v1, v0}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumK:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumPolyW1PackedBytes:I

    mul-int v0, v0, v2

    invoke-virtual {v5, v4, v1, v0}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumCTilde:I

    invoke-virtual {v5, v3, v1, v0}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    invoke-static {p1, v3}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p1

    return p1
.end method
