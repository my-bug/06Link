.class public Lorg/bouncycastle/jcajce/provider/asymmetric/MLDSA$Mappings;
.super Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/MLDSA;
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
    .locals 13

    const-string v0, "KeyFactory.ML-DSA"

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.mldsa.MLDSAKeyFactorySpi$Pure"

    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyPairGenerator.ML-DSA"

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.mldsa.MLDSAKeyPairGeneratorSpi$Pure"

    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.KeyFactory.MLDSA"

    const-string v6, "ML-DSA"

    invoke-interface {p1, v0, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.KeyPairGenerator.MLDSA"

    invoke-interface {p1, v0, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyFactory.HASH-ML-DSA"

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.mldsa.MLDSAKeyFactorySpi$Hash"

    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyPairGenerator.HASH-ML-DSA"

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.mldsa.MLDSAKeyPairGeneratorSpi$Hash"

    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.KeyFactory.SHA512WITHMLDSA"

    const-string v7, "HASH-ML-DSA"

    invoke-interface {p1, v0, v7}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.KeyPairGenerator.SHA512WITHMLDSA"

    invoke-interface {p1, v0, v7}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ml_dsa_44:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyFactorySpi$MLDSA44;

    invoke-direct {v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyFactorySpi$MLDSA44;-><init>()V

    const-string v2, "ML-DSA-44"

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.mldsa.MLDSAKeyFactorySpi$MLDSA44"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/MLDSA$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ml_dsa_65:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyFactorySpi$MLDSA65;

    invoke-direct {v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyFactorySpi$MLDSA65;-><init>()V

    const-string v2, "ML-DSA-65"

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.mldsa.MLDSAKeyFactorySpi$MLDSA65"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/MLDSA$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ml_dsa_87:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyFactorySpi$MLDSA87;

    invoke-direct {v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyFactorySpi$MLDSA87;-><init>()V

    const-string v2, "ML-DSA-87"

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.mldsa.MLDSAKeyFactorySpi$MLDSA87"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/MLDSA$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_ml_dsa_44_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyFactorySpi$HashMLDSA44;

    invoke-direct {v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyFactorySpi$HashMLDSA44;-><init>()V

    const-string v2, "ML-DSA-44-WITH-SHA512"

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.mldsa.MLDSAKeyFactorySpi$HashMLDSA44"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/MLDSA$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_ml_dsa_65_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyFactorySpi$HashMLDSA65;

    invoke-direct {v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyFactorySpi$HashMLDSA65;-><init>()V

    const-string v2, "ML-DSA-65-WITH-SHA512"

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.mldsa.MLDSAKeyFactorySpi$HashMLDSA65"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/MLDSA$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_ml_dsa_87_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyFactorySpi$HashMLDSA87;

    invoke-direct {v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyFactorySpi$HashMLDSA87;-><init>()V

    const-string v2, "ML-DSA-87-WITH-SHA512"

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.mldsa.MLDSAKeyFactorySpi$HashMLDSA87"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/MLDSA$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.mldsa.MLDSAKeyPairGeneratorSpi$MLDSA44"

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ml_dsa_44:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "ML-DSA-44"

    invoke-virtual {p0, p1, v4, v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/MLDSA$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.mldsa.MLDSAKeyPairGeneratorSpi$MLDSA65"

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ml_dsa_65:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v5, "ML-DSA-65"

    invoke-virtual {p0, p1, v5, v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/MLDSA$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.mldsa.MLDSAKeyPairGeneratorSpi$MLDSA87"

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ml_dsa_87:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v8, "ML-DSA-87"

    invoke-virtual {p0, p1, v8, v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/MLDSA$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.mldsa.MLDSAKeyPairGeneratorSpi$MLDSA44withSHA512"

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_ml_dsa_44_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v9, "ML-DSA-44-WITH-SHA512"

    invoke-virtual {p0, p1, v9, v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/MLDSA$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.mldsa.MLDSAKeyPairGeneratorSpi$MLDSA65withSHA512"

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_ml_dsa_65_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v10, "ML-DSA-65-WITH-SHA512"

    invoke-virtual {p0, p1, v10, v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/MLDSA$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.mldsa.MLDSAKeyPairGeneratorSpi$MLDSA87withSHA512"

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_ml_dsa_87_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v11, "ML-DSA-87-WITH-SHA512"

    invoke-virtual {p0, p1, v11, v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/MLDSA$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.mldsa.SignatureSpi$MLDSA"

    invoke-virtual {p0, p1, v6, v3, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/MLDSA$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.mldsa.SignatureSpi$MLDSA44"

    sget-object v12, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ml_dsa_44:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v4, v3, v12}, Lorg/bouncycastle/jcajce/provider/asymmetric/MLDSA$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.mldsa.SignatureSpi$MLDSA65"

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ml_dsa_65:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v5, v3, v4}, Lorg/bouncycastle/jcajce/provider/asymmetric/MLDSA$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.mldsa.SignatureSpi$MLDSA87"

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ml_dsa_87:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v8, v3, v4}, Lorg/bouncycastle/jcajce/provider/asymmetric/MLDSA$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v3, "Alg.Alias.Signature.MLDSA"

    invoke-interface {p1, v3, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.mldsa.HashSignatureSpi$MLDSA"

    invoke-virtual {p0, p1, v7, v3, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/MLDSA$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.mldsa.HashSignatureSpi$MLDSA44"

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_ml_dsa_44_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v9, v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/MLDSA$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.mldsa.HashSignatureSpi$MLDSA65"

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_ml_dsa_65_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v10, v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/MLDSA$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.mldsa.HashSignatureSpi$MLDSA87"

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_ml_dsa_87_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v11, v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/MLDSA$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "Alg.Alias.Signature.SHA512WITHMLDSA"

    invoke-interface {p1, v2, v7}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.Signature.SHA512WITHMLDSA44"

    invoke-interface {p1, v2, v9}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.Signature.SHA512WITHMLDSA65"

    invoke-interface {p1, v2, v10}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.Signature.SHA512WITHMLDSA87"

    invoke-interface {p1, v2, v11}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyFactorySpi$Hash;

    invoke-direct {v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyFactorySpi$Hash;-><init>()V

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ml_dsa_44:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {p1, v3, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ml_dsa_65:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {p1, v3, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ml_dsa_87:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {p1, v3, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_ml_dsa_44_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {p1, v3, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_ml_dsa_65_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {p1, v3, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_ml_dsa_87_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {p1, v3, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    return-void
.end method
