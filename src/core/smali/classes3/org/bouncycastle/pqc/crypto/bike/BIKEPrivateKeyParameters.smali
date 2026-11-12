.class public Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyParameters;


# instance fields
.field private h0:[B

.field private h1:[B

.field private sigma:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;[B[B[B)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/bike/BIKEParameters;)V

    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;->h0:[B

    invoke-static {p3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;->h1:[B

    invoke-static {p4}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;->sigma:[B

    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;->h0:[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;->h1:[B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;->sigma:[B

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method getH0()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;->h0:[B

    return-object v0
.end method

.method getH1()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;->h1:[B

    return-object v0
.end method

.method getSigma()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;->sigma:[B

    return-object v0
.end method
