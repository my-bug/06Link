.class public interface abstract Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;
.super Ljava/lang/Object;


# static fields
.field public static final ct_encKeyWithID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dhBasedMac:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_it:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_it_caCerts:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_it_certProfile:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_it_certReqTemplate:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_it_crlStatusList:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_it_crls:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_it_rootCaCert:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_it_rootCaKeyUpdate:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_pkip:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_regCtrl:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_regCtrl_algId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_regCtrl_rsaKeyLen:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_regInfo:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final it_caKeyUpdateInfo:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final it_caProtEncCert:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final it_confirmWaitTime:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final it_currentCRL:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final it_encKeyPairTypes:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final it_implicitConfirm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final it_keyPairParamRep:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final it_keyPairParamReq:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final it_origPKIMessage:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final it_preferredSymAlg:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final it_revPassphrase:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final it_signKeyPairTypes:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final it_suppLangTags:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final it_unsupportedOIDs:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final kemBasedMac:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final passwordBasedMac:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final regCtrl_altCertTemplate:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final regCtrl_authenticator:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final regCtrl_oldCertID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final regCtrl_pkiArchiveOptions:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final regCtrl_pkiPublicationInfo:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final regCtrl_protocolEncrKey:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final regCtrl_regToken:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final regInfo_certReq:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final regInfo_utf8Pairs:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-object v0, Lorg/bouncycastle/asn1/crmf/CRMFObjectIdentifiers;->passwordBasedMac:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->passwordBasedMac:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->entrust:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "66.16"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->kemBasedMac:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->entrust:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "66.30"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->dhBasedMac:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_pkix:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->id_it:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "1"

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->it_caProtEncCert:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "2"

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->it_signKeyPairTypes:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "3"

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->it_encKeyPairTypes:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->it_preferredSymAlg:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->it_caKeyUpdateInfo:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->it_currentCRL:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "7"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->it_unsupportedOIDs:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "10"

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->it_keyPairParamReq:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "11"

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    sput-object v3, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->it_keyPairParamRep:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "12"

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->it_revPassphrase:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "13"

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->it_implicitConfirm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "14"

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->it_confirmWaitTime:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "15"

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->it_origPKIMessage:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "16"

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->it_suppLangTags:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "17"

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->id_it_caCerts:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "18"

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->id_it_rootCaKeyUpdate:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "19"

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->id_it_certReqTemplate:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "20"

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->id_it_rootCaCert:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "21"

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->id_it_certProfile:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "22"

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->id_it_crlStatusList:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "23"

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->id_it_crls:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/crmf/CRMFObjectIdentifiers;->id_pkip:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->id_pkip:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/crmf/CRMFObjectIdentifiers;->id_regCtrl:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->id_regCtrl:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v4, Lorg/bouncycastle/asn1/crmf/CRMFObjectIdentifiers;->id_regInfo:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v4, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->id_regInfo:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v4, Lorg/bouncycastle/asn1/crmf/CRMFObjectIdentifiers;->id_regCtrl_regToken:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v4, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->regCtrl_regToken:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v4, Lorg/bouncycastle/asn1/crmf/CRMFObjectIdentifiers;->id_regCtrl_authenticator:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v4, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->regCtrl_authenticator:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v4, Lorg/bouncycastle/asn1/crmf/CRMFObjectIdentifiers;->id_regCtrl_pkiPublicationInfo:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v4, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->regCtrl_pkiPublicationInfo:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v4, Lorg/bouncycastle/asn1/crmf/CRMFObjectIdentifiers;->id_regCtrl_pkiArchiveOptions:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v4, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->regCtrl_pkiArchiveOptions:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v4, Lorg/bouncycastle/asn1/crmf/CRMFObjectIdentifiers;->id_regCtrl_oldCertID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v4, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->regCtrl_oldCertID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v4, Lorg/bouncycastle/asn1/crmf/CRMFObjectIdentifiers;->id_regCtrl_protocolEncrKey:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v4, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->regCtrl_protocolEncrKey:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->regCtrl_altCertTemplate:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->id_regCtrl_algId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->id_regCtrl_rsaKeyLen:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/crmf/CRMFObjectIdentifiers;->id_regInfo_utf8Pairs:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->regInfo_utf8Pairs:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/crmf/CRMFObjectIdentifiers;->id_regInfo_certReq:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->regInfo_certReq:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/crmf/CRMFObjectIdentifiers;->id_ct_encKeyWithID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->ct_encKeyWithID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method
