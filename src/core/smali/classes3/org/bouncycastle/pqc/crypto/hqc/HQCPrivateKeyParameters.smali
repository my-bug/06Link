.class public Lorg/bouncycastle/pqc/crypto/hqc/HQCPrivateKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;


# instance fields
.field private sk:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;[B)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/hqc/HQCParameters;)V

    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCPrivateKeyParameters;->sk:[B

    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCPrivateKeyParameters;->sk:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCPrivateKeyParameters;->sk:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method
