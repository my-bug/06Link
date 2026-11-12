.class public Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;


# static fields
.field private static final dilithium2Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private static final dilithium3Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private static final dilithium5Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private static final ecdsaBrainpoolP256r1Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private static final ecdsaBrainpoolP384r1Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private static final ecdsaP256Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private static final ecdsaP384Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private static final ed25519Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private static final ed448Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private static final falcon512Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private static final rsaIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ml_dsa_44:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->dilithium2Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ml_dsa_65:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->dilithium3Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ml_dsa_87:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->dilithium5Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->falcon_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->falcon512Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/internal/asn1/edec/EdECObjectIdentifiers;->id_Ed25519:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->ed25519Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/asn1/x9/X962Parameters;

    sget-object v3, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/x9/X962Parameters;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->ecdsaP256Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/asn1/x9/X962Parameters;

    sget-object v3, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP256r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/x9/X962Parameters;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->ecdsaBrainpoolP256r1Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->rsaIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/internal/asn1/edec/EdECObjectIdentifiers;->id_Ed448:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->ed448Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/asn1/x9/X962Parameters;

    sget-object v3, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp384r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/x9/X962Parameters;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->ecdsaP384Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/asn1/x9/X962Parameters;

    sget-object v3, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP384r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/x9/X962Parameters;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->ecdsaBrainpoolP384r1Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;-><init>()V

    return-void
.end method

