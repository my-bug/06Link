.class public Lorg/bouncycastle/crypto/params/KeyParameter;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private key:[B


# direct methods
.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/params/KeyParameter;->key:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2

    invoke-direct {p0, p3}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>(I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/KeyParameter;->key:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public copyTo([BII)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/KeyParameter;->key:[B

    array-length v1, v0

    if-ne v1, p3, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "len"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getKey()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/KeyParameter;->key:[B

    return-object v0
.end method

.method public getKeyLength()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/KeyParameter;->key:[B

    array-length v0, v0

    return v0
.end method

.method public reverse()Lorg/bouncycastle/crypto/params/KeyParameter;
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    iget-object v1, p0, Lorg/bouncycastle/crypto/params/KeyParameter;->key:[B

    array-length v1, v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/params/KeyParameter;->key:[B

    iget-object v2, v0, Lorg/bouncycastle/crypto/params/KeyParameter;->key:[B

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Arrays;->reverse([B[B)V

    return-object v0
.end method
