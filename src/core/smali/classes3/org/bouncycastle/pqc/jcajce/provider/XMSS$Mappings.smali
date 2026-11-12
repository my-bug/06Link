.class public Lorg/bouncycastle/pqc/jcajce/provider/XMSS$Mappings;
.super Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/XMSS;
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
    .locals 9

    const-string v2, "KeyFactory.XMSS"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSKeyFactorySpi"

    invoke-interface {p1, v2, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "KeyPairGenerator.XMSS"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSKeyPairGeneratorSpi"

    invoke-interface {p1, v2, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Signature.XMSS"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSSignatureSpi$generic"

    invoke-interface {p1, v2, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Alg.Alias.Signature."

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lorg/bouncycastle/internal/asn1/isara/IsaraObjectIdentifiers;->id_alg_xmss:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "XMSS"

    invoke-interface {p1, v2, v7}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "Alg.Alias.Signature.OID."

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lorg/bouncycastle/internal/asn1/isara/IsaraObjectIdentifiers;->id_alg_xmss:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v7}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSSignatureSpi$withSha256"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "XMSS-SHA256"

    invoke-virtual {p0, p1, v4, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/XMSS$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSSignatureSpi$withShake128"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_SHAKE128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "XMSS-SHAKE128"

    invoke-virtual {p0, p1, v4, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/XMSS$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSSignatureSpi$withSha512"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "XMSS-SHA512"

    invoke-virtual {p0, p1, v4, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/XMSS$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSSignatureSpi$withShake256"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_SHAKE256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "XMSS-SHAKE256"

    invoke-virtual {p0, p1, v4, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/XMSS$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v4, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSSignatureSpi$withSha256andPrehash"

    sget-object v5, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_SHA256ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA256"

    const-string v3, "XMSS-SHA256"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/XMSS$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v4, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSSignatureSpi$withShake128andPrehash"

    sget-object v5, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_SHAKE128ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHAKE128"

    const-string v3, "XMSS-SHAKE128"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/XMSS$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v4, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSSignatureSpi$withShake128_512andPrehash"

    sget-object v5, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_SHAKE128_512ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHAKE128(512)"

    const-string v3, "XMSS-SHAKE128"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/XMSS$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v4, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSSignatureSpi$withSha512andPrehash"

    sget-object v5, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_SHA512ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA512"

    const-string v3, "XMSS-SHA512"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/XMSS$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v4, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSSignatureSpi$withShake256andPrehash"

    sget-object v5, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_SHAKE256ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHAKE256"

    const-string v3, "XMSS-SHAKE256"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/XMSS$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v4, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSSignatureSpi$withShake256_1024andPrehash"

    sget-object v5, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_SHAKE256_1024ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHAKE256(1024)"

    const-string v3, "XMSS-SHAKE256"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/XMSS$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "Alg.Alias.Signature.SHA256WITHXMSS"

    const-string v3, "SHA256WITHXMSS-SHA256"

    invoke-interface {p1, v2, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.Signature.SHAKE128WITHXMSS"

    const-string v3, "SHAKE128WITHXMSS-SHAKE128"

    invoke-interface {p1, v2, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.Signature.SHAKE128(512)WITHXMSS"

    const-string v3, "SHAKE128(512)WITHXMSS-SHAKE128"

    invoke-interface {p1, v2, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.Signature.SHA512WITHXMSS"

    const-string v3, "SHA512WITHXMSS-SHA512"

    invoke-interface {p1, v2, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.Signature.SHAKE256WITHXMSS"

    const-string v3, "SHAKE256WITHXMSS-SHAKE256"

    invoke-interface {p1, v2, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.Signature.SHAKE256(1024)WITHXMSS"

    const-string v3, "SHAKE256(1024)WITHXMSS-SHAKE256"

    invoke-interface {p1, v2, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "KeyFactory.XMSSMT"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTKeyFactorySpi"

    invoke-interface {p1, v2, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "KeyPairGenerator.XMSSMT"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTKeyPairGeneratorSpi"

    invoke-interface {p1, v2, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Signature.XMSSMT"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTSignatureSpi$generic"

    invoke-interface {p1, v2, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lorg/bouncycastle/internal/asn1/isara/IsaraObjectIdentifiers;->id_alg_xmssmt:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "XMSSMT"

    invoke-interface {p1, v2, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lorg/bouncycastle/internal/asn1/isara/IsaraObjectIdentifiers;->id_alg_xmssmt:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTSignatureSpi$withSha256"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "XMSSMT-SHA256"

    invoke-virtual {p0, p1, v4, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/XMSS$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTSignatureSpi$withShake128"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_SHAKE128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "XMSSMT-SHAKE128"

    invoke-virtual {p0, p1, v4, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/XMSS$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTSignatureSpi$withSha512"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "XMSSMT-SHA512"

    invoke-virtual {p0, p1, v4, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/XMSS$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTSignatureSpi$withShake256"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_SHAKE256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "XMSSMT-SHAKE256"

    invoke-virtual {p0, p1, v4, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/XMSS$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v4, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTSignatureSpi$withSha256andPrehash"

    sget-object v5, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_SHA256ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA256"

    const-string v3, "XMSSMT-SHA256"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/XMSS$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v4, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTSignatureSpi$withShake128andPrehash"

    sget-object v5, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_SHAKE128ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHAKE128"

    const-string v3, "XMSSMT-SHAKE128"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/XMSS$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v4, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTSignatureSpi$withShake128_512andPrehash"

    sget-object v5, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_SHAKE128_512ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHAKE128(512)"

    const-string v3, "XMSSMT-SHAKE128"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/XMSS$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v4, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTSignatureSpi$withSha512andPrehash"

    sget-object v5, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_SHA512ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA512"

    const-string v3, "XMSSMT-SHA512"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/XMSS$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v4, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTSignatureSpi$withShake256andPrehash"

    sget-object v5, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_SHAKE256ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHAKE256"

    const-string v3, "XMSSMT-SHAKE256"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/XMSS$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v4, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTSignatureSpi$withShake256_1024andPrehash"

    sget-object v5, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_SHAKE256_1024ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHAKE256(1024)"

    const-string v3, "XMSSMT-SHAKE256"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/XMSS$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "Alg.Alias.Signature.SHA256WITHXMSSMT"

    const-string v3, "SHA256WITHXMSSMT-SHA256"

    invoke-interface {p1, v2, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.Signature.SHAKE128WITHXMSSMT"

    const-string v3, "SHAKE128WITHXMSSMT-SHAKE128"

    invoke-interface {p1, v2, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.Signature.SHAKE128(512)WITHXMSSMT"

    const-string v3, "SHAKE128(512)WITHXMSSMT-SHAKE128"

    invoke-interface {p1, v2, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.Signature.SHA512WITHXMSSMT"

    const-string v3, "SHA512WITHXMSSMT-SHA512"

    invoke-interface {p1, v2, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.Signature.SHAKE256WITHXMSSMT"

    const-string v3, "SHAKE256WITHXMSSMT-SHAKE256"

    invoke-interface {p1, v2, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.Signature.SHAKE256(1024)WITHXMSSMT"

    const-string v3, "SHAKE256(1024)WITHXMSSMT-SHAKE256"

    invoke-interface {p1, v2, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->xmss:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v3, Lorg/bouncycastle/pqc/jcajce/provider/xmss/XMSSKeyFactorySpi;

    invoke-direct {v3}, Lorg/bouncycastle/pqc/jcajce/provider/xmss/XMSSKeyFactorySpi;-><init>()V

    invoke-virtual {p0, p1, v2, v7, v3}, Lorg/bouncycastle/pqc/jcajce/provider/XMSS$Mappings;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v2, Lorg/bouncycastle/internal/asn1/isara/IsaraObjectIdentifiers;->id_alg_xmss:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v3, Lorg/bouncycastle/pqc/jcajce/provider/xmss/XMSSKeyFactorySpi;

    invoke-direct {v3}, Lorg/bouncycastle/pqc/jcajce/provider/xmss/XMSSKeyFactorySpi;-><init>()V

    invoke-virtual {p0, p1, v2, v7, v3}, Lorg/bouncycastle/pqc/jcajce/provider/XMSS$Mappings;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v2, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->xmss_mt:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v3, Lorg/bouncycastle/pqc/jcajce/provider/xmss/XMSSMTKeyFactorySpi;

    invoke-direct {v3}, Lorg/bouncycastle/pqc/jcajce/provider/xmss/XMSSMTKeyFactorySpi;-><init>()V

    invoke-virtual {p0, p1, v2, v6, v3}, Lorg/bouncycastle/pqc/jcajce/provider/XMSS$Mappings;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v2, Lorg/bouncycastle/internal/asn1/isara/IsaraObjectIdentifiers;->id_alg_xmssmt:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v3, Lorg/bouncycastle/pqc/jcajce/provider/xmss/XMSSMTKeyFactorySpi;

    invoke-direct {v3}, Lorg/bouncycastle/pqc/jcajce/provider/xmss/XMSSMTKeyFactorySpi;-><init>()V

    invoke-virtual {p0, p1, v2, v6, v3}, Lorg/bouncycastle/pqc/jcajce/provider/XMSS$Mappings;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    return-void
.end method
