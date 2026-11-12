.class public interface abstract Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;
.super Ljava/lang/Object;


# static fields
.field public static final authEnvelopedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final authenticatedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final compressedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final digestedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final encryptedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final envelopedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_RSASSA_PSS_SHAKE128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_RSASSA_PSS_SHAKE256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_alg:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_alg_cek_hkdf_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_ecdsa_with_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_ecdsa_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_ori:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_ori_kem:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_ri:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_ri_ocsp_response:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_ri_scvp:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final signedAndEnvelopedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final signedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final timestampedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final zlibCompress:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->signedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->signedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->envelopedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->envelopedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->signedAndEnvelopedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->signedAndEnvelopedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->digestedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->digestedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->encryptedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->encryptedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_ct_authData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->authenticatedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_ct_compressedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->compressedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_ct_authEnvelopedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->authEnvelopedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_ct_timestampedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->timestampedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_zlibCompress:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->zlibCompress:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_pkix:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "16"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->id_ri:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->id_ri_ocsp_response:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->id_ri_scvp:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->pkix_algorithms:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->id_alg:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_rsassa_pss_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->id_RSASSA_PSS_SHAKE128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_rsassa_pss_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->id_RSASSA_PSS_SHAKE256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ecdsa_with_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->id_ecdsa_with_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ecdsa_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->id_ecdsa_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_smime:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "13"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->id_ori:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->id_ori_kem:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->smime_alg:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "31"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->id_alg_cek_hkdf_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method
