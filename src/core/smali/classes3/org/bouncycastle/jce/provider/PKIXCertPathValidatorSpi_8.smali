.class public Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi_8;
.super Ljava/security/cert/CertPathValidatorSpi;


# instance fields
.field private final helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

.field private final isForCRLCheck:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi_8;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/security/cert/CertPathValidatorSpi;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/util/BCJcaJceHelper;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi_8;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    iput-boolean p1, p0, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi_8;->isForCRLCheck:Z

    return-void
.end method

.method static checkCertificate(Ljava/security/cert/X509Certificate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    instance-of v0, p0, Lorg/bouncycastle/jcajce/interfaces/BCX509Certificate;

    const-string v1, "unable to process TBSCertificate"

    if-eqz v0, :cond_1

    :try_start_0
    check-cast p0, Lorg/bouncycastle/jcajce/interfaces/BCX509Certificate;

    invoke-interface {p0}, Lorg/bouncycastle/jcajce/interfaces/BCX509Certificate;->getTBSCertificateNative()Lorg/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :catch_0
    move-exception p0

    :goto_0
    new-instance v0, Lorg/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/TBSCertificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/TBSCertificate;
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    new-instance v0, Lorg/bouncycastle/jce/provider/AnnotatedException;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception p0

    new-instance v0, Lorg/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic engineGetRevocationChecker()Ljava/security/cert/CertPathChecker;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi_8;->engineGetRevocationChecker()Ljava/security/cert/PKIXCertPathChecker;

    move-result-object v0

    return-object v0
.end method

.method public engineGetRevocationChecker()Ljava/security/cert/PKIXCertPathChecker;
    .locals 2

    new-instance v0, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi_8;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    return-object v0
.end method

.method public engineValidate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    instance-of v3, v0, Ljava/security/cert/PKIXParameters;

    if-eqz v3, :cond_1

    new-instance v3, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    move-object v4, v0

    check-cast v4, Ljava/security/cert/PKIXParameters;

    invoke-direct {v3, v4}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Ljava/security/cert/PKIXParameters;)V

    instance-of v4, v0, Lorg/bouncycastle/x509/ExtendedPKIXParameters;

    if-eqz v4, :cond_0

    check-cast v0, Lorg/bouncycastle/x509/ExtendedPKIXParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/x509/ExtendedPKIXParameters;->isUseDeltasEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setUseDeltasEnabled(Z)Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    invoke-virtual {v0}, Lorg/bouncycastle/x509/ExtendedPKIXParameters;->getValidityModel()I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setValidityModel(I)Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    :cond_0
    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v3, v0, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    if-eqz v3, :cond_2

    check-cast v0, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v3, v0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    if-eqz v3, :cond_1c

    check-cast v0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_1b

    invoke-virtual {v2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1a

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v3}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getValidityDate(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getInitialPolicies()Ljava/util/Set;

    move-result-object v14

    const/4 v15, 0x1

    :try_start_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v15

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;

    move-result-object v5

    if-eqz v5, :cond_19

    invoke-virtual {v5}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi_8;->checkCertificate(Ljava/security/cert/X509Certificate;)V
    :try_end_0
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_5

    new-instance v6, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    invoke-direct {v6, v0}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;)V

    invoke-virtual {v6, v5}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setTrustAnchor(Ljava/security/cert/TrustAnchor;)Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v9, v10}, Ljava/security/cert/PKIXCertPathChecker;->init(Z)V

    invoke-static {v9}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m$1(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    if-nez v8, :cond_4

    instance-of v8, v9, Lorg/bouncycastle/jcajce/PKIXCertRevocationChecker;

    if-eqz v8, :cond_3

    check-cast v9, Lorg/bouncycastle/jcajce/PKIXCertRevocationChecker;

    move-object v8, v9

    goto :goto_1

    :cond_3
    new-instance v8, Lorg/bouncycastle/jce/provider/WrappedRevocationChecker;

    invoke-direct {v8, v9}, Lorg/bouncycastle/jce/provider/WrappedRevocationChecker;-><init>(Ljava/security/cert/PKIXCertPathChecker;)V

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v2, "only one PKIXRevocationChecker allowed"

    invoke-direct {v0, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->isRevocationEnabled()Z

    move-result v7

    if-eqz v7, :cond_7

    if-nez v8, :cond_7

    new-instance v8, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;

    iget-object v7, v1, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi_8;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-direct {v8, v7}, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    :cond_7
    add-int/lit8 v7, v12, 0x1

    new-array v9, v7, [Ljava/util/ArrayList;

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v7, :cond_8

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    aput-object v16, v9, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_8
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const/16 v24, 0x1

    const-string v15, "2.5.29.32.0"

    invoke-interface {v4, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v16, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    new-instance v21, Ljava/util/HashSet;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashSet;-><init>()V

    const-string v22, "2.5.29.32.0"

    const/16 v23, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object/from16 v19, v4

    invoke-direct/range {v16 .. v23}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    move-object/from16 v4, v16

    aget-object v15, v9, v10

    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v15, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;

    invoke-direct {v15}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;-><init>()V

    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->isExplicitPolicyRequired()Z

    move-result v17

    if-eqz v17, :cond_9

    const/16 v17, 0x0

    goto :goto_3

    :cond_9
    move/from16 v17, v7

    :goto_3
    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->isAnyPolicyInhibited()Z

    move-result v18

    if-eqz v18, :cond_a

    const/16 v18, 0x0

    goto :goto_4

    :cond_a
    move/from16 v18, v7

    :goto_4
    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->isPolicyMappingInhibited()Z

    move-result v19

    if-eqz v19, :cond_b

    const/4 v7, 0x0

    :cond_b
    invoke-virtual {v5}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v19

    if-eqz v19, :cond_c

    :try_start_1
    invoke-static/range {v19 .. v19}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v20

    invoke-virtual/range {v19 .. v19}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v21

    goto :goto_5

    :cond_c
    invoke-static {v5}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getCA(Ljava/security/cert/TrustAnchor;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v20

    invoke-virtual {v5}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v21
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_5
    :try_start_2
    invoke-static/range {v21 .. v21}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v22
    :try_end_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-virtual/range {v22 .. v22}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v22 .. v22}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getTargetConstraints()Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v22

    if-eqz v22, :cond_e

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getTargetConstraints()Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v13

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v10, v23

    check-cast v10, Ljava/security/cert/X509Certificate;

    invoke-virtual {v13, v10}, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v10

    if-eqz v10, :cond_d

    const/4 v10, 0x0

    goto :goto_6

    :cond_d
    new-instance v0, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v3, "Target certificate in certification path does not match targetConstraints."

    const/4 v4, 0x0

    const/4 v10, 0x0

    invoke-direct {v0, v3, v4, v2, v10}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_e
    :goto_6
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    move/from16 v10, v17

    move-object/from16 v17, v4

    move v4, v10

    move-object/from16 v10, v21

    move-object/from16 v21, v6

    move v6, v13

    move v13, v7

    move-object v7, v10

    move-object/from16 v23, v0

    move v0, v12

    const/4 v10, 0x0

    :goto_7
    if-ltz v6, :cond_15

    sub-int v10, v12, v6

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v27, v11

    move-object/from16 v11, v26

    check-cast v11, Ljava/security/cert/X509Certificate;

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v26

    add-int/lit8 v2, v26, -0x1

    if-ne v6, v2, :cond_f

    move-object v2, v5

    move-object v5, v8

    const/4 v8, 0x1

    goto :goto_8

    :cond_f
    move-object v2, v5

    move-object v5, v8

    const/4 v8, 0x0

    :goto_8
    :try_start_3
    invoke-static {v11}, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi_8;->checkCertificate(Ljava/security/cert/X509Certificate;)V
    :try_end_3
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 p2, v23

    move/from16 v23, v0

    move v0, v10

    move-object/from16 v10, v19

    move-object/from16 v19, v14

    move v14, v4

    move-object v4, v3

    move-object/from16 v3, p2

    move-object/from16 p2, v20

    move-object/from16 v20, v9

    move-object/from16 v9, p2

    move-object/from16 p2, v2

    const/16 v25, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v10}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertA(Ljava/security/cert/CertPath;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Lorg/bouncycastle/jcajce/PKIXCertRevocationChecker;ILjava/security/PublicKey;ZLorg/bouncycastle/asn1/x500/X500Name;Ljava/security/cert/X509Certificate;)V

    move-object/from16 v26, v3

    move-object/from16 v30, v5

    move v3, v6

    move-object/from16 v28, v9

    move-object/from16 v29, v10

    move-object v9, v4

    move-object v10, v7

    iget-boolean v4, v1, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi_8;->isForCRLCheck:Z

    invoke-static {v2, v3, v15, v4}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertBC(Ljava/security/cert/CertPath;ILorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;Z)V

    iget-boolean v8, v1, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi_8;->isForCRLCheck:Z

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move/from16 v7, v18

    move-object/from16 v6, v20

    invoke-static/range {v2 .. v8}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertD(Ljava/security/cert/CertPath;ILjava/util/Set;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;IZ)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v5

    invoke-static {v2, v3, v5}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertE(Ljava/security/cert/CertPath;ILorg/bouncycastle/jce/provider/PKIXPolicyNode;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v5

    invoke-static {v2, v3, v5, v14}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertF(Ljava/security/cert/CertPath;ILorg/bouncycastle/jce/provider/PKIXPolicyNode;I)V

    if-eq v0, v12, :cond_14

    if-eqz v11, :cond_11

    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v8

    move-object/from16 v16, v4

    const/4 v4, 0x1

    if-ne v8, v4, :cond_12

    if-ne v0, v4, :cond_10

    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto/16 :goto_a

    :cond_10
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v4, "Version 1 certificates can\'t be used as CA ones."

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_11
    move-object/from16 v16, v4

    :cond_12
    invoke-static {v2, v3}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertA(Ljava/security/cert/CertPath;I)V

    invoke-static {v2, v3, v6, v5, v13}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareCertB(Ljava/security/cert/CertPath;I[Ljava/util/List;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;I)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v0

    invoke-static {v2, v3, v15}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertG(Ljava/security/cert/CertPath;ILorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;)V

    invoke-static {v2, v3, v14}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH1(Ljava/security/cert/CertPath;II)I

    move-result v4

    invoke-static {v2, v3, v13}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH2(Ljava/security/cert/CertPath;II)I

    move-result v5

    invoke-static {v2, v3, v7}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH3(Ljava/security/cert/CertPath;II)I

    move-result v7

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertI1(Ljava/security/cert/CertPath;II)I

    move-result v4

    invoke-static {v2, v3, v5}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertI2(Ljava/security/cert/CertPath;II)I

    move-result v5

    invoke-static {v2, v3, v7}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertJ(Ljava/security/cert/CertPath;II)I

    move-result v7

    invoke-static {v2, v3}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertK(Ljava/security/cert/CertPath;I)V

    move/from16 v8, v23

    invoke-static {v2, v3, v8}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertL(Ljava/security/cert/CertPath;II)I

    move-result v8

    invoke-static {v2, v3, v8}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertM(Ljava/security/cert/CertPath;II)I

    move-result v8

    invoke-static {v2, v3}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertN(Ljava/security/cert/CertPath;I)V

    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v10

    new-instance v13, Ljava/util/HashSet;

    if-eqz v10, :cond_13

    invoke-direct {v13, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object v10, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    invoke-interface {v13, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v10, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v13, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v10, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-interface {v13, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v10, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-interface {v13, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v10, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-interface {v13, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v10, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-interface {v13, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v10, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v13, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v10, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v13, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v10, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    invoke-interface {v13, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v10, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v13, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_13
    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    :goto_9
    move-object/from16 v10, v21

    invoke-static {v2, v3, v13, v10}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertO(Ljava/security/cert/CertPath;ILjava/util/Set;Ljava/util/List;)V

    invoke-static {v11}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v13

    :try_start_4
    invoke-virtual {v2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v14

    move-object/from16 v17, v0

    iget-object v0, v1, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi_8;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-static {v14, v3, v0}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getNextWorkingKey(Ljava/util/List;ILorg/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_4
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_4 .. :try_end_4} :catch_0

    invoke-static {v0}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v14

    invoke-virtual {v14}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v14}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move/from16 v18, v7

    move-object/from16 v29, v11

    move-object/from16 v20, v13

    move-object v7, v0

    move v13, v5

    move-object v0, v10

    goto :goto_b

    :catch_0
    move-exception v0

    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Next working key could not be retrieved."

    invoke-direct {v4, v5, v0, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    :cond_14
    move-object/from16 v16, v4

    :goto_a
    move-object/from16 v0, v21

    move/from16 v8, v23

    move-object/from16 v17, v5

    move/from16 v18, v7

    move-object v7, v10

    move v4, v14

    move-object/from16 v20, v28

    :goto_b
    add-int/lit8 v3, v3, -0x1

    move-object v5, v6

    move v6, v3

    move-object v3, v9

    move-object v9, v5

    move-object/from16 v5, p2

    move-object/from16 v21, v0

    move v0, v8

    move-object v10, v11

    move-object/from16 v14, v19

    move-object/from16 v23, v26

    move-object/from16 v11, v27

    move-object/from16 v19, v29

    move-object/from16 v8, v30

    const/16 v24, 0x1

    goto/16 :goto_7

    :catch_1
    move-exception v0

    move-object/from16 v2, p1

    move v3, v6

    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;->getUnderlyingException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v4, v5, v0, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    :cond_15
    move-object/from16 p2, v5

    move v3, v6

    move-object v6, v9

    move-object/from16 v19, v14

    move-object/from16 v5, v17

    move-object/from16 v0, v21

    move-object/from16 v26, v23

    move v14, v4

    invoke-static {v14, v10}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertA(ILjava/security/cert/X509Certificate;)I

    move-result v4

    move-object v7, v5

    add-int/lit8 v5, v3, 0x1

    invoke-static {v2, v5, v4}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertB(Ljava/security/cert/CertPath;II)I

    move-result v9

    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v4

    new-instance v8, Ljava/util/HashSet;

    if-eqz v4, :cond_16

    invoke-direct {v8, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object v4, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v4, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v4, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v4, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v4, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v4, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v4, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v4, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v4, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v4, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v4, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v4, Lorg/bouncycastle/asn1/x509/Extension;->extendedKeyUsage:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_16
    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    :goto_c
    invoke-static {v2, v5, v0, v8}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertF(Ljava/security/cert/CertPath;ILjava/util/List;Ljava/util/Set;)V

    move v13, v3

    move-object/from16 v8, v16

    move-object/from16 v4, v19

    move-object/from16 v3, v26

    invoke-static/range {v2 .. v8}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertG(Ljava/security/cert/CertPath;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Set;I[Ljava/util/List;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;Ljava/util/Set;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v0

    if-gtz v9, :cond_18

    if-eqz v0, :cond_17

    goto :goto_d

    :cond_17
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v3, "Path processing failed on policy."

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v2, v13}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_18
    :goto_d
    new-instance v2, Ljava/security/cert/PKIXCertPathValidatorResult;

    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    move-object/from16 v4, p2

    invoke-direct {v2, v4, v0, v3}, Ljava/security/cert/PKIXCertPathValidatorResult;-><init>(Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V

    return-object v2

    :catch_2
    move-exception v0

    new-instance v3, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v4, "Algorithm identifier of public key of trust anchor could not be read."

    const/4 v5, -0x1

    invoke-direct {v3, v4, v0, v2, v5}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :catch_3
    move-exception v0

    const/4 v5, -0x1

    new-instance v3, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v4, "Subject of trust anchor could not be (re)encoded."

    invoke-direct {v3, v4, v0, v2, v5}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :cond_19
    move-object/from16 v27, v11

    const/4 v5, -0x1

    :try_start_5
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v3, "Trust anchor for certification path not found."

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v2, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0
    :try_end_5
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    move-exception v0

    goto :goto_e

    :catch_5
    move-exception v0

    move-object/from16 v27, v11

    :goto_e
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;->getUnderlyingException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v5

    const/16 v24, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v3, v4, v0, v2, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :cond_1a
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v3, "Certification path is empty."

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-direct {v0, v3, v4, v2, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_1b
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "trustAnchors is null, this is not allowed for certification path validation."

    invoke-direct {v0, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameters must be a "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v3, Ljava/security/cert/PKIXParameters;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " instance."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    goto :goto_10

    :goto_f
    throw v0

    :goto_10
    goto :goto_f
.end method
