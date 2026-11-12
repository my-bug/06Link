.class final Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;
.super Ljava/lang/Object;
.source "LockdownPairRecord.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator$DerReader;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLockdownPairRecord.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockdownPairRecord.kt\ncom/shilapi/xcertplay/transport/CertificateMaterialGenerator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,434:1\n1#2:435\n37#3:436\n36#3,3:437\n488#4,11:440\n1563#5:451\n1634#5,3:452\n1869#5,2:455\n13472#6,2:457\n*S KotlinDebug\n*F\n+ 1 LockdownPairRecord.kt\ncom/shilapi/xcertplay/transport/CertificateMaterialGenerator\n*L\n289#1:436\n289#1:437,3\n301#1:440,11\n355#1:451\n355#1:452,3\n361#1:455,2\n395#1:457,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0010\u0011\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c2\u0002\u0018\u00002\u00020\u0001:\u0001HB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000bJ@\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u000bH\u0002J \u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u0008\u0010\u001f\u001a\u00020\u000bH\u0002J\u0018\u0010 \u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\u00142\u0006\u0010\"\u001a\u00020#H\u0002J \u0010$\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020#2\u0006\u0010(\u001a\u00020\u000bH\u0002J\u0010\u0010)\u001a\u00020\u00142\u0006\u0010*\u001a\u00020\u000bH\u0002J\u0010\u0010+\u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\u0014H\u0002J\u0012\u0010,\u001a\u00020\u000b2\u0008\u0010-\u001a\u0004\u0018\u00010&H\u0002J\u0018\u0010*\u001a\u00020\u000b2\u0006\u0010.\u001a\u00020&2\u0006\u0010/\u001a\u00020\u000bH\u0002J\u0010\u00100\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020&H\u0002J!\u00101\u001a\u00020\u000b2\u0012\u00102\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000b03\"\u00020\u000bH\u0002\u00a2\u0006\u0002\u00104J!\u00105\u001a\u00020\u000b2\u0012\u00102\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000b03\"\u00020\u000bH\u0002\u00a2\u0006\u0002\u00104J\u0018\u00106\u001a\u00020\u000b2\u0006\u00107\u001a\u00020\u00052\u0006\u0010(\u001a\u00020\u000bH\u0002J\u0010\u00108\u001a\u00020\u000b2\u0006\u0010(\u001a\u00020&H\u0002J\u0010\u00109\u001a\u00020\u000b2\u0006\u0010:\u001a\u00020\u0007H\u0002J\u0010\u0010;\u001a\u00020\u000b2\u0006\u0010(\u001a\u00020<H\u0002J\u0010\u0010=\u001a\u00020\u000b2\u0006\u0010(\u001a\u00020#H\u0002J\u0010\u0010>\u001a\u00020\u000b2\u0006\u0010(\u001a\u00020\u000bH\u0002J\u001a\u0010?\u001a\u00020\u000b2\u0006\u0010(\u001a\u00020\u000b2\u0008\u0008\u0002\u0010@\u001a\u00020\u0005H\u0002J\u0010\u0010A\u001a\u00020\u000b2\u0006\u0010(\u001a\u00020&H\u0002J\u0018\u0010B\u001a\u00020\u001c2\u0006\u0010C\u001a\u00020D2\u0006\u0010(\u001a\u00020\u0007H\u0002J\u0018\u0010/\u001a\u00020\u000b2\u0006\u0010E\u001a\u00020\u00052\u0006\u0010F\u001a\u00020\u000bH\u0002J!\u0010G\u001a\u00020\u000b2\u0012\u00102\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000b03\"\u00020\u000bH\u0002\u00a2\u0006\u0002\u00104R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006I"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;",
        "",
        "<init>",
        "()V",
        "RSA_KEY_BITS",
        "",
        "CERTIFICATE_LIFETIME_SECONDS",
        "",
        "MILLIS_PER_SECOND",
        "UTC_TIME_LAST_YEAR",
        "sha256WithRsa",
        "",
        "rsaEncryption",
        "generate",
        "Lcom/shilapi/xcertplay/transport/CertificateMaterial;",
        "devicePublicKeyPem",
        "certificate",
        "issuer",
        "subject",
        "certificatePublicKey",
        "Ljava/security/interfaces/RSAPublicKey;",
        "signingKey",
        "Ljava/security/PrivateKey;",
        "signingPublicKey",
        "Ljava/security/PublicKey;",
        "nowMillis",
        "extensions",
        "verifyGeneratedCertificate",
        "",
        "tbs",
        "signature",
        "rootExtensions",
        "leafExtensions",
        "publicKey",
        "includeSubjectKeyIdentifier",
        "",
        "extension",
        "oid",
        "",
        "critical",
        "value",
        "parsePkcs1RsaPublicKey",
        "pem",
        "pkcs1PublicKey",
        "distinguishedName",
        "commonName",
        "label",
        "der",
        "algorithmIdentifier",
        "sequence",
        "values",
        "",
        "([[B)[B",
        "set",
        "explicit",
        "number",
        "utf8String",
        "certificateTime",
        "valueMillis",
        "integer",
        "Ljava/math/BigInteger;",
        "boolean",
        "octetString",
        "bitString",
        "unusedBits",
        "objectIdentifier",
        "writeBase128",
        "output",
        "Ljava/io/ByteArrayOutputStream;",
        "tag",
        "content",
        "concatenate",
        "DerReader",
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
.field private static final CERTIFICATE_LIFETIME_SECONDS:J = 0x12cc0300L

