.class public Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private hpk:[B

.field private nonce:[B

.field private publicKey:Lorg/bouncycastle/pqc/asn1/KyberPublicKey;

.field private s:[B

.field private version:I


# direct methods
.method public constructor <init>(I[B[B[B)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;-><init>(I[B[B[BLorg/bouncycastle/pqc/asn1/KyberPublicKey;)V

    return-void
.end method

.method public constructor <init>(I[B[B[BLorg/bouncycastle/pqc/asn1/KyberPublicKey;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->version:I

    iput-object p2, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->s:[B

    iput-object p5, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->publicKey:Lorg/bouncycastle/pqc/asn1/KyberPublicKey;

    iput-object p3, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->hpk:[B

    iput-object p4, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->nonce:[B

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->version:I

    if-nez v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->s:[B

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/pqc/asn1/KyberPublicKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/asn1/KyberPublicKey;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->publicKey:Lorg/bouncycastle/pqc/asn1/KyberPublicKey;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    rsub-int/lit8 v1, v0, 0x3

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->hpk:[B

    rsub-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->nonce:[B

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unrecognized version"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getHpk()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->hpk:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getNonce()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->nonce:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Lorg/bouncycastle/pqc/asn1/KyberPublicKey;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->publicKey:Lorg/bouncycastle/pqc/asn1/KyberPublicKey;

    return-object v0
.end method

.method public getS()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->s:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->version:I

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    iget v2, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->version:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->s:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->publicKey:Lorg/bouncycastle/pqc/asn1/KyberPublicKey;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/pqc/asn1/KyberPublicKey;

    iget-object v2, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->publicKey:Lorg/bouncycastle/pqc/asn1/KyberPublicKey;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/asn1/KyberPublicKey;->getT()[B

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->publicKey:Lorg/bouncycastle/pqc/asn1/KyberPublicKey;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/asn1/KyberPublicKey;->getRho()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/pqc/asn1/KyberPublicKey;-><init>([B[B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->hpk:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->nonce:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
