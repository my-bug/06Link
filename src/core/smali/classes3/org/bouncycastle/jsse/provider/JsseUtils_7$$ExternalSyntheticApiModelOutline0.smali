.class public final synthetic Lorg/bouncycastle/jsse/provider/JsseUtils_7$$ExternalSyntheticApiModelOutline0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static bridge synthetic m(Ljava/security/CryptoPrimitive;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Ljava/security/CryptoPrimitive;->ordinal()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Ljavax/net/ssl/SNIMatcher;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Ljavax/net/ssl/SNIMatcher;->getType()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Ljavax/net/ssl/SNIServerName;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Ljavax/net/ssl/SNIServerName;->getType()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Ljava/security/AlgorithmConstraints;
    .locals 0

    .line 0
    check-cast p0, Ljava/security/AlgorithmConstraints;

    return-object p0
.end method

.method public static bridge synthetic m()Ljava/security/CryptoPrimitive;
    .locals 1

    .line 0
    sget-object v0, Ljava/security/CryptoPrimitive;->KEY_WRAP:Ljava/security/CryptoPrimitive;

    return-object v0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Ljava/security/CryptoPrimitive;
    .locals 0

    .line 0
    check-cast p0, Ljava/security/CryptoPrimitive;

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/security/cert/CertPathBuilder;)Ljava/security/cert/CertPathChecker;
    .locals 0

    .line 0
    invoke-virtual {p0}, Ljava/security/cert/CertPathBuilder;->getRevocationChecker()Ljava/security/cert/CertPathChecker;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m()Ljava/security/cert/PKIXRevocationChecker$Option;
    .locals 1

    .line 0
    sget-object v0, Ljava/security/cert/PKIXRevocationChecker$Option;->ONLY_END_ENTITY:Ljava/security/cert/PKIXRevocationChecker$Option;

    return-object v0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Ljava/security/cert/PKIXRevocationChecker;
    .locals 0

    .line 0
    check-cast p0, Ljava/security/cert/PKIXRevocationChecker;

    return-object p0
.end method

.method public static bridge synthetic m(Ljavax/net/ssl/ExtendedSSLSession;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-virtual {p0}, Ljavax/net/ssl/ExtendedSSLSession;->getRequestedServerNames()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/security/cert/PKIXRevocationChecker;)Ljava/util/Map;
    .locals 0

    .line 0
    invoke-virtual {p0}, Ljava/security/cert/PKIXRevocationChecker;->getOcspResponses()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Ljavax/net/ssl/SNIMatcher;
    .locals 0

    .line 0
    check-cast p0, Ljavax/net/ssl/SNIMatcher;

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Ljavax/net/ssl/SNIServerName;
    .locals 0

    .line 0
    check-cast p0, Ljavax/net/ssl/SNIServerName;

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/security/cert/PKIXCertPathChecker;Ljava/security/cert/Certificate;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;)V

    return-void
.end method

