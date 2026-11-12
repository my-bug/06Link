.class Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;
.super Ljava/security/cert/PKIXCertPathChecker;


# static fields
.field private static final DER_NULL_ENCODING:[B

.field static final KU_DIGITAL_SIGNATURE:I = 0x0

.field static final KU_KEY_AGREEMENT:I = 0x4

.field static final KU_KEY_ENCIPHERMENT:I = 0x2

.field private static final SIG_ALG_NAME_rsa_pss_pss_sha256:Ljava/lang/String;

.field private static final SIG_ALG_NAME_rsa_pss_pss_sha384:Ljava/lang/String;

.field private static final SIG_ALG_NAME_rsa_pss_pss_sha512:Ljava/lang/String;

.field private static final SIG_ALG_NAME_rsa_pss_rsae_sha256:Ljava/lang/String;

.field private static final SIG_ALG_NAME_rsa_pss_rsae_sha384:Ljava/lang/String;

.field private static final SIG_ALG_NAME_rsa_pss_rsae_sha512:Ljava/lang/String;

.field private static final sigAlgNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sigAlgNoParams:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final algorithmConstraints:Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;

.field private final helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

.field private final isInFipsMode:Z

.field private issuerCert:Ljava/security/cert/X509Certificate;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->createSigAlgNames()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->sigAlgNames:Ljava/util/Map;

    invoke-static {}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->createSigAlgNoParams()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->sigAlgNoParams:Ljava/util/Set;

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->DER_NULL_ENCODING:[B

    const-string v0, "SHA256withRSAandMGF1"

    const-string v1, "RSASSA-PSS"

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getJcaSignatureAlgorithmBC(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->SIG_ALG_NAME_rsa_pss_pss_sha256:Ljava/lang/String;

    const-string v2, "SHA384withRSAandMGF1"

    invoke-static {v2, v1}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getJcaSignatureAlgorithmBC(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->SIG_ALG_NAME_rsa_pss_pss_sha384:Ljava/lang/String;

    const-string v3, "SHA512withRSAandMGF1"

    invoke-static {v3, v1}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getJcaSignatureAlgorithmBC(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->SIG_ALG_NAME_rsa_pss_pss_sha512:Ljava/lang/String;

    const-string v1, "RSA"

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getJcaSignatureAlgorithmBC(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->SIG_ALG_NAME_rsa_pss_rsae_sha256:Ljava/lang/String;

    invoke-static {v2, v1}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getJcaSignatureAlgorithmBC(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->SIG_ALG_NAME_rsa_pss_rsae_sha384:Ljava/lang/String;

    invoke-static {v3, v1}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getJcaSignatureAlgorithmBC(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->SIG_ALG_NAME_rsa_pss_rsae_sha512:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x5t
        0x0t
    .end array-data
.end method

.method constructor <init>(ZLorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;)V
    .locals 0

    invoke-direct {p0}, Ljava/security/cert/PKIXCertPathChecker;-><init>()V

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    iput-boolean p1, p0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->isInFipsMode:Z

    iput-object p2, p0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    iput-object p3, p0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->algorithmConstraints:Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->issuerCert:Ljava/security/cert/X509Certificate;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "\'algorithmConstraints\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "\'helper\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static checkCertPathExtras(Lorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;[Ljava/security/cert/X509Certificate;Lorg/bouncycastle/asn1/x509/KeyPurposeId;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    array-length v0, p2

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-object v0, p2, v0

    array-length v2, p2

    if-le v2, v1, :cond_0

    array-length v1, p2

    add-int/lit8 v1, v1, -0x2

    aget-object v1, p2, v1

    invoke-static {p0, p1, v1, v0}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->checkIssuedBy(Lorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)V

    :cond_0
    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->checkEndEntity(Lorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;Ljava/security/cert/X509Certificate;Lorg/bouncycastle/asn1/x509/KeyPurposeId;I)V

    return-void
.end method

.method static checkChain(ZLorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;Ljava/util/Set;[Ljava/security/cert/X509Certificate;Lorg/bouncycastle/asn1/x509/KeyPurposeId;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/bouncycastle/jcajce/util/JcaJceHelper;",
            "Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;",
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;[",
            "Ljava/security/cert/X509Certificate;",
            "Lorg/bouncycastle/asn1/x509/KeyPurposeId;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    array-length v0, p4

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    aget-object v1, p4, v1

    invoke-interface {p3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    array-length p3, p4

    if-ge v0, p3, :cond_1

    aget-object p3, p4, v0

    if-lez v0, :cond_2

    add-int/lit8 v1, v0, -0x1

    aget-object v1, p4, v1

    invoke-static {p1, p2, v1, p3}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->checkIssuedBy(Lorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)V

    goto :goto_1

    :cond_1
    add-int/lit8 p3, v0, -0x1

    aget-object p3, p4, p3

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->checkIssued(Lorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;Ljava/security/cert/X509Certificate;)V

    :cond_2
    :goto_1
    new-instance p3, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;

    invoke-direct {p3, p0, p1, p2}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;-><init>(ZLorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;)V

    const/4 p0, 0x0

    invoke-virtual {p3, p0}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->init(Z)V

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_3

    aget-object v1, p4, v0

    sget-object v2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-virtual {p3, v1, v2}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    aget-object p0, p4, p0

    invoke-static {p1, p2, p0, p5, p6}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->checkEndEntity(Lorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;Ljava/security/cert/X509Certificate;Lorg/bouncycastle/asn1/x509/KeyPurposeId;I)V

    return-void
.end method

.method private static checkEndEntity(Lorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;Ljava/security/cert/X509Certificate;Lorg/bouncycastle/asn1/x509/KeyPurposeId;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    const-string p0, "Certificate doesn\'t support \'"

    if-eqz p3, :cond_1

    invoke-static {p2, p3}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->supportsExtendedKeyUsage(Ljava/security/cert/X509Certificate;Lorg/bouncycastle/asn1/x509/KeyPurposeId;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/cert/CertPathValidatorException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->getExtendedKeyUsageName(Lorg/bouncycastle/asn1/x509/KeyPurposeId;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' ExtendedKeyUsage"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-ltz p4, :cond_4

    invoke-static {p2, p4}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->supportsKeyUsage(Ljava/security/cert/X509Certificate;I)Z

    move-result p3

    const-string v0, "\' KeyUsage"

    if-eqz p3, :cond_3

    invoke-static {p4}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->getKeyUsagePrimitives(I)Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/security/Key;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/security/cert/CertPathValidatorException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Public key not permitted for \'"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->getKeyUsageName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p1, Ljava/security/cert/CertPathValidatorException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->getKeyUsageName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    return-void
.end method

.method private static checkIssued(Lorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;Ljava/security/cert/X509Certificate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->getSigAlgName(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/JsseUtils;->isNameSpecified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0, p2}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->getSigAlgParams(Lorg/bouncycastle/jcajce/util/JcaJceHelper;Ljava/security/cert/X509Certificate;)Ljava/security/AlgorithmParameters;

    move-result-object p0

    sget-object p2, Lorg/bouncycastle/jsse/provider/JsseUtils;->SIGNATURE_CRYPTO_PRIMITIVES_BC:Ljava/util/Set;

    invoke-interface {p1, p2, v0, p0}, Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/security/cert/CertPathValidatorException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Signature algorithm \'"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' not permitted with given parameters"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/security/cert/CertPathValidatorException;

    const-string p1, "Signature algorithm could not be determined"

    invoke-direct {p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static checkIssuedBy(Lorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    invoke-static {p2, p3}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->getSigAlgName(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/JsseUtils;->isNameSpecified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0, p2}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->getSigAlgParams(Lorg/bouncycastle/jcajce/util/JcaJceHelper;Ljava/security/cert/X509Certificate;)Ljava/security/AlgorithmParameters;

    move-result-object p0

    sget-object p2, Lorg/bouncycastle/jsse/provider/JsseUtils;->SIGNATURE_CRYPTO_PRIMITIVES_BC:Ljava/util/Set;

    invoke-virtual {p3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p3

    invoke-interface {p1, p2, v0, p3, p0}, Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/security/cert/CertPathValidatorException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Signature algorithm \'"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' not permitted with given parameters and issuer public key"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/security/cert/CertPathValidatorException;

    const-string p1, "Signature algorithm could not be determined"

    invoke-direct {p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static createSigAlgNames()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sget-object v1, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_Ed25519:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ed25519"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_Ed448:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ed448"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->dsaWithSHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SHA1withDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa_with_sha1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static createSigAlgNoParams()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sget-object v1, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->dsaWithSHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa_with_sha1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static getExtendedKeyUsageName(Lorg/bouncycastle/asn1/x509/KeyPurposeId;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_clientAuth:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "clientAuth"

    return-object p0

    :cond_0
    sget-object v0, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_serverAuth:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "serverAuth"

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getKeyUsageName(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "keyAgreement"

    return-object p0

    :cond_1
    const-string p0, "keyEncipherment"

    return-object p0

    :cond_2
    const-string p0, "digitalSignature"

    return-object p0
.end method

.method static getKeyUsagePrimitives(I)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    sget-object p0, Lorg/bouncycastle/jsse/provider/JsseUtils;->SIGNATURE_CRYPTO_PRIMITIVES_BC:Ljava/util/Set;

    return-object p0

    :cond_0
    sget-object p0, Lorg/bouncycastle/jsse/provider/JsseUtils;->KEY_AGREEMENT_CRYPTO_PRIMITIVES_BC:Ljava/util/Set;

    return-object p0

    :cond_1
    sget-object p0, Lorg/bouncycastle/jsse/provider/JsseUtils;->KEY_ENCAPSULATION_CRYPTO_PRIMITIVES_BC:Ljava/util/Set;

    return-object p0
.end method

.method static getSigAlgName(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSigAlgOID()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->sigAlgNames:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSigAlgParams()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getHashAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    if-eqz v0, :cond_7

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, p1

    :goto_0
    :try_start_0
    new-instance p1, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;

    invoke-direct {p1, v1, p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;-><init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Ljava/security/cert/X509Certificate;)V

    sget-object p0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/16 p0, 0x9

    invoke-virtual {p1, p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->supportsSignatureAlgorithmCA(S)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->SIG_ALG_NAME_rsa_pss_pss_sha256:Ljava/lang/String;

    return-object p0

    :cond_2
    const/4 p0, 0x4

    invoke-virtual {p1, p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->supportsSignatureAlgorithmCA(S)Z

    move-result p0

    if-eqz p0, :cond_7

    sget-object p0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->SIG_ALG_NAME_rsa_pss_rsae_sha256:Ljava/lang/String;

    return-object p0

    :cond_3
    sget-object p0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/16 p0, 0xa

    invoke-virtual {p1, p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->supportsSignatureAlgorithmCA(S)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->SIG_ALG_NAME_rsa_pss_pss_sha384:Ljava/lang/String;

    return-object p0

    :cond_4
    const/4 p0, 0x5

    invoke-virtual {p1, p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->supportsSignatureAlgorithmCA(S)Z

    move-result p0

    if-eqz p0, :cond_7

    sget-object p0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->SIG_ALG_NAME_rsa_pss_rsae_sha384:Ljava/lang/String;

    return-object p0

    :cond_5
    sget-object p0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/16 p0, 0xb

    invoke-virtual {p1, p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->supportsSignatureAlgorithmCA(S)Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->SIG_ALG_NAME_rsa_pss_pss_sha512:Ljava/lang/String;

    return-object p0

    :cond_6
    const/4 p0, 0x6

    invoke-virtual {p1, p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->supportsSignatureAlgorithmCA(S)Z

    move-result p0

    if-eqz p0, :cond_7

    sget-object p0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->SIG_ALG_NAME_rsa_pss_rsae_sha512:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_7
    return-object v1

    :cond_8
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getSigAlgParams(Lorg/bouncycastle/jcajce/util/JcaJceHelper;Ljava/security/cert/X509Certificate;)Ljava/security/AlgorithmParameters;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSigAlgParams()[B

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSigAlgOID()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->sigAlgNoParams:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->DER_NULL_ENCODING:[B

    invoke-static {v2, v0}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    :try_start_0
    invoke-interface {p0, p1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createAlgorithmParameters(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0, v0}, Ljava/security/AlgorithmParameters;->init([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {p1, p0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    return-object v1
.end method

.method static isValidFIPSPublicKey(Ljava/security/PublicKey;)Z
    .locals 2

    :try_start_0
    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p0

    sget-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    instance-of p0, p0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    return v1

    :catch_0
    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static permitsKeyUsage(Ljava/security/PublicKey;[ZILorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;)Z
    .locals 0

    invoke-static {p1, p2}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->supportsKeyUsage([ZI)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->getKeyUsagePrimitives(I)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p3, p1, p0}, Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/security/Key;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static supportsExtendedKeyUsage(Ljava/security/cert/X509Certificate;Lorg/bouncycastle/asn1/x509/KeyPurposeId;)Z
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->supportsExtendedKeyUsage(Ljava/util/List;Lorg/bouncycastle/asn1/x509/KeyPurposeId;)Z

    move-result p0
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method static supportsExtendedKeyUsage(Ljava/util/List;Lorg/bouncycastle/asn1/x509/KeyPurposeId;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/bouncycastle/asn1/x509/KeyPurposeId;",
            ")Z"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->anyExtendedKeyUsage:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static supportsKeyUsage(Ljava/security/cert/X509Certificate;I)Z
    .locals 0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object p0

    invoke-static {p0, p1}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->supportsKeyUsage([ZI)Z

    move-result p0

    return p0
.end method

.method static supportsKeyUsage([ZI)Z
    .locals 1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-le v0, p1, :cond_0

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public check(Ljava/security/cert/Certificate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V

    return-void
.end method

.method public check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    instance-of p2, p1, Ljava/security/cert/X509Certificate;

    if-eqz p2, :cond_3

    check-cast p1, Ljava/security/cert/X509Certificate;

    iget-boolean p2, p0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->isInFipsMode:Z

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p2

    invoke-static {p2}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->isValidFIPSPublicKey(Ljava/security/PublicKey;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/cert/CertPathValidatorException;

    const-string p2, "non-FIPS public key found"

    invoke-direct {p1, p2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object p2, p0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->issuerCert:Ljava/security/cert/X509Certificate;

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->algorithmConstraints:Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;

    invoke-static {v0, v1, p1, p2}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->checkIssuedBy(Lorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)V

    :goto_1
    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->issuerCert:Ljava/security/cert/X509Certificate;

    return-void

    :cond_3
    new-instance p1, Ljava/security/cert/CertPathValidatorException;

    const-string p2, "checker can only be used for X.509 certificates"

    invoke-direct {p1, p2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSupportedExtensions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->issuerCert:Ljava/security/cert/X509Certificate;

    return-void

    :cond_0
    new-instance p1, Ljava/security/cert/CertPathValidatorException;

    const-string v0, "forward checking not supported"

    invoke-direct {p1, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isForwardCheckingSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
