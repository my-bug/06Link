.class public Lorg/bouncycastle/asn1/DERBitString;
.super Lorg/bouncycastle/asn1/ASN1BitString;


# direct methods
.method public constructor <init>(BI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1BitString;-><init>(BI)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-static {p1}, Lorg/bouncycastle/asn1/DERBitString;->getBytes(I)[B

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/asn1/DERBitString;->getPadBits(I)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/asn1/ASN1BitString;-><init>([BI)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    const-string v0, "DER"

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/ASN1BitString;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/DERBitString;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1BitString;-><init>([BI)V

    return-void
.end method

.method constructor <init>([BZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1BitString;-><init>([BZ)V

    return-void
.end method

.method public static convert(Lorg/bouncycastle/asn1/ASN1BitString;)Lorg/bouncycastle/asn1/DERBitString;
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1BitString;->toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/DERBitString;

    return-object p0
.end method

.method static fromOctetString(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/asn1/DERBitString;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/DERBitString;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/asn1/DERBitString;-><init>([BZ)V

    return-object v0
.end method


# virtual methods
.method encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/DERBitString;->contents:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/16 v1, 0xff

    and-int/2addr v0, v1

    iget-object v2, p0, Lorg/bouncycastle/asn1/DERBitString;->contents:[B

    array-length v2, v2

    add-int/lit8 v8, v2, -0x1

    iget-object v2, p0, Lorg/bouncycastle/asn1/DERBitString;->contents:[B

    aget-byte v2, v2, v8

    iget-object v3, p0, Lorg/bouncycastle/asn1/DERBitString;->contents:[B

    aget-byte v3, v3, v8

    shl-int v0, v1, v0

    and-int/2addr v0, v3

    int-to-byte v9, v0

    if-ne v2, v9, :cond_0

    const/4 v0, 0x3

    iget-object v1, p0, Lorg/bouncycastle/asn1/DERBitString;->contents:[B

    invoke-virtual {p1, p2, v0, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeEncodingDL(ZI[B)V

    return-void

    :cond_0
    iget-object v6, p0, Lorg/bouncycastle/asn1/DERBitString;->contents:[B

    const/4 v7, 0x0

    const/4 v5, 0x3

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v3 .. v9}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeEncodingDL(ZI[BIIB)V

    return-void
.end method

.method encodeConstructed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method encodedLength(Z)I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/DERBitString;->contents:[B

    array-length v0, v0

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result p1

    return p1
.end method

.method toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 0

    return-object p0
.end method

.method toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 0

    return-object p0
.end method