.field public static final INSTANCE:Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;

.field private static final MILLIS_PER_SECOND:J = 0x3e8L

.field private static final RSA_KEY_BITS:I = 0x800

.field private static final UTC_TIME_LAST_YEAR:I = 0x801

.field private static final rsaEncryption:[B

.field private static final sha256WithRsa:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->INSTANCE:Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;

    .line 173
    const-string v1, "1.2.840.113549.1.1.11"

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->algorithmIdentifier(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->sha256WithRsa:[B

    .line 174
    const-string v1, "1.2.840.113549.1.1.1"

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->algorithmIdentifier(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->rsaEncryption:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final algorithmIdentifier(Ljava/lang/String;)[B
    .locals 3

    .line 324
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->objectIdentifier(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [B

    const/4 v2, 0x5

    invoke-direct {p0, v2, v1}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->der(I[B)[B

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [[B

    aput-object p1, v2, v0

    const/4 p1, 0x1

    aput-object v1, v2, p1

    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->sequence([[B)[B

    move-result-object p1

    return-object p1
.end method

.method private final bitString([BI)[B
    .locals 2

    if-ltz p2, :cond_0

    const/16 v0, 0x8

    if-ge p2, v0, :cond_0

    int-to-byte p2, p2

    const/4 v0, 0x1

    .line 351
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p2, v0, v1

    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->der(I[B)[B

    move-result-object p1

    return-object p1

    .line 350
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid number of unused bits"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic bitString$default(Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;[BIILjava/lang/Object;)[B
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 349
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->bitString([BI)[B

    move-result-object p0

    return-object p0
.end method

.method private final boolean(Z)[B
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x1

    .line 347
    new-array v2, v1, [B

    aput-byte p1, v2, v0

    invoke-direct {p0, v1, v2}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->der(I[B)[B

    move-result-object p1

    return-object p1
.end method

.method private final certificate([B[BLjava/security/interfaces/RSAPublicKey;Ljava/security/PrivateKey;Ljava/security/PublicKey;J[B)[B
    .locals 11

    move-wide/from16 v0, p6

    .line 231
    invoke-direct {p0, p3}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->pkcs1PublicKey(Ljava/security/interfaces/RSAPublicKey;)[B

    move-result-object p3

    const-wide v2, 0x496cebb800L

    add-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v6, v4, v0

    if-gtz v6, :cond_0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const-wide/16 v4, 0x2

    .line 235
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    const-string/jumbo v5, "valueOf(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->integer(Ljava/math/BigInteger;)[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v5, v4}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->explicit(I[B)[B

    move-result-object v4

    .line 236
    sget-object v6, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const-string v7, "ZERO"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->integer(Ljava/math/BigInteger;)[B

    move-result-object v6

    .line 237
    sget-object v7, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->sha256WithRsa:[B

    .line 240
    invoke-direct {p0, v0, v1}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->certificateTime(J)[B

    move-result-object v0

    .line 241
    invoke-direct {p0, v2, v3}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->certificateTime(J)[B

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [[B

    aput-object v0, v3, v5

    const/4 v0, 0x1

    aput-object v1, v3, v0

    .line 239
    invoke-direct {p0, v3}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->sequence([[B)[B

    move-result-object v1

    const/4 v3, 0x0

    .line 244
    invoke-static {p0, p3, v5, v2, v3}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->bitString$default(Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;[BIILjava/lang/Object;)[B

    move-result-object p3

    new-array v8, v2, [[B

    sget-object v9, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->rsaEncryption:[B

    aput-object v9, v8, v5

    aput-object p3, v8, v0

    invoke-direct {p0, v8}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->sequence([[B)[B

    move-result-object p3

    const/4 v8, 0x3

    move-object/from16 v9, p8

    .line 245
    invoke-direct {p0, v8, v9}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->explicit(I[B)[B

    move-result-object v9

    const/16 v10, 0x8

    new-array v10, v10, [[B

    aput-object v4, v10, v5

    aput-object v6, v10, v0

    aput-object v7, v10, v2

    aput-object p1, v10, v8

    const/4 p1, 0x4

    aput-object v1, v10, p1

    const/4 p1, 0x5

    aput-object p2, v10, p1

    const/4 p1, 0x6

    aput-object p3, v10, p1

    const/4 p1, 0x7

    aput-object v9, v10, p1

    .line 234
    invoke-direct {p0, v10}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->sequence([[B)[B

    move-result-object p1

    .line 247
    const-string p2, "SHA256withRSA"

    invoke-static {p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p2

    .line 248
    invoke-virtual {p2, p4}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 249
    invoke-virtual {p2, p1}, Ljava/security/Signature;->update([B)V

    .line 251
    invoke-virtual {p2}, Ljava/security/Signature;->sign()[B

    move-result-object p2

    .line 252
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0, p2, v5, v2, v3}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->bitString$default(Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;[BIILjava/lang/Object;)[B

    move-result-object p3

    new-array v1, v8, [[B

    aput-object p1, v1, v5

    aput-object v7, v1, v0

    aput-object p3, v1, v2

    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->sequence([[B)[B

    move-result-object p3

    move-object/from16 v0, p5

    .line 253
    invoke-direct {p0, p1, p2, v0}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->verifyGeneratedCertificate([B[BLjava/security/PublicKey;)V

    return-object p3

    .line 233
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid certificate validity"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final certificateTime(J)[B
    .locals 6

    .line 331
    const-string v0, "UTC"

    invoke-static {v0}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 332
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 333
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0x801

    if-gt v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 335
    :goto_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    if-eqz v1, :cond_1

    .line 336
    const-string/jumbo v4, "yyMMddHHmmss\'Z\'"

    goto :goto_1

    :cond_1
    const-string/jumbo v4, "yyyyMMddHHmmss\'Z\'"

    .line 337
    :goto_1
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 335
    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 338
    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    if-eqz v1, :cond_2

    const/16 v0, 0x17

    goto :goto_2

    :cond_2
    const/16 v0, 0x18

    .line 339
    :goto_2
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lj$/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    const-string v1, "US_ASCII"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string p2, "getBytes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->der(I[B)[B

    move-result-object p1

    return-object p1
.end method

.method private final varargs concatenate([[B)[B
    .locals 5

    .line 394
    check-cast p1, [Ljava/lang/Object;

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v4, p1, v2

    check-cast v4, [B

    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 457
    array-length v2, p1

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, p1, v1

    check-cast v3, [B

    .line 395
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 396
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const-string/jumbo v0, "toByteArray(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final der(I[B)[B
    .locals 4

    .line 379
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v1, p2

    add-int/lit8 v1, v1, 0x6

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 380
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 381
    array-length p1, p2

    const/16 v1, 0x80

    if-ge p1, v1, :cond_0

    array-length p1, p2

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 382
    :cond_0
    array-length p1, p2

    const/4 v1, 0x4

    .line 383
    new-array v2, v1, [B

    :goto_0
    if-eqz p1, :cond_1

    add-int/lit8 v1, v1, -0x1

    int-to-byte v3, p1

    .line 385
    aput-byte v3, v2, v1

    ushr-int/lit8 p1, p1, 0x8

    goto :goto_0

    :cond_1
    rsub-int/lit8 p1, v1, 0x4

    or-int/lit16 v3, p1, 0x80

    .line 386
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 387
    invoke-virtual {v0, v2, v1, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 389
    :goto_1
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 390
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const-string/jumbo p2, "toByteArray(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final distinguishedName(Ljava/lang/String;)[B
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 317
    new-array p1, v0, [[B

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->sequence([[B)[B

    move-result-object p1

    return-object p1

    :cond_0
    const-string v1, "2.5.4.3"

    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->objectIdentifier(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->utf8String(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v2, 0x2

    new-array v2, v2, [[B

    aput-object v1, v2, v0

    const/4 v1, 0x1

    aput-object p1, v2, v1

    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->sequence([[B)[B

    move-result-object p1

    new-array v2, v1, [[B

    aput-object p1, v2, v0

    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->set([[B)[B

    move-result-object p1

    new-array v1, v1, [[B

    aput-object p1, v1, v0

    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->sequence([[B)[B

    move-result-object p1

    return-object p1
.end method

.method private final explicit(I[B)[B
    .locals 0

    add-int/lit16 p1, p1, 0xa0

    .line 327
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->der(I[B)[B

    move-result-object p1

    return-object p1
.end method

.method private final extension(Ljava/lang/String;Z[B)[B
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    .line 293
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->objectIdentifier(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->boolean(Z)[B

    move-result-object p2

    invoke-direct {p0, p3}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->octetString([B)[B

    move-result-object p3

    const/4 v3, 0x3

    new-array v3, v3, [[B

    aput-object p1, v3, v0

    aput-object p2, v3, v2

    aput-object p3, v3, v1

    invoke-direct {p0, v3}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->sequence([[B)[B

    move-result-object p1

    return-object p1

    .line 294
    :cond_0
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->objectIdentifier(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p3}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->octetString([B)[B

    move-result-object p2

    new-array p3, v1, [[B

    aput-object p1, p3, v0

    aput-object p2, p3, v2

    invoke-direct {p0, p3}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->sequence([[B)[B

    move-result-object p1

    return-object p1
.end method

.method private final integer(Ljava/math/BigInteger;)[B
    .locals 1

    .line 343
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    .line 344
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    const-string/jumbo v0, "toByteArray(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->der(I[B)[B

    move-result-object p1

    return-object p1

    .line 343
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "DER integer must be non-negative"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final leafExtensions(Ljava/security/interfaces/RSAPublicKey;Z)[B
    .locals 4

    const/4 v0, 0x0

    .line 275
    new-array v1, v0, [[B

    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->sequence([[B)[B

    move-result-object v1

    const-string v2, "2.5.29.19"

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3, v1}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->extension(Ljava/lang/String;Z[B)[B

    move-result-object v1

    new-array v2, v3, [[B

    aput-object v1, v2, v0

    check-cast v2, [Ljava/lang/Object;

    .line 274
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    if-eqz p2, :cond_0

    .line 278
    move-object p2, v1

    check-cast p2, Ljava/util/Collection;

    .line 281
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->pkcs1PublicKey(Ljava/security/interfaces/RSAPublicKey;)[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    const-string v2, "digest(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->octetString([B)[B

    move-result-object p1

    .line 278
    const-string v2, "2.5.29.14"

    invoke-direct {p0, v2, v0, p1}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->extension(Ljava/lang/String;Z[B)[B

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 284
    :cond_0
    check-cast v1, Ljava/util/Collection;

    .line 287
    new-array p1, v3, [B

    const/16 p2, -0x60

    aput-byte p2, p1, v0

    const/4 p2, 0x5

    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->bitString([BI)[B

    move-result-object p1

    .line 284
    const-string p2, "2.5.29.15"

    invoke-direct {p0, p2, v3, p1}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->extension(Ljava/lang/String;Z[B)[B

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 439
    new-array p1, v0, [[B

    invoke-interface {v1, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 289
    check-cast p1, [[B

    check-cast p1, [Ljava/lang/Object;

    array-length p2, p1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[B

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->sequence([[B)[B

    move-result-object p1

    return-object p1
.end method

.method private final objectIdentifier(Ljava/lang/String;)[B
    .locals 11

    .line 355
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 p1, 0x1

    new-array v1, p1, [C

    const/4 v6, 0x0

    const/16 v2, 0x2e

    aput-char v2, v1, v6

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 451
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 452
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 453
    check-cast v2, Ljava/lang/String;

    .line 355
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 453
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 454
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 356
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const-string v2, "Invalid object identifier"

    const/4 v3, 0x2

    if-lt v0, v3, :cond_4

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    const-wide/16 v7, 0x0

    cmp-long v0, v7, v4

    if-gtz v0, :cond_4

    const-wide/16 v9, 0x3

    cmp-long v0, v4, v9

    if-gez v0, :cond_4

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    cmp-long v0, v4, v7

    if-ltz v0, :cond_4

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    const-wide/16 v9, 0x2

    cmp-long v0, v4, v9

    if-eqz v0, :cond_1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    const-wide/16 v9, 0x28

    cmp-long v0, v4, v9

    if-gez v0, :cond_4

    .line 359
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 360
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    const/16 v6, 0x28

    int-to-long v9, v6

    mul-long v4, v4, v9

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    add-long/2addr v4, v9

    invoke-direct {p0, v0, v4, v5}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->writeBase128(Ljava/io/ByteArrayOutputStream;J)V

    .line 361
    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->drop(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 455
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    cmp-long v1, v3, v7

    if-ltz v1, :cond_2

    .line 361
    sget-object v1, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->INSTANCE:Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;

    invoke-direct {v1, v0, v3, v4}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->writeBase128(Ljava/io/ByteArrayOutputStream;J)V

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 362
    :cond_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const-string/jumbo v0, "toByteArray(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->der(I[B)[B

    move-result-object p1

    return-object p1

    .line 356
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private final octetString([B)[B
    .locals 1

    const/4 v0, 0x4

    .line 348
    invoke-direct {p0, v0, p1}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->der(I[B)[B

    move-result-object p1

    return-object p1
.end method

.method private final parsePkcs1RsaPublicKey([B)Ljava/security/interfaces/RSAPublicKey;
    .locals 4

    .line 297
    sget-object v0, Lj$/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    const-string v1, "US_ASCII"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 300
    const-string v0, "-----BEGIN RSA PUBLIC KEY-----"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "-----END RSA PUBLIC KEY-----"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 301
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1c

    const/16 v2, 0x1e

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "substring(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 440
    check-cast p1, Ljava/lang/CharSequence;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v0, Ljava/lang/Appendable;

    .line 449
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 301
    invoke-static {v2}, Lkotlin/text/CharsKt;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 449
    invoke-interface {v0, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 450
    :cond_1
    check-cast v0, Ljava/lang/StringBuilder;

    .line 440
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 302
    invoke-static {}, Lj$/util/Base64;->getDecoder()Lj$/util/Base64$Decoder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lj$/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    .line 303
    new-instance v0, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator$DerReader;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, p1}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator$DerReader;-><init>([B)V

    const/16 p1, 0x30

    .line 304
    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator$DerReader;->readConstructed(I)Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator$DerReader;

    move-result-object p1

    .line 305
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator$DerReader;->readPositiveInteger()Ljava/math/BigInteger;

    move-result-object v1

    .line 306
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator$DerReader;->readPositiveInteger()Ljava/math/BigInteger;

    move-result-object v2

    .line 307
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator$DerReader;->exhausted()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator$DerReader;->exhausted()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 308
    const-string p1, "RSA"

    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    new-instance v0, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v0, v1, v2}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    check-cast v0, Ljava/security/spec/KeySpec;

    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type java.security.interfaces.RSAPublicKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    return-object p1

    .line 307
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Trailing data in RSA public key"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 300
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Expected a PKCS#1 RSA public key"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private final pem(Ljava/lang/String;[B)[B
    .locals 3

    const/4 v0, 0x1

    .line 320
    new-array v0, v0, [B

    const/16 v1, 0xa

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/16 v1, 0x40

    invoke-static {v1, v0}, Lj$/util/Base64;->getMimeEncoder(I[B)Lj$/util/Base64$Encoder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lj$/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p2

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-----BEGIN "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-----\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n-----END "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lj$/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    const-string v0, "US_ASCII"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string p2, "getBytes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final pkcs1PublicKey(Ljava/security/interfaces/RSAPublicKey;)[B
    .locals 3

    .line 312
    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    const-string v1, "getModulus(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->integer(Ljava/math/BigInteger;)[B

    move-result-object v0

    .line 313
    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object p1

    const-string v1, "getPublicExponent(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->integer(Ljava/math/BigInteger;)[B

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    .line 311
    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->sequence([[B)[B

    move-result-object p1

    return-object p1
.end method

.method private final rootExtensions()[B
    .locals 4

    const/4 v0, 0x1

    .line 267
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->boolean(Z)[B

    move-result-object v1

    new-array v2, v0, [[B

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->sequence([[B)[B

    move-result-object v1

    const-string v2, "2.5.29.19"

    invoke-direct {p0, v2, v0, v1}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->extension(Ljava/lang/String;Z[B)[B

    move-result-object v1

    new-array v0, v0, [[B

    aput-object v1, v0, v3

    .line 266
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->sequence([[B)[B

    move-result-object v0

    return-object v0
.end method

.method private final varargs sequence([[B)[B
    .locals 1

    .line 325
    check-cast p1, [Ljava/lang/Object;

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[B

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->concatenate([[B)[B

    move-result-object p1

    const/16 v0, 0x30

    invoke-direct {p0, v0, p1}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->der(I[B)[B

    move-result-object p1

    return-object p1
.end method

.method private final varargs set([[B)[B
    .locals 1

    .line 326
    check-cast p1, [Ljava/lang/Object;

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[B

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->concatenate([[B)[B

    move-result-object p1

    const/16 v0, 0x31

    invoke-direct {p0, v0, p1}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->der(I[B)[B

    move-result-object p1

    return-object p1
.end method

.method private final utf8String(Ljava/lang/String;)[B
    .locals 2

    .line 328
    sget-object v0, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "UTF_8"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "getBytes(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->der(I[B)[B

    move-result-object p1

    return-object p1
.end method

.method private final verifyGeneratedCertificate([B[BLjava/security/PublicKey;)V
    .locals 1

    .line 259
    const-string v0, "SHA256withRSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 260
    invoke-virtual {v0, p3}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 261
    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    .line 263
    invoke-virtual {v0, p2}, Ljava/security/Signature;->verify([B)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Generated certificate signature does not verify"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final writeBase128(Ljava/io/ByteArrayOutputStream;J)V
    .locals 9

    const/16 v0, 0xa

    .line 367
    new-array v0, v0, [B

    const-wide/16 v1, 0x7f

    and-long v3, p2, v1

    long-to-int v4, v3

    int-to-byte v3, v4

    const/16 v4, 0x9

    .line 369
    aput-byte v3, v0, v4

    const/4 v3, 0x7

    :goto_0
    ushr-long/2addr p2, v3

    const-wide/16 v5, 0x0

    cmp-long v7, p2, v5

    if-eqz v7, :cond_0

    add-int/lit8 v4, v4, -0x1

    and-long v5, p2, v1

    const-wide/16 v7, 0x80

    or-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 372
    aput-byte v5, v0, v4

    goto :goto_0

    :cond_0
    rsub-int/lit8 p2, v4, 0xa

    .line 375
    invoke-virtual {p1, v0, v4, p2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method


# virtual methods
.method public final generate([B)Lcom/shilapi/xcertplay/transport/CertificateMaterial;
    .locals 15

    const-string v1, "devicePublicKeyPem"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    invoke-direct/range {p0 .. p1}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->parsePkcs1RsaPublicKey([B)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v9

    .line 178
    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v2

    const/16 v3, 0x800

    invoke-virtual {v2, v3}, Ljava/security/KeyPairGenerator;->initialize(I)V

    invoke-virtual {v2}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v10

    .line 179
    invoke-static {v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/security/KeyPairGenerator;->initialize(I)V

    invoke-virtual {v1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v11

    .line 180
    invoke-virtual {v10}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    instance-of v2, v1, Ljava/security/interfaces/RSAPublicKey;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Ljava/security/interfaces/RSAPublicKey;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_3

    .line 182
    invoke-virtual {v11}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v2

    instance-of v4, v2, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v4, :cond_1

    check-cast v2, Ljava/security/interfaces/RSAPublicKey;

    move-object v12, v2

    goto :goto_1

    :cond_1
    move-object v12, v3

    :goto_1
    if-eqz v12, :cond_2

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 185
    invoke-direct {p0, v3}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->distinguishedName(Ljava/lang/String;)[B

    move-result-object v2

    .line 190
    invoke-virtual {v10}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v4

    const-string v13, "getPrivate(...)"

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    move-object v5, v1

    check-cast v5, Ljava/security/PublicKey;

    .line 193
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->rootExtensions()[B

    move-result-object v8

    move-object v3, v1

    move-object v1, v2

    move-object v0, p0

    .line 186
    invoke-direct/range {v0 .. v8}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->certificate([B[BLjava/security/interfaces/RSAPublicKey;Ljava/security/PrivateKey;Ljava/security/PublicKey;J[B)[B

    move-result-object v14

    .line 199
    invoke-virtual {v10}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v4

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 202
    invoke-direct {p0, v12, v2}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->leafExtensions(Ljava/security/interfaces/RSAPublicKey;Z)[B

    move-result-object v8

    move-object v2, v1

    move-object v3, v12

    .line 195
    invoke-direct/range {v0 .. v8}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->certificate([B[BLjava/security/interfaces/RSAPublicKey;Ljava/security/PrivateKey;Ljava/security/PublicKey;J[B)[B

    move-result-object v12

    .line 208
    invoke-virtual {v10}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v4

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 211
    invoke-direct {p0, v9, v2}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->leafExtensions(Ljava/security/interfaces/RSAPublicKey;Z)[B

    move-result-object v8

    move-object v2, v1

    move-object v3, v9

    .line 204
    invoke-direct/range {v0 .. v8}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->certificate([B[BLjava/security/interfaces/RSAPublicKey;Ljava/security/PrivateKey;Ljava/security/PublicKey;J[B)[B

    move-result-object v1

    .line 213
    new-instance v2, Lcom/shilapi/xcertplay/transport/CertificateMaterial;

    .line 214
    const-string v3, "CERTIFICATE"

    invoke-direct {p0, v3, v1}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->pem(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 215
    invoke-virtual {v11}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v4

    const-string v5, "getEncoded(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "PRIVATE KEY"

    invoke-direct {p0, v6, v4}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->pem(Ljava/lang/String;[B)[B

    move-result-object v4

    .line 216
    invoke-direct {p0, v3, v12}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->pem(Ljava/lang/String;[B)[B

    move-result-object v7

    .line 217
    invoke-virtual {v10}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v8

    invoke-interface {v8}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v8

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v6, v8}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->pem(Ljava/lang/String;[B)[B

    move-result-object v6

    .line 218
    invoke-direct {p0, v3, v14}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->pem(Ljava/lang/String;[B)[B

    move-result-object v3

    move-object v5, v7

    move-object v7, v3

    move-object v3, v1

    .line 213
    invoke-direct/range {v2 .. v7}, Lcom/shilapi/xcertplay/transport/CertificateMaterial;-><init>([B[B[B[B[B)V

    return-object v2

    .line 183
    :cond_2
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "Generated host key is not RSA"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    :cond_3
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "Generated root key is not RSA"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
