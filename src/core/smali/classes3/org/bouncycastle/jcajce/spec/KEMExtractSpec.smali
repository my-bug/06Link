.class public Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;
.super Lorg/bouncycastle/jcajce/spec/KEMKDFSpec;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/spec/KEMExtractSpec$Builder;
    }
.end annotation


# static fields
.field private static DefKdf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private static final EMPTY_OTHER_INFO:[B


# instance fields
.field private final encapsulation:[B

.field private final privateKey:Ljava/security/PrivateKey;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;->EMPTY_OTHER_INFO:[B

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_kdf_kdf3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;->DefKdf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method public constructor <init>(Ljava/security/PrivateKey;[BLjava/lang/String;)V
    .locals 1

    const/16 v0, 0x100

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;-><init>(Ljava/security/PrivateKey;[BLjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/security/PrivateKey;[BLjava/lang/String;I)V
    .locals 7

    sget-object v5, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;->DefKdf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v6, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;->EMPTY_OTHER_INFO:[B

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;-><init>(Ljava/security/PrivateKey;[BLjava/lang/String;ILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    return-void
.end method

.method private constructor <init>(Ljava/security/PrivateKey;[BLjava/lang/String;ILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V
    .locals 0

    invoke-direct {p0, p5, p6, p3, p4}, Lorg/bouncycastle/jcajce/spec/KEMKDFSpec;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[BLjava/lang/String;I)V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;->privateKey:Ljava/security/PrivateKey;

    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;->encapsulation:[B

    return-void
.end method

.method synthetic constructor <init>(Ljava/security/PrivateKey;[BLjava/lang/String;ILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[BLorg/bouncycastle/jcajce/spec/KEMExtractSpec$1;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;-><init>(Ljava/security/PrivateKey;[BLjava/lang/String;ILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    return-void
.end method

.method static synthetic access$000()[B
    .locals 1

    sget-object v0, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;->EMPTY_OTHER_INFO:[B

    return-object v0
.end method


# virtual methods
.method public getEncapsulation()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;->encapsulation:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;->privateKey:Ljava/security/PrivateKey;

    return-object v0
.end method
