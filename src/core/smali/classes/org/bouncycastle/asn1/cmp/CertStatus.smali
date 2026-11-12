.class public Lorg/bouncycastle/asn1/cmp/CertStatus;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private final certHash:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private final certReqId:Lorg/bouncycastle/asn1/ASN1Integer;

.field private final hashAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final statusInfo:Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 7

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cmp/CertStatus;->certHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/cmp/CertStatus;->certReqId:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-le v2, v4, :cond_3

    move-object v2, v3

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-virtual {p1, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-interface {v5}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    instance-of v6, v5, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v6, :cond_0

    invoke-static {v5}, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    move-result-object v3

    :cond_0
    instance-of v6, v5, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v6, :cond_2

    check-cast v5, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v5, v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hasContextTag(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v5, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unknown tag "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lorg/bouncycastle/asn1/ASN1Util;->getTagText(Lorg/bouncycastle/asn1/ASN1TaggedObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    move-object v2, v3

    :cond_4
    iput-object v3, p0, Lorg/bouncycastle/asn1/cmp/CertStatus;->statusInfo:Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    iput-object v2, p0, Lorg/bouncycastle/asn1/cmp/CertStatus;->hashAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method public constructor <init>([BLjava/math/BigInteger;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/cmp/CertStatus;-><init>([BLorg/bouncycastle/asn1/ASN1Integer;)V

    return-void
.end method

.method public constructor <init>([BLjava/math/BigInteger;Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertStatus;->certHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    new-instance p1, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/CertStatus;->certReqId:Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object p3, p0, Lorg/bouncycastle/asn1/cmp/CertStatus;->statusInfo:Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/CertStatus;->hashAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method public constructor <init>([BLjava/math/BigInteger;Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertStatus;->certHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    new-instance p1, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/CertStatus;->certReqId:Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object p3, p0, Lorg/bouncycastle/asn1/cmp/CertStatus;->statusInfo:Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    iput-object p4, p0, Lorg/bouncycastle/asn1/cmp/CertStatus;->hashAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method public constructor <init>([BLorg/bouncycastle/asn1/ASN1Integer;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertStatus;->certHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    iput-object p2, p0, Lorg/bouncycastle/asn1/cmp/CertStatus;->certReqId:Lorg/bouncycastle/asn1/ASN1Integer;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/CertStatus;->statusInfo:Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/CertStatus;->hashAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CertStatus;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/CertStatus;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/cmp/CertStatus;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/cmp/CertStatus;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cmp/CertStatus;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getCertHash()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertStatus;->certHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getCertReqId()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertStatus;->certReqId:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getHashAlg()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertStatus;->hashAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getStatusInfo()Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertStatus;->statusInfo:Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/CertStatus;->certHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/CertStatus;->certReqId:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/CertStatus;->statusInfo:Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/CertStatus;->hashAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v1, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/asn1/cmp/CertStatus;->hashAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
