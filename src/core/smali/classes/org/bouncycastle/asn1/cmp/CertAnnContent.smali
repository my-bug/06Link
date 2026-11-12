.class public Lorg/bouncycastle/asn1/cmp/CertAnnContent;
.super Lorg/bouncycastle/asn1/cmp/CMPCertificate;


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/cmp/CMPCertificate;-><init>(ILorg/bouncycastle/asn1/ASN1Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AttributeCertificate;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/cmp/CMPCertificate;-><init>(Lorg/bouncycastle/asn1/x509/AttributeCertificate;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/Certificate;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/cmp/CMPCertificate;-><init>(Lorg/bouncycastle/asn1/x509/Certificate;)V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CertAnnContent;
    .locals 3

    if-eqz p0, :cond_5

    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/CertAnnContent;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    if-eqz v0, :cond_1

    :try_start_0
    check-cast p0, Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cmp/CMPCertificate;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/cmp/CertAnnContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CertAnnContent;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    :try_start_1
    check-cast p0, [B

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid encoding in CertAnnContent"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_3

    new-instance v0, Lorg/bouncycastle/asn1/cmp/CertAnnContent;

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cmp/CertAnnContent;-><init>(Lorg/bouncycastle/asn1/x509/Certificate;)V

    return-object v0

    :cond_3
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_4

    const/16 v0, 0x80

    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/asn1/cmp/CertAnnContent;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/asn1/cmp/CertAnnContent;-><init>(ILorg/bouncycastle/asn1/ASN1Object;)V

    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid object: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    check-cast p0, Lorg/bouncycastle/asn1/cmp/CertAnnContent;

    return-object p0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cmp/CertAnnContent;
    .locals 0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/cmp/CertAnnContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CertAnnContent;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "tag must be explicit"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
