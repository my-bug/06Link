.class public Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;


# instance fields
.field protected final params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;


# direct methods
.method public constructor <init>(ZLorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyParameters;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyParameters;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    return-object v0
.end method
