.class public Lorg/bouncycastle/crypto/hpke/HPKEContext;
.super Ljava/lang/Object;


# instance fields
.field protected final aead:Lorg/bouncycastle/crypto/hpke/AEAD;

.field protected final exporterSecret:[B

.field protected final hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

.field protected final suiteId:[B


# direct methods
.method constructor <init>(Lorg/bouncycastle/crypto/hpke/AEAD;Lorg/bouncycastle/crypto/hpke/HKDF;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/hpke/HPKEContext;->aead:Lorg/bouncycastle/crypto/hpke/AEAD;

    iput-object p2, p0, Lorg/bouncycastle/crypto/hpke/HPKEContext;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    iput-object p3, p0, Lorg/bouncycastle/crypto/hpke/HPKEContext;->exporterSecret:[B

    iput-object p4, p0, Lorg/bouncycastle/crypto/hpke/HPKEContext;->suiteId:[B

    return-void
.end method


# virtual methods
.method public expand([B[BI)[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKEContext;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/hpke/HKDF;->Expand([B[BI)[B

    move-result-object p1

    return-object p1
.end method

.method public export([BI)[B
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKEContext;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    iget-object v1, p0, Lorg/bouncycastle/crypto/hpke/HPKEContext;->exporterSecret:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/hpke/HPKEContext;->suiteId:[B

    const-string v3, "sec"

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/hpke/HKDF;->LabeledExpand([B[BLjava/lang/String;[BI)[B

    move-result-object p1

    return-object p1
.end method

.method public extract([B[B)[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKEContext;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/crypto/hpke/HKDF;->Extract([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public open([B[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKEContext;->aead:Lorg/bouncycastle/crypto/hpke/AEAD;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/crypto/hpke/AEAD;->open([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public open([B[BII)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKEContext;->aead:Lorg/bouncycastle/crypto/hpke/AEAD;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/hpke/AEAD;->open([B[BII)[B

    move-result-object p1

    return-object p1
.end method

.method public seal([B[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKEContext;->aead:Lorg/bouncycastle/crypto/hpke/AEAD;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/crypto/hpke/AEAD;->seal([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public seal([B[BII)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKEContext;->aead:Lorg/bouncycastle/crypto/hpke/AEAD;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/hpke/AEAD;->seal([B[BII)[B

    move-result-object p1

    return-object p1
.end method
