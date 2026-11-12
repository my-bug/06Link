.class public abstract Lorg/bouncycastle/jsse/BCX509ExtendedKeyManager;
.super Ljavax/net/ssl/X509ExtendedKeyManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedKeyManager;-><init>()V

    return-void
.end method


# virtual methods
.method public chooseClientKeyBC([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Lorg/bouncycastle/jsse/BCX509Key;
    .locals 5

    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object v3, v4, v1

    invoke-virtual {p0, v4, p2, p3}, Lorg/bouncycastle/jsse/BCX509ExtendedKeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v1, v3, v4, p3}, Lorg/bouncycastle/jsse/BCX509ExtendedKeyManager;->validateKeyBC(ZLjava/lang/String;Ljava/lang/String;Ljava/net/Socket;)Lorg/bouncycastle/jsse/BCX509Key;

    move-result-object v3

    if-eqz v3, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public chooseEngineClientKeyBC([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Lorg/bouncycastle/jsse/BCX509Key;
    .locals 5

    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object v3, v4, v1

    invoke-virtual {p0, v4, p2, p3}, Lorg/bouncycastle/jsse/BCX509ExtendedKeyManager;->chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v1, v3, v4, p3}, Lorg/bouncycastle/jsse/BCX509ExtendedKeyManager;->validateKeyBC(ZLjava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Lorg/bouncycastle/jsse/BCX509Key;

    move-result-object v3

    if-eqz v3, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public chooseEngineServerKeyBC([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Lorg/bouncycastle/jsse/BCX509Key;
    .locals 5

    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {p0, v2, p2, p3}, Lorg/bouncycastle/jsse/BCX509ExtendedKeyManager;->chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    invoke-virtual {p0, v4, v2, v3, p3}, Lorg/bouncycastle/jsse/BCX509ExtendedKeyManager;->validateKeyBC(ZLjava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Lorg/bouncycastle/jsse/BCX509Key;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public chooseServerKeyBC([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Lorg/bouncycastle/jsse/BCX509Key;
    .locals 5

    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {p0, v2, p2, p3}, Lorg/bouncycastle/jsse/BCX509ExtendedKeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    invoke-virtual {p0, v4, v2, v3, p3}, Lorg/bouncycastle/jsse/BCX509ExtendedKeyManager;->validateKeyBC(ZLjava/lang/String;Ljava/lang/String;Ljava/net/Socket;)Lorg/bouncycastle/jsse/BCX509Key;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected abstract getKeyBC(Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/jsse/BCX509Key;
.end method

.method protected validateKeyBC(ZLjava/lang/String;Ljava/lang/String;Ljava/net/Socket;)Lorg/bouncycastle/jsse/BCX509Key;
    .locals 0

    invoke-virtual {p0, p2, p3}, Lorg/bouncycastle/jsse/BCX509ExtendedKeyManager;->getKeyBC(Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/jsse/BCX509Key;

    move-result-object p1

    return-object p1
.end method

.method protected validateKeyBC(ZLjava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Lorg/bouncycastle/jsse/BCX509Key;
    .locals 0

    invoke-virtual {p0, p2, p3}, Lorg/bouncycastle/jsse/BCX509ExtendedKeyManager;->getKeyBC(Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/jsse/BCX509Key;

    move-result-object p1

    return-object p1
.end method
