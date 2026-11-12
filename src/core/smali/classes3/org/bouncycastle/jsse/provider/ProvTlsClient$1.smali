.class Lorg/bouncycastle/jsse/provider/ProvTlsClient$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/TlsAuthentication;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/jsse/provider/ProvTlsClient;->getAuthentication()Lorg/bouncycastle/tls/TlsAuthentication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/jsse/provider/ProvTlsClient;


# direct methods
.method constructor <init>(Lorg/bouncycastle/jsse/provider/ProvTlsClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient$1;->this$0:Lorg/bouncycastle/jsse/provider/ProvTlsClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClientCredentials(Lorg/bouncycastle/tls/CertificateRequest;)Lorg/bouncycastle/tls/TlsCredentials;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient$1;->this$0:Lorg/bouncycastle/jsse/provider/ProvTlsClient;

    iget-object v0, v0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    invoke-interface {v0}, Lorg/bouncycastle/jsse/provider/ProvTlsManager;->getContextData()Lorg/bouncycastle/jsse/provider/ContextData;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient$1;->this$0:Lorg/bouncycastle/jsse/provider/ProvTlsClient;

    # getter for: Lorg/bouncycastle/jsse/provider/ProvTlsClient;->context:Lorg/bouncycastle/tls/TlsClientContext;
    invoke-static {v1}, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->access$000(Lorg/bouncycastle/jsse/provider/ProvTlsClient;)Lorg/bouncycastle/tls/TlsClientContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/tls/TlsClientContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SecurityParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv13(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v3

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SecurityParameters;->getServerSigAlgs()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SecurityParameters;->getServerSigAlgsCert()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0, v4}, Lorg/bouncycastle/jsse/provider/ContextData;->getSignatureSchemes(Ljava/util/Vector;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    if-eq v1, v4, :cond_0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jsse/provider/ContextData;->getSignatureSchemes(Ljava/util/Vector;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v6

    :goto_0
    iget-object v4, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient$1;->this$0:Lorg/bouncycastle/jsse/provider/ProvTlsClient;

    iget-object v4, v4, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->jsseSecurityParameters:Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;

    iget-object v4, v4, Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;->signatureSchemes:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;

    invoke-virtual {v4, v5, v1}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;->notifyPeerData(Ljava/util/List;Ljava/util/List;)V

    # getter for: Lorg/bouncycastle/jsse/provider/ProvTlsClient;->LOG:Ljava/util/logging/Logger;
    invoke-static {}, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->access$100()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v7, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v4, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient$1;->this$0:Lorg/bouncycastle/jsse/provider/ProvTlsClient;

    iget-object v7, v7, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->clientID:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " peer signature_algorithms"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # getter for: Lorg/bouncycastle/jsse/provider/ProvTlsClient;->LOG:Ljava/util/logging/Logger;
    invoke-static {}, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->access$100()Ljava/util/logging/Logger;

    move-result-object v7

    invoke-static {v4, v5}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getSignatureAlgorithmsReport(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient$1;->this$0:Lorg/bouncycastle/jsse/provider/ProvTlsClient;

    iget-object v5, v5, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->clientID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " peer signature_algorithms_cert"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # getter for: Lorg/bouncycastle/jsse/provider/ProvTlsClient;->LOG:Ljava/util/logging/Logger;
    invoke-static {}, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->access$100()Ljava/util/logging/Logger;

    move-result-object v5

    invoke-static {v4, v1}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getSignatureAlgorithmsReport(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    :cond_1
    sget-object v1, Lorg/bouncycastle/jsse/provider/DummyX509KeyManager;->INSTANCE:Lorg/bouncycastle/jsse/BCX509ExtendedKeyManager;

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ContextData;->getX509KeyManager()Lorg/bouncycastle/jsse/BCX509ExtendedKeyManager;

    move-result-object v0

    if-ne v1, v0, :cond_2

    return-object v6

    :cond_2
    invoke-virtual {p1}, Lorg/bouncycastle/tls/CertificateRequest;->getCertificateAuthorities()Ljava/util/Vector;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/JsseUtils;->toX500Principals(Ljava/util/Vector;)[Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/tls/CertificateRequest;->getCertificateRequestContext()[B

    move-result-object v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    const/16 v7, 0x50

    if-ne v3, v6, :cond_8

    invoke-virtual {p1}, Lorg/bouncycastle/tls/CertificateRequest;->getCertificateTypes()[S

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    if-ne v3, v4, :cond_7

    if-eqz v3, :cond_5

    iget-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient$1;->this$0:Lorg/bouncycastle/jsse/provider/ProvTlsClient;

    invoke-virtual {p1, v0, v1}, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->selectClientCredentials13([Ljava/security/Principal;[B)Lorg/bouncycastle/tls/TlsCredentials;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-static {v2}, Lorg/bouncycastle/tls/TlsUtils;->isSignatureAlgorithmsExtensionAllowed(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient$1;->this$0:Lorg/bouncycastle/jsse/provider/ProvTlsClient;

    invoke-virtual {v1, v0, p1}, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->selectClientCredentials12([Ljava/security/Principal;[S)Lorg/bouncycastle/tls/TlsCredentials;

    move-result-object p1

    return-object p1

    :cond_6
    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient$1;->this$0:Lorg/bouncycastle/jsse/provider/ProvTlsClient;

    invoke-virtual {v1, v0, p1}, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->selectClientCredentialsLegacy([Ljava/security/Principal;[S)Lorg/bouncycastle/tls/TlsCredentials;

    move-result-object p1

    return-object p1

    :cond_7
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v7}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_8
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v7}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method public notifyServerCertificate(Lorg/bouncycastle/tls/TlsServerCertificate;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsServerCertificate;->getCertificate()Lorg/bouncycastle/tls/Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsServerCertificate;->getCertificate()Lorg/bouncycastle/tls/Certificate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/Certificate;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient$1;->this$0:Lorg/bouncycastle/jsse/provider/ProvTlsClient;

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->getCrypto()Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    move-result-object v0

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsServerCertificate;->getCertificate()Lorg/bouncycastle/tls/Certificate;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getX509CertificateChain(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Lorg/bouncycastle/tls/Certificate;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient$1;->this$0:Lorg/bouncycastle/jsse/provider/ProvTlsClient;

    # getter for: Lorg/bouncycastle/jsse/provider/ProvTlsClient;->context:Lorg/bouncycastle/tls/TlsClientContext;
    invoke-static {v1}, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->access$200(Lorg/bouncycastle/jsse/provider/ProvTlsClient;)Lorg/bouncycastle/tls/TlsClientContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/tls/TlsClientContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SecurityParameters;->getKeyExchangeAlgorithm()I

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getAuthTypeServer(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient$1;->this$0:Lorg/bouncycastle/jsse/provider/ProvTlsClient;

    iget-object v2, v2, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->jsseSecurityParameters:Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsServerCertificate;->getCertificateStatus()Lorg/bouncycastle/tls/CertificateStatus;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getStatusResponses(Lorg/bouncycastle/tls/CertificateStatus;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v2, Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;->statusResponses:Ljava/util/List;

    iget-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient$1;->this$0:Lorg/bouncycastle/jsse/provider/ProvTlsClient;

    iget-object p1, p1, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jsse/provider/ProvTlsManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x28

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method
