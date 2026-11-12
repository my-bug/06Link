.class Lorg/bouncycastle/pqc/crypto/saber/Symmetric$AesSymmetric;
.super Lorg/bouncycastle/pqc/crypto/saber/Symmetric;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/saber/Symmetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AesSymmetric"
.end annotation


# instance fields
.field private final cipher:Lorg/bouncycastle/crypto/StreamCipher;

.field private final sha256Digest:Lorg/bouncycastle/crypto/digests/SHA256Digest;

.field private final sha512Digest:Lorg/bouncycastle/crypto/digests/SHA512Digest;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/saber/Symmetric;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Symmetric$AesSymmetric;->sha256Digest:Lorg/bouncycastle/crypto/digests/SHA256Digest;

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Symmetric$AesSymmetric;->sha512Digest:Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-static {}, Lorg/bouncycastle/crypto/engines/AESEngine;->newInstance()Lorg/bouncycastle/crypto/MultiBlockCipher;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->newInstance(Lorg/bouncycastle/crypto/BlockCipher;)Lorg/bouncycastle/crypto/modes/CTRModeCipher;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Symmetric$AesSymmetric;->cipher:Lorg/bouncycastle/crypto/StreamCipher;

    return-void
.end method


# virtual methods
.method hash_g([B[B)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Symmetric$AesSymmetric;->sha512Digest:Lorg/bouncycastle/crypto/digests/SHA512Digest;

    array-length v1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, v1}, Lorg/bouncycastle/crypto/digests/SHA512Digest;->update([BII)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/saber/Symmetric$AesSymmetric;->sha512Digest:Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-virtual {p2, p1, v2}, Lorg/bouncycastle/crypto/digests/SHA512Digest;->doFinal([BI)I

    return-void
.end method

.method hash_h([B[BI)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Symmetric$AesSymmetric;->sha256Digest:Lorg/bouncycastle/crypto/digests/SHA256Digest;

    const/4 v1, 0x0

    array-length v2, p2

    invoke-virtual {v0, p2, v1, v2}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->update([BII)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/saber/Symmetric$AesSymmetric;->sha256Digest:Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-virtual {p2, p1, p3}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->doFinal([BI)I

    return-void
.end method

.method prf([B[BII)V
    .locals 7

    new-instance v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2, p3}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    const/16 p2, 0x10

    new-array p2, p2, [B

    invoke-direct {v0, v1, p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/saber/Symmetric$AesSymmetric;->cipher:Lorg/bouncycastle/crypto/StreamCipher;

    const/4 p3, 0x1

    invoke-interface {p2, p3, v0}, Lorg/bouncycastle/crypto/StreamCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    new-array v2, p4, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/saber/Symmetric$AesSymmetric;->cipher:Lorg/bouncycastle/crypto/StreamCipher;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v5, p1

    move v4, p4

    invoke-interface/range {v1 .. v6}, Lorg/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)I

    return-void
.end method
