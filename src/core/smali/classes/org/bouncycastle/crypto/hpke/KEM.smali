.class public abstract Lorg/bouncycastle/crypto/hpke/KEM;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract AuthDecap([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B
.end method

.method abstract AuthEncap(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;)[[B
.end method

.method abstract Decap([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;)[B
.end method

.method abstract DeriveKeyPair([B)Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
.end method

.method abstract DeserializePrivateKey([B[B)Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
.end method

.method abstract DeserializePublicKey([B)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
.end method

.method abstract Encap(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[[B
.end method

.method abstract Encap(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;)[[B
.end method

.method abstract GeneratePrivateKey()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
.end method

.method abstract SerializePrivateKey(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B
.end method

.method abstract SerializePublicKey(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B
.end method

.method abstract getEncryptionSize()I
.end method
