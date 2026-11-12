.class public Lorg/bouncycastle/asn1/eac/CertificateBody;
.super Lorg/bouncycastle/asn1/ASN1Object;


# static fields
.field private static final CAR:I = 0x2

.field private static final CEfD:I = 0x20

.field private static final CExD:I = 0x40

.field private static final CHA:I = 0x10

.field private static final CHR:I = 0x8

.field private static final CPI:I = 0x1

.field private static final PK:I = 0x4

.field public static final profileType:I = 0x7f

.field private static final profileType_m:I = 0x7f

.field private static final profileType_r:I = 0x0

.field public static final requestType:I = 0xd

.field private static final requestType_m:I = 0xd

.field private static final requestType_r:I = 0x2


# instance fields
.field private certificateEffectiveDate:Lorg/bouncycastle/asn1/ASN1TaggedObject;

.field private certificateExpirationDate:Lorg/bouncycastle/asn1/ASN1TaggedObject;

.field private certificateHolderAuthorization:Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;

.field private certificateHolderReference:Lorg/bouncycastle/asn1/ASN1TaggedObject;

.field private certificateProfileIdentifier:Lorg/bouncycastle/asn1/ASN1TaggedObject;

.field private certificateType:I

.field private certificationAuthorityReference:Lorg/bouncycastle/asn1/ASN1TaggedObject;

.field private publicKey:Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;

