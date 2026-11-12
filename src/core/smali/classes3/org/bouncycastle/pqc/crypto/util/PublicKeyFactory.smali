.class public Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$BIKEConverter;,
        Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$CMCEConverter;,
        Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$DilithiumConverter;,
        Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$FalconConverter;,
        Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$FrodoConverter;,
        Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$HQCConverter;,
        Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$KyberConverter;,
        Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$LMSConverter;,
        Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$MLDSAConverter;,
        Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$McElieceCCA2Converter;,
        Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$NHConverter;,
        Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$NTRULPrimeConverter;,
        Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$NtruConverter;,
        Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$PicnicConverter;,
        Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$QTeslaConverter;,
        Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$RainbowConverter;,
        Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SABERConverter;,
        Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SLHDSAConverter;,
        Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SNTRUPrimeConverter;,
        Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSConverter;,
        Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;,
        Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SubjectPublicKeyInfoConverter;,
        Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$XMSSConverter;,
        Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$XMSSMTConverter;
    }
.end annotation


# static fields
.field private static converters:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->qTESLA_p_I:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$QTeslaConverter;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$QTeslaConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->qTESLA_p_III:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$QTeslaConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$QTeslaConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->sphincs256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->newHope:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$NHConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$NHConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->xmss:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$XMSSConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$XMSSConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->xmss_mt:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$XMSSMTConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$XMSSMTConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/isara/IsaraObjectIdentifiers;->id_alg_xmss:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$XMSSConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$XMSSConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/isara/IsaraObjectIdentifiers;->id_alg_xmssmt:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$XMSSMTConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$XMSSMTConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_hss_lms_hashsig:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$LMSConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$LMSConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->mcElieceCca2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$McElieceCCA2Converter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$McElieceCCA2Converter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_128s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_128f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_128s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_128f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_128s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_128f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_192s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_192f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_192s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_192f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_192s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_192f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_256s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_256f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_256s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_256f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_256s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_256f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_128s_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_128f_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_192s_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_192f_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_256s_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_256f_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_128s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_128f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_128s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_128f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_192s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_192f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_192s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_192f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_256s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_256f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_256s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_256f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "1.3.9999.6.4.10"

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->mceliece348864_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$CMCEConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$CMCEConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->mceliece348864f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$CMCEConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$CMCEConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->mceliece460896_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$CMCEConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$CMCEConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->mceliece460896f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$CMCEConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$CMCEConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->mceliece6688128_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$CMCEConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$CMCEConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->mceliece6688128f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$CMCEConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$CMCEConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->mceliece6960119_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$CMCEConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$CMCEConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->mceliece6960119f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$CMCEConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$CMCEConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->mceliece8192128_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$CMCEConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$CMCEConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->mceliece8192128f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$CMCEConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$CMCEConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->frodokem640aes:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$FrodoConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$FrodoConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->frodokem640shake:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$FrodoConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$FrodoConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->frodokem976aes:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$FrodoConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$FrodoConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->frodokem976shake:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$FrodoConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$FrodoConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->frodokem1344aes:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$FrodoConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$FrodoConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->frodokem1344shake:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$FrodoConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$FrodoConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->lightsaberkem128r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SABERConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SABERConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->saberkem128r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SABERConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SABERConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->firesaberkem128r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SABERConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SABERConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->lightsaberkem192r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SABERConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SABERConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->saberkem192r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SABERConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SABERConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->firesaberkem192r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SABERConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SABERConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->lightsaberkem256r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SABERConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SABERConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->saberkem256r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SABERConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SABERConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->firesaberkem256r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SABERConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SABERConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->ulightsaberkemr3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SABERConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SABERConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->usaberkemr3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SABERConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SABERConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->ufiresaberkemr3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SABERConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SABERConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->lightsaberkem90sr3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SABERConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SABERConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->saberkem90sr3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SABERConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SABERConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->firesaberkem90sr3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SABERConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SABERConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->ulightsaberkem90sr3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SABERConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SABERConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->usaberkem90sr3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SABERConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SABERConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->ufiresaberkem90sr3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SABERConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SABERConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->picnicl1fs:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$PicnicConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$PicnicConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->picnicl1ur:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$PicnicConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$PicnicConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->picnicl3fs:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$PicnicConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$PicnicConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->picnicl3ur:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$PicnicConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$PicnicConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->picnicl5fs:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$PicnicConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$PicnicConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->picnicl5ur:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$PicnicConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$PicnicConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->picnic3l1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$PicnicConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$PicnicConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->picnic3l3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$PicnicConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$PicnicConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->picnic3l5:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$PicnicConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$PicnicConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->picnicl1full:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$PicnicConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$PicnicConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->picnicl3full:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$PicnicConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$PicnicConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->picnicl5full:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$PicnicConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$PicnicConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->ntruhps2048509:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$NtruConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$NtruConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->ntruhps2048677:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$NtruConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$NtruConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->ntruhps4096821:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$NtruConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$NtruConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->ntruhps40961229:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$NtruConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$NtruConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->ntruhrss701:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$NtruConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$NtruConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->ntruhrss1373:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$NtruConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$NtruConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->falcon_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$FalconConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$FalconConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->falcon_1024:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$FalconConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$FalconConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_alg_ml_kem_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$KyberConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$KyberConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_alg_ml_kem_768:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$KyberConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$KyberConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_alg_ml_kem_1024:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$KyberConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$KyberConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->kyber512_aes:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$KyberConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$KyberConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->kyber768_aes:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$KyberConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$KyberConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->kyber1024_aes:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$KyberConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$KyberConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->ntrulpr653:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$NTRULPrimeConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$NTRULPrimeConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->ntrulpr761:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$NTRULPrimeConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$NTRULPrimeConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->ntrulpr857:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$NTRULPrimeConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$NTRULPrimeConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->ntrulpr953:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$NTRULPrimeConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$NTRULPrimeConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->ntrulpr1013:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$NTRULPrimeConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$NTRULPrimeConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->ntrulpr1277:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$NTRULPrimeConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$NTRULPrimeConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sntrup653:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SNTRUPrimeConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SNTRUPrimeConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sntrup761:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SNTRUPrimeConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SNTRUPrimeConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sntrup857:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SNTRUPrimeConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SNTRUPrimeConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sntrup953:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SNTRUPrimeConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SNTRUPrimeConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sntrup1013:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SNTRUPrimeConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SNTRUPrimeConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sntrup1277:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SNTRUPrimeConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SNTRUPrimeConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ml_dsa_44:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$MLDSAConverter;

    invoke-direct {v2}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$MLDSAConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ml_dsa_65:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$MLDSAConverter;

    invoke-direct {v2}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$MLDSAConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ml_dsa_87:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$MLDSAConverter;

    invoke-direct {v2}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$MLDSAConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_ml_dsa_44_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$MLDSAConverter;

    invoke-direct {v2}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$MLDSAConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_ml_dsa_65_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$MLDSAConverter;

    invoke-direct {v2}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$MLDSAConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_ml_dsa_87_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$MLDSAConverter;

    invoke-direct {v2}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$MLDSAConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->dilithium2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$DilithiumConverter;

    invoke-direct {v2}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$DilithiumConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->dilithium3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$DilithiumConverter;

    invoke-direct {v2}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$DilithiumConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->dilithium5:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$DilithiumConverter;

    invoke-direct {v2}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$DilithiumConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->dilithium2_aes:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$DilithiumConverter;

    invoke-direct {v2}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$DilithiumConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->dilithium3_aes:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$DilithiumConverter;

    invoke-direct {v2}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$DilithiumConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->dilithium5_aes:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$DilithiumConverter;

    invoke-direct {v2}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$DilithiumConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->bike128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$BIKEConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$BIKEConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->bike192:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$BIKEConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$BIKEConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->bike256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$BIKEConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$BIKEConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->hqc128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$HQCConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$HQCConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->hqc192:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$HQCConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$HQCConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->hqc256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$HQCConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$HQCConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->rainbow_III_classic:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$RainbowConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$RainbowConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->rainbow_III_circumzenithal:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$RainbowConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$RainbowConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->rainbow_III_compressed:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$RainbowConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$RainbowConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->rainbow_V_classic:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$RainbowConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$RainbowConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->rainbow_V_circumzenithal:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$RainbowConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$RainbowConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->rainbow_V_compressed:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$RainbowConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$RainbowConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_128s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SLHDSAConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SLHDSAConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_128f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SLHDSAConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SLHDSAConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_192s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SLHDSAConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SLHDSAConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_192f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SLHDSAConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SLHDSAConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_256s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SLHDSAConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SLHDSAConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_256f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SLHDSAConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SLHDSAConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_128s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SLHDSAConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SLHDSAConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_128f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SLHDSAConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SLHDSAConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_192s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SLHDSAConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SLHDSAConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_192f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SLHDSAConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SLHDSAConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_256s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SLHDSAConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SLHDSAConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_256f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SLHDSAConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SLHDSAConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_128s_with_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SLHDSAConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SLHDSAConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_128f_with_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SLHDSAConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SLHDSAConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_192s_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SLHDSAConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SLHDSAConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_192f_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SLHDSAConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SLHDSAConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_256s_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SLHDSAConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SLHDSAConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_256f_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SLHDSAConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SLHDSAConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_128s_with_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SLHDSAConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SLHDSAConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_128f_with_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SLHDSAConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SLHDSAConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_192s_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SLHDSAConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SLHDSAConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_192f_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SLHDSAConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SLHDSAConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_256s_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SLHDSAConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SLHDSAConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_256f_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SLHDSAConverter;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SLHDSAConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->createKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p0

    return-object p0
.end method

.method public static createKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->createKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Ljava/lang/Object;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "keyInfo argument null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Ljava/lang/Object;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SubjectPublicKeyInfoConverter;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0, p1}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SubjectPublicKeyInfoConverter;->getPublicKeyParameters(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Ljava/lang/Object;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "algorithm identifier in public key not recognised: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "keyInfo argument null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
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

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->createKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "keyInfoData array empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "keyInfoData array null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
