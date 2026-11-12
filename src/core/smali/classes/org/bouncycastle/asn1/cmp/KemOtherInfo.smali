.class public Lorg/bouncycastle/asn1/cmp/KemOtherInfo;
.super Lorg/bouncycastle/asn1/ASN1Object;


# static fields
.field private static final DEFAULT_staticString:Lorg/bouncycastle/asn1/cmp/PKIFreeText;


# instance fields
.field private final ct:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private final len:Lorg/bouncycastle/asn1/ASN1Integer;

.field private final mac:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final recipNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private final senderNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private final staticString:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

.field private final transactionID:Lorg/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    const-string v1, "CMP-KEM"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/PKIFreeText;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->DEFAULT_staticString:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1OctetString;JLorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;)V
    .locals 2

    move-wide v0, p4

    new-instance p5, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {p5, v0, v1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;-><init>(Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    sget-object v0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->DEFAULT_staticString:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->staticString:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->transactionID:Lorg/bouncycastle/asn1/ASN1OctetString;

    iput-object p2, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->senderNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    iput-object p3, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->recipNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    iput-object p4, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->len:Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object p5, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->mac:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p6, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->ct:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 8

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_6

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v2, 0x7

    if-gt v0, v2, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/cmp/PKIFreeText;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->staticString:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    sget-object v3, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->DEFAULT_staticString:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    invoke-virtual {v3, v2}, Lorg/bouncycastle/asn1/cmp/PKIFreeText;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    invoke-static {p1, v2}, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->tryGetTagged(Lorg/bouncycastle/asn1/ASN1Sequence;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    invoke-static {v3, v0, v2, v1}, Lorg/bouncycastle/asn1/ASN1Util;->tryGetContextBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-static {p1, v4}, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->tryGetTagged(Lorg/bouncycastle/asn1/ASN1Sequence;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v3

    const/4 v6, 0x2

    goto :goto_0

    :cond_0
    move-object v0, v5

    const/4 v6, 0x1

    :goto_0
    if-eqz v3, :cond_1

    invoke-static {v3, v2, v2, v1}, Lorg/bouncycastle/asn1/ASN1Util;->tryGetContextBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    if-eqz v7, :cond_1

    check-cast v7, Lorg/bouncycastle/asn1/ASN1OctetString;

    add-int/lit8 v6, v6, 0x1

    invoke-static {p1, v6}, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->tryGetTagged(Lorg/bouncycastle/asn1/ASN1Sequence;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v7, v5

    :goto_1
    if-eqz v3, :cond_2

    invoke-static {v3, v4, v2, v1}, Lorg/bouncycastle/asn1/ASN1Util;->tryGetContextBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v5, v1

    check-cast v5, Lorg/bouncycastle/asn1/ASN1OctetString;

    add-int/lit8 v6, v6, 0x1

    invoke-static {p1, v6}, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->tryGetTagged(Lorg/bouncycastle/asn1/ASN1Sequence;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v3

    :cond_2
    if-nez v3, :cond_4

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->transactionID:Lorg/bouncycastle/asn1/ASN1OctetString;

    iput-object v7, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->senderNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    iput-object v5, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->recipNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {p1, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->len:Lorg/bouncycastle/asn1/ASN1Integer;

    add-int/lit8 v0, v6, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->mac:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    add-int/lit8 v0, v6, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->ct:Lorg/bouncycastle/asn1/ASN1OctetString;

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result p1

    if-ne v6, p1, :cond_3

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "unexpected data at end of sequence"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unknown tag: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1Util;->getTagText(Lorg/bouncycastle/asn1/ASN1TaggedObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "staticString field should be "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sequence size should be between 4 and 7 inclusive"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2

    if-eqz p2, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1, p2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/KemOtherInfo;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static tryGetTagged(Lorg/bouncycastle/asn1/ASN1Sequence;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    instance-of p1, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz p1, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getCt()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->ct:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getLen()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->len:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getMac()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->mac:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getRecipNonce()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->recipNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getSenderNonce()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->senderNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getTransactionID()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->transactionID:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->staticString:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->transactionID:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->senderNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->recipNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->len:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->mac:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->ct:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
