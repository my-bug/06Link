.class public final Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;


# static fields
.field public static final KEY_SIZE:I = 0x20

.field public static final SIGNATURE_SIZE:I = 0x40


# instance fields
.field private cachedPublicKey:Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;

.field private final data:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    const/16 v0, 0x20

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;->data:[B

    invoke-static {p1, v1}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result p1

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    const-string v0, "EOF encountered in middle of Ed25519 private key"

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;->data:[B

    invoke-static {p1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->generatePrivateKey(Ljava/security/SecureRandom;[B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-static {p1}, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;->validate([B)[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    const/16 v0, 0x20

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;->data:[B

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private static validate([B)[B
    .locals 2

    array-length v0, p0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'buf\' must have length 32"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public encode([BI)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;->data:[B

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public generatePublicKey()Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;->data:[B

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;->cachedPublicKey:Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;

    if-nez v1, :cond_0

    new-instance v1, Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;

    iget-object v2, p0, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;->data:[B

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->generatePublicKey([BI)Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;)V

    iput-object v1, p0, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;->cachedPublicKey:Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;->cachedPublicKey:Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;->data:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public sign(ILorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;[B[BII[BI)V
    .locals 0

    move p2, p1

    move-object p1, p0

    invoke-virtual/range {p1 .. p8}, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;->sign(I[B[BII[BI)V

    return-void
.end method

.method public sign(I[B[BII[BI)V
    .locals 12

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;->generatePublicKey()Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;

    move-result-object v0

    const/16 v1, 0x20

    new-array v4, v1, [B

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;->encode([BI)V

    const-string v0, "ctx"

    if-eqz p1, :cond_7

    const/4 v1, 0x1

    const-string v2, "\'ctx\' cannot be null"

    const/16 v3, 0xff

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    if-eqz p2, :cond_2

    array-length p1, p2

    if-gt p1, v3, :cond_1

    const/16 p1, 0x40

    move/from16 v8, p5

    if-ne p1, v8, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;->data:[B

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v6, p2

    move-object v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-static/range {v2 .. v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->signPrehash([BI[BI[B[BI[BI)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "msgLen"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "algorithm"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    move/from16 v8, p5

    if-eqz p2, :cond_6

    array-length p1, p2

    if-gt p1, v3, :cond_5

    iget-object v2, p0, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;->data:[B

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v10, p6

    move/from16 v11, p7

    move v9, v8

    move/from16 v8, p4

    invoke-static/range {v2 .. v11}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->sign([BI[BI[B[BII[BI)V

    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    if-nez p2, :cond_8

    iget-object v2, p0, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;->data:[B

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-static/range {v2 .. v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->sign([BI[BI[BII[BI)V

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
