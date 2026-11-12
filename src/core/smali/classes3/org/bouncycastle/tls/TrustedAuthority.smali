.class public Lorg/bouncycastle/tls/TrustedAuthority;
.super Ljava/lang/Object;


# instance fields
.field protected identifier:Ljava/lang/Object;

.field protected identifierType:S


# direct methods
.method public constructor <init>(SLjava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lorg/bouncycastle/tls/TrustedAuthority;->isCorrectType(SLjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-short p1, p0, Lorg/bouncycastle/tls/TrustedAuthority;->identifierType:S

    iput-object p2, p0, Lorg/bouncycastle/tls/TrustedAuthority;->identifier:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'identifier\' is not an instance of the correct type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected static isCorrectType(SLjava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'identifierType\' is an unsupported IdentifierType"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    instance-of p0, p1, Lorg/bouncycastle/asn1/x500/X500Name;

    return p0

    :cond_2
    :goto_0
    invoke-static {p1}, Lorg/bouncycastle/tls/TrustedAuthority;->isSHA1Hash(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method protected static isSHA1Hash(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    check-cast p0, [B

    array-length p0, p0

    const/16 v0, 0x14

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static parse(Ljava/io/InputStream;)Lorg/bouncycastle/tls/TrustedAuthority;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_1
    invoke-static {p0, v1}, Lorg/bouncycastle/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;I)[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->readASN1Object([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-static {v1, p0}, Lorg/bouncycastle/tls/TlsUtils;->requireDEREncoding(Lorg/bouncycastle/asn1/ASN1Object;[B)V

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v1, 0x14

    invoke-static {v1, p0}, Lorg/bouncycastle/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    new-instance p0, Lorg/bouncycastle/tls/TrustedAuthority;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/tls/TrustedAuthority;-><init>(SLjava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method protected checkCorrectType(S)V
    .locals 3

    iget-short v0, p0, Lorg/bouncycastle/tls/TrustedAuthority;->identifierType:S

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/tls/TrustedAuthority;->identifier:Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/bouncycastle/tls/TrustedAuthority;->isCorrectType(SLjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TrustedAuthority is not of type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/bouncycastle/tls/IdentifierType;->getName(S)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-short v0, p0, Lorg/bouncycastle/tls/TrustedAuthority;->identifierType:S

    invoke-static {v0, p1}, Lorg/bouncycastle/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    iget-short v0, p0, Lorg/bouncycastle/tls/TrustedAuthority;->identifierType:S

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/tls/TrustedAuthority;->identifier:Ljava/lang/Object;

    check-cast v0, Lorg/bouncycastle/asn1/x500/X500Name;

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x500/X500Name;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bouncycastle/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/tls/TrustedAuthority;->identifier:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_3
    return-void
.end method

.method public getCertSHA1Hash()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/TrustedAuthority;->identifier:Ljava/lang/Object;

    check-cast v0, [B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/TrustedAuthority;->identifier:Ljava/lang/Object;

    return-object v0
.end method

.method public getIdentifierType()S
    .locals 1

    iget-short v0, p0, Lorg/bouncycastle/tls/TrustedAuthority;->identifierType:S

    return v0
.end method

.method public getKeySHA1Hash()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/TrustedAuthority;->identifier:Ljava/lang/Object;

    check-cast v0, [B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getX509Name()Lorg/bouncycastle/asn1/x500/X500Name;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/tls/TrustedAuthority;->checkCorrectType(S)V

    iget-object v0, p0, Lorg/bouncycastle/tls/TrustedAuthority;->identifier:Ljava/lang/Object;

    check-cast v0, Lorg/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method
