.class public final Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;
.super Ljava/lang/Object;
.source "AirPlayCrypto.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/airplay/AirPlayCrypto$Ed25519KeyPair;,
        Lcom/shilapi/xcertplay/airplay/AirPlayCrypto$X25519KeyPair;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010\u0011\n\u0002\u0008\n\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u000212B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\n\u001a\u00020\u000bJ\u0016\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\rJ\u0006\u0010\u0010\u001a\u00020\u0011J\u0016\u0010\u0012\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\rJ\u001e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\rJ(\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\r2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0005J\u001f\u0010\u001d\u001a\u00020\r2\u0012\u0010\u001e\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\r0\u001f\"\u00020\r\u00a2\u0006\u0002\u0010 J(\u0010!\u001a\u00020\r2\u0006\u0010\"\u001a\u00020\r2\u0006\u0010#\u001a\u00020\r2\u0006\u0010$\u001a\u00020\r2\u0008\u0008\u0002\u0010%\u001a\u00020\rJ(\u0010&\u001a\u00020\r2\u0006\u0010\"\u001a\u00020\r2\u0006\u0010#\u001a\u00020\r2\u0006\u0010\'\u001a\u00020\r2\u0008\u0008\u0002\u0010%\u001a\u00020\rJ\u000e\u0010(\u001a\u00020\r2\u0006\u0010)\u001a\u00020*J\u000e\u0010+\u001a\u00020\r2\u0006\u0010,\u001a\u00020-J%\u0010.\u001a\u00020\r2\u0006\u0010.\u001a\u00020/2\u000e\u0010\u001e\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\r0\u001fH\u0002\u00a2\u0006\u0002\u00100R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00063"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;",
        "",
        "<init>",
        "()V",
        "MAC_BITS",
        "",
        "NONCE_SIZE",
        "LABEL_SIZE",
        "random",
        "Ljava/security/SecureRandom;",
        "x25519Generate",
        "Lcom/shilapi/xcertplay/airplay/AirPlayCrypto$X25519KeyPair;",
        "x25519Shared",
        "",
        "privateKeyRaw",
        "peerPublicKeyRaw",
        "ed25519Generate",
        "Lcom/shilapi/xcertplay/airplay/AirPlayCrypto$Ed25519KeyPair;",
        "ed25519Sign",
        "data",
        "ed25519Verify",
        "",
        "publicKeyRaw",
        "signature",
        "hkdfSha512",
        "inputKeyMaterial",
        "salt",
        "info",
        "length",
        "sha512",
        "parts",
        "",
        "([[B)[B",
        "chachaSeal",
        "key",
        "nonce",
        "plaintext",
        "aad",
        "chachaOpen",
        "ciphertextAndTag",
        "nonce64",
        "counter",
        "",
        "nonceLabel",
        "label",
        "",
        "digest",
        "Lorg/bouncycastle/crypto/Digest;",
        "(Lorg/bouncycastle/crypto/Digest;[[B)[B",
        "X25519KeyPair",
        "Ed25519KeyPair",
        "shared_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;

.field private static final LABEL_SIZE:I = 0x8

.field private static final MAC_BITS:I = 0x80

.field private static final NONCE_SIZE:I = 0xc

.field private static final random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;

    .line 22
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic chachaOpen$default(Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;[B[B[B[BILjava/lang/Object;)[B
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 94
    new-array p4, p4, [B

    .line 90
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->chachaOpen([B[B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic chachaSeal$default(Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;[B[B[B[BILjava/lang/Object;)[B
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 80
    new-array p4, p4, [B

    .line 76
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->chachaSeal([B[B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method private final digest(Lorg/bouncycastle/crypto/Digest;[[B)[B
    .locals 5

    .line 125
    move-object v0, p2

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p2, v2

    array-length v4, v3

    invoke-interface {p1, v3, v1, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    :cond_0
    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p2

    new-array p2, p2, [B

    .line 127
    invoke-interface {p1, p2, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-object p2
.end method

.method public static synthetic hkdfSha512$default(Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;[B[B[BIILjava/lang/Object;)[B
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/16 p4, 0x20

    .line 61
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->hkdfSha512([B[B[BI)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final chachaOpen([B[B[B[B)[B
    .locals 7

    invoke-static {p1, p2, p3, p4}, Lcom/shilapi/xcertplay/E01VideoCrypto;->open([B[B[B[B)[B

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nonce"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ciphertextAndTag"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aad"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    new-instance v1, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;-><init>()V

    .line 97
    new-instance v0, Lorg/bouncycastle/crypto/params/AEADParameters;

    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v2, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    const/16 p1, 0x80

    invoke-direct {v0, v2, p1, p2, p4}, Lorg/bouncycastle/crypto/params/AEADParameters;-><init>(Lorg/bouncycastle/crypto/params/KeyParameter;I[B[B)V

    check-cast v0, Lorg/bouncycastle/crypto/CipherParameters;

    const/4 p1, 0x0

    invoke-virtual {v1, p1, v0}, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 98
    array-length p1, p3

    invoke-virtual {v1, p1}, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->getOutputSize(I)I

    move-result p1

    new-array v5, p1, [B

    .line 99
    array-length v4, p3

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v2, p3

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->processBytes([BII[BI)I

    move-result p2

    .line 100
    invoke-virtual {v1, v5, p2}, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->doFinal([BI)I

    move-result p3

    add-int/2addr p2, p3

    if-ne p2, p1, :cond_1

    return-object v5

    .line 102
    :cond_1
    invoke-static {v5, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const-string p2, "copyOf(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final chachaSeal([B[B[B[B)[B
    .locals 7

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nonce"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "plaintext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aad"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    new-instance v1, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;-><init>()V

    .line 83
    new-instance v0, Lorg/bouncycastle/crypto/params/AEADParameters;

    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v2, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    const/16 p1, 0x80

    invoke-direct {v0, v2, p1, p2, p4}, Lorg/bouncycastle/crypto/params/AEADParameters;-><init>(Lorg/bouncycastle/crypto/params/KeyParameter;I[B[B)V

    check-cast v0, Lorg/bouncycastle/crypto/CipherParameters;

    const/4 p1, 0x1

    invoke-virtual {v1, p1, v0}, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 84
    array-length p1, p3

    invoke-virtual {v1, p1}, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->getOutputSize(I)I

    move-result p1

    new-array v5, p1, [B

    .line 85
    array-length v4, p3

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v2, p3

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->processBytes([BII[BI)I

    move-result p1

    .line 86
    invoke-virtual {v1, v5, p1}, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;->doFinal([BI)I

    return-object v5
.end method

.method public final ed25519Generate()Lcom/shilapi/xcertplay/airplay/AirPlayCrypto$Ed25519KeyPair;
    .locals 4

    .line 41
    new-instance v0, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;

    sget-object v1, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->random:Ljava/security/SecureRandom;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;-><init>(Ljava/security/SecureRandom;)V

    .line 42
    new-instance v1, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto$Ed25519KeyPair;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;->getEncoded()[B

    move-result-object v2

    const-string v3, "getEncoded(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;->generatePublicKey()Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;->getEncoded()[B

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, v0}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto$Ed25519KeyPair;-><init>([B[B)V

    return-object v1
.end method

.method public final ed25519Sign([B[B)[B
    .locals 3

    const-string v0, "privateKeyRaw"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v0, Lorg/bouncycastle/crypto/signers/Ed25519Signer;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/signers/Ed25519Signer;-><init>()V

    .line 47
    new-instance v1, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;-><init>([BI)V

    check-cast v1, Lorg/bouncycastle/crypto/CipherParameters;

    const/4 p1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/bouncycastle/crypto/signers/Ed25519Signer;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 48
    array-length p1, p2

    invoke-virtual {v0, p2, v2, p1}, Lorg/bouncycastle/crypto/signers/Ed25519Signer;->update([BII)V

    .line 49
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/signers/Ed25519Signer;->generateSignature()[B

    move-result-object p1

    const-string p2, "generateSignature(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final ed25519Verify([B[B[B)Z
    .locals 3

    const-string v0, "publicKeyRaw"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "signature"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 53
    :try_start_0
    new-instance v1, Lorg/bouncycastle/crypto/signers/Ed25519Signer;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/signers/Ed25519Signer;-><init>()V

    .line 54
    new-instance v2, Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;

    invoke-direct {v2, p1, v0}, Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;-><init>([BI)V

    check-cast v2, Lorg/bouncycastle/crypto/CipherParameters;

    invoke-virtual {v1, v0, v2}, Lorg/bouncycastle/crypto/signers/Ed25519Signer;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 55
    array-length p1, p2

    invoke-virtual {v1, p2, v0, p1}, Lorg/bouncycastle/crypto/signers/Ed25519Signer;->update([BII)V

    .line 56
    invoke-virtual {v1, p3}, Lorg/bouncycastle/crypto/signers/Ed25519Signer;->verifySignature([B)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method public final hkdfSha512([B[B[BI)[B
    .locals 2

    const-string v0, "inputKeyMaterial"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "salt"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    new-instance v0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    check-cast v1, Lorg/bouncycastle/crypto/Digest;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 68
    new-instance v1, Lorg/bouncycastle/crypto/params/HKDFParameters;

    invoke-direct {v1, p1, p2, p3}, Lorg/bouncycastle/crypto/params/HKDFParameters;-><init>([B[B[B)V

    check-cast v1, Lorg/bouncycastle/crypto/DerivationParameters;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->init(Lorg/bouncycastle/crypto/DerivationParameters;)V

    .line 69
    new-array p1, p4, [B

    const/4 p2, 0x0

    .line 70
    invoke-virtual {v0, p1, p2, p4}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->generateBytes([BII)I

    return-object p1
.end method

.method public final nonce64(J)[B
    .locals 4

    const/16 v0, 0xc

    .line 107
    new-array v1, v0, [B

    const/4 v2, 0x4

    :goto_0
    if-ge v2, v0, :cond_0

    long-to-int v3, p1

    int-to-byte v3, v3

    .line 110
    aput-byte v3, v1, v2

    const/16 v3, 0x8

    ushr-long/2addr p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final nonceLabel(Ljava/lang/String;)[B
    .locals 4

    const-string v0, "label"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xc

    .line 118
    new-array v0, v0, [B

    .line 119
    invoke-static {p1}, Lcom/shilapi/xcertplay/airplay/BytesKt;->asciiBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 120
    array-length v1, p1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {p1, v0, v2, v3, v1}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    return-object v0
.end method

.method public final varargs sha512([[B)[B
    .locals 1

    const-string v0, "parts"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    check-cast v0, Lorg/bouncycastle/crypto/Digest;

    invoke-direct {p0, v0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->digest(Lorg/bouncycastle/crypto/Digest;[[B)[B

    move-result-object p1

    return-object p1
.end method

.method public final x25519Generate()Lcom/shilapi/xcertplay/airplay/AirPlayCrypto$X25519KeyPair;
    .locals 4

    .line 28
    new-instance v0, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;

    sget-object v1, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->random:Ljava/security/SecureRandom;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;-><init>(Ljava/security/SecureRandom;)V

    .line 29
    new-instance v1, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto$X25519KeyPair;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;->getEncoded()[B

    move-result-object v2

    const-string v3, "getEncoded(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;->generatePublicKey()Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;->getEncoded()[B

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, v0}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto$X25519KeyPair;-><init>([B[B)V

    return-object v1
.end method

.method public final x25519Shared([B[B)[B
    .locals 2

    const-string v0, "privateKeyRaw"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "peerPublicKeyRaw"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v0, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;-><init>([BI)V

    .line 34
    new-instance p1, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    invoke-direct {p1, p2, v1}, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;-><init>([BI)V

    const/16 p2, 0x20

    .line 35
    new-array p2, p2, [B

    .line 36
    invoke-virtual {v0, p1, p2, v1}, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;->generateSecret(Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;[BI)V

    return-object p2
.end method
