.class public Lorg/bouncycastle/jcajce/provider/asymmetric/Falcon$Mappings;
.super Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/Falcon;
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

    const-string v0, "KeyFactory.FALCON"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.falcon.FalconKeyFactorySpi"

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->falcon_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v7, Lorg/bouncycastle/pqc/jcajce/provider/falcon/FalconKeyFactorySpi$Falcon512;

    invoke-direct {v7}, Lorg/bouncycastle/pqc/jcajce/provider/falcon/FalconKeyFactorySpi$Falcon512;-><init>()V

    const-string v4, "FALCON-512"

    const-string v5, "org.bouncycastle.pqc.jcajce.provider.falcon.FalconKeyFactorySpi$Falcon512"

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/jcajce/provider/asymmetric/Falcon$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v12, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->falcon_1024:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v13, Lorg/bouncycastle/pqc/jcajce/provider/falcon/FalconKeyFactorySpi$Falcon1024;

    invoke-direct {v13}, Lorg/bouncycastle/pqc/jcajce/provider/falcon/FalconKeyFactorySpi$Falcon1024;-><init>()V

    const-string v10, "FALCON-1024"

    const-string v11, "org.bouncycastle.pqc.jcajce.provider.falcon.FalconKeyFactorySpi$Falcon1024"

    move-object v8, p0

    move-object v9, v3

    invoke-virtual/range {v8 .. v13}, Lorg/bouncycastle/jcajce/provider/asymmetric/Falcon$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    move-object v2, v8

    const-string p1, "KeyPairGenerator.FALCON"

    const-string v0, "org.bouncycastle.pqc.jcajce.provider.falcon.FalconKeyPairGeneratorSpi"

    invoke-interface {v3, p1, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "org.bouncycastle.pqc.jcajce.provider.falcon.FalconKeyPairGeneratorSpi$Falcon512"

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->falcon_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "FALCON-512"

    invoke-virtual {p0, v3, v1, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/Falcon$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string p1, "org.bouncycastle.pqc.jcajce.provider.falcon.FalconKeyPairGeneratorSpi$Falcon1024"

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->falcon_1024:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "FALCON-1024"

    invoke-virtual {p0, v3, v4, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/Falcon$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string p1, "org.bouncycastle.pqc.jcajce.provider.falcon.SignatureSpi$Base"

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->falcon:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v5, "FALCON"

    invoke-virtual {p0, v3, v5, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/Falcon$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string p1, "org.bouncycastle.pqc.jcajce.provider.falcon.SignatureSpi$Falcon512"

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->falcon_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v3, v1, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/Falcon$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string p1, "org.bouncycastle.pqc.jcajce.provider.falcon.SignatureSpi$Falcon1024"

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->falcon_1024:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v3, v4, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/Falcon$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    return-void
.end method
