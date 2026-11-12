.class Lorg/bouncycastle/jsse/provider/CipherSuiteInfo;
.super Ljava/lang/Object;


# instance fields
.field private final cipherSuite:I

.field private final decompositionTLS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final decompositionX509:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final isTLSv13:Z

.field private final name:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;ZLjava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/jsse/provider/CipherSuiteInfo;->cipherSuite:I

    iput-object p2, p0, Lorg/bouncycastle/jsse/provider/CipherSuiteInfo;->name:Ljava/lang/String;

    iput-boolean p3, p0, Lorg/bouncycastle/jsse/provider/CipherSuiteInfo;->isTLSv13:Z

    iput-object p4, p0, Lorg/bouncycastle/jsse/provider/CipherSuiteInfo;->decompositionTLS:Ljava/util/Set;

    iput-object p5, p0, Lorg/bouncycastle/jsse/provider/CipherSuiteInfo;->decompositionX509:Ljava/util/Set;

    return-void
.end method

.method private static varargs addAll(Ljava/util/Set;[Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-interface {p0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static decomposeEncryptionAlgorithm(Ljava/util/Set;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/jsse/provider/CipherSuiteInfo;->getTransformation(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/jsse/provider/JcaAlgorithmDecomposer;->INSTANCE_JCA:Lorg/bouncycastle/jsse/provider/JcaAlgorithmDecomposer;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/jsse/provider/JcaAlgorithmDecomposer;->decompose(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    if-eqz p1, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_0
    const-string p1, "SM4_CBC"

    :goto_0
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_1
    const-string p1, "SM4_GCM"

    goto :goto_0

    :pswitch_2
    const-string p1, "SM4_CCM"

    goto :goto_0

    :pswitch_3
    const-string p1, "ARIA_256_GCM"

    goto :goto_0

    :pswitch_4
    const-string p1, "ARIA_128_GCM"

    goto :goto_0

    :pswitch_5
    const-string p1, "ARIA_256_CBC"

    goto :goto_0

    :pswitch_6
    const-string p1, "ARIA_128_CBC"

    goto :goto_0

    :pswitch_7
    return-void

    :pswitch_8
    const-string p1, "CAMELLIA_256_GCM"

    goto :goto_0

    :pswitch_9
    const-string p1, "CAMELLIA_128_GCM"

    goto :goto_0

    :pswitch_a
    const-string p1, "AES_256_CCM_8"

    goto :goto_0

    :pswitch_b
    const-string p1, "AES_256_CCM"

    goto :goto_0

    :pswitch_c
    const-string p1, "AES_128_CCM_8"

    goto :goto_0

    :pswitch_d
    const-string p1, "AES_128_CCM"

    goto :goto_0

    :pswitch_e
    const-string p1, "CAMELLIA_256_CBC"

    goto :goto_0

    :pswitch_f
    const-string p1, "CAMELLIA_128_CBC"

    goto :goto_0

    :pswitch_10
    const-string p1, "AES_256_GCM"

    goto :goto_0

    :pswitch_11
    const-string p1, "AES_128_GCM"

    goto :goto_0

    :pswitch_12
    const-string p1, "AES_256_CBC"

    goto :goto_0

    :pswitch_13
    const-string p1, "AES_128_CBC"

    goto :goto_0

    :pswitch_14
    const-string p1, "3DES_EDE_CBC"

    goto :goto_0

    :cond_0
    const-string p1, "C_NULL"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static decomposeHashAlgorithm(Ljava/util/Set;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    new-array p1, v2, [Ljava/lang/String;

    const-string v0, "SM3"

    aput-object v0, p1, v4

    const-string v0, "HmacSM3"

    aput-object v0, p1, v3

    invoke-static {p0, p1}, Lorg/bouncycastle/jsse/provider/CipherSuiteInfo;->addAll(Ljava/util/Set;[Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    new-array p1, v1, [Ljava/lang/String;

    const-string v0, "SHA384"

    aput-object v0, p1, v4

    const-string v0, "SHA-384"

    aput-object v0, p1, v3

    const-string v0, "HmacSHA384"

    aput-object v0, p1, v2

    invoke-static {p0, p1}, Lorg/bouncycastle/jsse/provider/CipherSuiteInfo;->addAll(Ljava/util/Set;[Ljava/lang/String;)V

    return-void

    :cond_2
    new-array p1, v1, [Ljava/lang/String;

    const-string v0, "SHA256"

    aput-object v0, p1, v4

    const-string v0, "SHA-256"

    aput-object v0, p1, v3

    const-string v0, "HmacSHA256"

    aput-object v0, p1, v2

    invoke-static {p0, p1}, Lorg/bouncycastle/jsse/provider/CipherSuiteInfo;->addAll(Ljava/util/Set;[Ljava/lang/String;)V

    return-void
.end method

.method private static decomposeKeyExchangeAlgorithm(Ljava/util/Set;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_6

    const-string v0, "RSA"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_5

    const/4 v3, 0x4

    const-string v4, "DiffieHellman"

    const-string v5, "DHE"

    const-string v6, "DH"

    const/4 v7, 0x5

    const/4 v8, 0x2

    const/4 v9, 0x3

    if-eq p1, v9, :cond_4

    if-eq p1, v7, :cond_3

    const/16 v3, 0xb

    if-eq p1, v3, :cond_6

    const/16 v3, 0x11

    const-string v4, "ECDHE"

    if-eq p1, v3, :cond_2

    const/16 v3, 0x13

    if-eq p1, v3, :cond_1

    const/16 p0, 0x14

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    new-array p1, v9, [Ljava/lang/String;

    aput-object v4, p1, v1

    aput-object v0, p1, v2

    const-string v0, "ECDHE_RSA"

    aput-object v0, p1, v8

    invoke-static {p0, p1}, Lorg/bouncycastle/jsse/provider/CipherSuiteInfo;->addAll(Ljava/util/Set;[Ljava/lang/String;)V

    return-void

    :cond_2
    new-array p1, v9, [Ljava/lang/String;

    aput-object v4, p1, v1

    const-string v0, "ECDSA"

    aput-object v0, p1, v2

    const-string v0, "ECDHE_ECDSA"

    aput-object v0, p1, v8

    invoke-static {p0, p1}, Lorg/bouncycastle/jsse/provider/CipherSuiteInfo;->addAll(Ljava/util/Set;[Ljava/lang/String;)V

    return-void

    :cond_3
    new-array p1, v7, [Ljava/lang/String;

    aput-object v0, p1, v1

    aput-object v6, p1, v2

    aput-object v5, p1, v8

    aput-object v4, p1, v9

    const-string v0, "DHE_RSA"

    aput-object v0, p1, v3

    invoke-static {p0, p1}, Lorg/bouncycastle/jsse/provider/CipherSuiteInfo;->addAll(Ljava/util/Set;[Ljava/lang/String;)V

    return-void

    :cond_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/String;

    const-string v0, "DSA"

    aput-object v0, p1, v1

    const-string v0, "DSS"

    aput-object v0, p1, v2

    aput-object v6, p1, v8

    aput-object v5, p1, v9

    aput-object v4, p1, v3

    const-string v0, "DHE_DSS"

    aput-object v0, p1, v7

    invoke-static {p0, p1}, Lorg/bouncycastle/jsse/provider/CipherSuiteInfo;->addAll(Ljava/util/Set;[Ljava/lang/String;)V

    return-void

    :cond_5
    new-array p1, v2, [Ljava/lang/String;

    aput-object v0, p1, v1

    invoke-static {p0, p1}, Lorg/bouncycastle/jsse/provider/CipherSuiteInfo;->addAll(Ljava/util/Set;[Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private static decomposeKeyExchangeAlgorithmTLS(Ljava/util/Set;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v3, 0x5

    if-eq p1, v3, :cond_2

    const/16 v3, 0xb

    const/4 v4, 0x2

    const-string v5, "ANON"

    if-eq p1, v3, :cond_1

    const/16 v3, 0x11

    if-eq p1, v3, :cond_2

    const/16 v3, 0x13

    if-eq p1, v3, :cond_2

    const/16 v3, 0x14

    if-ne p1, v3, :cond_0

    new-array p1, v2, [Ljava/lang/String;

    aput-object v5, p1, v0

    const-string v0, "ECDH"

    aput-object v0, p1, v1

    const-string v0, "ECDH_ANON"

    aput-object v0, p1, v4

    invoke-static {p0, p1}, Lorg/bouncycastle/jsse/provider/CipherSuiteInfo;->addAll(Ljava/util/Set;[Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/String;

    aput-object v5, p1, v0

    const-string v0, "DH"

    aput-object v0, p1, v1

    const-string v0, "DiffieHellman"

    aput-object v0, p1, v4

    const-string v0, "DH_ANON"

    aput-object v0, p1, v2

    invoke-static {p0, p1}, Lorg/bouncycastle/jsse/provider/CipherSuiteInfo;->addAll(Ljava/util/Set;[Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    new-array p1, v1, [Ljava/lang/String;

    const-string v1, "K_NULL"

    aput-object v1, p1, v0

    invoke-static {p0, p1}, Lorg/bouncycastle/jsse/provider/CipherSuiteInfo;->addAll(Ljava/util/Set;[Ljava/lang/String;)V

    return-void
.end method

.method private static decomposeMACAlgorithm(Ljava/util/Set;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p2, :cond_4

    if-eq p2, v2, :cond_3

    const/4 p1, 0x3

    if-eq p2, v1, :cond_2

    if-eq p2, p1, :cond_1

    const/4 v3, 0x4

    if-ne p2, v3, :cond_0

    new-array p1, p1, [Ljava/lang/String;

    const-string p2, "SHA384"

    aput-object p2, p1, v0

    const-string p2, "SHA-384"

    aput-object p2, p1, v2

    const-string p2, "HmacSHA384"

    aput-object p2, p1, v1

    invoke-static {p0, p1}, Lorg/bouncycastle/jsse/provider/CipherSuiteInfo;->addAll(Ljava/util/Set;[Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    new-array p1, p1, [Ljava/lang/String;

    const-string p2, "SHA256"

    aput-object p2, p1, v0

    const-string p2, "SHA-256"

    aput-object p2, p1, v2

    const-string p2, "HmacSHA256"

    aput-object p2, p1, v1

    invoke-static {p0, p1}, Lorg/bouncycastle/jsse/provider/CipherSuiteInfo;->addAll(Ljava/util/Set;[Ljava/lang/String;)V

    return-void

    :cond_2
    new-array p1, p1, [Ljava/lang/String;

    const-string p2, "SHA1"

    aput-object p2, p1, v0

    const-string p2, "SHA-1"

    aput-object p2, p1, v2

    const-string p2, "HmacSHA1"

    aput-object p2, p1, v1

    invoke-static {p0, p1}, Lorg/bouncycastle/jsse/provider/CipherSuiteInfo;->addAll(Ljava/util/Set;[Ljava/lang/String;)V

    return-void

    :cond_3
    new-array p1, v1, [Ljava/lang/String;

    const-string p2, "MD5"

    aput-object p2, p1, v0

    const-string p2, "HmacMD5"

    aput-object p2, p1, v2

    invoke-static {p0, p1}, Lorg/bouncycastle/jsse/provider/CipherSuiteInfo;->addAll(Ljava/util/Set;[Ljava/lang/String;)V

    return-void

    :cond_4
    if-eq v1, p1, :cond_5

    new-array p1, v2, [Ljava/lang/String;

    const-string p2, "M_NULL"

    aput-object p2, p1, v0

    invoke-static {p0, p1}, Lorg/bouncycastle/jsse/provider/CipherSuiteInfo;->addAll(Ljava/util/Set;[Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method static forCipherSuite(ILjava/lang/String;)Lorg/bouncycastle/jsse/provider/CipherSuiteInfo;
    .locals 13

    const-string v0, "TLS_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->getEncryptionAlgorithm(I)I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->getEncryptionAlgorithmType(I)I

    move-result v1

    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/CipherSuiteInfo;->getCryptoHashAlgorithm(I)I

    move-result v2

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->getKeyExchangeAlgorithm(I)I

    move-result v3

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->getMACAlgorithm(I)I

    move-result v4

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-static {v5, v3}, Lorg/bouncycastle/jsse/provider/CipherSuiteInfo;->decomposeKeyExchangeAlgorithm(Ljava/util/Set;I)V

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v6, v3}, Lorg/bouncycastle/jsse/provider/CipherSuiteInfo;->decomposeKeyExchangeAlgorithmTLS(Ljava/util/Set;I)V

    invoke-static {v6, v0}, Lorg/bouncycastle/jsse/provider/CipherSuiteInfo;->decomposeEncryptionAlgorithm(Ljava/util/Set;I)V

    invoke-static {v6, v2}, Lorg/bouncycastle/jsse/provider/CipherSuiteInfo;->decomposeHashAlgorithm(Ljava/util/Set;I)V

    invoke-static {v6, v1, v4}, Lorg/bouncycastle/jsse/provider/CipherSuiteInfo;->decomposeMACAlgorithm(Ljava/util/Set;II)V

    if-nez v3, :cond_0

    const/4 v0, 0x1

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v10, 0x0

    :goto_0
    new-instance v7, Lorg/bouncycastle/jsse/provider/CipherSuiteInfo;

    invoke-static {v6}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v11

    invoke-static {v5}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v12

    move v8, p0

    move-object v9, p1

    invoke-direct/range {v7 .. v12}, Lorg/bouncycastle/jsse/provider/CipherSuiteInfo;-><init>(ILjava/lang/String;ZLjava/util/Set;Ljava/util/Set;)V

    return-object v7

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static getCryptoHashAlgorithm(I)I
    .locals 2

    const/16 v0, 0x40

    const/4 v1, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x41

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa2

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa3

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa6

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa7

    if-eq p0, v0, :cond_0

    sparse-switch p0, :sswitch_data_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    packed-switch p0, :pswitch_data_5

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :sswitch_0
    const/4 p0, 0x7

    return p0

    :cond_0
    :pswitch_0
    :sswitch_1
    const/4 p0, 0x5

    return p0

    :cond_1
    :pswitch_1
    :sswitch_2
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0xa -> :sswitch_2
        0x13 -> :sswitch_2
        0x16 -> :sswitch_2
        0x2f -> :sswitch_2
        0x38 -> :sswitch_2
        0x39 -> :sswitch_2
        0x3a -> :sswitch_2
        0x3b -> :sswitch_2
        0x3c -> :sswitch_2
        0x3d -> :sswitch_2
        0x67 -> :sswitch_2
        0x84 -> :sswitch_2
        0xba -> :sswitch_2
        0xc3 -> :sswitch_2
        0xc4 -> :sswitch_2
        0xc5 -> :sswitch_2
        0xc6 -> :sswitch_0
        0xc7 -> :sswitch_0
        0x1301 -> :sswitch_2
        0x1302 -> :sswitch_1
        0x1303 -> :sswitch_2
        0x1304 -> :sswitch_2
        0x1305 -> :sswitch_2
        0xc006 -> :sswitch_2
        0xc008 -> :sswitch_2
        0xc009 -> :sswitch_2
        0xc00a -> :sswitch_2
        0xc010 -> :sswitch_2
        0xc012 -> :sswitch_2
        0xc013 -> :sswitch_2
        0xc014 -> :sswitch_2
        0xc017 -> :sswitch_2
        0xc018 -> :sswitch_2
        0xc019 -> :sswitch_2
        0xc023 -> :sswitch_2
        0xc024 -> :sswitch_1
        0xc027 -> :sswitch_2
        0xc028 -> :sswitch_1
        0xc02b -> :sswitch_2
        0xc02c -> :sswitch_1
        0xc02f -> :sswitch_2
        0xc030 -> :sswitch_1
        0xc03c -> :sswitch_2
        0xc03d -> :sswitch_1
        0xc042 -> :sswitch_2
        0xc043 -> :sswitch_1
        0xc044 -> :sswitch_2
        0xc045 -> :sswitch_1
        0xc046 -> :sswitch_2
        0xc047 -> :sswitch_1
        0xc048 -> :sswitch_2
        0xc049 -> :sswitch_1
        0xc04c -> :sswitch_2
        0xc04d -> :sswitch_1
        0xc050 -> :sswitch_2
        0xc051 -> :sswitch_1
        0xc052 -> :sswitch_2
        0xc053 -> :sswitch_1
        0xc056 -> :sswitch_2
        0xc057 -> :sswitch_1
        0xc05a -> :sswitch_2
        0xc05b -> :sswitch_1
        0xc05c -> :sswitch_2
        0xc05d -> :sswitch_1
        0xc060 -> :sswitch_2
        0xc061 -> :sswitch_1
        0xc072 -> :sswitch_2
        0xc073 -> :sswitch_1
        0xc076 -> :sswitch_2
        0xc077 -> :sswitch_1
        0xc07a -> :sswitch_2
        0xc07b -> :sswitch_1
        0xc07c -> :sswitch_2
        0xc07d -> :sswitch_1
        0xc080 -> :sswitch_2
        0xc081 -> :sswitch_1
        0xc084 -> :sswitch_2
        0xc085 -> :sswitch_1
        0xc086 -> :sswitch_2
        0xc087 -> :sswitch_1
        0xc08a -> :sswitch_2
        0xc08b -> :sswitch_1
        0xc09c -> :sswitch_2
        0xc09d -> :sswitch_2
        0xc09e -> :sswitch_2
        0xc09f -> :sswitch_2
        0xc0a0 -> :sswitch_2
        0xc0a1 -> :sswitch_2
        0xc0a2 -> :sswitch_2
        0xc0a3 -> :sswitch_2
        0xc0ac -> :sswitch_2
        0xc0ad -> :sswitch_2
        0xc0ae -> :sswitch_2
        0xc0af -> :sswitch_2
        0xcca8 -> :sswitch_2
        0xcca9 -> :sswitch_2
        0xccaa -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x44
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x6a
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x87
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x9c
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xbd
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static getTransformation(I)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_0
    const-string p0, "SM4/CBC/NoPadding"

    return-object p0

    :pswitch_1
    const-string p0, "SM4/GCM/NoPadding"

    return-object p0

    :pswitch_2
    const-string p0, "SM4/CCM/NoPadding"

    return-object p0

    :pswitch_3
    const-string p0, "ARIA/GCM/NoPadding"

    return-object p0

    :pswitch_4
    const-string p0, "ARIA/CBC/NoPadding"

    return-object p0

    :pswitch_5
    const-string p0, "ChaCha20-Poly1305"

    return-object p0

    :pswitch_6
    const-string p0, "Camellia/GCM/NoPadding"

    return-object p0

    :pswitch_7
    const-string p0, "AES/CCM/NoPadding"

    return-object p0

    :pswitch_8
    const-string p0, "Camellia/CBC/NoPadding"

    return-object p0

    :pswitch_9
    const-string p0, "AES/GCM/NoPadding"

    return-object p0

    :pswitch_a
    const-string p0, "AES/CBC/NoPadding"

    return-object p0

    :pswitch_b
    const-string p0, "DESede/CBC/NoPadding"

    return-object p0

    :cond_0
    const-string p0, "NULL"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getCipherSuite()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/jsse/provider/CipherSuiteInfo;->cipherSuite:I

    return v0
.end method

.method public getDecompositionTLS()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/CipherSuiteInfo;->decompositionTLS:Ljava/util/Set;

    return-object v0
.end method

.method public getDecompositionX509()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/CipherSuiteInfo;->decompositionX509:Ljava/util/Set;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/CipherSuiteInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method isTLSv13()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/jsse/provider/CipherSuiteInfo;->isTLSv13:Z

    return v0
.end method
