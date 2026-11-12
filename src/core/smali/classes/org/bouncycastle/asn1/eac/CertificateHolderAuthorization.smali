.class public Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;
.super Lorg/bouncycastle/asn1/ASN1Object;


# static fields
.field static AuthorizationRole:Lorg/bouncycastle/asn1/eac/BidirectionalMap; = null

.field public static final CVCA:I = 0xc0

.field public static final DV_DOMESTIC:I = 0x80

.field public static final DV_FOREIGN:I = 0x40

.field public static final IS:I = 0x0

.field public static final RADG3:I = 0x1

.field public static final RADG4:I = 0x2

.field static RightsDecodeMap:Ljava/util/Map;

.field public static final id_role_EAC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# instance fields
.field private accessRights:B

.field private oid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lorg/bouncycastle/asn1/eac/EACObjectIdentifiers;->bsi_de:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "3.1.2.1"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;->id_role_EAC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;->RightsDecodeMap:Ljava/util/Map;

    new-instance v0, Lorg/bouncycastle/asn1/eac/BidirectionalMap;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/eac/BidirectionalMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;->AuthorizationRole:Lorg/bouncycastle/asn1/eac/BidirectionalMap;

    sget-object v0, Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;->RightsDecodeMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RADG4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;->RightsDecodeMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RADG3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;->AuthorizationRole:Lorg/bouncycastle/asn1/eac/BidirectionalMap;

    const/16 v1, 0xc0

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CVCA"

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/asn1/eac/BidirectionalMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;->AuthorizationRole:Lorg/bouncycastle/asn1/eac/BidirectionalMap;

    const/16 v1, 0x80

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DV_DOMESTIC"

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/asn1/eac/BidirectionalMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;->AuthorizationRole:Lorg/bouncycastle/asn1/eac/BidirectionalMap;

    const/16 v1, 0x40

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DV_FOREIGN"

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/asn1/eac/BidirectionalMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;->AuthorizationRole:Lorg/bouncycastle/asn1/eac/BidirectionalMap;

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IS"

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/asn1/eac/BidirectionalMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;->setOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    int-to-byte p1, p2

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;->setAccessRights(B)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/16 v0, 0x40

    const/16 v1, 0x4c

    invoke-virtual {p1, v0, v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hasTag(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getBaseUniversal(ZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;->setPrivateData(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unrecognized object in CerticateHolderAuthorization"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getFlag(Ljava/lang/String;)I
    .locals 3

    sget-object v0, Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;->AuthorizationRole:Lorg/bouncycastle/asn1/eac/BidirectionalMap;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/eac/BidirectionalMap;->getReverse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getRoleDescription(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;->AuthorizationRole:Lorg/bouncycastle/asn1/eac/BidirectionalMap;

    invoke-static {p0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/eac/BidirectionalMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private setAccessRights(B)V
    .locals 0

    iput-byte p1, p0, Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;->accessRights:B

    return-void
.end method

.method private setOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;->oid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method private setPrivateData(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Primitive;

    instance-of v2, v1, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v1, p0, Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;->oid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Primitive;

    instance-of v1, p1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v1, :cond_0

    const/16 v1, 0x40

    const/16 v2, 0x13

    invoke-static {p1, v1, v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;II)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p1

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getBaseUniversal(ZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p1

    aget-byte p1, p1, v0

    iput-byte p1, p0, Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;->accessRights:B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No access rights in CerticateHolderAuthorization"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "no Oid in CerticateHolderAuthorization"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAccessRights()I
    .locals 1

    iget-byte v0, p0, Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;->accessRights:B

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getOid()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;->oid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;->oid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-byte v1, p0, Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;->accessRights:B

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v1, v2, v3

    const/16 v1, 0x13

    invoke-static {v1, v2}, Lorg/bouncycastle/asn1/eac/EACTagged;->create(I[B)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    const/16 v0, 0x4c

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/eac/EACTagged;->create(ILorg/bouncycastle/asn1/ASN1Sequence;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    return-object v0
.end method
