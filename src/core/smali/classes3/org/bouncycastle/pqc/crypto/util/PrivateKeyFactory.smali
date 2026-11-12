.class public Lorg/bouncycastle/pqc/crypto/util/PrivateKeyFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convert([B)[S
    .locals 4

    array-length v0, p0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [S

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    mul-int/lit8 v3, v2, 0x2

    invoke-static {p0, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToShort([BI)S

    move-result v3

    aput-short v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static createKey(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/util/PrivateKeyFactory;->createKey(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p0

    return-object p0
.end method

.method public static createKey(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_2e

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->qTESLA:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPrivateKeyParameters;

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/util/Utils;->qTeslaLookupSecurityCategory(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)I

    move-result v0

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPrivateKeyParameters;-><init>(I[B)V

    return-object v2

    :cond_0
    sget-object v2, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->sphincs256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPrivateKeyParameters;

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/asn1/SPHINCS256KeyParams;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/asn1/SPHINCS256KeyParams;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/util/Utils;->sphincs256LookupTreeAlgName(Lorg/bouncycastle/pqc/asn1/SPHINCS256KeyParams;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPrivateKeyParameters;-><init>([BLjava/lang/String;)V

    return-object v1

    :cond_1
    sget-object v2, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->newHope:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Lorg/bouncycastle/pqc/crypto/newhope/NHPrivateKeyParameters;

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/util/PrivateKeyFactory;->convert([B)[S

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/newhope/NHPrivateKeyParameters;-><init>([S)V

    return-object v0

    :cond_2
    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_hss_lms_hashsig:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x4

    if-eqz v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPublicKeyData()Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v1

    invoke-static {v0, v3}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    if-ne v2, v4, :cond_4

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v1

    array-length v2, v0

    invoke-static {v0, v5, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    array-length v2, v1

    invoke-static {v1, v5, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->getInstance([B[B)Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;

    move-result-object v0

    return-object v0

    :cond_3
    array-length v1, v0

    invoke-static {v0, v5, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;

    move-result-object v0

    return-object v0

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v1

    array-length v2, v0

    invoke-static {v0, v5, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/HSSPrivateKeyParameters;->getInstance([B[B)Lorg/bouncycastle/pqc/crypto/lms/HSSPrivateKeyParameters;

    move-result-object v0

    return-object v0

    :cond_5
    array-length v1, v0

    invoke-static {v0, v5, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/lms/HSSPrivateKeyParameters;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/HSSPrivateKeyParameters;

    move-result-object v0

    return-object v0

    :cond_6
    sget-object v2, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v2

    if-nez v2, :cond_2c

    sget-object v2, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_interop:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto/16 :goto_3

    :cond_7
    sget-object v2, Lorg/bouncycastle/pqc/crypto/util/Utils;->shldsaParams:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/util/Utils;->slhdsaParamsLookup(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_8

    invoke-static {v0}, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->getPublicKey()Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;

    move-result-object v1

    new-instance v6, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->getSkseed()[B

    move-result-object v8

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->getSkprf()[B

    move-result-object v9

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;->getPkseed()[B

    move-result-object v10

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;->getPkroot()[B

    move-result-object v11

    invoke-direct/range {v6 .. v11}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;[B[B[B[B)V

    return-object v6

    :cond_8
    new-instance v1, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-direct {v1, v7, v0}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;[B)V

    return-object v1

    :cond_9
    sget-object v2, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->picnic:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/util/Utils;->picnicParamsLookup(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/picnic/PicnicPrivateKeyParameters;

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;[B)V

    return-object v2

    :cond_a
    sget-object v2, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->pqc_kem_mceliece:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/asn1/CMCEPrivateKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/asn1/CMCEPrivateKey;

    move-result-object v0

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/util/Utils;->mcElieceParamsLookup(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    move-result-object v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/asn1/CMCEPrivateKey;->getDelta()[B

    move-result-object v4

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/asn1/CMCEPrivateKey;->getC()[B

    move-result-object v5

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/asn1/CMCEPrivateKey;->getG()[B

    move-result-object v6

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/asn1/CMCEPrivateKey;->getAlpha()[B

    move-result-object v7

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/asn1/CMCEPrivateKey;->getS()[B

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;[B[B[B[B[B)V

    return-object v2

    :cond_b
    sget-object v2, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->pqc_kem_frodo:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/util/Utils;->frodoParamsLookup(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/frodo/FrodoPrivateKeyParameters;

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;[B)V

    return-object v2

    :cond_c
    sget-object v2, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->pqc_kem_saber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/util/Utils;->saberParamsLookup(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/saber/SABERPrivateKeyParameters;

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/pqc/crypto/saber/SABERPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;[B)V

    return-object v2

    :cond_d
    sget-object v2, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->pqc_kem_ntru:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/util/Utils;->ntruParamsLookup(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;[B)V

    return-object v2

    :cond_e
    sget-object v2, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_alg_ml_kem_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-nez v2, :cond_2b

    sget-object v2, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_alg_ml_kem_768:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-nez v2, :cond_2b

    sget-object v2, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_alg_ml_kem_1024:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto/16 :goto_2

    :cond_f
    sget-object v2, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->pqc_kem_ntrulprime:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v2

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eqz v2, :cond_10

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/util/Utils;->ntrulprimeParamsLookup(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    move-result-object v9

    new-instance v8, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v10

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v11

    invoke-virtual {v0, v7}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v12

    invoke-virtual {v0, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v13

    invoke-direct/range {v8 .. v13}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;[B[B[B[B)V

    return-object v8

    :cond_10
    sget-object v2, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->pqc_kem_sntruprime:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/util/Utils;->sntruprimeParamsLookup(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    move-result-object v9

    new-instance v8, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v10

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v11

    invoke-virtual {v0, v7}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v12

    invoke-virtual {v0, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v13

    invoke-virtual {v0, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v14

    invoke-direct/range {v8 .. v14}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;[B[B[B[B[B)V

    return-object v8

    :cond_11
    sget-object v2, Lorg/bouncycastle/pqc/crypto/util/Utils;->mldsaParams:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const-string v8, "unknown private key version: "

    const-string v9, "not supported"

    const/4 v10, 0x6

    const/4 v11, 0x5

    if-eqz v2, :cond_17

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/util/Utils;->mldsaParamsLookup(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    move-result-object v13

    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_14

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPublicKeyData()Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPublicKeyData()Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v1

    invoke-static {v13, v1}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$MLDSAConverter;->getPublicKeyParams(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;Lorg/bouncycastle/asn1/ASN1BitString;)Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;

    move-result-object v1

    new-instance v12, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v14

    invoke-virtual {v0, v7}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v15

    invoke-virtual {v0, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v16

    invoke-virtual {v0, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v17

    invoke-virtual {v0, v11}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v18

    invoke-virtual {v0, v10}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v19

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;->getT1()[B

    move-result-object v20

    invoke-direct/range {v12 .. v20}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;[B[B[B[B[B[B[B)V

    return-object v12

    :cond_12
    new-instance v12, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v14

    invoke-virtual {v0, v7}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v15

    invoke-virtual {v0, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v16

    invoke-virtual {v0, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v17

    invoke-virtual {v0, v11}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v18

    invoke-virtual {v0, v10}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v19

    const/16 v20, 0x0

    invoke-direct/range {v12 .. v20}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;[B[B[B[B[B[B[B)V

    return-object v12

    :cond_13
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    instance-of v1, v0, Lorg/bouncycastle/asn1/DEROctetString;

    if-eqz v1, :cond_16

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPublicKeyData()Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPublicKeyData()Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v1

    invoke-static {v13, v1}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$MLDSAConverter;->getPublicKeyParams(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;Lorg/bouncycastle/asn1/ASN1BitString;)Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    invoke-direct {v2, v13, v0, v1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;[BLorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;)V

    return-object v2

    :cond_15
    new-instance v1, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    invoke-direct {v1, v13, v0}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;[B)V

    return-object v1

    :cond_16
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    sget-object v2, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->dilithium2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-nez v2, :cond_25

    sget-object v2, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->dilithium3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-nez v2, :cond_25

    sget-object v2, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->dilithium5:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_18

    goto/16 :goto_1

    :cond_18
    sget-object v2, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->falcon_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-nez v2, :cond_24

    sget-object v2, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->falcon_1024:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_19

    goto/16 :goto_0

    :cond_19
    sget-object v2, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->pqc_kem_bike:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/util/Utils;->bikeParamsLookup(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->getRByte()I

    move-result v2

    invoke-static {v0, v3, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->getRByte()I

    move-result v3

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->getRByte()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v0, v3, v4}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->getRByte()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    array-length v5, v0

    invoke-static {v0, v4, v5}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    new-instance v4, Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;

    invoke-direct {v4, v1, v2, v3, v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;[B[B[B)V

    return-object v4

    :cond_1a
    sget-object v2, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->pqc_kem_hqc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/util/Utils;->hqcParamsLookup(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/hqc/HQCPrivateKeyParameters;

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;[B)V

    return-object v2

    :cond_1b
    sget-object v2, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->rainbow:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/util/Utils;->rainbowParamsLookup(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;[B)V

    return-object v2

    :cond_1c
    sget-object v2, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->xmss:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    const-string v3, "ClassNotFoundException processing BDS state: "

    if-eqz v2, :cond_1f

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/asn1/XMSSKeyParams;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/asn1/XMSSKeyParams;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/asn1/XMSSKeyParams;->getTreeDigest()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/pqc/asn1/XMSSPrivateKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/asn1/XMSSPrivateKey;

    move-result-object v2

    :try_start_0
    new-instance v4, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    new-instance v5, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/asn1/XMSSKeyParams;->getHeight()I

    move-result v0

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/util/Utils;->getDigest(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;-><init>(ILorg/bouncycastle/crypto/Digest;)V

    invoke-direct {v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;)V

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/asn1/XMSSPrivateKey;->getIndex()I

    move-result v0

    invoke-virtual {v4, v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withIndex(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v0

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/asn1/XMSSPrivateKey;->getSecretKeySeed()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withSecretKeySeed([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v0

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/asn1/XMSSPrivateKey;->getSecretKeyPRF()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withSecretKeyPRF([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v0

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/asn1/XMSSPrivateKey;->getPublicSeed()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withPublicSeed([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v0

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/asn1/XMSSPrivateKey;->getRoot()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withRoot([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v0

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/asn1/XMSSPrivateKey;->getVersion()I

    move-result v4

    if-eqz v4, :cond_1d

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/asn1/XMSSPrivateKey;->getMaxIndex()I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withMaxIndex(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    :cond_1d
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/asn1/XMSSPrivateKey;->getBdsState()[B

    move-result-object v4

    if-eqz v4, :cond_1e

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/asn1/XMSSPrivateKey;->getBdsState()[B

    move-result-object v2

    const-class v4, Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    invoke-static {v2, v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->deserialize([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;->withWOTSDigest(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withBDSState(Lorg/bouncycastle/pqc/crypto/xmss/BDS;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    :cond_1e
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1f
    sget-object v2, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->xmss_mt:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/asn1/XMSSMTKeyParams;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/asn1/XMSSMTKeyParams;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/asn1/XMSSMTKeyParams;->getTreeDigest()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;

    move-result-object v2

    new-instance v4, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    new-instance v5, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/asn1/XMSSMTKeyParams;->getHeight()I

    move-result v6

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/asn1/XMSSMTKeyParams;->getLayers()I

    move-result v0

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/util/Utils;->getDigest(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v7

    invoke-direct {v5, v6, v0, v7}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;-><init>(IILorg/bouncycastle/crypto/Digest;)V

    invoke-direct {v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;)V

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->getIndex()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->withIndex(J)Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    move-result-object v0

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->getSecretKeySeed()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->withSecretKeySeed([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    move-result-object v0

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->getSecretKeyPRF()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->withSecretKeyPRF([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    move-result-object v0

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->getPublicSeed()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->withPublicSeed([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    move-result-object v0

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->getRoot()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->withRoot([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    move-result-object v0

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->getVersion()I

    move-result v4

    if-eqz v4, :cond_20

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->getMaxIndex()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->withMaxIndex(J)Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    :cond_20
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->getBdsState()[B

    move-result-object v4

    if-eqz v4, :cond_21

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->getBdsState()[B

    move-result-object v2

    const-class v4, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;

    invoke-static {v2, v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->deserialize([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;->withWOTSDigest(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->withBDSState(Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    :cond_21
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_22
    sget-object v0, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->mcElieceCca2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->getN()I

    move-result v2

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->getK()I

    move-result v3

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->getField()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    move-result-object v4

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->getGoppaPoly()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v5

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->getP()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;

    move-result-object v6

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->getDigest()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/util/Utils;->getDigestName(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;-><init>(IILorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;Ljava/lang/String;)V

    return-object v1

    :cond_23
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "algorithm identifier in private key not recognised"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;

    move-result-object v0

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/util/Utils;->falconParamsLookup(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    move-result-object v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;->getf()[B

    move-result-object v4

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;->getG()[B

    move-result-object v5

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;->getF()[B

    move-result-object v6

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;->getPublicKey()Lorg/bouncycastle/pqc/asn1/FalconPublicKey;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/asn1/FalconPublicKey;->getH()[B

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;[B[B[B[B)V

    return-object v2

    :cond_25
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/util/Utils;->dilithiumParamsLookup(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;

    move-result-object v13

    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_28

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPublicKeyData()Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPublicKeyData()Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v1

    invoke-static {v13, v1}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$DilithiumConverter;->getPublicKeyParams(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;Lorg/bouncycastle/asn1/ASN1BitString;)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPublicKeyParameters;

    move-result-object v1

    new-instance v12, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v14

    invoke-virtual {v0, v7}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v15

    invoke-virtual {v0, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v16

    invoke-virtual {v0, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v17

    invoke-virtual {v0, v11}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v18

    invoke-virtual {v0, v10}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v19

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPublicKeyParameters;->getT1()[B

    move-result-object v20

    invoke-direct/range {v12 .. v20}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;[B[B[B[B[B[B[B)V

    return-object v12

    :cond_26
    new-instance v12, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v14

    invoke-virtual {v0, v7}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v15

    invoke-virtual {v0, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v16

    invoke-virtual {v0, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v17

    invoke-virtual {v0, v11}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v18

    invoke-virtual {v0, v10}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v19

    const/16 v20, 0x0

    invoke-direct/range {v12 .. v20}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;[B[B[B[B[B[B[B)V

    return-object v12

    :cond_27
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    instance-of v1, v0, Lorg/bouncycastle/asn1/DEROctetString;

    if-eqz v1, :cond_2a

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPublicKeyData()Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v1

    if-eqz v1, :cond_29

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPublicKeyData()Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v1

    invoke-static {v13, v1}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$DilithiumConverter;->getPublicKeyParams(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;Lorg/bouncycastle/asn1/ASN1BitString;)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPublicKeyParameters;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;

    invoke-direct {v2, v13, v0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;[BLorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPublicKeyParameters;)V

    return-object v2

    :cond_29
    new-instance v1, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;

    const/4 v2, 0x0

    invoke-direct {v1, v13, v0, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;[BLorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPublicKeyParameters;)V

    return-object v1

    :cond_2a
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/util/Utils;->mlkemParamsLookup(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;[B)V

    return-object v2

    :cond_2c
    :goto_3
    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/util/Utils;->sphincsPlusParamsLookup(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_2d

    invoke-static {v0}, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->getPublicKey()Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;

    move-result-object v1

    new-instance v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->getSkseed()[B

    move-result-object v5

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->getSkprf()[B

    move-result-object v6

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;->getPkseed()[B

    move-result-object v7

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;->getPkroot()[B

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;[B[B[B[B)V

    return-object v3

    :cond_2d
    new-instance v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-direct {v1, v4, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;[B)V

    return-object v1

    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyInfo array null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createKey([B)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_1

    array-length v0, p0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/util/PrivateKeyFactory;->createKey(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "privateKeyInfoData array empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "privateKeyInfoData array null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
