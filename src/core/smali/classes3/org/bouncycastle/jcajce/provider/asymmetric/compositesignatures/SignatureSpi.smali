.class public Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;
.super Ljava/security/SignatureSpi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$Falcon512_ECDSA_P256_SHA256;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$Falcon512_ECDSA_brainpoolP256r1_SHA256;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$Falcon512_Ed25519_SHA512;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$MLDSA44_ECDSA_P256_SHA256;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$MLDSA44_ECDSA_brainpoolP256r1_SHA256;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$MLDSA44_Ed25519_SHA512;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$MLDSA44_RSA2048_PKCS15_SHA256;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$MLDSA44_RSA2048_PSS_SHA256;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$MLDSA65_ECDSA_P256_SHA512;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$MLDSA65_ECDSA_brainpoolP256r1_SHA512;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$MLDSA65_Ed25519_SHA512;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$MLDSA65_RSA3072_PKCS15_SHA512;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$MLDSA65_RSA3072_PSS_SHA512;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$MLDSA87_ECDSA_P384_SHA512;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$MLDSA87_ECDSA_brainpoolP384r1_SHA512;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$MLDSA87_Ed448_SHA512;
    }
.end annotation


# static fields
.field private static final ML_DSA_44:Ljava/lang/String; = "ML-DSA-44"

.field private static final ML_DSA_65:Ljava/lang/String; = "ML-DSA-65"

.field private static final ML_DSA_87:Ljava/lang/String; = "ML-DSA-87"

