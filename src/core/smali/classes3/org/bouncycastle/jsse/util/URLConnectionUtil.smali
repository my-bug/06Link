.class public Lorg/bouncycastle/jsse/util/URLConnectionUtil;
.super Ljava/lang/Object;


# instance fields
.field protected final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jsse/util/URLConnectionUtil;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jsse/util/URLConnectionUtil;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method


# virtual methods
.method protected configureConnection(Ljava/net/URL;Ljava/net/URLConnection;)Ljava/net/URLConnection;
    .locals 1

    instance-of v0, p2, Ljavax/net/ssl/HttpsURLConnection;

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    check-cast p2, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v0, p0, Lorg/bouncycastle/jsse/util/URLConnectionUtil;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/jsse/util/URLConnectionUtil;->createSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    return-object p2
.end method

.method protected createSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    new-instance v0, Lorg/bouncycastle/jsse/util/SetHostSocketFactory;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/jsse/util/SetHostSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;)V

    return-object v0
.end method

.method public openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/jsse/util/URLConnectionUtil;->configureConnection(Ljava/net/URL;Ljava/net/URLConnection;)Ljava/net/URLConnection;

    move-result-object p1

    return-object p1
.end method

.method public openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/jsse/util/URLConnectionUtil;->configureConnection(Ljava/net/URL;Ljava/net/URLConnection;)Ljava/net/URLConnection;

    move-result-object p1

    return-object p1
.end method

.method public openInputStream(Ljava/net/URL;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jsse/util/URLConnectionUtil;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public openStream(Ljava/net/URL;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jsse/util/URLConnectionUtil;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method
