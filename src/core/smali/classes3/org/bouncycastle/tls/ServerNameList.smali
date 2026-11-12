.class public Lorg/bouncycastle/tls/ServerNameList;
.super Ljava/lang/Object;


# instance fields
.field protected serverNameList:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Ljava/util/Vector;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/tls/ServerNameList;->serverNameList:Ljava/util/Vector;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "\'serverNameList\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static checkNameType([SS)[S
    .locals 1

    invoke-static {p0, p1}, Lorg/bouncycastle/util/Arrays;->contains([SS)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Lorg/bouncycastle/util/Arrays;->append([SS)[S

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/io/InputStream;)Lorg/bouncycastle/tls/ServerNameList;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;I)[B

    move-result-object p0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object p0, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_SHORTS:[S

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {v0}, Lorg/bouncycastle/tls/ServerName;->parse(Ljava/io/InputStream;)Lorg/bouncycastle/tls/ServerName;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/tls/ServerName;->getNameType()S

    move-result v3

    invoke-static {p0, v3}, Lorg/bouncycastle/tls/ServerNameList;->checkNameType([SS)[S

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x2f

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_1
    new-instance p0, Lorg/bouncycastle/tls/ServerNameList;

    invoke-direct {p0, v1}, Lorg/bouncycastle/tls/ServerNameList;-><init>(Ljava/util/Vector;)V

    return-object p0
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_SHORTS:[S

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/tls/ServerNameList;->serverNameList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lorg/bouncycastle/tls/ServerNameList;->serverNameList:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/tls/ServerName;

    invoke-virtual {v3}, Lorg/bouncycastle/tls/ServerName;->getNameType()S

    move-result v4

    invoke-static {v1, v4}, Lorg/bouncycastle/tls/ServerNameList;->checkNameType([SS)[S

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v3, v0}, Lorg/bouncycastle/tls/ServerName;->encode(Ljava/io/OutputStream;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/tls/TlsUtils;->checkUint16(I)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    invoke-static {v1, p1}, Lorg/bouncycastle/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    invoke-static {v0, p1}, Lorg/bouncycastle/util/io/Streams;->writeBufTo(Ljava/io/ByteArrayOutputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method public getServerNameList()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/ServerNameList;->serverNameList:Ljava/util/Vector;

    return-object v0
.end method