.field private static final canonicalNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private OIDBytes:[B

.field private final algorithmIdentifier:Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeSignaturesConstants$CompositeName;

.field private final algorithmIdentifierASN1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private final componentSignatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private final digest:Lorg/bouncycastle/crypto/Digest;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->canonicalNames:Ljava/util/Map;

    const-string v1, "MLDSA44"

    const-string v2, "ML-DSA-44"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MLDSA65"

    const-string v3, "ML-DSA-65"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MLDSA87"

    const-string v4, "ML-DSA-87"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ml_dsa_44:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ml_dsa_65:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ml_dsa_87:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeSignaturesConstants$CompositeName;)V
    .locals 10

    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->algorithmIdentifier:Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeSignaturesConstants$CompositeName;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeSignaturesConstants;->compositeNameASN1IdentifierMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->algorithmIdentifierASN1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    sget-object v2, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$1;->$SwitchMap$org$bouncycastle$jcajce$provider$asymmetric$compositesignatures$CompositeSignaturesConstants$CompositeName:[I

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeSignaturesConstants$CompositeName;->ordinal()I

    move-result p1

    aget p1, v2, p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "SHA512withECDSA"

    const-string v3, "SHA256withECDSA"

    const-string v4, "Falcon"

    const-string v5, "ML-DSA-87"

    const-string v6, "Ed25519"

    const-string v7, "ML-DSA-65"

    const-string v8, "ML-DSA-44"

    const-string v9, "BC"

    packed-switch p1, :pswitch_data_0

    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    goto/16 :goto_4

    :pswitch_0
    invoke-static {v4, v9}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v6, v9}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-static {}, Lorg/bouncycastle/crypto/util/DigestFactory;->createSHA512()Lorg/bouncycastle/crypto/Digest;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    goto/16 :goto_3

    :pswitch_1
    invoke-static {v4, v9}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3, v9}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-static {}, Lorg/bouncycastle/crypto/util/DigestFactory;->createSHA256()Lorg/bouncycastle/crypto/Digest;

    move-result-object p1

    goto :goto_1

    :pswitch_2
    invoke-static {v5, v9}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2, v9}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_3
    invoke-static {v7, v9}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2, v9}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_4
    invoke-static {v8, v9}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3, v9}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_5
    invoke-static {v7, v9}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "SHA512withRSA"

    invoke-static {p1, v9}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_6
    invoke-static {v8, v9}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "SHA256withRSA"

    invoke-static {p1, v9}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_7
    invoke-static {v7, v9}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "SHA512withRSA/PSS"

    invoke-static {p1, v9}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_8
    invoke-static {v8, v9}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "SHA256withRSA/PSS"

    invoke-static {p1, v9}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_9
    invoke-static {v5, v9}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "Ed448"

    invoke-static {p1, v9}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_a
    invoke-static {v7, v9}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v6, v9}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_b
    invoke-static {v8, v9}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v6, v9}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :goto_3
    const-string p1, "DER"

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getEncoded(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->OIDBytes:[B
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->componentSignatures:Ljava/util/List;

    return-void

    :goto_4
    :try_start_2
    const-string v0, "unknown composite algorithm"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bouncycastle/util/Exceptions;->illegalStateException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bouncycastle/util/Exceptions;->illegalStateException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalStateException;

    move-result-object p1

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getCanonicalName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->canonicalNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    return-object p1
.end method

.method private setSigParameter(Ljava/security/Signature;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/Signature;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->getCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p1, v1}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "engineGetParameter unsupported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v0, p1, Lorg/bouncycastle/jcajce/CompositePrivateKey;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/bouncycastle/jcajce/CompositePrivateKey;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/CompositePrivateKey;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->algorithmIdentifierASN1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->componentSignatures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->componentSignatures:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Signature;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/CompositePrivateKey;->getPrivateKeys()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/PrivateKey;

    invoke-virtual {v1, v2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "Provided composite private key cannot be used with the composite signature algorithm."

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "Private key is not composite."

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v0, p1, Lorg/bouncycastle/jcajce/CompositePublicKey;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/bouncycastle/jcajce/CompositePublicKey;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/CompositePublicKey;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->algorithmIdentifierASN1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->componentSignatures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->componentSignatures:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Signature;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/CompositePublicKey;->getPublicKeys()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/PublicKey;

    invoke-virtual {v1, v2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "Provided composite public key cannot be used with the composite signature algorithm."

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "Public key is not composite."

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "engineSetParameter unsupported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    instance-of v0, p1, Lorg/bouncycastle/jcajce/spec/CompositeAlgorithmSpec;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/jcajce/spec/CompositeAlgorithmSpec;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/spec/CompositeAlgorithmSpec;->getParameterSpecs()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/spec/CompositeAlgorithmSpec;->getAlgorithmNames()Ljava/util/List;

    move-result-object p1

    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$1;->$SwitchMap$org$bouncycastle$jcajce$provider$asymmetric$compositesignatures$CompositeSignaturesConstants$CompositeName:[I

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->algorithmIdentifier:Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeSignaturesConstants$CompositeName;

    invoke-virtual {v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeSignaturesConstants$CompositeName;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "ML-DSA-87"

    const-string v3, "ML-DSA-65"

    const-string v4, "ML-DSA-44"

    const/4 v5, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v0, "unknown composite algorithm"

    invoke-direct {p1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->componentSignatures:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Signature;

    invoke-direct {p0, v1, v2, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->setSigParameter(Ljava/security/Signature;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void

    :pswitch_1
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->componentSignatures:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Signature;

    invoke-direct {p0, v1, v3, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->setSigParameter(Ljava/security/Signature;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void

    :pswitch_2
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->componentSignatures:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Signature;

    invoke-direct {p0, v1, v4, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->setSigParameter(Ljava/security/Signature;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void

    :pswitch_3
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->componentSignatures:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Signature;

    invoke-direct {p0, v1, v3, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->setSigParameter(Ljava/security/Signature;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void

    :pswitch_4
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->componentSignatures:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Signature;

    invoke-direct {p0, v1, v4, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->setSigParameter(Ljava/security/Signature;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void

    :pswitch_5
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->componentSignatures:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Signature;

    invoke-direct {p0, v1, v3, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->setSigParameter(Ljava/security/Signature;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void

    :pswitch_6
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->componentSignatures:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Signature;

    invoke-direct {p0, v1, v4, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->setSigParameter(Ljava/security/Signature;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void

    :pswitch_7
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->componentSignatures:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Signature;

    invoke-direct {p0, v1, v2, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->setSigParameter(Ljava/security/Signature;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void

    :pswitch_8
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->componentSignatures:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Signature;

    invoke-direct {p0, v1, v3, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->setSigParameter(Ljava/security/Signature;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void

    :pswitch_9
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->componentSignatures:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Signature;

    invoke-direct {p0, v1, v4, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->setSigParameter(Ljava/security/Signature;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void

    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v0, "unknown parameterSpec passed to composite signature"

    invoke-direct {p1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected engineSign()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->componentSignatures:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->componentSignatures:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/Signature;

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->OIDBytes:[B

    invoke-virtual {v2, v4}, Ljava/security/Signature;->update([B)V

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->componentSignatures:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/Signature;

    invoke-virtual {v2, v1}, Ljava/security/Signature;->update([B)V

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->componentSignatures:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/Signature;

    invoke-virtual {v2}, Ljava/security/Signature;->sign()[B

    move-result-object v2

    new-instance v4, Lorg/bouncycastle/asn1/DERBitString;

    invoke-direct {v4, v2}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    const-string v0, "DER"

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/SignatureException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method protected engineUpdate(B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method protected engineVerify([B)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->componentSignatures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->componentSignatures:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->componentSignatures:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Signature;

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->OIDBytes:[B

    invoke-virtual {v3, v5}, Ljava/security/Signature;->update([B)V

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->componentSignatures:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Signature;

    invoke-virtual {v3, v0}, Ljava/security/Signature;->update([B)V

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->componentSignatures:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Signature;

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/Signature;->verify([B)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    xor-int/lit8 p1, v1, 0x1

    return p1
.end method
