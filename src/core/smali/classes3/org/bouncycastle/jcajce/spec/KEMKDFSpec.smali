.class public Lorg/bouncycastle/jcajce/spec/KEMKDFSpec;
.super Ljava/lang/Object;


# instance fields
.field private final kdfAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final keyAlgorithmName:Ljava/lang/String;

.field private final keySizeInBits:I

.field private final otherInfo:[B


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[BLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lorg/bouncycastle/jcajce/spec/KEMKDFSpec;->keyAlgorithmName:Ljava/lang/String;

    iput p4, p0, Lorg/bouncycastle/jcajce/spec/KEMKDFSpec;->keySizeInBits:I

    iput-object p1, p0, Lorg/bouncycastle/jcajce/spec/KEMKDFSpec;->kdfAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/spec/KEMKDFSpec;->otherInfo:[B

    return-void
.end method


# virtual methods
.method public getKdfAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/KEMKDFSpec;->kdfAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getKeyAlgorithmName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/KEMKDFSpec;->keyAlgorithmName:Ljava/lang/String;

    return-object v0
.end method

.method public getKeySize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/jcajce/spec/KEMKDFSpec;->keySizeInBits:I

    return v0
.end method

.method public getOtherInfo()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/KEMKDFSpec;->otherInfo:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method
