.class public Lorg/bouncycastle/crypto/hpke/HPKE;
.super Ljava/lang/Object;


# static fields
.field public static final aead_AES_GCM128:S = 0x1s

.field public static final aead_AES_GCM256:S = 0x2s

.field public static final aead_CHACHA20_POLY1305:S = 0x3s

.field public static final aead_EXPORT_ONLY:S = -0x1s

.field public static final kdf_HKDF_SHA256:S = 0x1s

.field public static final kdf_HKDF_SHA384:S = 0x2s

.field public static final kdf_HKDF_SHA512:S = 0x3s

.field public static final kem_P256_SHA256:S = 0x10s

.field public static final kem_P384_SHA348:S = 0x11s

.field public static final kem_P521_SHA512:S = 0x12s

.field public static final kem_X25519_SHA256:S = 0x20s

.field public static final kem_X448_SHA512:S = 0x21s

.field public static final mode_auth:B = 0x2t

.field public static final mode_auth_psk:B = 0x3t

.field public static final mode_base:B = 0x0t

.field public static final mode_psk:B = 0x1t


# instance fields
.field Nk:S

.field private final aeadId:S

.field private final default_psk:[B

.field private final default_psk_id:[B

.field private final hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

.field private final kdfId:S

.field private final kem:Lorg/bouncycastle/crypto/hpke/KEM;

.field private final kemId:S

.field private final mode:B


# direct methods
.method public constructor <init>(BSSS)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->default_psk:[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->default_psk_id:[B

    iput-byte p1, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->mode:B

    iput-short p2, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->kemId:S

    iput-short p3, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->kdfId:S

    iput-short p4, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->aeadId:S

    new-instance p1, Lorg/bouncycastle/crypto/hpke/HKDF;

    invoke-direct {p1, p3}, Lorg/bouncycastle/crypto/hpke/HKDF;-><init>(S)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    new-instance p1, Lorg/bouncycastle/crypto/hpke/DHKEM;

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/hpke/DHKEM;-><init>(S)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->kem:Lorg/bouncycastle/crypto/hpke/KEM;

    const/4 p1, 0x1

    if-ne p4, p1, :cond_0

    const/16 p1, 0x10

    :goto_0
    iput-short p1, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->Nk:S

    return-void

    :cond_0
    const/16 p1, 0x20

    goto :goto_0
.end method

.method private VerifyPSKInputs(B[B[B)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->default_psk:[B

    invoke-static {p2, v0}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p2

    xor-int/lit8 v0, p2, 0x1

    iget-object v1, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->default_psk_id:[B

    invoke-static {p3, v1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p3

    const/4 v1, 0x1

    xor-int/2addr p3, v1

    if-ne v0, p3, :cond_4

    if-nez p2, :cond_1

    rem-int/lit8 p3, p1, 0x2

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "PSK input provided when not needed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    rem-int/lit8 p1, p1, 0x2

    if-eq p1, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing required PSK input"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Inconsistent PSK inputs"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private keySchedule(B[B[B[B[B)Lorg/bouncycastle/crypto/hpke/HPKEContext;
    .locals 10

    invoke-direct {p0, p1, p4, p5}, Lorg/bouncycastle/crypto/hpke/HPKE;->VerifyPSKInputs(B[B[B)V

    const-string v0, "HPKE"

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iget-short v1, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->kemId:S

    invoke-static {v1}, Lorg/bouncycastle/util/Pack;->shortToBigEndian(S)[B

    move-result-object v1

    iget-short v2, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->kdfId:S

    invoke-static {v2}, Lorg/bouncycastle/util/Pack;->shortToBigEndian(S)[B

    move-result-object v2

    iget-short v3, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->aeadId:S

    invoke-static {v3}, Lorg/bouncycastle/util/Pack;->shortToBigEndian(S)[B

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B[B)[B

    move-result-object v6

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    const-string v1, "psk_id_hash"

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v6, v1, p5}, Lorg/bouncycastle/crypto/hpke/HKDF;->LabeledExtract([B[BLjava/lang/String;[B)[B

    move-result-object p5

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    const-string v1, "info_hash"

    invoke-virtual {v0, v2, v6, v1, p3}, Lorg/bouncycastle/crypto/hpke/HKDF;->LabeledExtract([B[BLjava/lang/String;[B)[B

    move-result-object p3

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    invoke-static {v0, p5, p3}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v8

    iget-object p1, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    const-string p3, "secret"

    invoke-virtual {p1, p2, v6, p3, p4}, Lorg/bouncycastle/crypto/hpke/HKDF;->LabeledExtract([B[BLjava/lang/String;[B)[B

    move-result-object v5

    iget-object v4, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    const-string v7, "key"

    iget-short v9, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->Nk:S

    invoke-virtual/range {v4 .. v9}, Lorg/bouncycastle/crypto/hpke/HKDF;->LabeledExpand([B[BLjava/lang/String;[BI)[B

    move-result-object p1

    iget-object v4, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    const-string v7, "base_nonce"

    const/16 v9, 0xc

    invoke-virtual/range {v4 .. v9}, Lorg/bouncycastle/crypto/hpke/HKDF;->LabeledExpand([B[BLjava/lang/String;[BI)[B

    move-result-object p2

    iget-object v4, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    const-string v7, "exp"

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/hpke/HKDF;->getHashSize()I

    move-result v9

    invoke-virtual/range {v4 .. v9}, Lorg/bouncycastle/crypto/hpke/HKDF;->LabeledExpand([B[BLjava/lang/String;[BI)[B

    move-result-object p3

    new-instance p4, Lorg/bouncycastle/crypto/hpke/HPKEContext;

    new-instance p5, Lorg/bouncycastle/crypto/hpke/AEAD;

    iget-short v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->aeadId:S

    invoke-direct {p5, v0, p1, p2}, Lorg/bouncycastle/crypto/hpke/AEAD;-><init>(S[B[B)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    invoke-direct {p4, p5, p1, p3, v6}, Lorg/bouncycastle/crypto/hpke/HPKEContext;-><init>(Lorg/bouncycastle/crypto/hpke/AEAD;Lorg/bouncycastle/crypto/hpke/HKDF;[B[B)V

    return-object p4
.end method


# virtual methods
.method public SetupPSKS(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[B[B[B)Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->kem:Lorg/bouncycastle/crypto/hpke/KEM;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/hpke/KEM;->Encap(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[[B

    move-result-object p1

    const/4 v0, 0x0

    aget-object v3, p1, v0

    const/4 v2, 0x1

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/crypto/hpke/HPKE;->keySchedule(B[B[B[B[B)Lorg/bouncycastle/crypto/hpke/HPKEContext;

    move-result-object p2

    new-instance p3, Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;

    const/4 p4, 0x1

    aget-object p1, p1, p4

    invoke-direct {p3, p2, p1}, Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;-><init>(Lorg/bouncycastle/crypto/hpke/HPKEContext;[B)V

    return-object p3
.end method

.method public deriveKeyPair([B)Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->kem:Lorg/bouncycastle/crypto/hpke/KEM;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/hpke/KEM;->DeriveKeyPair([B)Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object p1

    return-object p1
.end method

.method public deserializePrivateKey([B[B)Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->kem:Lorg/bouncycastle/crypto/hpke/KEM;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/crypto/hpke/KEM;->DeserializePrivateKey([B[B)Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object p1

    return-object p1
.end method

.method public deserializePublicKey([B)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->kem:Lorg/bouncycastle/crypto/hpke/KEM;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/hpke/KEM;->DeserializePublicKey([B)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p1

    return-object p1
.end method

.method public generatePrivateKey()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->kem:Lorg/bouncycastle/crypto/hpke/KEM;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/hpke/KEM;->GeneratePrivateKey()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    return-object v0
.end method

.method public getAeadId()S
    .locals 1

    iget-short v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->aeadId:S

    return v0
.end method

.method public getEncSize()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->kem:Lorg/bouncycastle/crypto/hpke/KEM;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/hpke/KEM;->getEncryptionSize()I

    move-result v0

    return v0
.end method

.method public open([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;[B[B[B[B[BLorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-byte v1, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->mode:B

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    move-object v5, p7

    move-object v6, p8

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/crypto/hpke/HPKE;->setupAuthPSKR([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;[B[B[BLorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/hpke/HPKEContext;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unknown mode"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p8}, Lorg/bouncycastle/crypto/hpke/HPKE;->setupAuthR([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;[BLorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/hpke/HPKEContext;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/hpke/HPKE;->setupPSKR([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;[B[B[B)Lorg/bouncycastle/crypto/hpke/HPKEContext;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p3}, Lorg/bouncycastle/crypto/hpke/HPKE;->setupBaseR([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;[B)Lorg/bouncycastle/crypto/hpke/HPKEContext;

    move-result-object v1

    :goto_0
    invoke-virtual {v1, p4, p5}, Lorg/bouncycastle/crypto/hpke/HPKEContext;->open([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public receiveExport([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;[B[BI[B[BLorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B
    .locals 7

    iget-byte v1, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->mode:B

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    move-object v5, p7

    move-object v6, p8

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/crypto/hpke/HPKE;->setupAuthPSKR([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;[B[B[BLorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/hpke/HPKEContext;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unknown mode"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p8}, Lorg/bouncycastle/crypto/hpke/HPKE;->setupAuthR([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;[BLorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/hpke/HPKEContext;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/hpke/HPKE;->setupPSKR([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;[B[B[B)Lorg/bouncycastle/crypto/hpke/HPKEContext;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p3}, Lorg/bouncycastle/crypto/hpke/HPKE;->setupBaseR([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;[B)Lorg/bouncycastle/crypto/hpke/HPKEContext;

    move-result-object v1

    :goto_0
    invoke-virtual {v1, p4, p5}, Lorg/bouncycastle/crypto/hpke/HPKEContext;->export([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public seal(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[B[B[B[B[BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;)[[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-byte v1, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->mode:B

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v7, :cond_2

    if-eq v1, v6, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/hpke/HPKE;->setupAuthPSKS(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[B[B[BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;)Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unknown mode"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p0, p1, p2, p7}, Lorg/bouncycastle/crypto/hpke/HPKE;->setupAuthS(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;)Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2, p5, p6}, Lorg/bouncycastle/crypto/hpke/HPKE;->SetupPSKS(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[B[B[B)Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p2}, Lorg/bouncycastle/crypto/hpke/HPKE;->setupBaseS(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[B)Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;

    move-result-object v1

    :goto_0
    invoke-virtual {v1, p3, p4}, Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;->seal([B[B)[B

    move-result-object v2

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;->getEncapsulation()[B

    move-result-object v1

    new-array v3, v6, [[B

    const/4 v4, 0x0

    aput-object v2, v3, v4

    aput-object v1, v3, v7

    return-object v3
.end method

.method public sendExport(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[B[BI[B[BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;)[[B
    .locals 8

    iget-byte v1, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->mode:B

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v7, :cond_2

    if-eq v1, v6, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/hpke/HPKE;->setupAuthPSKS(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[B[B[BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;)Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unknown mode"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p0, p1, p2, p7}, Lorg/bouncycastle/crypto/hpke/HPKE;->setupAuthS(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;)Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2, p5, p6}, Lorg/bouncycastle/crypto/hpke/HPKE;->SetupPSKS(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[B[B[B)Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p2}, Lorg/bouncycastle/crypto/hpke/HPKE;->setupBaseS(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[B)Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;

    move-result-object v1

    :goto_0
    iget-object v2, v1, Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;->encapsulation:[B

    invoke-virtual {v1, p3, p4}, Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;->export([BI)[B

    move-result-object v1

    new-array v3, v6, [[B

    const/4 v4, 0x0

    aput-object v2, v3, v4

    aput-object v1, v3, v7

    return-object v3
.end method

.method public serializePrivateKey(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->kem:Lorg/bouncycastle/crypto/hpke/KEM;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/hpke/KEM;->SerializePrivateKey(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B

    move-result-object p1

    return-object p1
.end method

.method public serializePublicKey(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->kem:Lorg/bouncycastle/crypto/hpke/KEM;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/hpke/KEM;->SerializePublicKey(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B

    move-result-object p1

    return-object p1
.end method

.method public setupAuthPSKR([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;[B[B[BLorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/hpke/HPKEContext;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->kem:Lorg/bouncycastle/crypto/hpke/KEM;

    invoke-virtual {v0, p1, p2, p6}, Lorg/bouncycastle/crypto/hpke/KEM;->AuthDecap([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B

    move-result-object p1

    const/4 p2, 0x3

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p1

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lorg/bouncycastle/crypto/hpke/HPKE;->keySchedule(B[B[B[B[B)Lorg/bouncycastle/crypto/hpke/HPKEContext;

    move-result-object p2

    return-object p2
.end method

.method public setupAuthPSKS(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[B[B[BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;)Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->kem:Lorg/bouncycastle/crypto/hpke/KEM;

    invoke-virtual {v0, p1, p5}, Lorg/bouncycastle/crypto/hpke/KEM;->AuthEncap(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;)[[B

    move-result-object p1

    const/4 p5, 0x0

    aget-object v2, p1, p5

    const/4 v1, 0x3

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/hpke/HPKE;->keySchedule(B[B[B[B[B)Lorg/bouncycastle/crypto/hpke/HPKEContext;

    move-result-object p2

    new-instance p3, Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;

    const/4 p4, 0x1

    aget-object p1, p1, p4

    invoke-direct {p3, p2, p1}, Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;-><init>(Lorg/bouncycastle/crypto/hpke/HPKEContext;[B)V

    return-object p3
.end method

.method public setupAuthR([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;[BLorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/hpke/HPKEContext;
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->kem:Lorg/bouncycastle/crypto/hpke/KEM;

    invoke-virtual {v0, p1, p2, p4}, Lorg/bouncycastle/crypto/hpke/KEM;->AuthDecap([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B

    move-result-object v3

    iget-object v5, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->default_psk:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->default_psk_id:[B

    const/4 v2, 0x2

    move-object v1, p0

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/crypto/hpke/HPKE;->keySchedule(B[B[B[B[B)Lorg/bouncycastle/crypto/hpke/HPKEContext;

    move-result-object p1

    return-object p1
.end method

.method public setupAuthS(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;)Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->kem:Lorg/bouncycastle/crypto/hpke/KEM;

    invoke-virtual {v0, p1, p3}, Lorg/bouncycastle/crypto/hpke/KEM;->AuthEncap(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;)[[B

    move-result-object p1

    const/4 p3, 0x0

    aget-object v2, p1, p3

    iget-object v4, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->default_psk:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->default_psk_id:[B

    const/4 v1, 0x2

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/hpke/HPKE;->keySchedule(B[B[B[B[B)Lorg/bouncycastle/crypto/hpke/HPKEContext;

    move-result-object p2

    new-instance p3, Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-direct {p3, p2, p1}, Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;-><init>(Lorg/bouncycastle/crypto/hpke/HPKEContext;[B)V

    return-object p3
.end method

.method public setupBaseR([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;[B)Lorg/bouncycastle/crypto/hpke/HPKEContext;
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->kem:Lorg/bouncycastle/crypto/hpke/KEM;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/crypto/hpke/KEM;->Decap([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;)[B

    move-result-object v3

    iget-object v5, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->default_psk:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->default_psk_id:[B

    const/4 v2, 0x0

    move-object v1, p0

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/crypto/hpke/HPKE;->keySchedule(B[B[B[B[B)Lorg/bouncycastle/crypto/hpke/HPKEContext;

    move-result-object p1

    return-object p1
.end method

.method public setupBaseS(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[B)Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->kem:Lorg/bouncycastle/crypto/hpke/KEM;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/hpke/KEM;->Encap(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[[B

    move-result-object p1

    const/4 v0, 0x0

    aget-object v3, p1, v0

    iget-object v5, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->default_psk:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->default_psk_id:[B

    const/4 v2, 0x0

    move-object v1, p0

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/crypto/hpke/HPKE;->keySchedule(B[B[B[B[B)Lorg/bouncycastle/crypto/hpke/HPKEContext;

    move-result-object p2

    new-instance v0, Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-direct {v0, p2, p1}, Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;-><init>(Lorg/bouncycastle/crypto/hpke/HPKEContext;[B)V

    return-object v0
.end method

.method public setupBaseS(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;)Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->kem:Lorg/bouncycastle/crypto/hpke/KEM;

    invoke-virtual {v0, p1, p3}, Lorg/bouncycastle/crypto/hpke/KEM;->Encap(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;)[[B

    move-result-object p1

    const/4 p3, 0x0

    aget-object v2, p1, p3

    iget-object v4, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->default_psk:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->default_psk_id:[B

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/hpke/HPKE;->keySchedule(B[B[B[B[B)Lorg/bouncycastle/crypto/hpke/HPKEContext;

    move-result-object p2

    new-instance p3, Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-direct {p3, p2, p1}, Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;-><init>(Lorg/bouncycastle/crypto/hpke/HPKEContext;[B)V

    return-object p3
.end method

.method public setupPSKR([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;[B[B[B)Lorg/bouncycastle/crypto/hpke/HPKEContext;
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->kem:Lorg/bouncycastle/crypto/hpke/KEM;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/crypto/hpke/KEM;->Decap([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;)[B

    move-result-object v3

    const/4 v2, 0x1

    move-object v1, p0

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/crypto/hpke/HPKE;->keySchedule(B[B[B[B[B)Lorg/bouncycastle/crypto/hpke/HPKEContext;

    move-result-object p1

    return-object p1
.end method
