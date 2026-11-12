.class public final Lorg/bouncycastle/jcajce/spec/KEMExtractSpec$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final algorithmName:Ljava/lang/String;

.field private final encapsulation:[B

.field private kdfAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final keySizeInBits:I

.field private otherInfo:[B

.field private final privateKey:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;[BLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec$Builder;->privateKey:Ljava/security/PrivateKey;

    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec$Builder;->encapsulation:[B

    iput-object p3, p0, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec$Builder;->algorithmName:Ljava/lang/String;

    iput p4, p0, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec$Builder;->keySizeInBits:I

    new-instance p1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object p2, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_kdf_kdf3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance p3, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object p4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p3, p4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-direct {p1, p2, p3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec$Builder;->kdfAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    # getter for: Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;->EMPTY_OTHER_INFO:[B
    invoke-static {}, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;->access$000()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec$Builder;->otherInfo:[B

    return-void
.end method


# virtual methods
.method public build()Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;
    .locals 8

    new-instance v0, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec$Builder;->privateKey:Ljava/security/PrivateKey;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec$Builder;->encapsulation:[B

    iget-object v3, p0, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec$Builder;->algorithmName:Ljava/lang/String;

    iget v4, p0, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec$Builder;->keySizeInBits:I

    iget-object v5, p0, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec$Builder;->kdfAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v6, p0, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec$Builder;->otherInfo:[B

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;-><init>(Ljava/security/PrivateKey;[BLjava/lang/String;ILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[BLorg/bouncycastle/jcajce/spec/KEMExtractSpec$1;)V

    return-object v0
.end method

.method public withKdfAlgorithm(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/jcajce/spec/KEMExtractSpec$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec$Builder;->kdfAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object p0
.end method

.method public withNoKdf()Lorg/bouncycastle/jcajce/spec/KEMExtractSpec$Builder;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec$Builder;->kdfAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object p0
.end method

.method public withOtherInfo([B)Lorg/bouncycastle/jcajce/spec/KEMExtractSpec$Builder;
    .locals 0

    if-nez p1, :cond_0

    # getter for: Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;->EMPTY_OTHER_INFO:[B
    invoke-static {}, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;->access$000()[B

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec$Builder;->otherInfo:[B

    return-object p0
.end method
