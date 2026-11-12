.class Lorg/bouncycastle/asn1/eac/EACTagged;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(ILorg/bouncycastle/asn1/ASN1Sequence;)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    const/16 v2, 0x40

    invoke-direct {v0, v1, v2, p0, p1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZIILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method static create(ILorg/bouncycastle/asn1/eac/PublicKeyDataObject;)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    const/16 v2, 0x40

    invoke-direct {v0, v1, v2, p0, p1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZIILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method static create(I[B)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    const/4 p1, 0x0

    const/16 v2, 0x40

    invoke-direct {v0, p1, v2, p0, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZIILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
