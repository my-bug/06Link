.class final Lorg/bouncycastle/jsse/provider/ImportX509KeyManager_4;
.super Lorg/bouncycastle/jsse/BCX509ExtendedKeyManager;

# interfaces
.implements Lorg/bouncycastle/jsse/provider/ImportX509KeyManager;


# instance fields
.field final x509KeyManager:Ljavax/net/ssl/X509KeyManager;


# direct methods
.method constructor <init>(Ljavax/net/ssl/X509KeyManager;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jsse/BCX509ExtendedKeyManager;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ImportX509KeyManager_4;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    return-void
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ImportX509KeyManager_4;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1, p2, p3}, Ljavax/net/ssl/X509KeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ImportX509KeyManager_4;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1, p2, p3}, Ljavax/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ImportX509KeyManager_4;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ImportX509KeyManager_4;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509KeyManager;->getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getKeyBC(Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/jsse/BCX509Key;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ImportX509KeyManager_4;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/jsse/provider/ProvX509Key;->from(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/jsse/provider/ProvX509Key;

    move-result-object p1

    return-object p1
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ImportX509KeyManager_4;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1}, Ljavax/net/ssl/X509KeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object p1

    return-object p1
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ImportX509KeyManager_4;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509KeyManager;->getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public unwrap()Ljavax/net/ssl/X509KeyManager;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ImportX509KeyManager_4;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    return-object v0
.end method

.method protected validateKeyBC(ZLjava/lang/String;Ljava/lang/String;Ljava/net/Socket;)Lorg/bouncycastle/jsse/BCX509Key;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ImportX509KeyManager_4;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    invoke-static {p4}, Lorg/bouncycastle/jsse/provider/TransportData;->from(Ljava/net/Socket;)Lorg/bouncycastle/jsse/provider/TransportData;

    move-result-object p4

    invoke-static {v0, p1, p2, p3, p4}, Lorg/bouncycastle/jsse/provider/ProvX509Key;->validate(Ljavax/net/ssl/X509KeyManager;ZLjava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jsse/provider/TransportData;)Lorg/bouncycastle/jsse/provider/ProvX509Key;

    move-result-object p1

    return-object p1
.end method
