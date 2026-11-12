.class public Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;
.super Lorg/bouncycastle/jcajce/spec/KEMKDFSpec;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec$Builder;
    }
.end annotation


# static fields
.field private static DefKdf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private static final EMPTY_OTHER_INFO:[B


# instance fields
.field private final publicKey:Ljava/security/PublicKey;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;->EMPTY_OTHER_INFO:[B

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_kdf_kdf3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;->DefKdf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method public constructor <init>(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 6

    sget-object v4, Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;->DefKdf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v5, Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;->EMPTY_OTHER_INFO:[B

    const/16 v3, 0x100

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;-><init>(Ljava/security/PublicKey;Ljava/lang/String;ILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/security/PublicKey;Ljava/lang/String;I)V
    .locals 6

    sget-object v4, Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;->DefKdf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v5, Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;->EMPTY_OTHER_INFO:[B

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;-><init>(Ljava/security/PublicKey;Ljava/lang/String;ILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    return-void
.end method

.method private constructor <init>(Ljava/security/PublicKey;Ljava/lang/String;ILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V
    .locals 0

    invoke-direct {p0, p4, p5, p2, p3}, Lorg/bouncycastle/jcajce/spec/KEMKDFSpec;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[BLjava/lang/String;I)V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;->publicKey:Ljava/security/PublicKey;

    return-void
.end method

.method synthetic constructor <init>(Ljava/security/PublicKey;Ljava/lang/String;ILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[BLorg/bouncycastle/jcajce/spec/KEMGenerateSpec$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;-><init>(Ljava/security/PublicKey;Ljava/lang/String;ILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    return-void
.end method

.method static synthetic access$000()[B
    .locals 1

    sget-object v0, Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;->EMPTY_OTHER_INFO:[B

    return-object v0
.end method


# virtual methods
.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;->publicKey:Ljava/security/PublicKey;

    return-object v0
.end method
