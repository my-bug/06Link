.class public Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private extensions:Lorg/bouncycastle/asn1/x509/Extensions;

.field private issuer:Lorg/bouncycastle/asn1/x500/X500Name;

.field private final serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

.field private signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final signatureValue:Lorg/bouncycastle/asn1/ASN1BitString;

.field private subject:Lorg/bouncycastle/asn1/x500/X500Name;

.field private subjectPublicKeyInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

.field private validity:Lorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 7

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x2

    :goto_0
    instance-of v4, v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v4, :cond_4

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v4

    if-eqz v4, :cond_3

    if-eq v4, v0, :cond_2

    if-eq v4, v2, :cond_1

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v1, v0}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->subject:Lorg/bouncycastle/asn1/x500/X500Name;

    goto :goto_1

    :cond_1
    invoke-static {v1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->validity:Lorg/bouncycastle/asn1/ASN1Sequence;

    goto :goto_1

    :cond_2
    invoke-static {v1, v0}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    goto :goto_1

    :cond_3
    invoke-static {v1, v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    :goto_1
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    move-object v6, v3

    move v3, v1

    move-object v1, v6

    goto :goto_0

    :cond_4
    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->subjectPublicKeyInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    :goto_2
    instance-of v2, v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v2, :cond_6

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {v1, v0}, Lorg/bouncycastle/asn1/x509/Extensions;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    :goto_3
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    move v3, v1

    move-object v1, v2

    goto :goto_2

    :cond_6
    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->signatureValue:Lorg/bouncycastle/asn1/ASN1BitString;

    return-void
.end method

.method private addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;IZLorg/bouncycastle/asn1/ASN1Object;)V
    .locals 1

    if-eqz p4, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v0, p3, p2, p4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    return-void
.end method

.method public static fromExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->deltaCertificateDescriptor:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/x509/Extensions;->getExtensionParsedValue(Lorg/bouncycastle/asn1/x509/Extensions;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public getSerialNumber()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getSignature()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getSignatureValue()Lorg/bouncycastle/asn1/ASN1BitString;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->signatureValue:Lorg/bouncycastle/asn1/ASN1BitString;

    return-object v0
.end method

.method public getSubject()Lorg/bouncycastle/asn1/x500/X500Name;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->subject:Lorg/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->subjectPublicKeyInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    return-object v0
.end method

.method public getValidity()Lorg/bouncycastle/asn1/ASN1Sequence;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->validity:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v3, v1}, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;IZLorg/bouncycastle/asn1/ASN1Object;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    invoke-direct {p0, v0, v3, v3, v1}, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;IZLorg/bouncycastle/asn1/ASN1Object;)V

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->validity:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {p0, v0, v1, v3, v2}, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;IZLorg/bouncycastle/asn1/ASN1Object;)V

    const/4 v1, 0x3

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->subject:Lorg/bouncycastle/asn1/x500/X500Name;

    invoke-direct {p0, v0, v1, v3, v2}, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;IZLorg/bouncycastle/asn1/ASN1Object;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->subjectPublicKeyInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x4

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-direct {p0, v0, v1, v3, v2}, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;IZLorg/bouncycastle/asn1/ASN1Object;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->signatureValue:Lorg/bouncycastle/asn1/ASN1BitString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method public trimTo(Lorg/bouncycastle/asn1/x509/TBSCertificate;Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;
    .locals 11

    iget-object v0, p1, Lorg/bouncycastle/asn1/x509/TBSCertificate;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v1, p1, Lorg/bouncycastle/asn1/x509/TBSCertificate;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    const/4 v3, 0x2

    new-array v4, v3, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v5, 0x0

    iget-object v6, p1, Lorg/bouncycastle/asn1/x509/TBSCertificate;->startDate:Lorg/bouncycastle/asn1/x509/Time;

    aput-object v6, v4, v5

    iget-object v5, p1, Lorg/bouncycastle/asn1/x509/TBSCertificate;->endDate:Lorg/bouncycastle/asn1/x509/Time;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-direct {v2, v4}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object p1, p1, Lorg/bouncycastle/asn1/x509/TBSCertificate;->subject:Lorg/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v4

    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/asn1/ASN1Encodable;

    :goto_0
    invoke-virtual {v5, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v8, v7, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v8, :cond_5

    invoke-static {v7}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v9

    if-eqz v9, :cond_4

    if-eq v9, v6, :cond_3

    if-eq v9, v3, :cond_2

    const/4 v10, 0x3

    if-eq v9, v10, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v8, v6}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v8

    invoke-virtual {v8, p1}, Lorg/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_2

    :cond_2
    invoke-static {v8, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v8

    invoke-virtual {v8, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_2

    :cond_3
    invoke-static {v8, v6}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v8

    invoke-virtual {v8, v1}, Lorg/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_2

    :cond_4
    invoke-static {v8, v6}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v8

    invoke-virtual {v8, v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    :goto_2
    goto :goto_0

    :cond_5
    invoke-virtual {v5, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_6
    :goto_3
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_a

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {p1, v6}, Lorg/bouncycastle/asn1/x509/Extensions;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v2

    :cond_8
    :goto_4
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/x509/Extensions;->getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/Extension;->getExtnId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    invoke-virtual {p2, v7}, Lorg/bouncycastle/asn1/x509/Extensions;->getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {v3, v7}, Lorg/bouncycastle/asn1/x509/Extension;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lorg/bouncycastle/asn1/x509/Extension;)V

    goto :goto_4

    :cond_9
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    new-instance p1, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->generate()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    invoke-direct {p1, v6, v1, v0}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v5, p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_3

    :cond_a
    invoke-virtual {v5, p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance p1, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;

    new-instance p2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {p2, v5}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object p1
.end method
