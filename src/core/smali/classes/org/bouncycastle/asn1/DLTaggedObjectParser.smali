.class Lorg/bouncycastle/asn1/DLTaggedObjectParser;
.super Lorg/bouncycastle/asn1/BERTaggedObjectParser;


# instance fields
.field private final _constructed:Z


# direct methods
.method constructor <init>(IIZLorg/bouncycastle/asn1/ASN1StreamParser;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lorg/bouncycastle/asn1/BERTaggedObjectParser;-><init>(IILorg/bouncycastle/asn1/ASN1StreamParser;)V

    iput-boolean p3, p0, Lorg/bouncycastle/asn1/DLTaggedObjectParser;->_constructed:Z

    return-void
.end method

.method private checkConstructed()Lorg/bouncycastle/asn1/ASN1StreamParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/DLTaggedObjectParser;->_constructed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/DLTaggedObjectParser;->_parser:Lorg/bouncycastle/asn1/ASN1StreamParser;

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Explicit tags must be constructed (see X.690 8.14.2)"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getLoadedObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/DLTaggedObjectParser;->_parser:Lorg/bouncycastle/asn1/ASN1StreamParser;

    iget v1, p0, Lorg/bouncycastle/asn1/DLTaggedObjectParser;->_tagClass:I

    iget v2, p0, Lorg/bouncycastle/asn1/DLTaggedObjectParser;->_tagNo:I

    iget-boolean v3, p0, Lorg/bouncycastle/asn1/DLTaggedObjectParser;->_constructed:Z

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1StreamParser;->loadTaggedDL(IIZ)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public parseBaseUniversal(ZI)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/DLTaggedObjectParser;->checkConstructed()Lorg/bouncycastle/asn1/ASN1StreamParser;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/bouncycastle/asn1/ASN1StreamParser;->parseObject(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    return-object p1

    :cond_0
    iget-boolean p1, p0, Lorg/bouncycastle/asn1/DLTaggedObjectParser;->_constructed:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/bouncycastle/asn1/DLTaggedObjectParser;->_parser:Lorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {p1, p2}, Lorg/bouncycastle/asn1/ASN1StreamParser;->parseImplicitConstructedDL(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p0, Lorg/bouncycastle/asn1/DLTaggedObjectParser;->_parser:Lorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {p1, p2}, Lorg/bouncycastle/asn1/ASN1StreamParser;->parseImplicitPrimitive(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    return-object p1
.end method

.method public parseExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/asn1/DLTaggedObjectParser;->checkConstructed()Lorg/bouncycastle/asn1/ASN1StreamParser;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1StreamParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public parseExplicitBaseTagged()Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/asn1/DLTaggedObjectParser;->checkConstructed()Lorg/bouncycastle/asn1/ASN1StreamParser;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1StreamParser;->parseTaggedObject()Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    return-object v0
.end method

.method public parseImplicitBaseTagged(II)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/DLTaggedObjectParser;

    iget-boolean v1, p0, Lorg/bouncycastle/asn1/DLTaggedObjectParser;->_constructed:Z

    iget-object v2, p0, Lorg/bouncycastle/asn1/DLTaggedObjectParser;->_parser:Lorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v0, p1, p2, v1, v2}, Lorg/bouncycastle/asn1/DLTaggedObjectParser;-><init>(IIZLorg/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v0
.end method
