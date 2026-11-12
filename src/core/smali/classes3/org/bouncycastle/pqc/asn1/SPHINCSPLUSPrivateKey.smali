.class public Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private PublicKey:Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;

.field private skprf:[B

.field private skseed:[B

.field private version:I


# direct methods
.method public constructor <init>(I[B[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;-><init>(I[B[BLorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;)V

    return-void
.end method

.method public constructor <init>(I[B[BLorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->version:I

    iput-object p2, p0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->skseed:[B

    iput-object p3, p0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->skprf:[B

    iput-object p4, p0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->PublicKey:Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->version:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->skseed:[B

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->skprf:[B

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->PublicKey:Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unrecognized version"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getPublicKey()Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->PublicKey:Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;

    return-object v0
.end method

.method public getSkprf()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->skprf:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getSkseed()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->skseed:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->version:I

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    iget v2, p0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->version:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->skseed:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->skprf:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->PublicKey:Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;

    iget-object v2, p0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->PublicKey:Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;->getPkseed()[B

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->PublicKey:Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;->getPkroot()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;-><init>([B[B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
