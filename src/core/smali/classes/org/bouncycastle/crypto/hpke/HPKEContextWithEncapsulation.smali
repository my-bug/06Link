.class public Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;
.super Lorg/bouncycastle/crypto/hpke/HPKEContext;


# instance fields
.field final encapsulation:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/hpke/HPKEContext;[B)V
    .locals 3

    iget-object v0, p1, Lorg/bouncycastle/crypto/hpke/HPKEContext;->aead:Lorg/bouncycastle/crypto/hpke/AEAD;

    iget-object v1, p1, Lorg/bouncycastle/crypto/hpke/HPKEContext;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    iget-object v2, p1, Lorg/bouncycastle/crypto/hpke/HPKEContext;->exporterSecret:[B

    iget-object p1, p1, Lorg/bouncycastle/crypto/hpke/HPKEContext;->suiteId:[B

    invoke-direct {p0, v0, v1, v2, p1}, Lorg/bouncycastle/crypto/hpke/HPKEContext;-><init>(Lorg/bouncycastle/crypto/hpke/AEAD;Lorg/bouncycastle/crypto/hpke/HKDF;[B[B)V

    iput-object p2, p0, Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;->encapsulation:[B

    return-void
.end method


# virtual methods
.method public getEncapsulation()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;->encapsulation:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method
