.class final enum Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "All"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

.field public static final enum dsa_sha1:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

.field public static final enum dsa_sha224:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

.field public static final enum dsa_sha256:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

.field public static final enum ecdsa_brainpoolP256r1tls13_sha256:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

.field public static final enum ecdsa_brainpoolP384r1tls13_sha384:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

.field public static final enum ecdsa_brainpoolP512r1tls13_sha512:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

.field public static final enum ecdsa_secp256r1_sha256:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

.field public static final enum ecdsa_secp384r1_sha384:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

.field public static final enum ecdsa_secp521r1_sha512:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

.field public static final enum ecdsa_sha1:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

.field public static final enum ecdsa_sha224:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

.field public static final enum ed25519:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

.field public static final enum ed448:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

.field public static final enum rsa_md5:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

.field public static final enum rsa_pkcs1_sha1:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

.field public static final enum rsa_pkcs1_sha256:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

.field public static final enum rsa_pkcs1_sha384:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

.field public static final enum rsa_pkcs1_sha512:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

.field public static final enum rsa_pss_pss_sha256:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

.field public static final enum rsa_pss_pss_sha384:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

.field public static final enum rsa_pss_pss_sha512:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

.field public static final enum rsa_pss_rsae_sha256:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

.field public static final enum rsa_pss_rsae_sha384:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

.field public static final enum rsa_pss_rsae_sha512:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

.field public static final enum rsa_sha224:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

.field public static final enum sm2sig_sm3:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;


# instance fields
.field private final jcaSignatureAlgorithm:Ljava/lang/String;

.field private final jcaSignatureAlgorithmBC:Ljava/lang/String;

.field private final keyAlgorithm:Ljava/lang/String;

.field private final keyType13:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final namedGroup13:I

.field private final signatureScheme:I

.field private final supportedCerts13:Z

.field private final supportedPost13:Z

.field private final supportedPre13:Z

