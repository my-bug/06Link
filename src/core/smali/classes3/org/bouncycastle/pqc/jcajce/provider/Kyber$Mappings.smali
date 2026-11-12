.class public Lorg/bouncycastle/pqc/jcajce/provider/Kyber$Mappings;
.super Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/Kyber;
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

    const-string v0, "KeyFactory.KYBER"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.kyber.KyberKeyFactorySpi"

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_alg_ml_kem_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v7, Lorg/bouncycastle/pqc/jcajce/provider/kyber/KyberKeyFactorySpi$Kyber512;

    invoke-direct {v7}, Lorg/bouncycastle/pqc/jcajce/provider/kyber/KyberKeyFactorySpi$Kyber512;-><init>()V

    const-string v4, "ML-KEM-512"

    const-string v5, "org.bouncycastle.pqc.jcajce.provider.kyber.KyberKeyFactorySpi$Kyber512"

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/pqc/jcajce/provider/Kyber$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    move-object v9, v3

    sget-object v12, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_alg_ml_kem_768:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v13, Lorg/bouncycastle/pqc/jcajce/provider/kyber/KyberKeyFactorySpi$Kyber768;

    invoke-direct {v13}, Lorg/bouncycastle/pqc/jcajce/provider/kyber/KyberKeyFactorySpi$Kyber768;-><init>()V

    const-string v10, "ML-KEM-768"

    const-string v11, "org.bouncycastle.pqc.jcajce.provider.kyber.KyberKeyFactorySpi$Kyber768"

    move-object v8, p0

    invoke-virtual/range {v8 .. v13}, Lorg/bouncycastle/pqc/jcajce/provider/Kyber$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v12, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_alg_ml_kem_1024:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v13, Lorg/bouncycastle/pqc/jcajce/provider/kyber/KyberKeyFactorySpi$Kyber1024;

    invoke-direct {v13}, Lorg/bouncycastle/pqc/jcajce/provider/kyber/KyberKeyFactorySpi$Kyber1024;-><init>()V

    const-string v10, "ML-KEM-1024"

    const-string v11, "org.bouncycastle.pqc.jcajce.provider.kyber.KyberKeyFactorySpi$Kyber1024"

    invoke-virtual/range {v8 .. v13}, Lorg/bouncycastle/pqc/jcajce/provider/Kyber$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    const-string p1, "Alg.Alias.KeyFactory.KYBER512"

    const-string v0, "ML-KEM-512"

    invoke-interface {v9, p1, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.KeyFactory.KYBER768"

    const-string v1, "ML-KEM-768"

    invoke-interface {v9, p1, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.KeyFactory.KYBER1024"

    const-string v2, "ML-KEM-1024"

    invoke-interface {v9, p1, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "KeyPairGenerator.ML-KEM"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.kyber.KyberKeyPairGeneratorSpi"

    invoke-interface {v9, p1, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "KeyPairGenerator.ML-KEM-512"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.kyber.KyberKeyPairGeneratorSpi$Kyber512"

    invoke-interface {v9, p1, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "KeyPairGenerator.ML-KEM-768"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.kyber.KyberKeyPairGeneratorSpi$Kyber768"

    invoke-interface {v9, p1, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "KeyPairGenerator.ML-KEM-1024"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.kyber.KyberKeyPairGeneratorSpi$Kyber1024"

    invoke-interface {v9, p1, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.KeyPairGenerator.KYBER"

    const-string v3, "ML-KEM"

    invoke-interface {v9, p1, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.KeyPairGenerator.KYBER512"

    invoke-interface {v9, p1, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.KeyPairGenerator.KYBER768"

    invoke-interface {v9, p1, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.KeyPairGenerator.KYBER1024"

    invoke-interface {v9, p1, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "KeyGenerator.KYBER"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.kyber.KyberKeyGeneratorSpi"

    invoke-interface {v9, p1, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "org.bouncycastle.pqc.jcajce.provider.kyber.KyberKeyGeneratorSpi$Kyber512"

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_alg_ml_kem_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v9, v0, p1, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Kyber$Mappings;->addKeyGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string p1, "org.bouncycastle.pqc.jcajce.provider.kyber.KyberKeyGeneratorSpi$Kyber768"

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_alg_ml_kem_768:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v9, v1, p1, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Kyber$Mappings;->addKeyGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string p1, "org.bouncycastle.pqc.jcajce.provider.kyber.KyberKeyGeneratorSpi$Kyber1024"

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_alg_ml_kem_1024:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v9, v2, p1, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Kyber$Mappings;->addKeyGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string p1, "Alg.Alias.KeyGenerator.KYBER512"

    invoke-interface {v9, p1, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.KeyGenerator.KYBER768"

    invoke-interface {v9, p1, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.KeyGenerator.KYBER1024"

    invoke-interface {v9, p1, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lorg/bouncycastle/pqc/jcajce/provider/kyber/KyberKeyFactorySpi;

    invoke-direct {p1}, Lorg/bouncycastle/pqc/jcajce/provider/kyber/KyberKeyFactorySpi;-><init>()V

    const-string v3, "Cipher.KYBER"

    const-string v4, "org.bouncycastle.pqc.jcajce.provider.kyber.KyberCipherSpi$Base"

    invoke-interface {v9, v3, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Alg.Alias.Cipher."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->pqc_kem_kyber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KYBER"

    invoke-interface {v9, v3, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.kyber.KyberCipherSpi$Kyber512"

    sget-object v5, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_alg_ml_kem_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v9, v0, v3, v5}, Lorg/bouncycastle/pqc/jcajce/provider/Kyber$Mappings;->addCipherAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.kyber.KyberCipherSpi$Kyber768"

    sget-object v5, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_alg_ml_kem_768:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v9, v1, v3, v5}, Lorg/bouncycastle/pqc/jcajce/provider/Kyber$Mappings;->addCipherAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.kyber.KyberCipherSpi$Kyber1024"

    sget-object v5, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_alg_ml_kem_1024:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v9, v2, v3, v5}, Lorg/bouncycastle/pqc/jcajce/provider/Kyber$Mappings;->addCipherAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v3, "Alg.Alias.Cipher.KYBER512"

    invoke-interface {v9, v3, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Cipher.KYBER768"

    invoke-interface {v9, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Cipher.KYBER1024"

    invoke-interface {v9, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->pqc_kem_kyber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v9, v0, v4, p1}, Lorg/bouncycastle/pqc/jcajce/provider/Kyber$Mappings;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    return-void
.end method
