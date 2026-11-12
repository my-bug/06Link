.class public Lorg/bouncycastle/asn1/ocsp/CertID;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field hashAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field issuerKeyHash:Lorg/bouncycastle/asn1/ASN1OctetString;

.field issuerNameHash:Lorg/bouncycastle/asn1/ASN1OctetString;

.field serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ocsp/CertID;->hashAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    iput-object v0, p0, Lorg/bouncycastle/asn1/ocsp/CertID;->issuerNameHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    iput-object v0, p0, Lorg/bouncycastle/asn1/ocsp/CertID;->issuerKeyHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object p1, p0, Lorg/bouncycastle/asn1/ocsp/CertID;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1Integer;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/ocsp/CertID;->hashAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p2, p0, Lorg/bouncycastle/asn1/ocsp/CertID;->issuerNameHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    iput-object p3, p0, Lorg/bouncycastle/asn1/ocsp/CertID;->issuerKeyHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    iput-object p4, p0, Lorg/bouncycastle/asn1/ocsp/CertID;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/CertID;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/ocsp/CertID;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/ocsp/CertID;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/ocsp/CertID;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ocsp/CertID;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ocsp/CertID;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ocsp/CertID;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/CertID;

    move-result-object p0

    return-object p0
.end method

.method private isEqual(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/asn1/ASN1Encodable;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    sget-object p1, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-virtual {p1, p2}, Lorg/bouncycastle/asn1/DERNull;->equals(Lorg/bouncycastle/asn1/ASN1Encodable;)Z

    move-result p1

    return p1

    :cond_1
    sget-object v1, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/asn1/DERNull;->equals(Lorg/bouncycastle/asn1/ASN1Encodable;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/asn1/ocsp/CertID;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/CertID;

    move-result-object p1

    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/CertID;->hashAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    iget-object v3, p1, Lorg/bouncycastle/asn1/ocsp/CertID;->hashAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/CertID;->hashAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    iget-object v3, p1, Lorg/bouncycastle/asn1/ocsp/CertID;->hashAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/bouncycastle/asn1/ocsp/CertID;->isEqual(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/asn1/ASN1Encodable;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/CertID;->issuerNameHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    iget-object v3, p1, Lorg/bouncycastle/asn1/ocsp/CertID;->issuerNameHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/CertID;->issuerKeyHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    iget-object v3, p1, Lorg/bouncycastle/asn1/ocsp/CertID;->issuerKeyHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/CertID;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    iget-object p1, p1, Lorg/bouncycastle/asn1/ocsp/CertID;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/asn1/ASN1Integer;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_3

    return v0

    :catch_0
    :cond_3
    return v2
.end method

.method public getHashAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/CertID;->hashAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getIssuerKeyHash()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/CertID;->issuerKeyHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getIssuerNameHash()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/CertID;->issuerNameHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getSerialNumber()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/CertID;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/CertID;->hashAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/DERNull;->equals(Lorg/bouncycastle/asn1/ASN1Encodable;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/CertID;->hashAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->hashCode()I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/asn1/ocsp/CertID;->issuerNameHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->hashCode()I

    move-result v2

    iget-object v3, p0, Lorg/bouncycastle/asn1/ocsp/CertID;->issuerKeyHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->hashCode()I

    move-result v3

    iget-object v4, p0, Lorg/bouncycastle/asn1/ocsp/CertID;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Integer;->hashCode()I

    move-result v4

    mul-int/lit8 v4, v4, 0x7

    add-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x7

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x7

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/CertID;->hashAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/CertID;->issuerNameHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/CertID;->issuerKeyHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/CertID;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
