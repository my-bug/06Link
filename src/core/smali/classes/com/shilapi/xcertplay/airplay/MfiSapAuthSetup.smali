.class public final Lcom/shilapi/xcertplay/airplay/MfiSapAuthSetup;
.super Ljava/lang/Object;
.source "MfiSapAuthSetup.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/airplay/MfiSapAuthSetup$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMfiSapAuthSetup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MfiSapAuthSetup.kt\ncom/shilapi/xcertplay/airplay/MfiSapAuthSetup\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,184:1\n12448#2,2:185\n*S KotlinDebug\n*F\n+ 1 MfiSapAuthSetup.kt\ncom/shilapi/xcertplay/airplay/MfiSapAuthSetup\n*L\n31#1:185,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0011\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000bJ \u0010\u000c\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u0008H\u0002J(\u0010\u0010\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u0008H\u0002J\u0010\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u0008H\u0002J!\u0010\u0015\u001a\u00020\u00082\u0012\u0010\u0016\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00080\u0017\"\u00020\u0008H\u0002\u00a2\u0006\u0002\u0010\u0018J!\u0010\u0019\u001a\u00020\u00082\u0012\u0010\u0016\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00080\u0017\"\u00020\u0008H\u0002\u00a2\u0006\u0002\u0010\u0018J%\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u001b\u001a\u00020\u001c2\u000e\u0010\u0016\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00080\u0017H\u0002\u00a2\u0006\u0002\u0010\u001dJ \u0010\u001e\u001a\u00020\u00082\u0006\u0010\u001f\u001a\u00020\u00082\u0006\u0010 \u001a\u00020\u00082\u0006\u0010!\u001a\u00020\u0008H\u0002J \u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u00082\u0006\u0010%\u001a\u00020\u00052\u0006\u0010&\u001a\u00020\u0005H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/MfiSapAuthSetup;",
        "",
        "<init>",
        "()V",
        "VERSION",
        "",
        "PUBLIC_KEY_BYTES",
        "handle",
        "",
        "body",
        "mfi",
        "Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;",
        "buildMfiResponse",
        "publicKey",
        "certificate",
        "encryptedSignature",
        "buildBaaResponse",
        "leaf",
        "baicBlob",
        "encodeBaaIntermediate",
        "intermediate",
        "sha1",
        "parts",
        "",
        "([[B)[B",
        "sha256",
        "digest",
        "algorithm",
        "",
        "(Ljava/lang/String;[[B)[B",
        "aesCtr128",
        "key",
        "iv",
        "data",
        "putU32",
        "",
        "target",
        "offset",
        "value",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/airplay/MfiSapAuthSetup;

.field private static final PUBLIC_KEY_BYTES:I = 0x20

