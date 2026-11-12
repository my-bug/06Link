.class public Lorg/bouncycastle/crypto/params/ParametersWithContext;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private context:[B

.field private parameters:Lorg/bouncycastle/crypto/CipherParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/crypto/params/ParametersWithContext;->parameters:Lorg/bouncycastle/crypto/CipherParameters;

    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/params/ParametersWithContext;->context:[B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "\'context\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public copyContextTo([BII)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/ParametersWithContext;->context:[B

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

.method public getContext()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/ParametersWithContext;->context:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getContextLength()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/ParametersWithContext;->context:[B

    array-length v0, v0

    return v0
.end method

.method public getParameters()Lorg/bouncycastle/crypto/CipherParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/ParametersWithContext;->parameters:Lorg/bouncycastle/crypto/CipherParameters;

    return-object v0
.end method
