.class public Lorg/bouncycastle/asn1/eac/CVCertificate;
.super Lorg/bouncycastle/asn1/ASN1Object;


# static fields
.field private static bodyValid:I = 0x1

.field private static signValid:I = 0x2


# instance fields
.field private certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

.field private signature:[B

.field private valid:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/eac/CVCertificate;->initFrom(Lorg/bouncycastle/asn1/ASN1InputStream;)V

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/eac/CVCertificate;->setPrivateData(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/eac/CertificateBody;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->signature:[B

    iget p1, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->valid:I

    sget p2, Lorg/bouncycastle/asn1/eac/CVCertificate;->bodyValid:I

    or-int/2addr p1, p2

    sget p2, Lorg/bouncycastle/asn1/eac/CVCertificate;->signValid:I

    or-int/2addr p1, p2

    iput p1, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->valid:I

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/eac/CVCertificate;
    .locals 3

    instance-of v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/eac/CVCertificate;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/eac/CVCertificate;

    const/16 v1, 0x40

    invoke-static {p0, v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/eac/CVCertificate;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unable to parse data: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private initFrom(Lorg/bouncycastle/asn1/ASN1InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/eac/CVCertificate;->setPrivateData(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid Input Stream for creating an Iso7816CertificateStructure"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method private setPrivateData(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->valid:I

    const/16 v1, 0x21

    const/16 v2, 0x40

    invoke-virtual {p1, v2, v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hasTag(II)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getBaseUniversal(ZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v4, :cond_2

    invoke-static {v3, v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v4

    const/16 v5, 0x37

    if-eq v4, v5, :cond_1

    const/16 v5, 0x4e

    if-ne v4, v5, :cond_0

    invoke-static {v3}, Lorg/bouncycastle/asn1/eac/CertificateBody;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/eac/CertificateBody;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    iget v3, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->valid:I

    sget v4, Lorg/bouncycastle/asn1/eac/CVCertificate;->bodyValid:I

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid tag, not an Iso7816CertificateStructure :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v4, 0x4

    invoke-virtual {v3, v0, v4}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getBaseUniversal(ZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->signature:[B

    iget v3, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->valid:I

    sget v4, Lorg/bouncycastle/asn1/eac/CVCertificate;->signValid:I

    :goto_1
    or-int/2addr v3, v4

    iput v3, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->valid:I

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid Object, not an Iso7816CertificateStructure"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->valid:I

    sget v1, Lorg/bouncycastle/asn1/eac/CVCertificate;->signValid:I

    sget v2, Lorg/bouncycastle/asn1/eac/CVCertificate;->bodyValid:I

    or-int/2addr v1, v2

    if-ne v0, v1, :cond_4

    return-void

    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid CARDHOLDER_CERTIFICATE :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not a CARDHOLDER_CERTIFICATE :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public getAuthorityReference()Lorg/bouncycastle/asn1/eac/CertificationAuthorityReference;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/CertificateBody;->getCertificationAuthorityReference()Lorg/bouncycastle/asn1/eac/CertificationAuthorityReference;

    move-result-object v0

    return-object v0
.end method

.method public getBody()Lorg/bouncycastle/asn1/eac/CertificateBody;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    return-object v0
.end method

.method public getCertificateType()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/CertificateBody;->getCertificateType()I

    move-result v0

    return v0
.end method

.method public getEffectiveDate()Lorg/bouncycastle/asn1/eac/PackedDate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/CertificateBody;->getCertificateEffectiveDate()Lorg/bouncycastle/asn1/eac/PackedDate;

    move-result-object v0

    return-object v0
.end method

.method public getExpirationDate()Lorg/bouncycastle/asn1/eac/PackedDate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/CertificateBody;->getCertificateExpirationDate()Lorg/bouncycastle/asn1/eac/PackedDate;

    move-result-object v0

    return-object v0
.end method

.method public getHolderAuthorization()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/CertificateBody;->getCertificateHolderAuthorization()Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;->getOid()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getHolderAuthorizationRights()Lorg/bouncycastle/asn1/eac/Flags;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/eac/Flags;

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/eac/CertificateBody;->getCertificateHolderAuthorization()Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;->getAccessRights()I

    move-result v1

    and-int/lit8 v1, v1, 0x1f

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/eac/Flags;-><init>(I)V

    return-object v0
.end method

.method public getHolderAuthorizationRole()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/CertificateBody;->getCertificateHolderAuthorization()Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;->getAccessRights()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    return v0
.end method

.method public getHolderReference()Lorg/bouncycastle/asn1/eac/CertificateHolderReference;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/CertificateBody;->getCertificateHolderReference()Lorg/bouncycastle/asn1/eac/CertificateHolderReference;

    move-result-object v0

    return-object v0
.end method

.method public getRole()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/CertificateBody;->getCertificateHolderAuthorization()Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;->getAccessRights()I

    move-result v0

    return v0
.end method

.method public getSignature()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->signature:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/16 v1, 0x37

    iget-object v2, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->signature:[B

    invoke-static {v1, v2}, Lorg/bouncycastle/asn1/eac/EACTagged;->create(I[B)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    const/16 v0, 0x21

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/eac/EACTagged;->create(ILorg/bouncycastle/asn1/ASN1Sequence;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    return-object v0
.end method
