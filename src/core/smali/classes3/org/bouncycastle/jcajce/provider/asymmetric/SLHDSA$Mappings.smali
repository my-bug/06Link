.class public Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA$Mappings;
.super Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA;
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
    .locals 22

    move-object/from16 v1, p1

    const-string v0, "KeyFactory.SLH-DSA"

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyFactorySpi$Pure"

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyPairGenerator.SLH-DSA"

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyPairGeneratorSpi$Pure"

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyFactory.HASH-SLH-DSA"

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyFactorySpi$Hash"

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyPairGenerator.HASH-SLH-DSA"

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyPairGeneratorSpi$Hash"

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyFactorySpi$Hash;

    invoke-direct {v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyFactorySpi$Hash;-><init>()V

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyFactorySpi$Sha2_128s"

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_128s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SLH-DSA-SHA2-128S"

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyFactorySpi$Sha2_128f"

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_128f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SLH-DSA-SHA2-128F"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyFactorySpi$Sha2_192s"

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_192s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SLH-DSA-SHA2-192S"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyFactorySpi$Sha2_192f"

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_192f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SLH-DSA-SHA2-192F"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyFactorySpi$Sha2_256s"

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_256s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SLH-DSA-SHA2-256S"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyFactorySpi$Sha2_256f"

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_256f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SLH-DSA-SHA2-256F"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyFactorySpi$Shake_128s"

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_128s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SLH-DSA-SHAKE-128S"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyFactorySpi$Shake_128f"

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_128f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SLH-DSA-SHAKE-128F"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyFactorySpi$Shake_192s"

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_192s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SLH-DSA-SHAKE-192S"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyFactorySpi$Shake_192f"

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_192f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SLH-DSA-SHAKE-192F"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyFactorySpi$Shake_256s"

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_256s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SLH-DSA-SHAKE-256S"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyFactorySpi$Shake_256f"

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_256f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SLH-DSA-SHAKE-256F"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyFactorySpi$HashSha2_128s"

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_128s_with_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SLH-DSA-SHA2-128S-WITH-SHA256"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyFactorySpi$HashSha2_128f"

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_128f_with_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SLH-DSA-SHA2-128F-WITH-SHA256"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyFactorySpi$HashSha2_192s"

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_192s_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SLH-DSA-SHA2-192S-WITH-SHA512"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyFactorySpi$HashSha2_192f"

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_192f_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SLH-DSA-SHA2-192F-WITH-SHA512"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyFactorySpi$HashSha2_256s"

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_256s_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SLH-DSA-SHA2-256S-WITH-SHA512"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyFactorySpi$HashSha2_256f"

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_256f_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SLH-DSA-SHA2-256F-WITH-SHA512"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyFactorySpi$HashShake_128s"

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_128s_with_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SLH-DSA-SHAKE-128S-WITH-SHAKE128"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyFactorySpi$HashShake_128f"

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_128f_with_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SLH-DSA-SHAKE-128F-WITH-SHAKE128"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyFactorySpi$HashShake_192s"

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_192s_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SLH-DSA-SHAKE-192S-WITH-SHAKE256"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyFactorySpi$HashShake_192f"

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_192f_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SLH-DSA-SHAKE-192F-WITH-SHAKE256"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyFactorySpi$HashShake_256s"

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_256s_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SLH-DSA-SHAKE-256S-WITH-SHAKE256"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyFactorySpi$HashShake_256f"

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_256f_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SLH-DSA-SHAKE-256F-WITH-SHAKE256"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyPairGeneratorSpi$Sha2_128s"

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_128s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "SLH-DSA-SHA2-128S"

    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyPairGeneratorSpi$Sha2_128f"

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_128f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v5, "SLH-DSA-SHA2-128F"

    invoke-virtual {v0, v1, v5, v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyPairGeneratorSpi$Sha2_192s"

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_192s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v6, "SLH-DSA-SHA2-192S"

    invoke-virtual {v0, v1, v6, v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyPairGeneratorSpi$Sha2_192f"

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_192f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v7, "SLH-DSA-SHA2-192F"

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyPairGeneratorSpi$Sha2_256s"

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_256s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v8, "SLH-DSA-SHA2-256S"

    invoke-virtual {v0, v1, v8, v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyPairGeneratorSpi$Sha2_256f"

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_256f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v9, "SLH-DSA-SHA2-256F"

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyPairGeneratorSpi$Shake_128s"

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_128s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v10, "SLH-DSA-SHAKE-128S"

    invoke-virtual {v0, v1, v10, v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyPairGeneratorSpi$Shake_128f"

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_128f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v10, "SLH-DSA-SHAKE-128F"

    invoke-virtual {v0, v1, v10, v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyPairGeneratorSpi$Shake_192s"

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_192s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v10, "SLH-DSA-SHAKE-192S"

    invoke-virtual {v0, v1, v10, v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyPairGeneratorSpi$Shake_192f"

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_192f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v10, "SLH-DSA-SHAKE-192F"

    invoke-virtual {v0, v1, v10, v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyPairGeneratorSpi$Shake_256s"

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_256s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v10, "SLH-DSA-SHAKE-256S"

    invoke-virtual {v0, v1, v10, v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyPairGeneratorSpi$Shake_256f"

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_256f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v10, "SLH-DSA-SHAKE-256F"

    invoke-virtual {v0, v1, v10, v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyPairGeneratorSpi$HashSha2_128s"

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_128s_with_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v10, "SLH-DSA-SHA2-128S-WITH-SHA256"

    invoke-virtual {v0, v1, v10, v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyPairGeneratorSpi$HashSha2_128f"

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_128f_with_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v10, "SLH-DSA-SHA2-128F-WITH-SHA256"

    invoke-virtual {v0, v1, v10, v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyPairGeneratorSpi$HashSha2_192s"

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_192s_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v10, "SLH-DSA-SHA2-192S-WITH-SHA512"

    invoke-virtual {v0, v1, v10, v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyPairGeneratorSpi$HashSha2_192f"

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_192f_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v10, "SLH-DSA-SHA2-192F-WITH-SHA512"

    invoke-virtual {v0, v1, v10, v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyPairGeneratorSpi$HashSha2_256s"

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_256s_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v10, "SLH-DSA-SHA2-256S-WITH-SHA512"

    invoke-virtual {v0, v1, v10, v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyPairGeneratorSpi$HashSha2_256f"

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_256f_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v10, "SLH-DSA-SHA2-256F-WITH-SHA512"

    invoke-virtual {v0, v1, v10, v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyPairGeneratorSpi$HashShake_128s"

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_128s_with_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v10, "SLH-DSA-SHAKE-128S-WITH-SHAKE128"

    invoke-virtual {v0, v1, v10, v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyPairGeneratorSpi$HashShake_128f"

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_128f_with_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v10, "SLH-DSA-SHAKE-128F-WITH-SHAKE128"

    invoke-virtual {v0, v1, v10, v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyPairGeneratorSpi$HashShake_192s"

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_192s_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v10, "SLH-DSA-SHAKE-192S-WITH-SHAKE256"

    invoke-virtual {v0, v1, v10, v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyPairGeneratorSpi$HashShake_192f"

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_192f_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v10, "SLH-DSA-SHAKE-192F-WITH-SHAKE256"

    invoke-virtual {v0, v1, v10, v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyPairGeneratorSpi$HashShake_256s"

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_256s_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v10, "SLH-DSA-SHAKE-256S-WITH-SHAKE256"

    invoke-virtual {v0, v1, v10, v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyPairGeneratorSpi$HashShake_256f"

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_256f_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v10, "SLH-DSA-SHAKE-256F-WITH-SHAKE256"

    invoke-virtual {v0, v1, v10, v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const/16 v2, 0xc

    new-array v3, v2, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v4, v3, v10

    const/4 v4, 0x1

    aput-object v5, v3, v4

    const/4 v5, 0x2

    aput-object v6, v3, v5

    const/4 v6, 0x3

    aput-object v7, v3, v6

    const/4 v7, 0x4

    aput-object v8, v3, v7

    const/4 v8, 0x5

    aput-object v9, v3, v8

    const/4 v9, 0x6

    const-string v11, "SLH-DSA-SHAKE-128S"

    aput-object v11, v3, v9

    const/4 v11, 0x7

    const-string v12, "SLH-DSA-SHAKE-128F"

    aput-object v12, v3, v11

    const/16 v12, 0x8

    const-string v13, "SLH-DSA-SHAKE-192S"

    aput-object v13, v3, v12

    const/16 v13, 0x9

    const-string v14, "SLH-DSA-SHAKE-192F"

    aput-object v14, v3, v13

    const/16 v14, 0xa

    const-string v15, "SLH-DSA-SHAKE-256S"

    aput-object v15, v3, v14

    const/16 v15, 0xb

    const-string v16, "SLH-DSA-SHAKE-256F"

    aput-object v16, v3, v15

    const/16 v16, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const-string v17, "SLH-DSA-SHA2-128S-WITH-SHA256"

    aput-object v17, v4, v10

    const-string v17, "SLH-DSA-SHA2-128F-WITH-SHA256"

    aput-object v17, v4, v16

    const-string v17, "SLH-DSA-SHA2-192S-WITH-SHA512"

    aput-object v17, v4, v5

    const-string v17, "SLH-DSA-SHA2-192F-WITH-SHA512"

    aput-object v17, v4, v6

    const-string v17, "SLH-DSA-SHA2-256S-WITH-SHA512"

    aput-object v17, v4, v7

    const-string v17, "SLH-DSA-SHA2-256F-WITH-SHA512"

    aput-object v17, v4, v8

    const-string v17, "SLH-DSA-SHAKE-128S-WITH-SHAKE128"

    aput-object v17, v4, v9

    const-string v17, "SLH-DSA-SHAKE-128F-WITH-SHAKE128"

    aput-object v17, v4, v11

    const-string v17, "SLH-DSA-SHAKE-192S-WITH-SHAKE256"

    aput-object v17, v4, v12

    const-string v17, "SLH-DSA-SHAKE-192F-WITH-SHAKE256"

    aput-object v17, v4, v13

    const-string v17, "SLH-DSA-SHAKE-256S-WITH-SHAKE256"

    aput-object v17, v4, v14

    const-string v17, "SLH-DSA-SHAKE-256F-WITH-SHAKE256"

    aput-object v17, v4, v15

    const/16 v17, 0x2

    const/4 v5, 0x0

    move-object/from16 v18, v5

    check-cast v18, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/16 v18, 0x3

    const-string v6, "SLH-DSA"

    const/16 v19, 0x4

    const-string v7, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SignatureSpi$Direct"

    invoke-virtual {v0, v1, v6, v7, v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v7, "Alg.Alias.Signature.SLHDSA"

    invoke-interface {v1, v7, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.HashSignatureSpi$Direct"

    const/16 v20, 0x5

    const-string v8, "HASH-SLH-DSA"

    invoke-virtual {v0, v1, v8, v7, v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v5, "Alg.Alias.Signature.HASHWITHSLHDSA"

    invoke-interface {v1, v5, v8}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_0
    const-string v7, "Alg.Alias.Signature."

    const/16 v21, 0x6

    if-eq v5, v2, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v7, v3, v5

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    const/4 v9, 0x6

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eq v3, v2, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v9, v4, v3

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v8}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    new-array v3, v2, [Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_128s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v4, v3, v10

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_128f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v4, v3, v16

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_192s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v4, v3, v17

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_192f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v4, v3, v18

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_256s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v4, v3, v19

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_256f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v4, v3, v20

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_128s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v4, v3, v21

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_128f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v4, v3, v11

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_192s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v4, v3, v12

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_192f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v4, v3, v13

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_256s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v4, v3, v14

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_256f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v4, v3, v15

    const/4 v4, 0x0

    :goto_2
    if-eq v4, v2, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v9, v3, v4

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "Alg.Alias.Signature.OID."

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v9, v3, v4

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    new-array v3, v2, [Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_128s_with_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v4, v3, v10

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_128f_with_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v4, v3, v16

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_128s_with_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v4, v3, v17

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_128f_with_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v4, v3, v18

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_192s_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v4, v3, v19

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_192f_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v4, v3, v20

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_192s_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v4, v3, v21

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_192f_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v4, v3, v11

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_256s_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v4, v3, v12

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_256f_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v4, v3, v13

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_256s_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v4, v3, v14

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_256f_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v4, v3, v15

    :goto_3
    if-eq v10, v2, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v3, v10

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v8}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Alg.Alias.Signature.OID."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v3, v10

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v8}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method