.field private static final VERSION:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/airplay/MfiSapAuthSetup;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/airplay/MfiSapAuthSetup;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/airplay/MfiSapAuthSetup;->INSTANCE:Lcom/shilapi/xcertplay/airplay/MfiSapAuthSetup;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final aesCtr128([B[B[B)[B
    .locals 3

    .line 172
    const-string v0, "AES/CTR/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 173
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    check-cast v1, Ljava/security/Key;

    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p1, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    check-cast p1, Ljava/security/spec/AlgorithmParameterSpec;

    const/4 p2, 0x1

    invoke-virtual {v0, p2, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 174
    invoke-virtual {v0, p3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    const-string p2, "doFinal(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final buildBaaResponse([B[B[B[B)[B
    .locals 8

    .line 90
    array-length v0, p2

    add-int/lit8 v0, v0, 0x28

    array-length v1, p3

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    array-length v1, p4

    add-int/2addr v0, v1

    new-array v2, v0, [B

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    .line 92
    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    const/16 p1, 0x20

    .line 94
    array-length v0, p2

    invoke-direct {p0, v2, p1, v0}, Lcom/shilapi/xcertplay/airplay/MfiSapAuthSetup;->putU32([BII)V

    const/16 v3, 0x24

    move-object v1, p2

    .line 96
    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    .line 97
    array-length p1, v1

    add-int/2addr v3, p1

    .line 98
    array-length p2, p3

    invoke-direct {p0, v2, v3, p2}, Lcom/shilapi/xcertplay/airplay/MfiSapAuthSetup;->putU32([BII)V

    add-int/lit8 v3, p1, 0x28

    move-object v1, p3

    .line 100
    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    .line 101
    array-length p1, v1

    add-int/2addr v3, p1

    .line 102
    array-length p1, p4

    invoke-direct {p0, v2, v3, p1}, Lcom/shilapi/xcertplay/airplay/MfiSapAuthSetup;->putU32([BII)V

    add-int/lit8 v3, v3, 0x4

    move-object v1, p4

    .line 104
    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    return-object v2
.end method

.method private final buildMfiResponse([B[B[B)[B
    .locals 8

    .line 74
    array-length v0, p2

    add-int/lit8 v0, v0, 0x28

    array-length v1, p3

    add-int/2addr v0, v1

    new-array v2, v0, [B

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    .line 75
    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    const/16 p1, 0x20

    .line 76
    array-length v0, p2

    invoke-direct {p0, v2, p1, v0}, Lcom/shilapi/xcertplay/airplay/MfiSapAuthSetup;->putU32([BII)V

    const/16 v3, 0x24

    move-object v1, p2

    .line 77
    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    .line 78
    array-length p1, v1

    add-int/lit8 p1, p1, 0x24

    array-length p2, p3

    invoke-direct {p0, v2, p1, p2}, Lcom/shilapi/xcertplay/airplay/MfiSapAuthSetup;->putU32([BII)V

    .line 79
    array-length p1, v1

    add-int/lit8 v3, p1, 0x28

    move-object v1, p3

    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    return-object v2
.end method

.method private final digest(Ljava/lang/String;[[B)[B
    .locals 3

    .line 166
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 167
    move-object v0, p2

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    invoke-virtual {p1, v2}, Ljava/security/MessageDigest;->update([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    const-string p2, "digest(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final encodeBaaIntermediate([B)[B
    .locals 19

    move-object/from16 v0, p1

    .line 111
    array-length v1, v0

    const/16 v2, 0x20

    const/16 v4, 0x43

    const/4 v5, 0x5

    const/16 v6, 0x49

    const/4 v7, 0x4

    const/16 v8, 0x61

    const/4 v9, 0x3

    const/16 v10, 0x62

    const/4 v11, 0x2

    const/16 v12, 0x44

    const/4 v13, 0x1

    const/16 v14, -0x1f

    const/4 v15, 0x0

    const/16 v16, 0x6

    const/4 v3, 0x7

    if-gt v1, v2, :cond_0

    .line 112
    new-array v1, v3, [B

    aput-byte v14, v1, v15

    .line 113
    aput-byte v12, v1, v13

    .line 114
    aput-byte v10, v1, v11

    .line 115
    aput-byte v8, v1, v9

    .line 116
    aput-byte v6, v1, v7

    .line 117
    aput-byte v4, v1, v5

    .line 118
    array-length v2, v0

    add-int/lit8 v2, v2, 0x70

    int-to-byte v2, v2

    aput-byte v2, v1, v16

    goto :goto_0

    .line 121
    :cond_0
    array-length v1, v0

    const/16 v2, 0xff

    const/16 v17, 0x7

    const/16 v3, 0x8

    if-gt v1, v2, :cond_1

    .line 122
    new-array v1, v3, [B

    aput-byte v14, v1, v15

    .line 123
    aput-byte v12, v1, v13

    .line 124
    aput-byte v10, v1, v11

    .line 125
    aput-byte v8, v1, v9

    .line 126
    aput-byte v6, v1, v7

    .line 127
    aput-byte v4, v1, v5

    const/16 v2, -0x6f

    .line 128
    aput-byte v2, v1, v16

    .line 129
    array-length v2, v0

    int-to-byte v2, v2

    aput-byte v2, v1, v17

    goto :goto_0

    .line 132
    :cond_1
    array-length v1, v0

    const v2, 0xffff

    const/16 v18, 0x8

    const/16 v3, 0x9

    if-gt v1, v2, :cond_2

    .line 133
    new-array v1, v3, [B

    aput-byte v14, v1, v15

    .line 134
    aput-byte v12, v1, v13

    .line 135
    aput-byte v10, v1, v11

    .line 136
    aput-byte v8, v1, v9

    .line 137
    aput-byte v6, v1, v7

    .line 138
    aput-byte v4, v1, v5

    const/16 v2, -0x6e

    .line 139
    aput-byte v2, v1, v16

    .line 140
    array-length v2, v0

    int-to-byte v2, v2

    aput-byte v2, v1, v17

    .line 141
    array-length v2, v0

    ushr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v1, v18

    goto :goto_0

    :cond_2
    const/16 v1, 0xb

    .line 145
    new-array v1, v1, [B

    aput-byte v14, v1, v15

    .line 146
    aput-byte v12, v1, v13

    .line 147
    aput-byte v10, v1, v11

    .line 148
    aput-byte v8, v1, v9

    .line 149
    aput-byte v6, v1, v7

    .line 150
    aput-byte v4, v1, v5

    const/16 v2, -0x6d

    .line 151
    aput-byte v2, v1, v16

    .line 152
    array-length v2, v0

    int-to-byte v2, v2

    aput-byte v2, v1, v17

    .line 153
    array-length v2, v0

    ushr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v1, v18

    .line 154
    array-length v2, v0

    ushr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 155
    array-length v2, v0

    ushr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    const/16 v3, 0xa

    aput-byte v2, v1, v3

    .line 158
    :goto_0
    invoke-static {v1, v0}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method private final putU32([BII)V
    .locals 2

    ushr-int/lit8 v0, p3, 0x18

    int-to-byte v0, v0

    .line 178
    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p3, 0x10

    int-to-byte v1, v1

    .line 179
    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    ushr-int/lit8 v1, p3, 0x8

    int-to-byte v1, v1

    .line 180
    aput-byte v1, p1, v0

    add-int/lit8 p2, p2, 0x3

    int-to-byte p3, p3

    .line 181
    aput-byte p3, p1, p2

    return-void
.end method

.method private final varargs sha1([[B)[B
    .locals 1

    .line 161
    const-string v0, "SHA-1"

    invoke-direct {p0, v0, p1}, Lcom/shilapi/xcertplay/airplay/MfiSapAuthSetup;->digest(Ljava/lang/String;[[B)[B

    move-result-object p1

    return-object p1
.end method

.method private final varargs sha256([[B)[B
    .locals 1

    .line 163
    const-string v0, "SHA-256"

    invoke-direct {p0, v0, p1}, Lcom/shilapi/xcertplay/airplay/MfiSapAuthSetup;->digest(Ljava/lang/String;[[B)[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final handle([BLcom/shilapi/xcertplay/mfi/MfiAuthenticator;)[B
    .locals 11

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mfi"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    array-length v0, p1

    const/16 v1, 0x21

    const/4 v2, 0x0

    if-ne v0, v1, :cond_5

    const/4 v0, 0x0

    aget-byte v1, p1, v0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    goto/16 :goto_2

    .line 27
    :cond_0
    array-length v1, p1

    invoke-static {p1, v3, v1}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object p1

    .line 29
    sget-object v1, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->x25519Generate()Lcom/shilapi/xcertplay/airplay/AirPlayCrypto$X25519KeyPair;

    move-result-object v1

    .line 30
    sget-object v4, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto$X25519KeyPair;->getPrivateKey()[B

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->x25519Shared([B[B)[B

    move-result-object v4

    .line 185
    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_5

    aget-byte v7, v4, v6

    if-nez v7, :cond_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 33
    :cond_1
    const-string v5, "AES-KEY"

    invoke-static {v5}, Lcom/shilapi/xcertplay/airplay/BytesKt;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x2

    new-array v7, v6, [[B

    aput-object v5, v7, v0

    aput-object v4, v7, v3

    invoke-direct {p0, v7}, Lcom/shilapi/xcertplay/airplay/MfiSapAuthSetup;->sha1([[B)[B

    move-result-object v5

    const/16 v7, 0x10

    invoke-static {v5, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    const-string v8, "copyOf(...)"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    const-string v9, "AES-IV"

    invoke-static {v9}, Lcom/shilapi/xcertplay/airplay/BytesKt;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v9

    new-array v10, v6, [[B

    aput-object v9, v10, v0

    aput-object v4, v10, v3

    invoke-direct {p0, v10}, Lcom/shilapi/xcertplay/airplay/MfiSapAuthSetup;->sha1([[B)[B

    move-result-object v4

    invoke-static {v4, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-interface {p2}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;->getCertificateType()Lcom/shilapi/xcertplay/mfi/MfiCertificateType;

    move-result-object v7

    sget-object v8, Lcom/shilapi/xcertplay/airplay/MfiSapAuthSetup$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v7}, Lcom/shilapi/xcertplay/mfi/MfiCertificateType;->ordinal()I

    move-result v7

    aget v7, v8, v7

    if-eq v7, v3, :cond_3

    if-ne v7, v6, :cond_2

    .line 53
    invoke-interface {p2}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;->baaCertificates()Lcom/shilapi/xcertplay/mfi/BaaCertificatePair;

    move-result-object v0

    .line 57
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto$X25519KeyPair;->getPublicKey()[B

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;->signChallenge([B)[B

    move-result-object p1

    .line 54
    invoke-direct {p0, v5, v4, p1}, Lcom/shilapi/xcertplay/airplay/MfiSapAuthSetup;->aesCtr128([B[B[B)[B

    move-result-object p1

    .line 60
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto$X25519KeyPair;->getPublicKey()[B

    move-result-object p2

    .line 61
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/mfi/BaaCertificatePair;->getLeaf()[B

    move-result-object v1

    .line 63
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/mfi/BaaCertificatePair;->getIntermediate()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/airplay/MfiSapAuthSetup;->encodeBaaIntermediate([B)[B

    move-result-object v0

    .line 59
    invoke-direct {p0, p2, v1, p1, v0}, Lcom/shilapi/xcertplay/airplay/MfiSapAuthSetup;->buildBaaResponse([B[B[B[B)[B

    move-result-object p1

    return-object p1

    .line 36
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 38
    :cond_3
    invoke-static {p2, v0, v3, v2}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticator$-CC;->readCertificate$default(Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;IILjava/lang/Object;)[B

    move-result-object v2

    .line 39
    invoke-interface {p2}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;->protocolMajor()I

    move-result v7

    if-ne v7, v6, :cond_4

    .line 40
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto$X25519KeyPair;->getPublicKey()[B

    move-result-object v7

    new-array v6, v6, [[B

    aput-object v7, v6, v0

    aput-object p1, v6, v3

    invoke-direct {p0, v6}, Lcom/shilapi/xcertplay/airplay/MfiSapAuthSetup;->sha1([[B)[B

    move-result-object p1

    goto :goto_1

    .line 42
    :cond_4
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto$X25519KeyPair;->getPublicKey()[B

    move-result-object v7

    new-array v6, v6, [[B

    aput-object v7, v6, v0

    aput-object p1, v6, v3

    invoke-direct {p0, v6}, Lcom/shilapi/xcertplay/airplay/MfiSapAuthSetup;->sha256([[B)[B

    move-result-object p1

    .line 47
    :goto_1
    invoke-interface {p2, p1}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;->signChallenge([B)[B

    move-result-object p1

    .line 44
    invoke-direct {p0, v5, v4, p1}, Lcom/shilapi/xcertplay/airplay/MfiSapAuthSetup;->aesCtr128([B[B[B)[B

    move-result-object p1

    .line 49
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto$X25519KeyPair;->getPublicKey()[B

    move-result-object p2

    invoke-direct {p0, p2, v2, p1}, Lcom/shilapi/xcertplay/airplay/MfiSapAuthSetup;->buildMfiResponse([B[B[B)[B

    move-result-object p1

    return-object p1

    :cond_5
    :goto_2
    return-object v2
.end method