.field seq:Lorg/bouncycastle/asn1/ASN1InputStream;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateType:I

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/eac/CertificateBody;->setIso7816CertificateBody(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;Lorg/bouncycastle/asn1/eac/CertificationAuthorityReference;Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;Lorg/bouncycastle/asn1/eac/CertificateHolderReference;Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;Lorg/bouncycastle/asn1/eac/PackedDate;Lorg/bouncycastle/asn1/eac/PackedDate;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateType:I

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/eac/CertificateBody;->setCertificateProfileIdentifier(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    const/4 p1, 0x2

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/eac/CertificationAuthorityReference;->getEncoded()[B

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/asn1/eac/EACTagged;->create(I[B)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/eac/CertificateBody;->setCertificationAuthorityReference(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    invoke-direct {p0, p3}, Lorg/bouncycastle/asn1/eac/CertificateBody;->setPublicKey(Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;)V

    const/16 p1, 0x20

    invoke-virtual {p4}, Lorg/bouncycastle/asn1/eac/CertificateHolderReference;->getEncoded()[B

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/asn1/eac/EACTagged;->create(I[B)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/eac/CertificateBody;->setCertificateHolderReference(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    invoke-direct {p0, p5}, Lorg/bouncycastle/asn1/eac/CertificateBody;->setCertificateHolderAuthorization(Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;)V

    const/16 p1, 0x25

    invoke-virtual {p6}, Lorg/bouncycastle/asn1/eac/PackedDate;->getEncoding()[B

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/asn1/eac/EACTagged;->create(I[B)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/eac/CertificateBody;->setCertificateEffectiveDate(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    const/16 p1, 0x24

    invoke-virtual {p7}, Lorg/bouncycastle/asn1/eac/PackedDate;->getEncoding()[B

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/asn1/eac/EACTagged;->create(I[B)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/eac/CertificateBody;->setCertificateExpirationDate(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/eac/CertificateBody;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/eac/CertificateBody;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/eac/CertificateBody;

    const/16 v1, 0x40

    invoke-static {p0, v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/eac/CertificateBody;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private profileToASN1Object()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateProfileIdentifier:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificationAuthorityReference:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/16 v1, 0x49

    iget-object v2, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->publicKey:Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;

    invoke-static {v1, v2}, Lorg/bouncycastle/asn1/eac/EACTagged;->create(ILorg/bouncycastle/asn1/eac/PublicKeyDataObject;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateHolderReference:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateHolderAuthorization:Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateEffectiveDate:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateExpirationDate:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    const/16 v0, 0x4e

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/eac/EACTagged;->create(ILorg/bouncycastle/asn1/ASN1Sequence;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    return-object v0
.end method

.method private requestToASN1Object()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateProfileIdentifier:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificationAuthorityReference:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    const/16 v1, 0x49

    iget-object v2, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->publicKey:Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;

    invoke-static {v1, v2}, Lorg/bouncycastle/asn1/eac/EACTagged;->create(ILorg/bouncycastle/asn1/eac/PublicKeyDataObject;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateHolderReference:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    const/16 v0, 0x4e

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/eac/EACTagged;->create(ILorg/bouncycastle/asn1/ASN1Sequence;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    return-object v0
.end method

.method private setCertificateEffectiveDate(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v0, 0x40

    const/16 v1, 0x25

    invoke-virtual {p1, v0, v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hasTag(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateEffectiveDate:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    iget p1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateType:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateType:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not an Iso7816Tags.APPLICATION_EFFECTIVE_DATE tag :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setCertificateExpirationDate(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v0, 0x24

    const/16 v1, 0x40

    invoke-virtual {p1, v1, v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hasTag(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateExpirationDate:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    iget p1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateType:I

    or-int/2addr p1, v1

    iput p1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateType:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not an Iso7816Tags.APPLICATION_EXPIRATION_DATE tag"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setCertificateHolderAuthorization(Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateHolderAuthorization:Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;

    iget p1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateType:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateType:I

    return-void
.end method

.method private setCertificateHolderReference(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v0, 0x40

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hasTag(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateHolderReference:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    iget p1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateType:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateType:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not an Iso7816Tags.CARDHOLDER_NAME tag"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setCertificateProfileIdentifier(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v0, 0x40

    const/16 v1, 0x29

    invoke-virtual {p1, v0, v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hasTag(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateProfileIdentifier:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    iget p1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateType:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateType:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not an Iso7816Tags.INTERCHANGE_PROFILE tag :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setCertificationAuthorityReference(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v0, 0x40

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hasTag(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificationAuthorityReference:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    iget p1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateType:I

    or-int/2addr p1, v1

    iput p1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateType:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not an Iso7816Tags.ISSUER_IDENTIFICATION_NUMBER tag"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setIso7816CertificateBody(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x4e

    const/16 v1, 0x40

    invoke-virtual {p1, v1, v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hasTag(II)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    const/16 v2, 0x10

    invoke-virtual {p1, v0, v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getBaseUniversal(ZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_7

    invoke-virtual {p1, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5, v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_6

    const/16 v7, 0x20

    if-eq v6, v7, :cond_5

    const/16 v7, 0x29

    if-eq v6, v7, :cond_4

    const/16 v7, 0x49

    if-eq v6, v7, :cond_3

    const/16 v7, 0x4c

    if-eq v6, v7, :cond_2

    const/16 v7, 0x24

    if-eq v6, v7, :cond_1

    const/16 v7, 0x25

    if-ne v6, v7, :cond_0

    invoke-direct {p0, v5}, Lorg/bouncycastle/asn1/eac/CertificateBody;->setCertificateEffectiveDate(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    goto :goto_1

    :cond_0
    iput v0, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateType:I

    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Not a valid iso7816 ASN1TaggedObject tag "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-direct {p0, v5}, Lorg/bouncycastle/asn1/eac/CertificateBody;->setCertificateExpirationDate(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    goto :goto_1

    :cond_2
    new-instance v6, Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;

    invoke-direct {v6, v5}, Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    invoke-direct {p0, v6}, Lorg/bouncycastle/asn1/eac/CertificateBody;->setCertificateHolderAuthorization(Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v5, v0, v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getBaseUniversal(ZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/bouncycastle/asn1/eac/CertificateBody;->setPublicKey(Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, v5}, Lorg/bouncycastle/asn1/eac/CertificateBody;->setCertificateProfileIdentifier(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    goto :goto_1

    :cond_5
    invoke-direct {p0, v5}, Lorg/bouncycastle/asn1/eac/CertificateBody;->setCertificateHolderReference(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    goto :goto_1

    :cond_6
    invoke-direct {p0, v5}, Lorg/bouncycastle/asn1/eac/CertificateBody;->setCertificationAuthorityReference(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    return-void

    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Bad tag : not an iso7816 CERTIFICATE_CONTENT_TEMPLATE"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private setPublicKey(Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;)V
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->publicKey:Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;

    iget p1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateType:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateType:I

    return-void
.end method


# virtual methods
.method public getCertificateEffectiveDate()Lorg/bouncycastle/asn1/eac/PackedDate;
    .locals 4

    iget v0, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateType:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/eac/PackedDate;

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateEffectiveDate:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getBaseUniversal(ZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/eac/PackedDate;-><init>([B)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCertificateExpirationDate()Lorg/bouncycastle/asn1/eac/PackedDate;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateType:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/eac/PackedDate;

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateExpirationDate:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getBaseUniversal(ZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/eac/PackedDate;-><init>([B)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "certificate Expiration Date not set"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCertificateHolderAuthorization()Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateType:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateHolderAuthorization:Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Certificate Holder Authorisation not set"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCertificateHolderReference()Lorg/bouncycastle/asn1/eac/CertificateHolderReference;
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/eac/CertificateHolderReference;

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateHolderReference:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getBaseUniversal(ZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/eac/CertificateHolderReference;-><init>([B)V

    return-object v0
.end method

.method public getCertificateProfileIdentifier()Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateProfileIdentifier:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    return-object v0
.end method

.method public getCertificateType()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateType:I

    return v0
.end method

.method public getCertificationAuthorityReference()Lorg/bouncycastle/asn1/eac/CertificationAuthorityReference;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateType:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/eac/CertificationAuthorityReference;

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificationAuthorityReference:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getBaseUniversal(ZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/eac/CertificationAuthorityReference;-><init>([B)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Certification authority reference not set"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPublicKey()Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->publicKey:Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    :try_start_0
    iget v0, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateType:I

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/eac/CertificateBody;->profileToASN1Object()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0

    :cond_0
    and-int/lit8 v0, v0, -0x3

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/eac/CertificateBody;->requestToASN1Object()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
