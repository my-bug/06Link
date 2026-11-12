.class public interface abstract Lorg/bouncycastle/asn1/crmf/CRMFObjectIdentifiers;
.super Ljava/lang/Object;


# static fields
.field public static final id_alg:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_alg_dh_pop:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_ct_encKeyWithID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_dh_sig_hmac_sha1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_pkip:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_pkix:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_regCtrl:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_regCtrl_authenticator:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_regCtrl_oldCertID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_regCtrl_pkiArchiveOptions:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_regCtrl_pkiPublicationInfo:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_regCtrl_protocolEncrKey:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_regCtrl_regToken:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_regInfo:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_regInfo_certReq:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_regInfo_utf8Pairs:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final passwordBasedMac:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    sget-object v0, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->entrust:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "66.13"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/crmf/CRMFObjectIdentifiers;->passwordBasedMac:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_pkix:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/crmf/CRMFObjectIdentifiers;->id_pkix:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/crmf/CRMFObjectIdentifiers;->id_pkip:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "1"

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    sput-object v3, Lorg/bouncycastle/asn1/crmf/CRMFObjectIdentifiers;->id_regCtrl:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/asn1/crmf/CRMFObjectIdentifiers;->id_regCtrl_regToken:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "2"

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    sput-object v5, Lorg/bouncycastle/asn1/crmf/CRMFObjectIdentifiers;->id_regCtrl_authenticator:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v5, "3"

    invoke-virtual {v3, v5}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    sput-object v6, Lorg/bouncycastle/asn1/crmf/CRMFObjectIdentifiers;->id_regCtrl_pkiPublicationInfo:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v6, "4"

    invoke-virtual {v3, v6}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    sput-object v7, Lorg/bouncycastle/asn1/crmf/CRMFObjectIdentifiers;->id_regCtrl_pkiArchiveOptions:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/crmf/CRMFObjectIdentifiers;->id_regCtrl_oldCertID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "6"

    invoke-virtual {v3, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/crmf/CRMFObjectIdentifiers;->id_regCtrl_protocolEncrKey:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/crmf/CRMFObjectIdentifiers;->id_regInfo:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/crmf/CRMFObjectIdentifiers;->id_regInfo_utf8Pairs:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/crmf/CRMFObjectIdentifiers;->id_regInfo_certReq:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_ct:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "21"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/crmf/CRMFObjectIdentifiers;->id_ct_encKeyWithID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->pkix_algorithms:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/crmf/CRMFObjectIdentifiers;->id_alg:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v5}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/crmf/CRMFObjectIdentifiers;->id_dh_sig_hmac_sha1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v6}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/crmf/CRMFObjectIdentifiers;->id_alg_dh_pop:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method