.method public static bridge synthetic m(Ljava/security/cert/PKIXRevocationChecker;Ljava/util/Map;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Ljava/security/cert/PKIXRevocationChecker;->setOcspResponses(Ljava/util/Map;)V

    return-void
.end method

.method public static bridge synthetic m(Ljavax/crypto/Cipher;[B)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->updateAAD([B)V

    return-void
.end method

.method public static bridge synthetic m(Ljavax/net/ssl/X509ExtendedTrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V

    return-void
.end method

.method public static bridge synthetic m(Ljavax/net/ssl/X509ExtendedTrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V

    return-void
.end method

.method public static bridge synthetic m(Ljava/security/AlgorithmConstraints;Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z
    .locals 0

    .line 0
    invoke-interface {p0, p1, p2, p3}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Ljava/security/AlgorithmConstraints;Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z
    .locals 0

    .line 0
    invoke-interface {p0, p1, p2, p3, p4}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Ljava/security/AlgorithmConstraints;Ljava/util/Set;Ljava/security/Key;)Z
    .locals 0

    .line 0
    invoke-interface {p0, p1, p2}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/security/Key;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Ljavax/net/ssl/SNIMatcher;Ljavax/net/ssl/SNIServerName;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Ljavax/net/ssl/SNIMatcher;->matches(Ljavax/net/ssl/SNIServerName;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Ljavax/net/ssl/SNIServerName;)[B
    .locals 0

    .line 0
    invoke-virtual {p0}, Ljavax/net/ssl/SNIServerName;->getEncoded()[B

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljavax/net/ssl/ExtendedSSLSession;)[Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0}, Ljavax/net/ssl/ExtendedSSLSession;->getLocalSupportedSignatureAlgorithms()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m()[Ljava/security/CryptoPrimitive;
    .locals 1

    .line 0
    invoke-static {}, Ljava/security/CryptoPrimitive;->values()[Ljava/security/CryptoPrimitive;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic m$1()Ljava/security/CryptoPrimitive;
    .locals 1

    .line 0
    sget-object v0, Ljava/security/CryptoPrimitive;->PUBLIC_KEY_ENCRYPTION:Ljava/security/CryptoPrimitive;

    return-object v0
.end method

.method public static bridge synthetic m$1()Ljava/security/cert/PKIXRevocationChecker$Option;
    .locals 1

    .line 0
    sget-object v0, Ljava/security/cert/PKIXRevocationChecker$Option;->PREFER_CRLS:Ljava/security/cert/PKIXRevocationChecker$Option;

    return-object v0
.end method

.method public static bridge synthetic m$1(Ljavax/net/ssl/X509ExtendedTrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V

    return-void
.end method

.method public static bridge synthetic m$1(Ljavax/net/ssl/X509ExtendedTrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V

    return-void
.end method

.method public static bridge synthetic m$1(Ljavax/net/ssl/ExtendedSSLSession;)[Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0}, Ljavax/net/ssl/ExtendedSSLSession;->getPeerSupportedSignatureAlgorithms()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m$2()Ljava/security/CryptoPrimitive;
    .locals 1

    .line 0
    sget-object v0, Ljava/security/CryptoPrimitive;->SIGNATURE:Ljava/security/CryptoPrimitive;

    return-object v0
.end method

.method public static bridge synthetic m$2()Ljava/security/cert/PKIXRevocationChecker$Option;
    .locals 1

    .line 0
    sget-object v0, Ljava/security/cert/PKIXRevocationChecker$Option;->NO_FALLBACK:Ljava/security/cert/PKIXRevocationChecker$Option;

    return-object v0
.end method

.method public static bridge synthetic m$3()Ljava/security/CryptoPrimitive;
    .locals 1

    .line 0
    sget-object v0, Ljava/security/CryptoPrimitive;->KEY_ENCAPSULATION:Ljava/security/CryptoPrimitive;

    return-object v0
.end method

.method public static bridge synthetic m$4()Ljava/security/CryptoPrimitive;
    .locals 1

    .line 0
    sget-object v0, Ljava/security/CryptoPrimitive;->KEY_AGREEMENT:Ljava/security/CryptoPrimitive;

    return-object v0
.end method

.method public static bridge synthetic m$5()Ljava/security/CryptoPrimitive;
    .locals 1

    .line 0
    sget-object v0, Ljava/security/CryptoPrimitive;->MESSAGE_DIGEST:Ljava/security/CryptoPrimitive;

    return-object v0
.end method

.method public static bridge synthetic m$6()Ljava/security/CryptoPrimitive;
    .locals 1

    .line 0
    sget-object v0, Ljava/security/CryptoPrimitive;->SECURE_RANDOM:Ljava/security/CryptoPrimitive;

    return-object v0
.end method

.method public static bridge synthetic m$7()Ljava/security/CryptoPrimitive;
    .locals 1

    .line 0
    sget-object v0, Ljava/security/CryptoPrimitive;->BLOCK_CIPHER:Ljava/security/CryptoPrimitive;

    return-object v0
.end method

.method public static bridge synthetic m$8()Ljava/security/CryptoPrimitive;
    .locals 1

    .line 0
    sget-object v0, Ljava/security/CryptoPrimitive;->STREAM_CIPHER:Ljava/security/CryptoPrimitive;

    return-object v0
.end method

.method public static bridge synthetic m$9()Ljava/security/CryptoPrimitive;
    .locals 1

    .line 0
    sget-object v0, Ljava/security/CryptoPrimitive;->MAC:Ljava/security/CryptoPrimitive;

    return-object v0
.end method
