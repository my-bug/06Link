.class public Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPublicKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/gemss/GeMSSKeyParameters;


# instance fields
.field private final pk:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;[B)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;)V

    array-length p1, p2

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPublicKeyParameters;->pk:[B

    array-length v1, p1

    invoke-static {p2, v0, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPublicKeyParameters;->pk:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getPK()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPublicKeyParameters;->pk:[B

    return-object v0
.end method
