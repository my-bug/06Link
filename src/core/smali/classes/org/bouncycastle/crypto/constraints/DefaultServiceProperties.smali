.class public Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/CryptoServiceProperties;


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final bitsOfSecurity:I

.field private final params:Ljava/lang/Object;

.field private final purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;->algorithm:Ljava/lang/String;

    iput p2, p0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;->bitsOfSecurity:I

    iput-object p3, p0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;->params:Ljava/lang/Object;

    instance-of p1, p3, Lorg/bouncycastle/crypto/CryptoServicePurpose;

    if-nez p1, :cond_0

    iput-object p4, p0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "params should not be CryptoServicePurpose"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public bitsOfSecurity()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;->bitsOfSecurity:I

    return v0
.end method

.method public getParams()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;->params:Ljava/lang/Object;

    return-object v0
.end method

.method public getPurpose()Lorg/bouncycastle/crypto/CryptoServicePurpose;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;->algorithm:Ljava/lang/String;

    return-object v0
.end method
