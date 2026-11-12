.class public Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;
.super Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/EC;
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

    const-string v0, "AlgorithmParameters.EC"

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.ec.AlgorithmParametersSpi"

    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DH"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "KeyAgreement.ECDH"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v0

    const-string v2, "KeyAgreement.ECDHC"

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHC"

    invoke-interface {p1, v2, v3, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "KeyAgreement.ECCDH"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v0, v3, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHUC"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "KeyAgreement.ECCDHU"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v0

    const-string v2, "KeyAgreement.ECDHWITHSHA1KDF"

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHwithSHA1KDFAndSharedInfo"

    invoke-interface {p1, v2, v3, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v0

    const-string v2, "KeyAgreement.ECCDHWITHSHA1KDF"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$CDHwithSHA1KDFAndSharedInfo"

    invoke-interface {p1, v2, v4, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v0

    const-string v2, "KeyAgreement.ECDHWITHSHA224KDF"

    const-string v5, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHwithSHA224KDFAndSharedInfo"

    invoke-interface {p1, v2, v5, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v0

    const-string v2, "KeyAgreement.ECCDHWITHSHA224KDF"

    const-string v6, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$CDHwithSHA224KDFAndSharedInfo"

    invoke-interface {p1, v2, v6, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v0

    const-string v2, "KeyAgreement.ECDHWITHSHA256KDF"

    const-string v7, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHwithSHA256KDFAndSharedInfo"

    invoke-interface {p1, v2, v7, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v0

    const-string v2, "KeyAgreement.ECCDHWITHSHA256KDF"

    const-string v8, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$CDHwithSHA256KDFAndSharedInfo"

    invoke-interface {p1, v2, v8, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v0

    const-string v2, "KeyAgreement.ECDHWITHSHA384KDF"

    const-string v9, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHwithSHA384KDFAndSharedInfo"

    invoke-interface {p1, v2, v9, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v0

    const-string v2, "KeyAgreement.ECCDHWITHSHA384KDF"

    const-string v10, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$CDHwithSHA384KDFAndSharedInfo"

    invoke-interface {p1, v2, v10, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v0

    const-string v2, "KeyAgreement.ECDHWITHSHA512KDF"

    const-string v11, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHwithSHA512KDFAndSharedInfo"

    invoke-interface {p1, v2, v11, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v0

    const-string v2, "KeyAgreement.ECCDHWITHSHA512KDF"

    const-string v12, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$CDHwithSHA512KDFAndSharedInfo"

    invoke-interface {p1, v2, v12, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->dhSinglePass_stdDH_sha1kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v13, "KeyAgreement"

    invoke-interface {p1, v13, v0, v3, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->dhSinglePass_cofactorDH_sha1kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v13, v0, v4, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->dhSinglePass_stdDH_sha224kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v13, v0, v5, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->dhSinglePass_cofactorDH_sha224kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v13, v0, v6, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->dhSinglePass_stdDH_sha256kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v13, v0, v7, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->dhSinglePass_cofactorDH_sha256kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v13, v0, v8, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->dhSinglePass_stdDH_sha384kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v13, v0, v9, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->dhSinglePass_cofactorDH_sha384kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v13, v0, v10, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->dhSinglePass_stdDH_sha512kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v13, v0, v11, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->dhSinglePass_cofactorDH_sha512kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v13, v0, v12, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHwithSHA1CKDF"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "KeyAgreement.ECCDHWITHSHA1CKDF"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHwithSHA256CKDF"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "KeyAgreement.ECCDHWITHSHA256CKDF"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHwithSHA384CKDF"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "KeyAgreement.ECCDHWITHSHA384CKDF"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHwithSHA512CKDF"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "KeyAgreement.ECCDHWITHSHA512CKDF"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHUwithSHA1CKDF"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "KeyAgreement.ECCDHUWITHSHA1CKDF"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHUwithSHA224CKDF"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "KeyAgreement.ECCDHUWITHSHA224CKDF"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHUwithSHA256CKDF"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "KeyAgreement.ECCDHUWITHSHA256CKDF"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHUwithSHA384CKDF"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "KeyAgreement.ECCDHUWITHSHA384CKDF"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHUwithSHA512CKDF"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "KeyAgreement.ECCDHUWITHSHA512CKDF"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHUwithSHA1KDF"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "KeyAgreement.ECCDHUWITHSHA1KDF"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHUwithSHA224KDF"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "KeyAgreement.ECCDHUWITHSHA224KDF"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHUwithSHA256KDF"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "KeyAgreement.ECCDHUWITHSHA256KDF"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHUwithSHA384KDF"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "KeyAgreement.ECCDHUWITHSHA384KDF"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHUwithSHA512KDF"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "KeyAgreement.ECCDHUWITHSHA512KDF"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v0

    const-string v2, "KeyAgreement.ECKAEGWITHSHA1KDF"

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$ECKAEGwithSHA1KDF"

    invoke-interface {p1, v2, v3, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v0

    const-string v2, "KeyAgreement.ECKAEGWITHSHA224KDF"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$ECKAEGwithSHA224KDF"

    invoke-interface {p1, v2, v4, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$ECKAEGwithSHA256KDF"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v5, "KeyAgreement.ECKAEGWITHSHA256KDF"

    invoke-interface {p1, v5, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$ECKAEGwithSHA384KDF"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v5, "KeyAgreement.ECKAEGWITHSHA384KDF"

    invoke-interface {p1, v5, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$ECKAEGwithSHA512KDF"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v5, "KeyAgreement.ECKAEGWITHSHA512KDF"

    invoke-interface {p1, v5, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v0, Lorg/bouncycastle/internal/asn1/bsi/BSIObjectIdentifiers;->ecka_eg_X963kdf_SHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v13, v0, v3, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v0, Lorg/bouncycastle/internal/asn1/bsi/BSIObjectIdentifiers;->ecka_eg_X963kdf_SHA224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v13, v0, v4, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v0, Lorg/bouncycastle/internal/asn1/bsi/BSIObjectIdentifiers;->ecka_eg_X963kdf_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$ECKAEGwithSHA256KDF"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v3

    invoke-interface {p1, v13, v0, v2, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v0, Lorg/bouncycastle/internal/asn1/bsi/BSIObjectIdentifiers;->ecka_eg_X963kdf_SHA384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$ECKAEGwithSHA384KDF"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v3

    invoke-interface {p1, v13, v0, v2, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v0, Lorg/bouncycastle/internal/asn1/bsi/BSIObjectIdentifiers;->ecka_eg_X963kdf_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$ECKAEGwithSHA512KDF"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v3

    invoke-interface {p1, v13, v0, v2, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v0, Lorg/bouncycastle/internal/asn1/bsi/BSIObjectIdentifiers;->ecka_eg_X963kdf_RIPEMD160:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$ECKAEGwithRIPEMD160KDF"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v3

    invoke-interface {p1, v13, v0, v2, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$ECKAEGwithRIPEMD160KDF"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "KeyAgreement.ECKAEGWITHRIPEMD160KDF"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;

    invoke-direct {v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;-><init>()V

    const-string v3, "EC"

    invoke-virtual {p0, p1, v0, v3, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->dhSinglePass_stdDH_sha1kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;

    invoke-direct {v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;-><init>()V

    invoke-virtual {p0, p1, v0, v3, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->dhSinglePass_cofactorDH_sha1kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;

    invoke-direct {v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;-><init>()V

    invoke-virtual {p0, p1, v0, v3, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->dhSinglePass_stdDH_sha224kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;

    invoke-direct {v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;-><init>()V

    invoke-virtual {p0, p1, v0, v3, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->dhSinglePass_cofactorDH_sha224kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;

    invoke-direct {v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;-><init>()V

    invoke-virtual {p0, p1, v0, v3, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->dhSinglePass_stdDH_sha256kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;

    invoke-direct {v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;-><init>()V

    invoke-virtual {p0, p1, v0, v3, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->dhSinglePass_cofactorDH_sha256kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;

    invoke-direct {v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;-><init>()V

    invoke-virtual {p0, p1, v0, v3, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->dhSinglePass_stdDH_sha384kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;

    invoke-direct {v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;-><init>()V

    invoke-virtual {p0, p1, v0, v3, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->dhSinglePass_cofactorDH_sha384kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;

    invoke-direct {v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;-><init>()V

    invoke-virtual {p0, p1, v0, v3, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->dhSinglePass_stdDH_sha512kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;

    invoke-direct {v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;-><init>()V

    invoke-virtual {p0, p1, v0, v3, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->dhSinglePass_cofactorDH_sha512kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;

    invoke-direct {v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;-><init>()V

    invoke-virtual {p0, p1, v0, v3, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v0, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->registerOidAlgorithmParameters(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->dhSinglePass_stdDH_sha1kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v0, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->registerOidAlgorithmParameters(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->dhSinglePass_cofactorDH_sha1kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v0, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->registerOidAlgorithmParameters(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->dhSinglePass_stdDH_sha224kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v0, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->registerOidAlgorithmParameters(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->dhSinglePass_cofactorDH_sha224kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v0, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->registerOidAlgorithmParameters(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->dhSinglePass_stdDH_sha256kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v0, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->registerOidAlgorithmParameters(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->dhSinglePass_cofactorDH_sha256kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v0, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->registerOidAlgorithmParameters(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->dhSinglePass_stdDH_sha384kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v0, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->registerOidAlgorithmParameters(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->dhSinglePass_cofactorDH_sha384kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v0, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->registerOidAlgorithmParameters(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->dhSinglePass_stdDH_sha512kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v0, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->registerOidAlgorithmParameters(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->dhSinglePass_cofactorDH_sha512kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v0, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->registerOidAlgorithmParameters(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    const-string v0, "org.bouncycastle.ec.disable_mqv"

    invoke-static {v0}, Lorg/bouncycastle/util/Properties;->isOverrideSet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$MQV"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v4, "KeyAgreement.ECMQV"

    invoke-interface {p1, v4, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$MQVwithSHA1CKDF"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v4, "KeyAgreement.ECMQVWITHSHA1CKDF"

    invoke-interface {p1, v4, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$MQVwithSHA224CKDF"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v4, "KeyAgreement.ECMQVWITHSHA224CKDF"

    invoke-interface {p1, v4, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$MQVwithSHA256CKDF"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v4, "KeyAgreement.ECMQVWITHSHA256CKDF"

    invoke-interface {p1, v4, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$MQVwithSHA384CKDF"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v4, "KeyAgreement.ECMQVWITHSHA384CKDF"

    invoke-interface {p1, v4, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$MQVwithSHA512CKDF"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v4, "KeyAgreement.ECMQVWITHSHA512CKDF"

    invoke-interface {p1, v4, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$MQVwithSHA1KDF"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v4, "KeyAgreement.ECMQVWITHSHA1KDF"

    invoke-interface {p1, v4, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$MQVwithSHA224KDF"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v4, "KeyAgreement.ECMQVWITHSHA224KDF"

    invoke-interface {p1, v4, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$MQVwithSHA256KDF"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v4, "KeyAgreement.ECMQVWITHSHA256KDF"

    invoke-interface {p1, v4, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$MQVwithSHA384KDF"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v4, "KeyAgreement.ECMQVWITHSHA384KDF"

    invoke-interface {p1, v4, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$MQVwithSHA512KDF"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v4, "KeyAgreement.ECMQVWITHSHA512KDF"

    invoke-interface {p1, v4, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "KeyAgreement."

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->mqvSinglePass_sha1kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$MQVwithSHA1KDFAndSharedInfo"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v5

    invoke-interface {p1, v0, v4, v5}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->mqvSinglePass_sha224kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$MQVwithSHA224KDFAndSharedInfo"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v5

    invoke-interface {p1, v0, v4, v5}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->mqvSinglePass_sha256kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$MQVwithSHA256KDFAndSharedInfo"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v5

    invoke-interface {p1, v0, v4, v5}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->mqvSinglePass_sha384kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$MQVwithSHA384KDFAndSharedInfo"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v5

    invoke-interface {p1, v0, v4, v5}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->mqvSinglePass_sha512kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$MQVwithSHA512KDFAndSharedInfo"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v4

    invoke-interface {p1, v0, v2, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->mqvSinglePass_sha1kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$ECMQV;

    invoke-direct {v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$ECMQV;-><init>()V

    const-string v4, "ECMQV"

    invoke-virtual {p0, p1, v0, v4, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->mqvSinglePass_sha1kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v0, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->registerOidAlgorithmParameters(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->mqvSinglePass_sha224kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$ECMQV;

    invoke-direct {v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$ECMQV;-><init>()V

    invoke-virtual {p0, p1, v0, v4, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->mqvSinglePass_sha224kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v0, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->registerOidAlgorithmParameters(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->mqvSinglePass_sha256kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$ECMQV;

    invoke-direct {v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$ECMQV;-><init>()V

    invoke-virtual {p0, p1, v0, v4, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->mqvSinglePass_sha256kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v0, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->registerOidAlgorithmParameters(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->mqvSinglePass_sha384kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$ECMQV;

    invoke-direct {v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$ECMQV;-><init>()V

    invoke-virtual {p0, p1, v0, v4, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->mqvSinglePass_sha384kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v0, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->registerOidAlgorithmParameters(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->mqvSinglePass_sha512kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$ECMQV;

    invoke-direct {v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$ECMQV;-><init>()V

    invoke-virtual {p0, p1, v0, v4, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->mqvSinglePass_sha512kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v0, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->registerOidAlgorithmParameters(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    const-string v0, "KeyFactory.ECMQV"

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyFactorySpi$ECMQV"

    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyPairGenerator.ECMQV"

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyPairGeneratorSpi$ECMQV"

    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "KeyFactory.EC"

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyFactorySpi$EC"

    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyFactory.ECDSA"

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyFactorySpi$ECDSA"

    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyFactory.ECDH"

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyFactorySpi$ECDH"

    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyFactory.ECDHC"

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyFactorySpi$ECDHC"

    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyPairGenerator.EC"

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyPairGeneratorSpi$EC"

    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyPairGenerator.ECDSA"

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyPairGeneratorSpi$ECDSA"

    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyPairGenerator.ECDH"

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyPairGeneratorSpi$ECDH"

    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyPairGenerator.ECDHWITHSHA1KDF"

    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyPairGenerator.ECDHC"

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyPairGeneratorSpi$ECDHC"

    invoke-interface {p1, v0, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyPairGenerator.ECIES"

    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Cipher.ECIES"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIES"

    invoke-interface {p1, v0, v3, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "Cipher.ECIESwithSHA1"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v0, v3, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "Cipher.ECIESWITHSHA1"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v0, v3, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA256"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Cipher.ECIESwithSHA256"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA256"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Cipher.ECIESWITHSHA256"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA384"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Cipher.ECIESwithSHA384"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA384"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Cipher.ECIESWITHSHA384"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA512"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Cipher.ECIESwithSHA512"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA512"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Cipher.ECIESWITHSHA512"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "Cipher.ECIESwithAES-CBC"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithAESCBC"

    invoke-interface {p1, v0, v3, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "Cipher.ECIESWITHAES-CBC"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v0, v3, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "Cipher.ECIESwithSHA1andAES-CBC"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v0, v3, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "Cipher.ECIESWITHSHA1ANDAES-CBC"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v0, v3, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA256andAESCBC"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Cipher.ECIESwithSHA256andAES-CBC"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA256andAESCBC"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Cipher.ECIESWITHSHA256ANDAES-CBC"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA384andAESCBC"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Cipher.ECIESwithSHA384andAES-CBC"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA384andAESCBC"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Cipher.ECIESWITHSHA384ANDAES-CBC"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA512andAESCBC"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Cipher.ECIESwithSHA512andAES-CBC"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA512andAESCBC"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Cipher.ECIESWITHSHA512ANDAES-CBC"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "Cipher.ECIESwithDESEDE-CBC"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithDESedeCBC"

    invoke-interface {p1, v0, v3, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "Cipher.ECIESWITHDESEDE-CBC"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v0, v3, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "Cipher.ECIESwithSHA1andDESEDE-CBC"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v0, v3, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "Cipher.ECIESWITHSHA1ANDDESEDE-CBC"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v0, v3, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA256andDESedeCBC"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Cipher.ECIESwithSHA256andDESEDE-CBC"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA256andDESedeCBC"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Cipher.ECIESWITHSHA256ANDDESEDE-CBC"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA384andDESedeCBC"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Cipher.ECIESwithSHA384andDESEDE-CBC"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA384andDESedeCBC"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Cipher.ECIESWITHSHA384ANDDESEDE-CBC"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA512andDESedeCBC"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Cipher.ECIESwithSHA512andDESEDE-CBC"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA512andDESedeCBC"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Cipher.ECIESWITHSHA512ANDDESEDE-CBC"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESKEMCipher$KEMwithSHA256"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Cipher.ETSIKEMWITHSHA256"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSA"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Signature.ECDSA"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSAnone"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Signature.NONEwithECDSA"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "Alg.Alias.Signature.SHA1withECDSA"

    const-string v2, "ECDSA"

    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.ECDSAwithSHA1"

    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.SHA1WITHECDSA"

    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.ECDSAWITHSHA1"

    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.SHA1WithECDSA"

    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.ECDSAWithSHA1"

    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.1.2.840.10045.4.1"

    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Alg.Alias.Signature."

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ecSignWithSha1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDetDSA"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Signature.ECDDSA"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDetDSA"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Signature.SHA1WITHECDDSA"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDetDSA224"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Signature.SHA224WITHECDDSA"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDetDSA256"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Signature.SHA256WITHECDDSA"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDetDSA384"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Signature.SHA384WITHECDDSA"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDetDSA512"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Signature.SHA512WITHECDDSA"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDetDSASha3_224"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Signature.SHA3-224WITHECDDSA"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDetDSASha3_256"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Signature.SHA3-256WITHECDDSA"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDetDSASha3_384"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Signature.SHA3-384WITHECDDSA"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDetDSASha3_512"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Signature.SHA3-512WITHECDDSA"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "Alg.Alias.Signature.DETECDSA"

    const-string v2, "ECDDSA"

    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.SHA1WITHDETECDSA"

    const-string v2, "SHA1WITHECDDSA"

    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.SHA224WITHDETECDSA"

    const-string v2, "SHA224WITHECDDSA"

    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.SHA256WITHDETECDSA"

    const-string v2, "SHA256WITHECDDSA"

    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.SHA384WITHDETECDSA"

    const-string v2, "SHA384WITHECDDSA"

    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.SHA512WITHDETECDSA"

    const-string v2, "SHA512WITHECDDSA"

    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v6

    const-string v2, "SHA224"

    const-string v3, "ECDSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSA224"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)V

    sget-object v5, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v6

    const-string v2, "SHA256"

    const-string v3, "ECDSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSA256"

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)V

    sget-object v5, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v6

    const-string v2, "SHA384"

    const-string v3, "ECDSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSA384"

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)V

    sget-object v5, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v6

    const-string v2, "SHA512"

    const-string v3, "ECDSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSA512"

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)V

    sget-object v5, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ecdsa_with_sha3_224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v6

    const-string v2, "SHA3-224"

    const-string v3, "ECDSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSASha3_224"

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)V

    sget-object v5, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ecdsa_with_sha3_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v6

    const-string v2, "SHA3-256"

    const-string v3, "ECDSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSASha3_256"

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)V

    sget-object v5, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ecdsa_with_sha3_384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v6

    const-string v2, "SHA3-384"

    const-string v3, "ECDSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSASha3_384"

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)V

    sget-object v5, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ecdsa_with_sha3_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v6

    const-string v2, "SHA3-512"

    const-string v3, "ECDSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSASha3_512"

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)V

    sget-object v5, Lorg/bouncycastle/internal/asn1/cms/CMSObjectIdentifiers;->id_ecdsa_with_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v6

    const-string v2, "SHAKE128"

    const-string v3, "ECDSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSAShake128"

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)V

    sget-object v5, Lorg/bouncycastle/internal/asn1/cms/CMSObjectIdentifiers;->id_ecdsa_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v6

    const-string v2, "SHAKE256"

    const-string v3, "ECDSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSAShake256"

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)V

    sget-object v5, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ecSignWithRipemd160:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v6

    const-string v2, "RIPEMD160"

    const-string v3, "ECDSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSARipeMD160"

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecNR"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Signature.SHA1WITHECNR"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecNR224"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Signature.SHA224WITHECNR"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecNR256"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Signature.SHA256WITHECNR"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecNR384"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Signature.SHA384WITHECNR"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecNR512"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Signature.SHA512WITHECNR"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v5, Lorg/bouncycastle/internal/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v6

    const-string v2, "SHA1"

    const-string v3, "CVC-ECDSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)V

    sget-object v5, Lorg/bouncycastle/internal/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v6

    const-string v2, "SHA224"

    const-string v3, "CVC-ECDSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA224"

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)V

    sget-object v5, Lorg/bouncycastle/internal/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v6

    const-string v2, "SHA256"

    const-string v3, "CVC-ECDSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA256"

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)V

    sget-object v5, Lorg/bouncycastle/internal/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v6

    const-string v2, "SHA384"

    const-string v3, "CVC-ECDSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA384"

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)V

    sget-object v5, Lorg/bouncycastle/internal/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v6

    const-string v2, "SHA512"

    const-string v3, "CVC-ECDSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA512"

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)V

    sget-object v5, Lorg/bouncycastle/internal/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v6

    const-string v2, "SHA1"

    const-string v3, "PLAIN-ECDSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA"

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)V

    sget-object v5, Lorg/bouncycastle/internal/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v6

    const-string v2, "SHA224"

    const-string v3, "PLAIN-ECDSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA224"

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)V

    sget-object v5, Lorg/bouncycastle/internal/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v6

    const-string v2, "SHA256"

    const-string v3, "PLAIN-ECDSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA256"

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)V

    sget-object v5, Lorg/bouncycastle/internal/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v6

    const-string v2, "SHA384"

    const-string v3, "PLAIN-ECDSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA384"

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)V

    sget-object v5, Lorg/bouncycastle/internal/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v6

    const-string v2, "SHA512"

    const-string v3, "PLAIN-ECDSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA512"

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)V

    sget-object v5, Lorg/bouncycastle/internal/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_RIPEMD160:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v6

    const-string v2, "RIPEMD160"

    const-string v3, "PLAIN-ECDSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecPlainDSARP160"

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)V

    sget-object v5, Lorg/bouncycastle/internal/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA3_224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v6

    const-string v2, "SHA3-224"

    const-string v3, "PLAIN-ECDSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA3_224"

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)V

    sget-object v5, Lorg/bouncycastle/internal/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA3_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v6

    const-string v2, "SHA3-256"

    const-string v3, "PLAIN-ECDSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA3_256"

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)V

    sget-object v5, Lorg/bouncycastle/internal/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA3_384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v6

    const-string v2, "SHA3-384"

    const-string v3, "PLAIN-ECDSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA3_384"

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)V

    sget-object v5, Lorg/bouncycastle/internal/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA3_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    move-result-object v6

    const-string v2, "SHA3-512"

    const-string v3, "PLAIN-ECDSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA3_512"

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)V

    return-void
.end method