.method private getKeyFactoriesFromIdentifier(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/KeyFactory;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi$1;->$SwitchMap$org$bouncycastle$jcajce$provider$asymmetric$compositesignatures$CompositeSignaturesConstants$CompositeName:[I

    sget-object v3, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeSignaturesConstants;->ASN1IdentifierCompositeNameMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeSignaturesConstants$CompositeName;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeSignaturesConstants$CompositeName;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const-string v2, "Falcon"

    const-string v3, "ECDSA"

    const-string v4, "Ed25519"

    const-string v5, "ML-DSA"

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot create KeyFactories. Unsupported algorithm identifier."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_2
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :pswitch_3
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "RSA"

    goto :goto_1

    :pswitch_4
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "Ed448"

    :goto_1
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :pswitch_5
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    const/4 p1, 0x0

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v2, "BC"

    invoke-static {p1, v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getKeysSpecs(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[Lorg/bouncycastle/asn1/ASN1BitString;)[Ljava/security/spec/X509EncodedKeySpec;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p2

    new-array v0, v0, [Ljava/security/spec/X509EncodedKeySpec;

    array-length v1, p2

    new-array v1, v1, [Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v2, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi$1;->$SwitchMap$org$bouncycastle$jcajce$provider$asymmetric$compositesignatures$CompositeSignaturesConstants$CompositeName:[I

    sget-object v3, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeSignaturesConstants;->ASN1IdentifierCompositeNameMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeSignaturesConstants$CompositeName;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeSignaturesConstants$CompositeName;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot create key specs. Unsupported algorithm identifier."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    new-instance p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->falcon512Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object v5, p2, v3

    invoke-direct {p1, v4, v5}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object p1, v1, v3

    new-instance p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->ecdsaBrainpoolP256r1Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object p2, p2, v2

    invoke-direct {p1, v4, p2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object p1, v1, v2

    goto/16 :goto_0

    :pswitch_1
    new-instance p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->falcon512Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object v5, p2, v3

    invoke-direct {p1, v4, v5}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object p1, v1, v3

    new-instance p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->ecdsaP256Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object p2, p2, v2

    invoke-direct {p1, v4, p2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object p1, v1, v2

    goto/16 :goto_0

    :pswitch_2
    new-instance p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->falcon512Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object v5, p2, v3

    invoke-direct {p1, v4, v5}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object p1, v1, v3

    new-instance p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->ed25519Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object p2, p2, v2

    invoke-direct {p1, v4, p2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object p1, v1, v2

    goto/16 :goto_0

    :pswitch_3
    new-instance p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->dilithium5Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object v5, p2, v3

    invoke-direct {p1, v4, v5}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object p1, v1, v3

    new-instance p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->ecdsaBrainpoolP384r1Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object p2, p2, v2

    invoke-direct {p1, v4, p2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object p1, v1, v2

    goto/16 :goto_0

    :pswitch_4
    new-instance p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->dilithium5Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object v5, p2, v3

    invoke-direct {p1, v4, v5}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object p1, v1, v3

    new-instance p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->ecdsaP384Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object p2, p2, v2

    invoke-direct {p1, v4, p2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object p1, v1, v2

    goto/16 :goto_0

    :pswitch_5
    new-instance p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->dilithium3Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object v5, p2, v3

    invoke-direct {p1, v4, v5}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object p1, v1, v3

    new-instance p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->ecdsaBrainpoolP256r1Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object p2, p2, v2

    invoke-direct {p1, v4, p2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object p1, v1, v2

    goto/16 :goto_0

    :pswitch_6
    new-instance p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->dilithium3Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object v5, p2, v3

    invoke-direct {p1, v4, v5}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object p1, v1, v3

    new-instance p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->ecdsaP256Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object p2, p2, v2

    invoke-direct {p1, v4, p2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object p1, v1, v2

    goto/16 :goto_0

    :pswitch_7
    new-instance p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->dilithium2Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object v5, p2, v3

    invoke-direct {p1, v4, v5}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object p1, v1, v3

    new-instance p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->ecdsaBrainpoolP256r1Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object p2, p2, v2

    invoke-direct {p1, v4, p2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object p1, v1, v2

    goto/16 :goto_0

    :pswitch_8
    new-instance p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->dilithium2Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object v5, p2, v3

    invoke-direct {p1, v4, v5}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object p1, v1, v3

    new-instance p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->ecdsaP256Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object p2, p2, v2

    invoke-direct {p1, v4, p2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object p1, v1, v2

    goto :goto_0

    :pswitch_9
    new-instance p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->dilithium3Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object v5, p2, v3

    invoke-direct {p1, v4, v5}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object p1, v1, v3

    new-instance p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->rsaIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object p2, p2, v2

    invoke-direct {p1, v4, p2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object p1, v1, v2

    goto :goto_0

    :pswitch_a
    new-instance p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->dilithium2Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object v5, p2, v3

    invoke-direct {p1, v4, v5}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object p1, v1, v3

    new-instance p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->rsaIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object p2, p2, v2

    invoke-direct {p1, v4, p2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object p1, v1, v2

    goto :goto_0

    :pswitch_b
    new-instance p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->dilithium5Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object v5, p2, v3

    invoke-direct {p1, v4, v5}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object p1, v1, v3

    new-instance p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->ed448Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object p2, p2, v2

    invoke-direct {p1, v4, p2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object p1, v1, v2

    goto :goto_0

    :pswitch_c
    new-instance p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->dilithium3Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object v5, p2, v3

    invoke-direct {p1, v4, v5}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object p1, v1, v3

    new-instance p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->ed25519Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object p2, p2, v2

    invoke-direct {p1, v4, p2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object p1, v1, v2

    goto :goto_0

    :pswitch_d
    new-instance p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->dilithium2Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object v5, p2, v3

    invoke-direct {p1, v4, v5}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object p1, v1, v3

    new-instance p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->ed25519Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object p2, p2, v2

    invoke-direct {p1, v4, p2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object p1, v1, v2

    :goto_0
    new-instance p1, Ljava/security/spec/X509EncodedKeySpec;

    aget-object p2, v1, v3

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getEncoded()[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    aput-object p1, v0, v3

    new-instance p1, Ljava/security/spec/X509EncodedKeySpec;

    aget-object p2, v1, v2

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getEncoded()[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    aput-object p1, v0, v2

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    :try_start_0
    instance-of v0, p1, Ljava/security/PrivateKey;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->generatePrivate(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p1, Ljava/security/PublicKey;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->generatePublic(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_1
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "Key not recognized"

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Key could not be parsed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generatePrivate(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    :try_start_0
    invoke-direct {p0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->getKeyFactoriesFromIdentifier(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    new-array v3, v3, [Ljava/security/PrivateKey;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-virtual {v0, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    new-instance v7, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getVersion()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v6, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-virtual {v7, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Ljava/security/spec/PKCS8EncodedKeySpec;

    new-instance v8, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v8, v7}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v8}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/KeyFactory;

    invoke-virtual {v7, v6}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v6

    aput-object v6, v3, v5

    goto :goto_1

    :cond_0
    new-instance v7, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-static {v6}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded()[B

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/KeyFactory;

    invoke-virtual {v6, v7}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v6

    aput-object v6, v3, v5

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/bouncycastle/jcajce/CompositePrivateKey;

    invoke-direct {p1, v1, v3}, Lorg/bouncycastle/jcajce/CompositePrivateKey;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[Ljava/security/PrivateKey;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bouncycastle/util/Exceptions;->ioException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p1

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public generatePublic(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    :try_start_0
    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->getKeyFactoriesFromIdentifier(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v2, v2, [Lorg/bouncycastle/asn1/ASN1BitString;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    instance-of v5, v5, Lorg/bouncycastle/asn1/DEROctetString;

    if-eqz v5, :cond_0

    new-instance v5, Lorg/bouncycastle/asn1/DERBitString;

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    aput-object v5, v2, v4

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/DERBitString;

    aput-object v5, v2, v4

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->getKeysSpecs(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[Lorg/bouncycastle/asn1/ASN1BitString;)[Ljava/security/spec/X509EncodedKeySpec;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    new-array v4, v4, [Ljava/security/PublicKey;

    :goto_2
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/KeyFactory;

    aget-object v6, v2, v3

    invoke-virtual {v5, v6}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v5

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    new-instance v0, Lorg/bouncycastle/jcajce/CompositePublicKey;

    invoke-direct {v0, p1, v4}, Lorg/bouncycastle/jcajce/CompositePublicKey;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bouncycastle/util/Exceptions;->ioException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p1

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
