.class public Lorg/bouncycastle/crypto/constraints/BitsOfSecurityConstraint;
.super Lorg/bouncycastle/crypto/constraints/ServicesConstraint;


# instance fields
.field private final requiredBitsOfSecurity:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/constraints/ServicesConstraint;-><init>(Ljava/util/Set;)V

    iput p1, p0, Lorg/bouncycastle/crypto/constraints/BitsOfSecurityConstraint;->requiredBitsOfSecurity:I

    return-void
.end method

.method public constructor <init>(ILjava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lorg/bouncycastle/crypto/constraints/ServicesConstraint;-><init>(Ljava/util/Set;)V

    iput p1, p0, Lorg/bouncycastle/crypto/constraints/BitsOfSecurityConstraint;->requiredBitsOfSecurity:I

    return-void
.end method


# virtual methods
.method public check(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V
    .locals 3

    invoke-interface {p1}, Lorg/bouncycastle/crypto/CryptoServiceProperties;->getServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/constraints/BitsOfSecurityConstraint;->isException(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/bouncycastle/crypto/CryptoServiceProperties;->bitsOfSecurity()I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/crypto/constraints/BitsOfSecurityConstraint;->requiredBitsOfSecurity:I

    if-lt v0, v1, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/CryptoServiceConstraintsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "service does not provide "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/bouncycastle/crypto/constraints/BitsOfSecurityConstraint;->requiredBitsOfSecurity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bits of security only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/CryptoServiceProperties;->bitsOfSecurity()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/CryptoServiceConstraintsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
