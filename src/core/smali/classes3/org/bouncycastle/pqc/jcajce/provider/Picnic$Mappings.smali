.class public Lorg/bouncycastle/pqc/jcajce/provider/Picnic$Mappings;
.super Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/Picnic;
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
    .locals 6

    const-string v2, "KeyFactory.PICNIC"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.picnic.PicnicKeyFactorySpi"

    invoke-interface {p1, v2, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "KeyPairGenerator.PICNIC"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.picnic.PicnicKeyPairGeneratorSpi"

    invoke-interface {p1, v2, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.picnic.SignatureSpi$Base"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->picnic_signature:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "PICNIC"

    invoke-virtual {p0, p1, v4, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Picnic$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v4, "org.bouncycastle.pqc.jcajce.provider.picnic.SignatureSpi$withShake256"

    sget-object v5, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->picnic_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHAKE256"

    const-string v3, "PICNIC"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/Picnic$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v4, "org.bouncycastle.pqc.jcajce.provider.picnic.SignatureSpi$withSha512"

    sget-object v5, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->picnic_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA512"

    const-string v3, "PICNIC"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/Picnic$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v4, "org.bouncycastle.pqc.jcajce.provider.picnic.SignatureSpi$withSha3512"

    sget-object v5, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->picnic_with_sha3_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA3-512"

    const-string v3, "PICNIC"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/Picnic$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance v2, Lorg/bouncycastle/pqc/jcajce/provider/picnic/PicnicKeyFactorySpi;

    invoke-direct {v2}, Lorg/bouncycastle/pqc/jcajce/provider/picnic/PicnicKeyFactorySpi;-><init>()V

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->picnic_key:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "Picnic"

    invoke-virtual {p0, p1, v3, v4, v2}, Lorg/bouncycastle/pqc/jcajce/provider/Picnic$Mappings;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->picnicl1fs:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v3, v4, v2}, Lorg/bouncycastle/pqc/jcajce/provider/Picnic$Mappings;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->picnicl1ur:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v3, v4, v2}, Lorg/bouncycastle/pqc/jcajce/provider/Picnic$Mappings;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->picnicl3fs:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v3, v4, v2}, Lorg/bouncycastle/pqc/jcajce/provider/Picnic$Mappings;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->picnicl3ur:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v3, v4, v2}, Lorg/bouncycastle/pqc/jcajce/provider/Picnic$Mappings;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->picnicl5fs:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v3, v4, v2}, Lorg/bouncycastle/pqc/jcajce/provider/Picnic$Mappings;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->picnicl5ur:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v3, v4, v2}, Lorg/bouncycastle/pqc/jcajce/provider/Picnic$Mappings;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->picnic3l1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v3, v4, v2}, Lorg/bouncycastle/pqc/jcajce/provider/Picnic$Mappings;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->picnic3l3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v3, v4, v2}, Lorg/bouncycastle/pqc/jcajce/provider/Picnic$Mappings;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->picnic3l5:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v3, v4, v2}, Lorg/bouncycastle/pqc/jcajce/provider/Picnic$Mappings;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->picnicl1full:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v3, v4, v2}, Lorg/bouncycastle/pqc/jcajce/provider/Picnic$Mappings;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->picnicl3full:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v3, v4, v2}, Lorg/bouncycastle/pqc/jcajce/provider/Picnic$Mappings;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->picnicl5full:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v3, v4, v2}, Lorg/bouncycastle/pqc/jcajce/provider/Picnic$Mappings;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    return-void
.end method
