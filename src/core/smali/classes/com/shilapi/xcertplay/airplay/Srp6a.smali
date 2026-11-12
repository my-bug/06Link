.class public final Lcom/shilapi/xcertplay/airplay/Srp6a;
.super Ljava/lang/Object;
.source "Srp6a.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSrp6a.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Srp6a.kt\ncom/shilapi/xcertplay/airplay/Srp6a\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,111:1\n1#2:112\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u000f\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011J\u0015\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\nH\u0000\u00a2\u0006\u0002\u0008\u0016J\u0015\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u0014H\u0000\u00a2\u0006\u0002\u0008\u0019J\u0015\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\nH\u0000\u00a2\u0006\u0002\u0008\u001bJ\r\u0010\u001c\u001a\u00020\nH\u0000\u00a2\u0006\u0002\u0008\u001dJ\r\u0010\u001e\u001a\u00020\nH\u0000\u00a2\u0006\u0002\u0008\u001fR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\n \u000c*\u0004\u0018\u00010\n0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0011X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/Srp6a;",
        "",
        "<init>",
        "()V",
        "SALT_BYTES",
        "",
        "PRIVATE_BYTES",
        "random",
        "Ljava/security/SecureRandom;",
        "n",
        "Ljava/math/BigInteger;",
        "g",
        "kotlin.jvm.PlatformType",
        "multiplier",
        "start",
        "Lcom/shilapi/xcertplay/airplay/Srp6aSession;",
        "username",
        "",
        "password",
        "toBytes",
        "",
        "value",
        "toBytes$shared_release",
        "toBigInt",
        "bytes",
        "toBigInt$shared_release",
        "pad",
        "pad$shared_release",
        "modulus",
        "modulus$shared_release",
        "generator",
        "generator$shared_release",
        "N_HEX",
        "N_BYTES",
        "COLON",
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
.field private static final COLON:[B

.field public static final INSTANCE:Lcom/shilapi/xcertplay/airplay/Srp6a;

.field private static final N_BYTES:I = 0x180

.field private static final N_HEX:Ljava/lang/String; = "FFFFFFFFFFFFFFFFC90FDAA22168C234C4C6628B80DC1CD129024E088A67CC74020BBEA63B139B22514A08798E3404DDEF9519B3CD3A431B302B0A6DF25F14374FE1356D6D51C245E485B576625E7EC6F44C42E9A637ED6B0BFF5CB6F406B7EDEE386BFB5A899FA5AE9F24117C4B1FE649286651ECE45B3DC2007CB8A163BF0598DA48361C55D39A69163FA8FD24CF5F83655D23DCA3AD961C62F356208552BB9ED529077096966D670C354E4ABC9804F1746C08CA18217C32905E462E36CE3BE39E772C180E86039B2783A2EC07A28FB5C55DF06F4C52C9DE2BCBF6955817183995497CEA956AE515D2261898FA051015728E5A8AAAC42DAD33170D04507A33A85521ABDF1CBA64ECFB850458DBEF0A8AEA71575D060C7DB3970F85A6E1E4C7ABF5AE8CDB0933D71E8C94E04A25619DCEE3D2261AD2EE6BF12FFA06D98A0864D87602733EC86A64521F2B18177B200CBBE117577A615D6C770988C0BAD946E208E24FA074E5AB3143DB5BFCE0FD108E4B82D120A93AD2CAFFFFFFFFFFFFFFFF"

.field private static final PRIVATE_BYTES:I = 0x20

.field private static final SALT_BYTES:I = 0x10

.field private static final g:Ljava/math/BigInteger;

.field private static final multiplier:Ljava/math/BigInteger;

.field private static final n:Ljava/math/BigInteger;

.field private static final random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/shilapi/xcertplay/airplay/Srp6a;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/airplay/Srp6a;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/airplay/Srp6a;->INSTANCE:Lcom/shilapi/xcertplay/airplay/Srp6a;

    .line 15
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    sput-object v1, Lcom/shilapi/xcertplay/airplay/Srp6a;->random:Ljava/security/SecureRandom;

    .line 16
    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "FFFFFFFFFFFFFFFFC90FDAA22168C234C4C6628B80DC1CD129024E088A67CC74020BBEA63B139B22514A08798E3404DDEF9519B3CD3A431B302B0A6DF25F14374FE1356D6D51C245E485B576625E7EC6F44C42E9A637ED6B0BFF5CB6F406B7EDEE386BFB5A899FA5AE9F24117C4B1FE649286651ECE45B3DC2007CB8A163BF0598DA48361C55D39A69163FA8FD24CF5F83655D23DCA3AD961C62F356208552BB9ED529077096966D670C354E4ABC9804F1746C08CA18217C32905E462E36CE3BE39E772C180E86039B2783A2EC07A28FB5C55DF06F4C52C9DE2BCBF6955817183995497CEA956AE515D2261898FA051015728E5A8AAAC42DAD33170D04507A33A85521ABDF1CBA64ECFB850458DBEF0A8AEA71575D060C7DB3970F85A6E1E4C7ABF5AE8CDB0933D71E8C94E04A25619DCEE3D2261AD2EE6BF12FFA06D98A0864D87602733EC86A64521F2B18177B200CBBE117577A615D6C770988C0BAD946E208E24FA074E5AB3143DB5BFCE0FD108E4B82D120A93AD2CAFFFFFFFFFFFFFFFF"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/shilapi/xcertplay/airplay/Srp6a;->n:Ljava/math/BigInteger;

    const-wide/16 v2, 0x5

    .line 17
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    sput-object v2, Lcom/shilapi/xcertplay/airplay/Srp6a;->g:Ljava/math/BigInteger;

    .line 18
    sget-object v3, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/airplay/Srp6a;->toBytes$shared_release(Ljava/math/BigInteger;)[B

    move-result-object v1

    const-string v4, "g"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/shilapi/xcertplay/airplay/Srp6a;->pad$shared_release(Ljava/math/BigInteger;)[B

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [[B

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    invoke-virtual {v3, v4}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->sha512([[B)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/shilapi/xcertplay/airplay/Srp6a;->toBigInt$shared_release([B)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/airplay/Srp6a;->multiplier:Ljava/math/BigInteger;

    .line 64
    new-array v0, v1, [B

    const/16 v1, 0x3a

    aput-byte v1, v0, v5

    sput-object v0, Lcom/shilapi/xcertplay/airplay/Srp6a;->COLON:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final generator$shared_release()Ljava/math/BigInteger;
    .locals 2

    .line 46
    sget-object v0, Lcom/shilapi/xcertplay/airplay/Srp6a;->g:Ljava/math/BigInteger;

    const-string v1, "g"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final modulus$shared_release()Ljava/math/BigInteger;
    .locals 1

    .line 45
    sget-object v0, Lcom/shilapi/xcertplay/airplay/Srp6a;->n:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final pad$shared_release(Ljava/math/BigInteger;)[B
    .locals 8

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/airplay/Srp6a;->toBytes$shared_release(Ljava/math/BigInteger;)[B

    move-result-object v1

    .line 41
    array-length p1, v1

    const/16 v0, 0x180

    if-lt p1, v0, :cond_0

    return-object v1

    .line 42
    :cond_0
    new-array v2, v0, [B

    array-length p1, v1

    rsub-int v3, p1, 0x180

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    return-object v2
.end method

.method public final start(Ljava/lang/String;Ljava/lang/String;)Lcom/shilapi/xcertplay/airplay/Srp6aSession;
    .locals 8

    const-string/jumbo v0, "username"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x10

    .line 21
    new-array v2, v0, [B

    sget-object v0, Lcom/shilapi/xcertplay/airplay/Srp6a;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 22
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    const-string p1, "getBytes(...)"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object p1, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;

    sget-object v1, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;

    const/4 v3, 0x3

    new-array v3, v3, [[B

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v6, Lcom/shilapi/xcertplay/airplay/Srp6a;->COLON:[B

    const/4 v7, 0x1

    aput-object v6, v3, v7

    const/4 v6, 0x2

    aput-object p2, v3, v6

    invoke-virtual {v1, v3}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->sha512([[B)[B

    move-result-object p2

    new-array v1, v6, [[B

    aput-object v2, v1, v5

    aput-object p2, v1, v7

    invoke-virtual {p1, v1}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->sha512([[B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/airplay/Srp6a;->toBigInt$shared_release([B)Ljava/math/BigInteger;

    move-result-object p1

    .line 25
    sget-object p2, Lcom/shilapi/xcertplay/airplay/Srp6a;->g:Ljava/math/BigInteger;

    sget-object v1, Lcom/shilapi/xcertplay/airplay/Srp6a;->n:Ljava/math/BigInteger;

    invoke-virtual {p2, p1, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    const/16 p1, 0x20

    .line 26
    new-array p1, p1, [B

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/airplay/Srp6a;->toBigInt$shared_release([B)Ljava/math/BigInteger;

    move-result-object v6

    .line 27
    sget-object p1, Lcom/shilapi/xcertplay/airplay/Srp6a;->multiplier:Ljava/math/BigInteger;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    const-string v0, "multiply(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v6, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    const-string v0, "modPow(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    const-string p2, "add(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 28
    new-instance v1, Lcom/shilapi/xcertplay/airplay/Srp6aSession;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct/range {v1 .. v6}, Lcom/shilapi/xcertplay/airplay/Srp6aSession;-><init>([BLjava/math/BigInteger;[BLjava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v1
.end method

.method public final toBigInt$shared_release([B)Ljava/math/BigInteger;
    .locals 2

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public final toBytes$shared_release(Ljava/math/BigInteger;)[B
    .locals 3

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    new-array p1, v2, [B

    aput-byte v1, p1, v1

    return-object p1

    .line 33
    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    .line 34
    array-length v0, p1

    if-le v0, v2, :cond_1

    aget-byte v0, p1, v1

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v0, p1

    invoke-static {p1, v2, v0}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method
