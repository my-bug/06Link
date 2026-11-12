.class public Lorg/bouncycastle/crypto/constraints/LegacyBitsOfSecurityConstraint;
.super Lorg/bouncycastle/crypto/constraints/ServicesConstraint;


# instance fields
.field private final legacyRequiredBitsOfSecurity:I

.field private final requiredBitsOfSecurity:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/constraints/LegacyBitsOfSecurityConstraint;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/constraints/ServicesConstraint;-><init>(Ljava/util/Set;)V

    iput p1, p0, Lorg/bouncycastle/crypto/constraints/LegacyBitsOfSecurityConstraint;->requiredBitsOfSecurity:I

    iput p2, p0, Lorg/bouncycastle/crypto/constraints/LegacyBitsOfSecurityConstraint;->legacyRequiredBitsOfSecurity:I

    return-void
.end method

.method public constructor <init>(IILjava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lorg/bouncycastle/crypto/constraints/ServicesConstraint;-><init>(Ljava/util/Set;)V

    iput p1, p0, Lorg/bouncycastle/crypto/constraints/LegacyBitsOfSecurityConstraint;->requiredBitsOfSecurity:I

    iput p2, p0, Lorg/bouncycastle/crypto/constraints/LegacyBitsOfSecurityConstraint;->legacyRequiredBitsOfSecurity:I

    return-void
.end method

.method public constructor <init>(ILjava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/bouncycastle/crypto/constraints/LegacyBitsOfSecurityConstraint;-><init>(IILjava/util/Set;)V

    return-void
.end method


# virtual methods
.method public check(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V
    .locals 5

    invoke-interface {p1}, Lorg/bouncycastle/crypto/CryptoServiceProperties;->getServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/constraints/LegacyBitsOfSecurityConstraint;->isException(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/bouncycastle/crypto/CryptoServiceProperties;->getPurpose()Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/crypto/constraints/LegacyBitsOfSecurityConstraint$1;->$SwitchMap$org$bouncycastle$crypto$CryptoServicePurpose:[I

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const-string v3, " bits of security only "

    const-string v4, "service does not provide "

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    invoke-interface {p1}, Lorg/bouncycastle/crypto/CryptoServiceProperties;->bitsOfSecurity()I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/crypto/constraints/LegacyBitsOfSecurityConstraint;->requiredBitsOfSecurity:I

    if-lt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/CryptoServiceConstraintsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/bouncycastle/crypto/constraints/LegacyBitsOfSecurityConstraint;->requiredBitsOfSecurity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/CryptoServiceProperties;->bitsOfSecurity()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/CryptoServiceConstraintsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-interface {p1}, Lorg/bouncycastle/crypto/CryptoServiceProperties;->bitsOfSecurity()I

    move-result v1

    iget v2, p0, Lorg/bouncycastle/crypto/constraints/LegacyBitsOfSecurityConstraint;->legacyRequiredBitsOfSecurity:I

    if-lt v1, v2, :cond_4

    sget-object v1, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    if-eq v0, v1, :cond_3

    sget-object v0, Lorg/bouncycastle/crypto/constraints/LegacyBitsOfSecurityConstraint;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/bouncycastle/crypto/constraints/LegacyBitsOfSecurityConstraint;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "usage of legacy cryptography service for algorithm "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/bouncycastle/crypto/CryptoServiceProperties;->getServiceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    new-instance v0, Lorg/bouncycastle/crypto/CryptoServiceConstraintsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/bouncycastle/crypto/constraints/LegacyBitsOfSecurityConstraint;->legacyRequiredBitsOfSecurity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/CryptoServiceProperties;->bitsOfSecurity()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/CryptoServiceConstraintsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
