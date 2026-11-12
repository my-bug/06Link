.class Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;
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

.field private final symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;


# direct methods
.method constructor <init>(ILjava/security/SecureRandom;Z)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumMode:I

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

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumK:I

    const/4 p1, 0x7

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumL:I

    iput v6, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumEta:I

    const/16 p1, 0x3c

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumTau:I

    const/16 p1, 0x78

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumBeta:I

    iput v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumGamma1:I

    iput v9, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumGamma2:I

    const/16 p1, 0x4b

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumOmega:I

    iput v8, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyZPackedBytes:I

    iput v5, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyW1PackedBytes:I

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyEtaPackedBytes:I

    const/16 p1, 0x40

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "The mode "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "is not supported by Crystals Dilithium!"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    const/4 p1, 0x6

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumK:I

    iput v10, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumL:I

    iput v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumEta:I

    const/16 p1, 0x31

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumTau:I

    const/16 p1, 0xc4

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumBeta:I

    iput v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumGamma1:I

    iput v9, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumGamma2:I

    const/16 p1, 0x37

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumOmega:I

    iput v8, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyZPackedBytes:I

    iput v5, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyW1PackedBytes:I

    iput v5, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyEtaPackedBytes:I

    const/16 p1, 0x30

    :goto_0
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumCTilde:I

    goto :goto_1

    :cond_2
    iput v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumK:I

    iput v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumL:I

    iput v6, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumEta:I

    const/16 p1, 0x27

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumTau:I

    const/16 p1, 0x4e

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumBeta:I

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumGamma1:I

    const p1, 0x17400

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumGamma2:I

    const/16 p1, 0x50

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumOmega:I

    const/16 p1, 0x240

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyZPackedBytes:I

    const/16 p1, 0xc0

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyW1PackedBytes:I

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyEtaPackedBytes:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumCTilde:I

    :goto_1
    if-eqz p3, :cond_3

    new-instance p1, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric$AesSymmetric;

    invoke-direct {p1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric$AesSymmetric;-><init>()V

    goto :goto_2

    :cond_3
    new-instance p1, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric$ShakeSymmetric;

    invoke-direct {p1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric$ShakeSymmetric;-><init>()V

    :goto_2
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->random:Ljava/security/SecureRandom;

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumOmega:I

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumK:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyVecHPackedBytes:I

    mul-int/lit16 p3, p2, 0x140

    add-int/2addr p3, v0

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->CryptoPublicKeyBytes:I

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumL:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyEtaPackedBytes:I

    mul-int v1, p3, v0

    add-int/2addr v1, v5

    mul-int v0, v0, p2

    add-int/2addr v1, v0

    mul-int/lit16 p2, p2, 0x1a0

    add-int/2addr v1, p2

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->CryptoSecretKeyBytes:I

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumCTilde:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyZPackedBytes:I

    mul-int p3, p3, v0

    add-int/2addr p2, p3

    add-int/2addr p2, p1

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->CryptoBytes:I

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumGamma1:I

    if-ne p1, v2, :cond_4

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream256BlockBytes:I

    add-int/lit16 p1, p1, 0x23f

    :goto_3
    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    iget p2, p2, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream256BlockBytes:I

    div-int/2addr p1, p2

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->PolyUniformGamma1NBlocks:I

    return-void

    :cond_4
    if-ne p1, v3, :cond_5

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream256BlockBytes:I

    add-int/lit16 p1, p1, 0x27f

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Wrong Dilithium Gamma1!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method


# virtual methods
.method protected GetSymmetric()Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    return-object v0
.end method

.method public generateKeyPair()[[B
    .locals 2

    const/16 v0, 0x20

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->generateKeyPairInternal([B)[[B

    move-result-object v0

    return-object v0
.end method

.method public generateKeyPairInternal([B)[[B
    .locals 16

    move-object/from16 v6, p0

    const/16 v0, 0x80

    new-array v1, v0, [B

    const/16 v2, 0x40

    new-array v3, v2, [B

    const/16 v4, 0x20

    new-array v5, v4, [B

    new-array v7, v2, [B

    new-array v8, v4, [B

    new-instance v9, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;

    invoke-direct {v9, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    new-instance v10, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;

    invoke-direct {v10, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    new-instance v11, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;

    invoke-direct {v11, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    new-instance v12, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;

    invoke-direct {v12, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    new-instance v13, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;

    invoke-direct {v13, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    iget-object v14, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/4 v15, 0x0

    move-object/from16 v2, p1

    invoke-virtual {v14, v2, v15, v4}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    iget-object v2, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    iget v14, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumK:I

    int-to-byte v14, v14

    invoke-virtual {v2, v14}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update(B)V

    iget-object v2, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    iget v14, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumL:I

    int-to-byte v14, v14

    invoke-virtual {v2, v14}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update(B)V

    iget-object v2, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {v2, v1, v15, v0}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    invoke-static {v1, v15, v5, v15, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x40

    invoke-static {v1, v4, v7, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x60

    invoke-static {v1, v0, v8, v15, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v9, v5}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;->expandMatrix([B)V

    invoke-virtual {v10, v7, v15}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->uniformEta([BS)V

    iget v0, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumL:I

    int-to-short v0, v0

    invoke-virtual {v11, v7, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->uniformEta([BS)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;

    invoke-direct {v0, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    invoke-virtual {v10, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->copyPolyVecL(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->polyVecNtt()V

    invoke-virtual {v9, v12, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;->pointwiseMontgomery(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;)V

    invoke-virtual {v12}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->reduce()V

    invoke-virtual {v12}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->invNttToMont()V

    invoke-virtual {v12, v11}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->addPolyVecK(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;)V

    invoke-virtual {v12}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->conditionalAddQ()V

    invoke-virtual {v12, v13}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->power2Round(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;)V

    invoke-static {v12, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Packing;->packPublicKey(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)[B

    move-result-object v7

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {v0, v5, v15, v4}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    array-length v1, v7

    invoke-virtual {v0, v7, v15, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v1, 0x40

    invoke-virtual {v0, v3, v15, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    move-object v1, v3

    move-object v0, v5

    move-object v2, v8

    move-object v4, v10

    move-object v5, v11

    move-object v3, v13

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Packing;->packSecretKey([B[B[BLorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)[[B

    move-result-object v0

    aget-object v1, v0, v15

    const/4 v2, 0x1

    aget-object v3, v0, v2

    const/4 v4, 0x2

    aget-object v5, v0, v4

    const/4 v6, 0x3

    aget-object v8, v0, v6

    const/4 v9, 0x4

    aget-object v10, v0, v9

    const/4 v11, 0x5

    aget-object v0, v0, v11

    const/4 v12, 0x7

    new-array v12, v12, [[B

    aput-object v1, v12, v15

    aput-object v3, v12, v2

    aput-object v5, v12, v4

    aput-object v8, v12, v6

    aput-object v10, v12, v9

    aput-object v0, v12, v11

    const/4 v0, 0x6

    aput-object v7, v12, v0

    return-object v12
.end method

.method getCryptoBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->CryptoBytes:I

    return v0
.end method

.method getCryptoPublicKeyBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->CryptoPublicKeyBytes:I

    return v0
.end method

.method getCryptoSecretKeyBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->CryptoSecretKeyBytes:I

    return v0
.end method

.method getDilithiumBeta()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumBeta:I

    return v0
.end method

.method getDilithiumCTilde()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumCTilde:I

    return v0
.end method

.method getDilithiumEta()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumEta:I

    return v0
.end method

.method getDilithiumGamma1()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumGamma1:I

    return v0
.end method

.method getDilithiumGamma2()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumGamma2:I

    return v0
.end method

.method getDilithiumK()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumK:I

    return v0
.end method

.method getDilithiumL()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumL:I

    return v0
.end method

.method getDilithiumMode()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumMode:I

    return v0
.end method

.method getDilithiumOmega()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumOmega:I

    return v0
.end method

.method getDilithiumPolyEtaPackedBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyEtaPackedBytes:I

    return v0
.end method

.method getDilithiumPolyVecHPackedBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyVecHPackedBytes:I

    return v0
.end method

.method getDilithiumPolyW1PackedBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyW1PackedBytes:I

    return v0
.end method

.method getDilithiumPolyZPackedBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyZPackedBytes:I

    return v0
.end method

.method getDilithiumTau()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumTau:I

    return v0
.end method

.method getPolyUniformGamma1NBlocks()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->PolyUniformGamma1NBlocks:I

    return v0
.end method

.method getShake256Digest()Lorg/bouncycastle/crypto/digests/SHAKEDigest;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    return-object v0
.end method

.method public sign([BI[B[B[B[B[B[B)[B
    .locals 0

    invoke-virtual/range {p0 .. p8}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->signSignature([BI[B[B[B[B[B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public signOpen([B[BI[B[B)Z
    .locals 7

    array-length v4, p1

    move-object v0, p0

    move-object v3, p1

    move-object v1, p2

    move v2, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->signVerify([BI[BI[B[B)Z

    move-result p1

    return p1
.end method

.method public signSignature([BI[B[B[B[B[B[B)[B
    .locals 11

    const/16 v0, 0x20

    new-array v10, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->random:Ljava/security/SecureRandom;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v10}, Ljava/security/SecureRandom;->nextBytes([B)V

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v10}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->signSignatureInternal([BI[B[B[B[B[B[B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public signSignatureInternal([BI[B[B[B[B[B[B[B)[B
    .locals 19

    move-object/from16 v6, p0

    move/from16 v7, p2

    iget v0, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->CryptoBytes:I

    add-int/2addr v0, v7

    new-array v8, v0, [B

    const/16 v9, 0x40

    new-array v10, v9, [B

    new-array v11, v9, [B

    new-instance v1, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;

    invoke-direct {v1, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    new-instance v12, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;

    invoke-direct {v12, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    new-instance v13, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;

    invoke-direct {v13, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;

    invoke-direct {v0, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    new-instance v2, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;

    invoke-direct {v2, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    new-instance v14, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;

    invoke-direct {v14, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    new-instance v15, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;

    invoke-direct {v15, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    new-instance v3, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;

    invoke-direct {v3, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    new-instance v4, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    invoke-direct {v4, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    new-instance v5, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;

    invoke-direct {v5, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Packing;->unpackSecretKey(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;[B[B[BLorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    iget-object v3, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/4 v4, 0x0

    move-object/from16 v5, p5

    invoke-virtual {v3, v5, v4, v9}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    iget-object v3, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    move-object/from16 v5, p1

    invoke-virtual {v3, v5, v4, v7}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    iget-object v3, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {v3, v10, v4, v9}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    const/16 v3, 0x80

    move-object/from16 v5, p4

    invoke-static {v5, v3}, Lorg/bouncycastle/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    const/16 v7, 0x20

    move-object/from16 v3, p9

    invoke-static {v3, v4, v5, v7, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v10, v4, v5, v9, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v7, 0x80

    invoke-virtual {v3, v5, v4, v7}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    iget-object v3, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {v3, v11, v4, v9}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    move-object/from16 v3, p3

    move-object/from16 v5, v18

    invoke-virtual {v5, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;->expandMatrix([B)V

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->polyVecNtt()V

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->polyVecNtt()V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->polyVecNtt()V

    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_0
    const/16 v9, 0x3e8

    if-ge v3, v9, :cond_4

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v9, v7, 0x1

    int-to-short v9, v9

    invoke-virtual {v12, v11, v7}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->uniformGamma1([BS)V

    invoke-virtual {v12, v13}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->copyPolyVecL(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;)V

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->polyVecNtt()V

    invoke-virtual {v5, v14, v13}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;->pointwiseMontgomery(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;)V

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->reduce()V

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->invNttToMont()V

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->conditionalAddQ()V

    invoke-virtual {v14, v15}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->decompose(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;)V

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->packW1()[B

    move-result-object v7

    iget v4, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumK:I

    move/from16 p1, v3

    iget v3, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyW1PackedBytes:I

    mul-int v4, v4, v3

    const/4 v3, 0x0

    invoke-static {v7, v3, v8, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v7, 0x40

    invoke-virtual {v4, v10, v3, v7}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    iget-object v4, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    iget v7, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumK:I

    move-object/from16 p2, v5

    iget v5, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyW1PackedBytes:I

    mul-int v7, v7, v5

    invoke-virtual {v4, v8, v3, v7}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    iget-object v4, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    iget v5, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumCTilde:I

    invoke-virtual {v4, v8, v3, v5}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    iget v4, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumCTilde:I

    invoke-static {v8, v3, v4}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    move-object/from16 v5, v17

    invoke-virtual {v5, v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->challenge([B)V

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->polyNtt()V

    invoke-virtual {v13, v5, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->pointwisePolyMontgomery(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;)V

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->invNttToMont()V

    invoke-virtual {v13, v12}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->addPolyVecL(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;)V

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->reduce()V

    iget v4, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumGamma1:I

    iget v7, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumBeta:I

    sub-int/2addr v4, v7

    invoke-virtual {v13, v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->checkNorm(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v4, v16

    goto :goto_1

    :cond_0
    move-object/from16 v4, v16

    invoke-virtual {v4, v5, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->pointwisePolyMontgomery(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;)V

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->invNttToMont()V

    invoke-virtual {v15, v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->subtract(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;)V

    invoke-virtual {v15}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->reduce()V

    iget v7, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumGamma2:I

    iget v3, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumBeta:I

    sub-int/2addr v7, v3

    invoke-virtual {v15, v7}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->checkNorm(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v5, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->pointwisePolyMontgomery(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;)V

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->invNttToMont()V

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->reduce()V

    iget v3, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumGamma2:I

    invoke-virtual {v4, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->checkNorm(I)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v15, v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->addPolyVecK(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;)V

    invoke-virtual {v15}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->conditionalAddQ()V

    invoke-virtual {v4, v15, v14}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->makeHint(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;)I

    move-result v3

    iget v7, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumOmega:I

    if-le v3, v7, :cond_3

    :goto_1
    move/from16 v3, p1

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move v7, v9

    const/4 v4, 0x0

    move-object/from16 v5, p2

    goto/16 :goto_0

    :cond_3
    invoke-static {v8, v13, v4, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Packing;->packSignature([BLorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)[B

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public signVerify([BI[BI[B[B)Z
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->signVerifyInternal([BI[BI[B[B)Z

    move-result p1

    return p1
.end method

.method public signVerifyInternal([BI[BI[B[B)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    const/16 v4, 0x40

    new-array v5, v4, [B

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumCTilde:I

    new-array v6, v6, [B

    new-instance v7, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    invoke-direct {v7, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    new-instance v8, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;

    invoke-direct {v8, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    new-instance v9, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;

    invoke-direct {v9, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    new-instance v10, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;

    invoke-direct {v10, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    new-instance v11, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;

    invoke-direct {v11, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    new-instance v12, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;

    invoke-direct {v12, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->CryptoBytes:I

    const/4 v14, 0x0

    move/from16 v15, p2

    if-eq v15, v13, :cond_0

    return v14

    :cond_0
    invoke-static {v10, v3, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Packing;->unpackPublicKey(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;[BLorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;

    move-result-object v10

    invoke-static {v9, v12, v1, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Packing;->unpackSignature(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;[BLorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)Z

    move-result v13

    if-nez v13, :cond_1

    return v14

    :cond_1
    iget v13, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumCTilde:I

    invoke-static {v1, v14, v13}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma1()I

    move-result v13

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumBeta()I

    move-result v15

    sub-int/2addr v13, v15

    invoke-virtual {v9, v13}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->checkNorm(I)Z

    move-result v13

    if-eqz v13, :cond_2

    return v14

    :cond_2
    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    array-length v15, v2

    invoke-virtual {v13, v2, v14, v15}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    array-length v15, v3

    invoke-virtual {v13, v3, v14, v15}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {v3, v5, v14, v4}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {v3, v5, v14, v4}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    move-object/from16 v13, p3

    move/from16 v15, p4

    invoke-virtual {v3, v13, v14, v15}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {v3, v5, v14}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BI)I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumCTilde:I

    invoke-static {v1, v14, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-virtual {v7, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->challenge([B)V

    invoke-virtual {v8, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;->expandMatrix([B)V

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->polyVecNtt()V

    invoke-virtual {v8, v11, v9}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;->pointwiseMontgomery(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;)V

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->polyNtt()V

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->shiftLeft()V

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->polyVecNtt()V

    invoke-virtual {v10, v7, v10}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->pointwisePolyMontgomery(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;)V

    invoke-virtual {v11, v10}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->subtract(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;)V

    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->reduce()V

    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->invNttToMont()V

    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->conditionalAddQ()V

    invoke-virtual {v11, v11, v12}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->useHint(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;)V

    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->packW1()[B

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v7, 0x100

    invoke-direct {v3, v7}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    invoke-virtual {v3, v5, v14, v4}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumK:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyW1PackedBytes:I

    mul-int v4, v4, v5

    invoke-virtual {v3, v2, v14, v4}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumCTilde:I

    invoke-virtual {v3, v6, v14, v2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    invoke-static {v1, v6}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v1

    return v1
.end method