.field private final text:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;
    .locals 3

    const/16 v0, 0x1a

    new-array v0, v0, [Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    sget-object v1, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->ed25519:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->ed448:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->ecdsa_secp256r1_sha256:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->ecdsa_secp384r1_sha384:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->ecdsa_secp521r1_sha512:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->ecdsa_brainpoolP256r1tls13_sha256:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->ecdsa_brainpoolP384r1tls13_sha384:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->ecdsa_brainpoolP512r1tls13_sha512:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->rsa_pss_pss_sha256:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->rsa_pss_pss_sha384:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->rsa_pss_pss_sha512:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->rsa_pss_rsae_sha256:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->rsa_pss_rsae_sha384:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->rsa_pss_rsae_sha512:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->rsa_pkcs1_sha256:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->rsa_pkcs1_sha384:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->rsa_pkcs1_sha512:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->sm2sig_sm3:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->dsa_sha256:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->ecdsa_sha224:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->rsa_sha224:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->dsa_sha224:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->ecdsa_sha1:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->rsa_pkcs1_sha1:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->dsa_sha1:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->rsa_md5:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    const-string v4, "Ed25519"

    const-string v5, "Ed25519"

    const-string v1, "ed25519"

    const/4 v2, 0x0

    const/16 v3, 0x807

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->ed25519:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    new-instance v1, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    const-string v5, "Ed448"

    const-string v6, "Ed448"

    const-string v2, "ed448"

    const/4 v3, 0x1

    const/16 v4, 0x808

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->ed448:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    new-instance v2, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    const-string v6, "SHA256withECDSA"

    const-string v7, "EC"

    const-string v3, "ecdsa_secp256r1_sha256"

    const/4 v4, 0x2

    const/16 v5, 0x403

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->ecdsa_secp256r1_sha256:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    new-instance v3, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    const-string v7, "SHA384withECDSA"

    const-string v8, "EC"

    const-string v4, "ecdsa_secp384r1_sha384"

    const/4 v5, 0x3

    const/16 v6, 0x503

    invoke-direct/range {v3 .. v8}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->ecdsa_secp384r1_sha384:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    new-instance v4, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    const-string v8, "SHA512withECDSA"

    const-string v9, "EC"

    const-string v5, "ecdsa_secp521r1_sha512"

    const/4 v6, 0x4

    const/16 v7, 0x603

    invoke-direct/range {v4 .. v9}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->ecdsa_secp521r1_sha512:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    new-instance v5, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    const-string v9, "SHA256withECDSA"

    const-string v10, "EC"

    const-string v6, "ecdsa_brainpoolP256r1tls13_sha256"

    const/4 v7, 0x5

    const/16 v8, 0x81a

    invoke-direct/range {v5 .. v10}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->ecdsa_brainpoolP256r1tls13_sha256:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    new-instance v6, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    const-string v10, "SHA384withECDSA"

    const-string v11, "EC"

    const-string v7, "ecdsa_brainpoolP384r1tls13_sha384"

    const/4 v8, 0x6

    const/16 v9, 0x81b

    invoke-direct/range {v6 .. v11}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->ecdsa_brainpoolP384r1tls13_sha384:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    new-instance v0, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    const-string v4, "SHA512withECDSA"

    const-string v5, "EC"

    const-string v1, "ecdsa_brainpoolP512r1tls13_sha512"

    const/4 v2, 0x7

    const/16 v3, 0x81c

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->ecdsa_brainpoolP512r1tls13_sha512:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    new-instance v1, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    const-string v5, "SHA256withRSAandMGF1"

    const-string v6, "RSASSA-PSS"

    const-string v2, "rsa_pss_pss_sha256"

    const/16 v3, 0x8

    const/16 v4, 0x809

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->rsa_pss_pss_sha256:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    new-instance v2, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    const-string v6, "SHA384withRSAandMGF1"

    const-string v7, "RSASSA-PSS"

    const-string v3, "rsa_pss_pss_sha384"

    const/16 v4, 0x9

    const/16 v5, 0x80a

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->rsa_pss_pss_sha384:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    new-instance v3, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    const-string v7, "SHA512withRSAandMGF1"

    const-string v8, "RSASSA-PSS"

    const-string v4, "rsa_pss_pss_sha512"

    const/16 v5, 0xa

    const/16 v6, 0x80b

    invoke-direct/range {v3 .. v8}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->rsa_pss_pss_sha512:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    new-instance v4, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    const-string v8, "SHA256withRSAandMGF1"

    const-string v9, "RSA"

    const-string v5, "rsa_pss_rsae_sha256"

    const/16 v6, 0xb

    const/16 v7, 0x804

    invoke-direct/range {v4 .. v9}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->rsa_pss_rsae_sha256:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    new-instance v5, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    const-string v9, "SHA384withRSAandMGF1"

    const-string v10, "RSA"

    const-string v6, "rsa_pss_rsae_sha384"

    const/16 v7, 0xc

    const/16 v8, 0x805

    invoke-direct/range {v5 .. v10}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->rsa_pss_rsae_sha384:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    new-instance v6, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    const-string v10, "SHA512withRSAandMGF1"

    const-string v11, "RSA"

    const-string v7, "rsa_pss_rsae_sha512"

    const/16 v8, 0xd

    const/16 v9, 0x806

    invoke-direct/range {v6 .. v11}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->rsa_pss_rsae_sha512:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    new-instance v7, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    const-string v12, "RSA"

    const/4 v13, 0x1

    const-string v8, "rsa_pkcs1_sha256"

    const/16 v9, 0xe

    const/16 v10, 0x401

    const-string v11, "SHA256withRSA"

    invoke-direct/range {v7 .. v13}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v7, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->rsa_pkcs1_sha256:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    new-instance v0, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    const-string v5, "RSA"

    const/4 v6, 0x1

    const-string v1, "rsa_pkcs1_sha384"

    const/16 v2, 0xf

    const/16 v3, 0x501

    const-string v4, "SHA384withRSA"

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->rsa_pkcs1_sha384:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    new-instance v1, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    const-string v6, "RSA"

    const/4 v7, 0x1

    const-string v2, "rsa_pkcs1_sha512"

    const/16 v3, 0x10

    const/16 v4, 0x601

    const-string v5, "SHA512withRSA"

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v1, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->rsa_pkcs1_sha512:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    new-instance v2, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    const-string v6, "SM3withSM2"

    const-string v7, "EC"

    const-string v3, "sm2sig_sm3"

    const/16 v4, 0x11

    const/16 v5, 0x708

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->sm2sig_sm3:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    new-instance v3, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    const-string v8, "SHA256withDSA"

    const-string v9, "DSA"

    const-string v4, "dsa_sha256"

    const/16 v5, 0x12

    const/16 v6, 0x402

    const-string v7, "dsa_sha256"

    invoke-direct/range {v3 .. v9}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->dsa_sha256:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    new-instance v4, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    const-string v9, "SHA224withECDSA"

    const-string v10, "EC"

    const-string v5, "ecdsa_sha224"

    const/16 v6, 0x13

    const/16 v7, 0x303

    const-string v8, "ecdsa_sha224"

    invoke-direct/range {v4 .. v10}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->ecdsa_sha224:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    new-instance v5, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    const-string v10, "SHA224withRSA"

    const-string v11, "RSA"

    const-string v6, "rsa_sha224"

    const/16 v7, 0x14

    const/16 v8, 0x301

    const-string v9, "rsa_sha224"

    invoke-direct/range {v5 .. v11}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->rsa_sha224:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    new-instance v6, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    const-string v11, "SHA224withDSA"

    const-string v12, "DSA"

    const-string v7, "dsa_sha224"

    const/16 v8, 0x15

    const/16 v9, 0x302

    const-string v10, "dsa_sha224"

    invoke-direct/range {v6 .. v12}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->dsa_sha224:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    new-instance v7, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    const-string v12, "EC"

    const-string v8, "ecdsa_sha1"

    const/16 v9, 0x16

    const/16 v10, 0x203

    const-string v11, "SHA1withECDSA"

    invoke-direct/range {v7 .. v13}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v7, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->ecdsa_sha1:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    new-instance v0, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    const-string v5, "RSA"

    const/4 v6, 0x1

    const-string v1, "rsa_pkcs1_sha1"

    const/16 v2, 0x17

    const/16 v3, 0x201

    const-string v4, "SHA1withRSA"

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->rsa_pkcs1_sha1:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    new-instance v1, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    const-string v6, "SHA1withDSA"

    const-string v7, "DSA"

    const-string v2, "dsa_sha1"

    const/16 v3, 0x18

    const/16 v4, 0x202

    const-string v5, "dsa_sha1"

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->dsa_sha1:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    new-instance v2, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    const-string v7, "MD5withRSA"

    const-string v8, "RSA"

    const-string v3, "rsa_md5"

    const/16 v4, 0x19

    const/16 v5, 0x101

    const-string v6, "rsa_md5"

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->rsa_md5:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    invoke-static {}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->$values()[Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->$VALUES:[Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v7, 0x1

    invoke-static {p3}, Lorg/bouncycastle/tls/SignatureScheme;->getNamedGroup(I)I

    move-result v8

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZZI)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZI)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-static {p6, p9}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getKeyType13(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p5, p6}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getJcaSignatureAlgorithmBC(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput p3, p0, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->signatureScheme:I

    iput-object p4, p0, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->name:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "(0x"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->text:Ljava/lang/String;

    iput-object p5, p0, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->jcaSignatureAlgorithm:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->jcaSignatureAlgorithmBC:Ljava/lang/String;

    iput-object p6, p0, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->keyAlgorithm:Ljava/lang/String;

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->keyType13:Ljava/lang/String;

    iput-boolean p7, p0, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->supportedPost13:Z

    if-ltz p9, :cond_1

    sget-object p1, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv12:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-static {p9, p1}, Lorg/bouncycastle/tls/NamedGroup;->canBeNegotiated(ILorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->supportedPre13:Z

    iput-boolean p8, p0, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->supportedCerts13:Z

    iput p9, p0, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->namedGroup13:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v7, p6

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZZI)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZZI)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZI)V"
        }
    .end annotation

    invoke-static {p3}, Lorg/bouncycastle/tls/SignatureScheme;->getName(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V

    return-void
.end method

.method static synthetic access$1000(Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->jcaSignatureAlgorithm:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->jcaSignatureAlgorithmBC:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->keyAlgorithm:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->keyType13:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->supportedPost13:Z

    return p0
.end method

.method static synthetic access$1600(Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->supportedPre13:Z

    return p0
.end method

.method static synthetic access$1700(Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->supportedCerts13:Z

    return p0
.end method

.method static synthetic access$1800(Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->text:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->signatureScheme:I

    return p0
.end method

.method static synthetic access$900(Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->namedGroup13:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    return-object p0
.end method

.method public static values()[Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;
    .locals 1

    sget-object v0, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->$VALUES:[Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    invoke-virtual {v0}, [Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$All;

    return-object v0
.end method
