.class public Lorg/bouncycastle/jcajce/provider/asymmetric/MLKEM$Mappings;
.super Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/MLKEM;
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

    const-string v0, "KeyFactory.ML-KEM"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.mlkem.MLKEMKeyFactorySpi"

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.KeyFactory.MLKEM"

    const-string v1, "ML-KEM"

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_alg_ml_kem_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v7, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyFactorySpi$MLKEM512;

    invoke-direct {v7}, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyFactorySpi$MLKEM512;-><init>()V

    const-string v4, "ML-KEM-512"

    const-string v5, "org.bouncycastle.jcajce.provider.asymmetric.mlkem.MLKEMKeyFactorySpi$MLKEM512"

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/jcajce/provider/asymmetric/MLKEM$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    move-object v9, v3

    sget-object v12, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_alg_ml_kem_768:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v13, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyFactorySpi$MLKEM768;

    invoke-direct {v13}, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyFactorySpi$MLKEM768;-><init>()V

    const-string v10, "ML-KEM-768"

    const-string v11, "org.bouncycastle.jcajce.provider.asymmetric.mlkem.MLKEMKeyFactorySpi$MLKEM768"

    move-object v8, p0

    invoke-virtual/range {v8 .. v13}, Lorg/bouncycastle/jcajce/provider/asymmetric/MLKEM$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v12, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_alg_ml_kem_1024:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v13, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyFactorySpi$MLKEM1024;

    invoke-direct {v13}, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyFactorySpi$MLKEM1024;-><init>()V

    const-string v10, "ML-KEM-1024"

    const-string v11, "org.bouncycastle.jcajce.provider.asymmetric.mlkem.MLKEMKeyFactorySpi$MLKEM1024"

    invoke-virtual/range {v8 .. v13}, Lorg/bouncycastle/jcajce/provider/asymmetric/MLKEM$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    const-string p1, "KeyPairGenerator.ML-KEM"

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.mlkem.MLKEMKeyPairGeneratorSpi"

    invoke-interface {v9, p1, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.KeyPairGenerator.MLKEM"

    invoke-interface {v9, p1, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "org.bouncycastle.jcajce.provider.asymmetric.mlkem.MLKEMKeyPairGeneratorSpi$MLKEM512"

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_alg_ml_kem_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "ML-KEM-512"

    invoke-virtual {p0, v9, v2, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/MLKEM$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string p1, "org.bouncycastle.jcajce.provider.asymmetric.mlkem.MLKEMKeyPairGeneratorSpi$MLKEM768"

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_alg_ml_kem_768:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "ML-KEM-768"

    invoke-virtual {p0, v9, v3, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/MLKEM$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string p1, "org.bouncycastle.jcajce.provider.asymmetric.mlkem.MLKEMKeyPairGeneratorSpi$MLKEM1024"

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_alg_ml_kem_1024:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "ML-KEM-1024"

    invoke-virtual {p0, v9, v4, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/MLKEM$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string p1, "KeyGenerator.ML-KEM"

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.mlkem.MLKEMKeyGeneratorSpi"

    invoke-interface {v9, p1, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "org.bouncycastle.jcajce.provider.asymmetric.mlkem.MLKEMKeyGeneratorSpi$MLKEM512"

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_alg_ml_kem_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v9, v2, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/MLKEM$Mappings;->addKeyGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string p1, "org.bouncycastle.jcajce.provider.asymmetric.mlkem.MLKEMKeyGeneratorSpi$MLKEM768"

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_alg_ml_kem_768:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v9, v3, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/MLKEM$Mappings;->addKeyGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string p1, "org.bouncycastle.jcajce.provider.asymmetric.mlkem.MLKEMKeyGeneratorSpi$MLKEM1024"

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_alg_ml_kem_1024:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v9, v4, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/MLKEM$Mappings;->addKeyGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance p1, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyFactorySpi;

    invoke-direct {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyFactorySpi;-><init>()V

    const-string v0, "Cipher.ML-KEM"

    const-string v5, "org.bouncycastle.jcajce.provider.asymmetric.mlkem.MLKEMCipherSpi$Base"

    invoke-interface {v9, v0, v5}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Cipher.MLKEM"

    invoke-interface {v9, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.mlkem.MLKEMCipherSpi$MLKEM512"

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_alg_ml_kem_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v9, v2, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/MLKEM$Mappings;->addCipherAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.mlkem.MLKEMCipherSpi$MLKEM768"

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_alg_ml_kem_768:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v9, v3, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/MLKEM$Mappings;->addCipherAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.mlkem.MLKEMCipherSpi$MLKEM1024"

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_alg_ml_kem_1024:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v9, v4, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/MLKEM$Mappings;->addCipherAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_alg_ml_kem_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v9, v0, p1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_alg_ml_kem_768:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v9, v0, p1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_alg_ml_kem_1024:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v9, v0, p1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    return-void
.end method
