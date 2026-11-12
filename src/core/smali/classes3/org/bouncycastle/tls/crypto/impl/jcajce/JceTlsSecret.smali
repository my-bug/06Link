.class public Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;
.super Lorg/bouncycastle/tls/crypto/impl/AbstractTlsSecret;


# static fields
.field private static final SSL3_CONST:[B


# instance fields
.field protected final crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;->generateSSL3Constants()[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;->SSL3_CONST:[B

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;[B)V
    .locals 0

    invoke-direct {p0, p2}, Lorg/bouncycastle/tls/crypto/impl/AbstractTlsSecret;-><init>([B)V

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    return-void
.end method

.method public static convert(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Lorg/bouncycastle/tls/crypto/TlsSecret;)Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;
    .locals 2

    instance-of v0, p1, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;

    return-object p1

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/tls/crypto/impl/AbstractTlsSecret;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/bouncycastle/tls/crypto/impl/AbstractTlsSecret;

    invoke-static {p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;->copyData(Lorg/bouncycastle/tls/crypto/impl/AbstractTlsSecret;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->adoptLocalSecret([B)Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unrecognized TlsSecret - cannot copy data: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static generateSSL3Constants()[B
    .locals 7

    const/16 v0, 0x78

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0xf

    if-ge v2, v4, :cond_1

    add-int/lit8 v4, v2, 0x41

    int-to-byte v4, v4

    const/4 v5, 0x0

    :goto_1
    if-gt v5, v2, :cond_0

    add-int/lit8 v6, v3, 0x1

    aput-byte v4, v0, v3

    add-int/lit8 v5, v5, 0x1

    move v3, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public declared-synchronized deriveUsingPRF(ILjava/lang/String;[BI)Lorg/bouncycastle/tls/crypto/TlsSecret;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;->checkAlive()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;->prf(ILjava/lang/String;[BI)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->adoptLocalSecret([B)Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_2
    invoke-static {p0, v0, p2, p3, p4}, Lorg/bouncycastle/tls/crypto/TlsCryptoUtils;->hkdfExpandLabel(Lorg/bouncycastle/tls/crypto/TlsSecret;ILjava/lang/String;[BI)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_3
    invoke-static {p0, v0, p2, p3, p4}, Lorg/bouncycastle/tls/crypto/TlsCryptoUtils;->hkdfExpandLabel(Lorg/bouncycastle/tls/crypto/TlsSecret;ILjava/lang/String;[BI)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_2
    :try_start_4
    invoke-static {p0, v0, p2, p3, p4}, Lorg/bouncycastle/tls/crypto/TlsCryptoUtils;->hkdfExpandLabel(Lorg/bouncycastle/tls/crypto/TlsSecret;ILjava/lang/String;[BI)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object p1

    :catch_0
    move-exception p1

    :try_start_5
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method protected getCrypto()Lorg/bouncycastle/tls/crypto/impl/AbstractTlsCrypto;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    return-object v0
.end method

.method public declared-synchronized hkdfExpand(I[BI)Lorg/bouncycastle/tls/crypto/TlsSecret;
    .locals 8

    monitor-enter p0

    const/4 v0, 0x1

    if-ge p3, v0, :cond_0

    :try_start_0
    iget-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    sget-object p2, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-virtual {p1, p2}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->adoptLocalSecret([B)Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    invoke-static {p1}, Lorg/bouncycastle/tls/crypto/TlsCryptoUtils;->getHashOutputSize(I)I

    move-result v1

    mul-int/lit16 v2, v1, 0xff

    if-gt p3, v2, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;->checkAlive()V

    iget-object v2, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;->data:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    invoke-virtual {v3, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getHMACAlgorithmName(I)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    invoke-virtual {v3}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getHelper()Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    move-result-object v3

    invoke-interface {v3, p1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createMac(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v3

    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    array-length v5, v2

    const/4 v6, 0x0

    invoke-direct {v4, v2, v6, v5, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    new-array p1, p3, [B

    new-array v2, v1, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    array-length v7, p2

    invoke-virtual {v3, p2, v6, v7}, Ljavax/crypto/Mac;->update([BII)V

    add-int/2addr v4, v0

    int-to-byte v4, v4

    invoke-virtual {v3, v4}, Ljavax/crypto/Mac;->update(B)V

    invoke-virtual {v3, v2, v6}, Ljavax/crypto/Mac;->doFinal([BI)V

    sub-int v7, p3, v5

    if-gt v7, v1, :cond_1

    invoke-static {v2, v6, p1, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    invoke-virtual {p2, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->adoptLocalSecret([B)Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;

    move-result-object p1
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_3
    invoke-static {v2, v6, p1, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v1

    invoke-virtual {v3, v2, v6, v1}, Ljavax/crypto/Mac;->update([BII)V
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_4
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'length\' must be <= 255 * (output size of \'hashAlgorithm\')"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized hkdfExtract(ILorg/bouncycastle/tls/crypto/TlsSecret;)Lorg/bouncycastle/tls/crypto/TlsSecret;
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;->checkAlive()V

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;->data:[B

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;->data:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getHMACAlgorithmName(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    invoke-virtual {v1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getHelper()Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createMac(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    array-length v3, v0

    const/4 v4, 0x0

    invoke-direct {v2, v0, v4, v3, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    iget-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    invoke-static {p1, p2}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;->convert(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Lorg/bouncycastle/tls/crypto/TlsSecret;)Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;->updateMac(Ljavax/crypto/Mac;)V

    invoke-virtual {v1}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    invoke-virtual {p2, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->adoptLocalSecret([B)Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;

    move-result-object p1
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catch_0
    move-exception p1

    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method protected hmacHash(I[BII[B[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getDigestName(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Hmac"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getHelper()Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createMac(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, p2, p3, p4, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {v0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result p1

    new-array p2, p1, [B

    new-array p3, p1, [B

    const/4 p4, 0x0

    move-object v2, p5

    const/4 v1, 0x0

    :goto_0
    array-length v3, p6

    if-ge v1, v3, :cond_0

    array-length v3, v2

    invoke-virtual {v0, v2, p4, v3}, Ljavax/crypto/Mac;->update([BII)V

    invoke-virtual {v0, p2, p4}, Ljavax/crypto/Mac;->doFinal([BI)V

    invoke-virtual {v0, p2, p4, p1}, Ljavax/crypto/Mac;->update([BII)V

    array-length v2, p5

    invoke-virtual {v0, p5, p4, v2}, Ljavax/crypto/Mac;->update([BII)V

    invoke-virtual {v0, p3, p4}, Ljavax/crypto/Mac;->doFinal([BI)V

    array-length v2, p6

    sub-int/2addr v2, v1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p3, p4, p6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, p1

    move-object v2, p2

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected prf(ILjava/lang/String;[BI)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0, p3, p4}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;->prf_SSL([BI)[B

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p2}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p2, p3}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object p2

    const/4 p3, 0x1

    if-ne p3, p1, :cond_1

    invoke-virtual {p0, p2, p4}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;->prf_1_0([BI)[B

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0, p1, p2, p4}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;->prf_1_2(I[BI)[B

    move-result-object p1

    return-object p1
.end method

.method protected prf_1_0([BI)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;->data:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v5, v0, 0x2

    new-array v7, p2, [B

    iget-object v3, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;->data:[B

    const/4 v4, 0x0

    const/4 v2, 0x1

    move-object v1, p0

    move-object v6, p1

    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;->hmacHash(I[BII[B[B)V

    move-object p1, v7

    new-array v7, p2, [B

    iget-object v3, v1, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;->data:[B

    iget-object v0, v1, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;->data:[B

    array-length v0, v0

    sub-int v4, v0, v5

    const/4 v2, 0x2

    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;->hmacHash(I[BII[B[B)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-byte v1, p1, v0

    aget-byte v2, v7, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method protected prf_1_2(I[BI)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/tls/crypto/TlsCryptoUtils;->getHashForPRF(I)I

    move-result v1

    new-array v6, p3, [B

    iget-object v2, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;->data:[B

    iget-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;->data:[B

    array-length v4, p1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;->hmacHash(I[BII[B[B)V

    return-object v6
.end method

.method protected prf_SSL([BI)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getHelper()Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    move-result-object v0

    const-string v1, "MD5"

    invoke-interface {v0, v1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    invoke-virtual {v1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getHelper()Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    move-result-object v1

    const-string v2, "SHA-1"

    invoke-interface {v1, v2}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v2

    invoke-virtual {v1}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-array v4, v4, [B

    new-array v5, p2, [B

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v8, p2, :cond_1

    sget-object v10, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;->SSL3_CONST:[B

    invoke-virtual {v1, v10, v9, v6}, Ljava/security/MessageDigest;->update([BII)V

    add-int/lit8 v10, v6, 0x1

    add-int/2addr v9, v6

    iget-object v6, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;->data:[B

    iget-object v11, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;->data:[B

    array-length v11, v11

    invoke-virtual {v1, v6, v7, v11}, Ljava/security/MessageDigest;->update([BII)V

    array-length v6, p1

    invoke-virtual {v1, p1, v7, v6}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v1, v4, v7, v3}, Ljava/security/MessageDigest;->digest([BII)I

    iget-object v6, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;->data:[B

    iget-object v11, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;->data:[B

    array-length v11, v11

    invoke-virtual {v0, v6, v7, v11}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v0, v4, v7, v3}, Ljava/security/MessageDigest;->update([BII)V

    sub-int v6, p2, v8

    if-ge v6, v2, :cond_0

    invoke-virtual {v0, v4, v7, v2}, Ljava/security/MessageDigest;->digest([BII)I

    invoke-static {v4, v7, v5, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v8, v6

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v5, v8, v2}, Ljava/security/MessageDigest;->digest([BII)I

    add-int/2addr v8, v2

    :goto_1
    move v6, v10

    goto :goto_0

    :cond_1
    return-object v5
.end method

.method protected declared-synchronized updateMac(Ljavax/crypto/Mac;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;->checkAlive()V

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;->data:[B

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;->data:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljavax/crypto/Mac;->update([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
