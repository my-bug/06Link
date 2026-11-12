.class public Lorg/bouncycastle/pqc/jcajce/provider/Dilithium$Mappings;
.super Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/Dilithium;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 14

    const-string v0, "KeyFactory.DILITHIUM"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.dilithium.DilithiumKeyFactorySpi"

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->dilithium2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v7, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyFactorySpi$Base2;

    invoke-direct {v7}, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyFactorySpi$Base2;-><init>()V

    const-string v4, "DILITHIUM2"

    const-string v5, "org.bouncycastle.pqc.jcajce.provider.dilithium.DilithiumKeyFactorySpi$Base2"

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/pqc/jcajce/provider/Dilithium$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    move-object v9, v3

    sget-object v12, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->dilithium3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v13, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyFactorySpi$Base3;

    invoke-direct {v13}, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyFactorySpi$Base3;-><init>()V

    const-string v10, "DILITHIUM3"

    const-string v11, "org.bouncycastle.pqc.jcajce.provider.dilithium.DilithiumKeyFactorySpi$Base3"

    move-object v8, p0

    invoke-virtual/range {v8 .. v13}, Lorg/bouncycastle/pqc/jcajce/provider/Dilithium$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v12, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->dilithium5:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v13, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyFactorySpi$Base5;

    invoke-direct {v13}, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyFactorySpi$Base5;-><init>()V

    const-string v10, "DILITHIUM5"

    const-string v11, "org.bouncycastle.pqc.jcajce.provider.dilithium.DilithiumKeyFactorySpi$Base5"

    invoke-virtual/range {v8 .. v13}, Lorg/bouncycastle/pqc/jcajce/provider/Dilithium$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    const-string p1, "KeyPairGenerator.DILITHIUM"

    const-string v0, "org.bouncycastle.pqc.jcajce.provider.dilithium.DilithiumKeyPairGeneratorSpi"

    invoke-interface {v9, p1, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "org.bouncycastle.pqc.jcajce.provider.dilithium.DilithiumKeyPairGeneratorSpi$Base2"

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->dilithium2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "DILITHIUM2"

    invoke-virtual {p0, v9, v1, p1, v0}, Lorg/bouncycastle/pqc/jcajce/provider/Dilithium$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string p1, "org.bouncycastle.pqc.jcajce.provider.dilithium.DilithiumKeyPairGeneratorSpi$Base3"

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->dilithium3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "DILITHIUM3"

    invoke-virtual {p0, v9, v2, p1, v0}, Lorg/bouncycastle/pqc/jcajce/provider/Dilithium$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string p1, "org.bouncycastle.pqc.jcajce.provider.dilithium.DilithiumKeyPairGeneratorSpi$Base5"

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->dilithium5:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "DILITHIUM5"

    invoke-virtual {p0, v9, v3, p1, v0}, Lorg/bouncycastle/pqc/jcajce/provider/Dilithium$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string p1, "org.bouncycastle.pqc.jcajce.provider.dilithium.SignatureSpi$Base"

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->dilithium:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "DILITHIUM"

    invoke-virtual {p0, v9, v4, p1, v0}, Lorg/bouncycastle/pqc/jcajce/provider/Dilithium$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string p1, "org.bouncycastle.pqc.jcajce.provider.dilithium.SignatureSpi$Base2"

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->dilithium2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v9, v1, p1, v0}, Lorg/bouncycastle/pqc/jcajce/provider/Dilithium$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string p1, "org.bouncycastle.pqc.jcajce.provider.dilithium.SignatureSpi$Base3"

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->dilithium3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v9, v2, p1, v0}, Lorg/bouncycastle/pqc/jcajce/provider/Dilithium$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string p1, "org.bouncycastle.pqc.jcajce.provider.dilithium.SignatureSpi$Base5"

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->dilithium5:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v9, v3, p1, v0}, Lorg/bouncycastle/pqc/jcajce/provider/Dilithium$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    return-void
.end method
