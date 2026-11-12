.class abstract Lorg/bouncycastle/jsse/provider/JsseUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jsse/provider/JsseUtils$BCUnknownServerName;
    }
.end annotation


# static fields
.field static EMPTY_STRING:Ljava/lang/String;

.field static EMPTY_X509CERTIFICATES:[Ljava/security/cert/X509Certificate;

.field static final KEY_AGREEMENT_CRYPTO_PRIMITIVES_BC:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;",
            ">;"
        }
    .end annotation
.end field

.field static final KEY_ENCAPSULATION_CRYPTO_PRIMITIVES_BC:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;",
            ">;"
        }
    .end annotation
.end field

.field static final SIGNATURE_CRYPTO_PRIMITIVES_BC:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;",
            ">;"
        }
    .end annotation
.end field

.field private static final provTlsAllowLegacyMasterSecret:Z

.field private static final provTlsAllowLegacyResumption:Z

.field private static final provTlsMaxCertificateChainLength:I

.field private static final provTlsMaxHandshakeMessageSize:I

.field private static final provTlsRequireCloseNotify:Z

.field private static final provTlsUseCompatibilityMode:Z

.field private static final provTlsUseExtendedMasterSecret:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "jdk.tls.allowLegacyMasterSecret"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/PropertyUtils;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/bouncycastle/jsse/provider/JsseUtils;->provTlsAllowLegacyMasterSecret:Z

    const-string v0, "jdk.tls.allowLegacyResumption"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/bouncycastle/jsse/provider/PropertyUtils;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/bouncycastle/jsse/provider/JsseUtils;->provTlsAllowLegacyResumption:Z

    const-string v0, "jdk.tls.maxCertificateChainLength"

    const/16 v3, 0xa

    const v4, 0x7fffffff

    invoke-static {v0, v3, v1, v4}, Lorg/bouncycastle/jsse/provider/PropertyUtils;->getIntegerSystemProperty(Ljava/lang/String;III)I

    move-result v0

    sput v0, Lorg/bouncycastle/jsse/provider/JsseUtils;->provTlsMaxCertificateChainLength:I

    const v0, 0x8000

    const/16 v3, 0x400

    const-string v5, "jdk.tls.maxHandshakeMessageSize"

    invoke-static {v5, v0, v3, v4}, Lorg/bouncycastle/jsse/provider/PropertyUtils;->getIntegerSystemProperty(Ljava/lang/String;III)I

    move-result v0

    sput v0, Lorg/bouncycastle/jsse/provider/JsseUtils;->provTlsMaxHandshakeMessageSize:I

    const-string v0, "com.sun.net.ssl.requireCloseNotify"

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/PropertyUtils;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/bouncycastle/jsse/provider/JsseUtils;->provTlsRequireCloseNotify:Z

    const-string v0, "jdk.tls.client.useCompatibilityMode"

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/PropertyUtils;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/bouncycastle/jsse/provider/JsseUtils;->provTlsUseCompatibilityMode:Z

    const-string v0, "jdk.tls.useExtendedMasterSecret"

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/PropertyUtils;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/bouncycastle/jsse/provider/JsseUtils;->provTlsUseExtendedMasterSecret:Z

    sget-object v0, Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;->KEY_AGREEMENT:Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jsse/provider/JsseUtils;->KEY_AGREEMENT_CRYPTO_PRIMITIVES_BC:Ljava/util/Set;

    sget-object v0, Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;->KEY_ENCAPSULATION:Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jsse/provider/JsseUtils;->KEY_ENCAPSULATION_CRYPTO_PRIMITIVES_BC:Ljava/util/Set;

    sget-object v0, Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;->SIGNATURE:Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jsse/provider/JsseUtils;->SIGNATURE_CRYPTO_PRIMITIVES_BC:Ljava/util/Set;

    const-string v0, ""

    sput-object v0, Lorg/bouncycastle/jsse/provider/JsseUtils;->EMPTY_STRING:Ljava/lang/String;

    new-array v0, v2, [Ljava/security/cert/X509Certificate;

    sput-object v0, Lorg/bouncycastle/jsse/provider/JsseUtils;->EMPTY_X509CERTIFICATES:[Ljava/security/cert/X509Certificate;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static allowLegacyMasterSecret()Z
    .locals 1

    sget-boolean v0, Lorg/bouncycastle/jsse/provider/JsseUtils;->provTlsAllowLegacyMasterSecret:Z

    return v0
.end method

.method static allowLegacyResumption()Z
    .locals 1

    sget-boolean v0, Lorg/bouncycastle/jsse/provider/JsseUtils;->provTlsAllowLegacyResumption:Z

    return v0
.end method

.method static appendCipherSuiteDetail(Ljava/lang/StringBuilder;Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;I)V
    .locals 3

    const-string p1, "{0x"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 p1, p2, 0x8

    int-to-byte p1, p1

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",0x"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-byte p1, p2

    new-array v0, v0, [B

    aput-byte p1, v0, v2

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x7d

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;->getCipherSuiteName(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/16 p1, 0x3f

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    const/16 p2, 0x28

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    goto :goto_0
.end method

.method static checkSessionCreationEnabled(Lorg/bouncycastle/jsse/provider/ProvTlsManager;)V
    .locals 1

    invoke-interface {p0}, Lorg/bouncycastle/jsse/provider/ProvTlsManager;->getEnableSessionCreation()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot resume session and session creation is disabled"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static clone([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method static contains([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method static containsNull([Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    if-nez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method static convertSNIServerName(Lorg/bouncycastle/tls/ServerName;)Lorg/bouncycastle/jsse/BCSNIServerName;
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/tls/ServerName;->getNameType()S

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/ServerName;->getNameData()[B

    move-result-object p0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/bouncycastle/jsse/provider/JsseUtils$BCUnknownServerName;

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/jsse/provider/JsseUtils$BCUnknownServerName;-><init>(I[B)V

    return-object v1

    :cond_0
    new-instance v0, Lorg/bouncycastle/jsse/BCSNIHostName;

    invoke-direct {v0, p0}, Lorg/bouncycastle/jsse/BCSNIHostName;-><init>([B)V

    return-object v0
.end method

.method static convertSNIServerNames(Ljava/util/Vector;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Lorg/bouncycastle/tls/ServerName;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/bouncycastle/jsse/BCSNIServerName;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/tls/ServerName;

    invoke-static {v1}, Lorg/bouncycastle/jsse/provider/JsseUtils;->convertSNIServerName(Lorg/bouncycastle/tls/ServerName;)Lorg/bouncycastle/jsse/BCSNIServerName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method static copyOf([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 2

    new-array v0, p1, [Ljava/lang/String;

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method static createCredentialedDecryptor(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Lorg/bouncycastle/jsse/BCX509Key;)Lorg/bouncycastle/tls/TlsCredentialedDecryptor;
    .locals 2

    invoke-interface {p1}, Lorg/bouncycastle/jsse/BCX509Key;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    invoke-interface {p1}, Lorg/bouncycastle/jsse/BCX509Key;->getCertificateChain()[Ljava/security/cert/X509Certificate;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getCertificateMessage(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;[Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/tls/Certificate;

    move-result-object p1

    new-instance v1, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceDefaultTlsCredentialedDecryptor;

    invoke-direct {v1, p0, p1, v0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceDefaultTlsCredentialedDecryptor;-><init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Lorg/bouncycastle/tls/Certificate;Ljava/security/PrivateKey;)V

    return-object v1
.end method

.method static createCredentialedSigner(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Lorg/bouncycastle/jsse/BCX509Key;Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)Lorg/bouncycastle/tls/TlsCredentialedSigner;
    .locals 6

    new-instance v1, Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;

    invoke-direct {v1, p0}, Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;-><init>(Lorg/bouncycastle/tls/TlsContext;)V

    invoke-interface {p2}, Lorg/bouncycastle/jsse/BCX509Key;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v3

    invoke-interface {p2}, Lorg/bouncycastle/jsse/BCX509Key;->getCertificateChain()[Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getCertificateMessage(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;[Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/tls/Certificate;

    move-result-object v4

    new-instance v0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaDefaultTlsCredentialedSigner;

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaDefaultTlsCredentialedSigner;-><init>(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Ljava/security/PrivateKey;Lorg/bouncycastle/tls/Certificate;Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)V

    return-object v0
.end method

.method static createCredentialedSigner13(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Lorg/bouncycastle/jsse/BCX509Key;Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;[B)Lorg/bouncycastle/tls/TlsCredentialedSigner;
    .locals 6

    new-instance v1, Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;

    invoke-direct {v1, p0}, Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;-><init>(Lorg/bouncycastle/tls/TlsContext;)V

    invoke-interface {p2}, Lorg/bouncycastle/jsse/BCX509Key;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v3

    invoke-interface {p2}, Lorg/bouncycastle/jsse/BCX509Key;->getCertificateChain()[Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-static {p1, p0, p4}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getCertificateMessage13(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;[Ljava/security/cert/X509Certificate;[B)Lorg/bouncycastle/tls/Certificate;

    move-result-object v4

    new-instance v0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaDefaultTlsCredentialedSigner;

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaDefaultTlsCredentialedSigner;-><init>(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Ljava/security/PrivateKey;Lorg/bouncycastle/tls/Certificate;Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)V

    return-object v0
.end method

.method static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static findMatchingSNIServerName(Ljava/util/Vector;Ljava/util/Collection;)Lorg/bouncycastle/jsse/BCSNIServerName;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Lorg/bouncycastle/tls/ServerName;",
            ">;",
            "Ljava/util/Collection<",
            "Lorg/bouncycastle/jsse/BCSNIMatcher;",
            ">;)",
            "Lorg/bouncycastle/jsse/BCSNIServerName;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/JsseUtils;->convertSNIServerNames(Ljava/util/Vector;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/jsse/BCSNIMatcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/BCSNIMatcher;->getType()I

    move-result v1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/jsse/BCSNIServerName;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/bouncycastle/jsse/BCSNIServerName;->getType()I

    move-result v4

    if-eq v4, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3}, Lorg/bouncycastle/jsse/BCSNIMatcher;->matches(Lorg/bouncycastle/jsse/BCSNIServerName;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v3

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method static getAlertRaisedLogMessage(Ljava/lang/String;SS)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " raised "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/bouncycastle/tls/AlertLevel;->getText(S)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/bouncycastle/tls/AlertDescription;->getText(S)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " alert"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getAlertReceivedLogMessage(Ljava/lang/String;SS)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " received "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/bouncycastle/tls/AlertLevel;->getText(S)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/bouncycastle/tls/AlertDescription;->getText(S)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " alert"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getApplicationProtocol(Lorg/bouncycastle/tls/SecurityParameters;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->isApplicationProtocolSet()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getApplicationProtocol()Lorg/bouncycastle/tls/ProtocolName;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/tls/ProtocolName;->getUtf8Decoding()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static getAuthTypeServer(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_7

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    const/4 v0, 0x3

    if-eq p0, v0, :cond_5

    const/4 v0, 0x5

    if-eq p0, v0, :cond_4

    const/4 v0, 0x7

    if-eq p0, v0, :cond_3

    const/16 v0, 0x9

    if-eq p0, v0, :cond_2

    const/16 v0, 0x16

    if-eq p0, v0, :cond_1

    const/16 v0, 0x17

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_0
    const-string p0, "ECDHE_RSA"

    return-object p0

    :pswitch_1
    const-string p0, "ECDH_RSA"

    return-object p0

    :pswitch_2
    const-string p0, "ECDHE_ECDSA"

    return-object p0

    :pswitch_3
    const-string p0, "ECDH_ECDSA"

    return-object p0

    :cond_0
    const-string p0, "SRP_RSA"

    return-object p0

    :cond_1
    const-string p0, "SRP_DSS"

    return-object p0

    :cond_2
    const-string p0, "DH_RSA"

    return-object p0

    :cond_3
    const-string p0, "DH_DSS"

    return-object p0

    :cond_4
    const-string p0, "DHE_RSA"

    return-object p0

    :cond_5
    const-string p0, "DHE_DSS"

    return-object p0

    :cond_6
    const-string p0, "KE:RSA"

    return-object p0

    :cond_7
    const-string p0, "UNKNOWN"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getCertificateAuthorities(Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;)Ljava/util/Vector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;",
            ")",
            "Ljava/util/Vector<",
            "Lorg/bouncycastle/asn1/x500/X500Name;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v4

    if-ltz v4, :cond_0

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    :goto_1
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-instance p0, Ljava/util/Vector;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/Vector;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    return-object p0
.end method

.method static getCertificateMessage(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;[Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/tls/Certificate;
    .locals 4

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    array-length v0, p1

    new-array v0, v0, [Lorg/bouncycastle/tls/crypto/TlsCertificate;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    new-instance v2, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;

    aget-object v3, p1, v1

    invoke-direct {v2, p0, v3}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;-><init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Ljava/security/cert/X509Certificate;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/Certificate;

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/Certificate;-><init>([Lorg/bouncycastle/tls/crypto/TlsCertificate;)V

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method static getCertificateMessage13(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;[Ljava/security/cert/X509Certificate;[B)Lorg/bouncycastle/tls/Certificate;
    .locals 5

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    array-length v0, p1

    new-array v0, v0, [Lorg/bouncycastle/tls/CertificateEntry;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    new-instance v2, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;

    aget-object v3, p1, v1

    invoke-direct {v2, p0, v3}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;-><init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Ljava/security/cert/X509Certificate;)V

    new-instance v3, Lorg/bouncycastle/tls/CertificateEntry;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lorg/bouncycastle/tls/CertificateEntry;-><init>(Lorg/bouncycastle/tls/crypto/TlsCertificate;Ljava/util/Hashtable;)V

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/Certificate;

    invoke-direct {p0, p2, v0}, Lorg/bouncycastle/tls/Certificate;-><init>([B[Lorg/bouncycastle/tls/CertificateEntry;)V

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method static getEndEntity(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Lorg/bouncycastle/tls/Certificate;)Ljava/security/cert/X509Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/tls/Certificate;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/tls/Certificate;->getCertificateAt(I)Lorg/bouncycastle/tls/crypto/TlsCertificate;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getX509Certificate(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Lorg/bouncycastle/tls/crypto/TlsCertificate;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static getJcaSignatureAlgorithmBC(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "withRSAandMGF1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getKeyAlgorithm(Ljava/security/Key;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Ljava/security/PrivateKey;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/security/PrivateKey;

    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getPrivateKeyAlgorithm(Ljava/security/PrivateKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/security/PublicKey;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/security/PublicKey;

    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getPublicKeyAlgorithm(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {p0}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getKeyType13(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    if-gez p1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/bouncycastle/tls/NamedGroup;->getStandardName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getKeyTypeLegacyClient(S)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/16 v0, 0x40

    if-ne p0, v0, :cond_0

    const-string p0, "EC"

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    const-string p0, "DSA"

    return-object p0

    :cond_2
    const-string p0, "RSA"

    return-object p0
.end method

.method static getKeyTypeLegacyServer(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getAuthTypeServer(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getMaxCertificateChainLength()I
    .locals 1

    sget v0, Lorg/bouncycastle/jsse/provider/JsseUtils;->provTlsMaxCertificateChainLength:I

    return v0
.end method

.method static getMaxHandshakeMessageSize()I
    .locals 1

    sget v0, Lorg/bouncycastle/jsse/provider/JsseUtils;->provTlsMaxHandshakeMessageSize:I

    return v0
.end method

.method static getNamedCurveOID(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 2

    :try_start_0
    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p0

    sget-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static getPeerID(Ljava/lang/String;Lorg/bouncycastle/jsse/provider/ProvTlsManager;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lorg/bouncycastle/jsse/provider/ProvSSLConnection;->allocateConnectionID()J

    move-result-wide v0

    invoke-interface {p1}, Lorg/bouncycastle/jsse/provider/ProvTlsManager;->getTransportID()I

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " #"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " @"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getPeerReport(Lorg/bouncycastle/jsse/provider/ProvTlsManager;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Lorg/bouncycastle/jsse/provider/ProvTlsManager;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(unknown)"

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    invoke-interface {p0}, Lorg/bouncycastle/jsse/provider/ProvTlsManager;->getPeerPort()I

    move-result p0

    if-gez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getPrivateKeyAlgorithm(Ljava/security/PrivateKey;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object p0

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "RSASSA-PSS"

    return-object p0

    :cond_0
    return-object v0
.end method

.method static getProtocolNames(Ljava/util/Vector;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Lorg/bouncycastle/tls/ProtocolName;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/tls/ProtocolName;

    invoke-virtual {v1}, Lorg/bouncycastle/tls/ProtocolName;->getUtf8Decoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static getProtocolNames([Ljava/lang/String;)Ljava/util/Vector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector<",
            "Lorg/bouncycastle/tls/ProtocolName;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/Vector;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-static {v3}, Lorg/bouncycastle/tls/ProtocolName;->asUtf8Encoding(Ljava/lang/String;)Lorg/bouncycastle/tls/ProtocolName;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static getPublicKeyAlgorithm(Ljava/security/PublicKey;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p0

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "RSASSA-PSS"

    return-object p0

    :cond_0
    return-object v0
.end method

.method static getSNIHostName(Ljava/util/List;)Lorg/bouncycastle/jsse/BCSNIHostName;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bouncycastle/jsse/BCSNIServerName;",
            ">;)",
            "Lorg/bouncycastle/jsse/BCSNIHostName;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/jsse/BCSNIServerName;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/bouncycastle/jsse/BCSNIServerName;->getType()I

    move-result v2

    if-nez v2, :cond_0

    instance-of p0, v1, Lorg/bouncycastle/jsse/BCSNIHostName;

    if-eqz p0, :cond_1

    check-cast v1, Lorg/bouncycastle/jsse/BCSNIHostName;

    return-object v1

    :cond_1
    :try_start_0
    new-instance p0, Lorg/bouncycastle/jsse/BCSNIHostName;

    invoke-virtual {v1}, Lorg/bouncycastle/jsse/BCSNIServerName;->getEncoded()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/jsse/BCSNIHostName;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_2
    return-object v0
.end method

.method static getSignatureAlgorithmsReport(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x3a

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;->getJcaSignatureAlgorithmBC()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getStatusResponse(Lorg/bouncycastle/asn1/ocsp/OCSPResponse;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    sget-object p0, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_BYTES:[B

    return-object p0

    :cond_0
    const-string v0, "DER"

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static getStatusResponses(Lorg/bouncycastle/tls/CertificateStatus;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/tls/CertificateStatus;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lorg/bouncycastle/tls/CertificateStatus;->getStatusType()S

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/CertificateStatus;->getOCSPResponseList()Ljava/util/Vector;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;

    invoke-static {v3}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getStatusResponse(Lorg/bouncycastle/asn1/ocsp/OCSPResponse;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lorg/bouncycastle/tls/CertificateStatus;->getOCSPResponse()Lorg/bouncycastle/asn1/ocsp/OCSPResponse;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getStatusResponse(Lorg/bouncycastle/asn1/ocsp/OCSPResponse;)[B

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static getSubject(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Lorg/bouncycastle/tls/Certificate;)Ljavax/security/auth/x500/X500Principal;
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/tls/Certificate;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/bouncycastle/tls/Certificate;->getCertificateAt(I)Lorg/bouncycastle/tls/crypto/TlsCertificate;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getX509Certificate(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Lorg/bouncycastle/tls/crypto/TlsCertificate;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static getTrustedIssuers(Ljava/util/Vector;)[Ljavax/security/auth/x500/X500Principal;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Lorg/bouncycastle/tls/TrustedAuthority;",
            ">;)[",
            "Ljavax/security/auth/x500/X500Principal;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v2, v1, [Ljavax/security/auth/x500/X500Principal;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {p0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/tls/TrustedAuthority;

    const/4 v5, 0x2

    invoke-virtual {v4}, Lorg/bouncycastle/tls/TrustedAuthority;->getIdentifierType()S

    move-result v6

    if-eq v5, v6, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {v4}, Lorg/bouncycastle/tls/TrustedAuthority;->getX509Name()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/jsse/provider/JsseUtils;->toX500Principal(Lorg/bouncycastle/asn1/x500/X500Name;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v2

    :cond_3
    :goto_1
    return-object v0
.end method

.method static getX509Certificate(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Lorg/bouncycastle/tls/crypto/TlsCertificate;)Ljava/security/cert/X509Certificate;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->convert(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Lorg/bouncycastle/tls/crypto/TlsCertificate;)Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->getX509Certificate()Ljava/security/cert/X509Certificate;

    move-result-object p0

    return-object p0
.end method

.method static getX509CertificateChain(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Lorg/bouncycastle/tls/Certificate;)[Ljava/security/cert/X509Certificate;
    .locals 4

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/tls/Certificate;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/tls/Certificate;->getLength()I

    move-result v0

    new-array v1, v0, [Ljava/security/cert/X509Certificate;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Lorg/bouncycastle/tls/Certificate;->getCertificateAt(I)Lorg/bouncycastle/tls/crypto/TlsCertificate;

    move-result-object v3

    invoke-static {p0, v3}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->convert(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Lorg/bouncycastle/tls/crypto/TlsCertificate;)Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->getX509Certificate()Ljava/security/cert/X509Certificate;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    :goto_1
    sget-object p0, Lorg/bouncycastle/jsse/provider/JsseUtils;->EMPTY_X509CERTIFICATES:[Ljava/security/cert/X509Certificate;

    return-object p0
.end method

.method static getX509CertificateChain([Ljava/security/cert/Certificate;)[Ljava/security/cert/X509Certificate;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p0, [Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_2

    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/JsseUtils;->containsNull([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    check-cast p0, [Ljava/security/cert/X509Certificate;

    return-object p0

    :cond_2
    array-length v1, p0

    new-array v1, v1, [Ljava/security/cert/X509Certificate;

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_4

    aget-object v3, p0, v2

    instance-of v4, v3, Ljava/security/cert/X509Certificate;

    if-nez v4, :cond_3

    return-object v0

    :cond_3
    check-cast v3, Ljava/security/cert/X509Certificate;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method static isNameSpecified(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/JsseUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static isNullOrEmpty(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method static isTLSv12(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;->getProtocolVersion(Ljava/lang/String;)Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv12(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static isTLSv13(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;->getProtocolVersion(Ljava/lang/String;)Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv13(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static removeAllWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/JsseUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [C

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-nez v6, :cond_1

    add-int/lit8 v6, v4, 0x1

    aput-char v5, v1, v4

    move v4, v6

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    sget-object p0, Lorg/bouncycastle/jsse/provider/JsseUtils;->EMPTY_STRING:Ljava/lang/String;

    return-object p0

    :cond_3
    if-ne v4, v0, :cond_4

    :goto_1
    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v4}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method

.method static requireCloseNotify()Z
    .locals 1

    sget-boolean v0, Lorg/bouncycastle/jsse/provider/JsseUtils;->provTlsRequireCloseNotify:Z

    return v0
.end method

.method static resize([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1

    array-length v0, p0

    if-ge p1, v0, :cond_0

    invoke-static {p0, p1}, Lorg/bouncycastle/jsse/provider/JsseUtils;->copyOf([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method static stripDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x22

    invoke-static {p0, v0, v0}, Lorg/bouncycastle/jsse/provider/JsseUtils;->stripOuterChars(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static stripOuterChars(Ljava/lang/String;CC)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, p2, :cond_0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method static stripSquareBrackets(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x5b

    const/16 v1, 0x5d

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/jsse/provider/JsseUtils;->stripOuterChars(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static toX500Principal(Lorg/bouncycastle/asn1/x500/X500Name;)Ljavax/security/auth/x500/X500Principal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    const-string v1, "DER"

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/x500/X500Name;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    return-object v0
.end method

.method static toX500Principals(Ljava/util/Vector;)[Ljavax/security/auth/x500/X500Principal;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Lorg/bouncycastle/asn1/x500/X500Name;",
            ">;)[",
            "Ljavax/security/auth/x500/X500Principal;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {p0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/x500/X500Name;

    invoke-static {v4}, Lorg/bouncycastle/jsse/provider/JsseUtils;->toX500Principal(Lorg/bouncycastle/asn1/x500/X500Name;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-array p0, v2, [Ljavax/security/auth/x500/X500Principal;

    invoke-interface {v0, p0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljavax/security/auth/x500/X500Principal;

    return-object p0
.end method

.method static useCompatibilityMode()Z
    .locals 1

    sget-boolean v0, Lorg/bouncycastle/jsse/provider/JsseUtils;->provTlsUseCompatibilityMode:Z

    return v0
.end method

.method static useExtendedMasterSecret()Z
    .locals 1

    sget-boolean v0, Lorg/bouncycastle/jsse/provider/JsseUtils;->provTlsUseExtendedMasterSecret:Z

    return v0
.end method
