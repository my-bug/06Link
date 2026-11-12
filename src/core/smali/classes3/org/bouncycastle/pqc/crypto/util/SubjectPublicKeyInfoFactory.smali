.class public Lorg/bouncycastle/pqc/crypto/util/SubjectPublicKeyInfoFactory;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSubjectPublicKeyInfo(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPublicKeyParameters;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPublicKeyParameters;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPublicKeyParameters;->getSecurityCategory()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/util/Utils;->qTeslaLookupAlgID(I)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPublicKeyParameters;->getPublicData()[B

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    return-object v1

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPublicKeyParameters;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPublicKeyParameters;

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->sphincs256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/asn1/SPHINCS256KeyParams;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPublicKeyParameters;->getTreeDigest()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/util/Utils;->sphincs256LookupTreeAlgID(Ljava/lang/String;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/asn1/SPHINCS256KeyParams;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPublicKeyParameters;->getKeyData()[B

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    return-object v1

    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/newhope/NHPublicKeyParameters;

    if-eqz v0, :cond_2

    check-cast p0, Lorg/bouncycastle/pqc/crypto/newhope/NHPublicKeyParameters;

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->newHope:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance v1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/newhope/NHPublicKeyParameters;->getPubData()[B

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    return-object v1

    :cond_2
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    check-cast p0, Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;

    invoke-static {}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->compose()Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->u32str(I)Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->bytes(Lorg/bouncycastle/util/Encodable;)Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->build()[B

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_hss_lms_hashsig:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance v1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v2, p0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v1

    :cond_3
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/lms/HSSPublicKeyParameters;

    if-eqz v0, :cond_4

    check-cast p0, Lorg/bouncycastle/pqc/crypto/lms/HSSPublicKeyParameters;

    invoke-static {}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->compose()Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/HSSPublicKeyParameters;->getL()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->u32str(I)Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/HSSPublicKeyParameters;->getLMSPublicKey()Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->bytes(Lorg/bouncycastle/util/Encodable;)Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->build()[B

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_hss_lms_hashsig:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance v1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v2, p0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v1

    :cond_4
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPublicKeyParameters;

    if-eqz v0, :cond_5

    check-cast p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPublicKeyParameters;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPublicKeyParameters;->getEncoded()[B

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/util/Utils;->slhdsaOidLookup(Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance p0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    return-object p0

    :cond_5
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;

    if-eqz v0, :cond_6

    check-cast p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;->getEncoded()[B

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/util/Utils;->sphincsPlusOidLookup(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance p0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    return-object p0

    :cond_6
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPublicKeyParameters;

    if-eqz v0, :cond_7

    check-cast p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPublicKeyParameters;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPublicKeyParameters;->getEncoded()[B

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/util/Utils;->mcElieceOidLookup(Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance p0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    return-object p0

    :cond_7
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;

    if-eqz v0, :cond_9

    check-cast p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->getPublicSeed()[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->getRoot()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->getEncoded()[B

    move-result-object v2

    array-length v3, v2

    array-length v4, v0

    array-length v5, v1

    add-int/2addr v4, v5

    if-le v3, v4, :cond_8

    new-instance p0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v0, Lorg/bouncycastle/internal/asn1/isara/IsaraObjectIdentifiers;->id_alg_xmss:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance v0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    :cond_8
    new-instance v2, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->xmss:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v4, Lorg/bouncycastle/pqc/asn1/XMSSKeyParams;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->getTreeDigest()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/util/Utils;->xmssLookupTreeAlgID(Ljava/lang/String;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p0

    invoke-direct {v4, v5, p0}, Lorg/bouncycastle/pqc/asn1/XMSSKeyParams;-><init>(ILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance p0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v3, Lorg/bouncycastle/pqc/asn1/XMSSPublicKey;

    invoke-direct {v3, v0, v1}, Lorg/bouncycastle/pqc/asn1/XMSSPublicKey;-><init>([B[B)V

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object p0

    :cond_9
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;

    if-eqz v0, :cond_b

    check-cast p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->getPublicSeed()[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->getRoot()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->getEncoded()[B

    move-result-object v2

    array-length v3, v2

    array-length v0, v0

    array-length v1, v1

    add-int/2addr v0, v1

    if-le v3, v0, :cond_a

    new-instance p0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v0, Lorg/bouncycastle/internal/asn1/isara/IsaraObjectIdentifiers;->id_alg_xmssmt:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance v0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    :cond_a
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->xmss_mt:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/asn1/XMSSMTKeyParams;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->getLayers()I

    move-result v4

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->getTreeDigest()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/pqc/crypto/util/Utils;->xmssLookupTreeAlgID(Ljava/lang/String;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lorg/bouncycastle/pqc/asn1/XMSSMTKeyParams;-><init>(IILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v2, Lorg/bouncycastle/pqc/asn1/XMSSMTPublicKey;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->getPublicSeed()[B

    move-result-object v3

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->getRoot()[B

    move-result-object p0

    invoke-direct {v2, v3, p0}, Lorg/bouncycastle/pqc/asn1/XMSSMTPublicKey;-><init>([B[B)V

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v1

    :cond_b
    instance-of v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    if-eqz v0, :cond_c

    check-cast p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    new-instance v0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PublicKey;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getN()I

    move-result v1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getT()I

    move-result v2

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getG()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    move-result-object v3

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getDigest()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/util/Utils;->getAlgorithmIdentifier(Ljava/lang/String;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PublicKey;-><init>(IILorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    new-instance p0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->mcElieceCca2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance v1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-direct {v1, p0, v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v1

    :cond_c
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoPublicKeyParameters;

    if-eqz v0, :cond_d

    check-cast p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoPublicKeyParameters;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoPublicKeyParameters;->getEncoded()[B

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/util/Utils;->frodoOidLookup(Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance p0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object p0

    :cond_d
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABERPublicKeyParameters;

    if-eqz v0, :cond_e

    check-cast p0, Lorg/bouncycastle/pqc/crypto/saber/SABERPublicKeyParameters;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/saber/SABERPublicKeyParameters;->getEncoded()[B

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/saber/SABERPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/util/Utils;->saberOidLookup(Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance p0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object p0

    :cond_e
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicPublicKeyParameters;

    if-eqz v0, :cond_f

    check-cast p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicPublicKeyParameters;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicPublicKeyParameters;->getEncoded()[B

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/util/Utils;->picnicOidLookup(Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance p0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object p0

    :cond_f
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUPublicKeyParameters;

    if-eqz v0, :cond_10

    check-cast p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUPublicKeyParameters;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUPublicKeyParameters;->getEncoded()[B

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/util/Utils;->ntruOidLookup(Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance p0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object p0

    :cond_10
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconPublicKeyParameters;

    if-eqz v0, :cond_11

    check-cast p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconPublicKeyParameters;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPublicKeyParameters;->getH()[B

    move-result-object v0

    new-instance v2, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/util/Utils;->falconOidLookup(Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    array-length v3, v0

    add-int/2addr v3, v1

    new-array v3, v3, [B

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;->getLogN()I

    move-result p0

    int-to-byte p0, p0

    const/4 v4, 0x0

    aput-byte p0, v3, v4

    array-length p0, v0

    invoke-static {v0, v4, v3, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    return-object p0

    :cond_11
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;

    if-eqz v0, :cond_12

    check-cast p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/util/Utils;->mlkemOidLookup(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance v1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;->getEncoded()[B

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    return-object v1

    :cond_12
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePublicKeyParameters;

    if-eqz v0, :cond_13

    check-cast p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePublicKeyParameters;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePublicKeyParameters;->getEncoded()[B

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/util/Utils;->ntrulprimeOidLookup(Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance p0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object p0

    :cond_13
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePublicKeyParameters;

    if-eqz v0, :cond_14

    check-cast p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePublicKeyParameters;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePublicKeyParameters;->getEncoded()[B

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/util/Utils;->sntruprimeOidLookup(Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance p0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object p0

    :cond_14
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPublicKeyParameters;

    if-eqz v0, :cond_15

    check-cast p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPublicKeyParameters;

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/util/Utils;->dilithiumOidLookup(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance v1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPublicKeyParameters;->getEncoded()[B

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    return-object v1

    :cond_15
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;

    if-eqz v0, :cond_16

    check-cast p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/util/Utils;->mldsaOidLookup(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance v1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;->getEncoded()[B

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    return-object v1

    :cond_16
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEPublicKeyParameters;

    if-eqz v0, :cond_17

    check-cast p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEPublicKeyParameters;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEPublicKeyParameters;->getEncoded()[B

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/util/Utils;->bikeOidLookup(Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance p0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    return-object p0

    :cond_17
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCPublicKeyParameters;

    if-eqz v0, :cond_18

    check-cast p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCPublicKeyParameters;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCPublicKeyParameters;->getEncoded()[B

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/util/Utils;->hqcOidLookup(Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance p0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    return-object p0

    :cond_18
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;

    if-eqz v0, :cond_19

    check-cast p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->getEncoded()[B

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/util/Utils;->rainbowOidLookup(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance p0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object p0

    :cond_19
    new-instance p0, Ljava/io/IOException;

    const-string v0, "key parameters not recognized"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
