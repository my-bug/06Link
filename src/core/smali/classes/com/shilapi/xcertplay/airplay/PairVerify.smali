.class public final Lcom/shilapi/xcertplay/airplay/PairVerify;
.super Ljava/lang/Object;
.source "PairVerify.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/airplay/PairVerify$Companion;,
        Lcom/shilapi/xcertplay/airplay/PairVerify$ControlKeys;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000f\n\u0002\u0010$\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u0000 (2\u00020\u0001:\u0002\'(B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001f\u001a\u00020\tJ\u001c\u0010 \u001a\u00020\t2\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\t0\"H\u0002J\u001c\u0010$\u001a\u00020\t2\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\t0\"H\u0002J\u0010\u0010%\u001a\u00020\t2\u0006\u0010&\u001a\u00020#H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0013\u001a\u00020\u00108F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017R\u0013\u0010\u0018\u001a\u0004\u0018\u00010\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001aR\u0013\u0010\u001b\u001a\u0004\u0018\u00010\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u0006)"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/PairVerify;",
        "",
        "identity",
        "Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;",
        "pairings",
        "Lcom/shilapi/xcertplay/airplay/PairingStore;",
        "<init>",
        "(Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;Lcom/shilapi/xcertplay/airplay/PairingStore;)V",
        "ephemeralPublicKey",
        "",
        "clientEphemeralPublicKey",
        "sharedSecret",
        "encryptionKey",
        "keys",
        "Lcom/shilapi/xcertplay/airplay/PairVerify$ControlKeys;",
        "verified",
        "",
        "controllerId",
        "",
        "isVerified",
        "()Z",
        "verifiedControllerId",
        "getVerifiedControllerId",
        "()Ljava/lang/String;",
        "controlKeys",
        "getControlKeys",
        "()Lcom/shilapi/xcertplay/airplay/PairVerify$ControlKeys;",
        "shared",
        "getShared",
        "()[B",
        "handle",
        "body",
        "m2",
        "tlv",
        "",
        "",
        "m4",
        "err",
        "state",
        "ControlKeys",
        "Companion",
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
.field public static final CONTROL_READ_KEY_INFO:Ljava/lang/String; = "Control-Read-Encryption-Key"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTROL_SALT:Ljava/lang/String; = "Control-Salt"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTROL_WRITE_KEY_INFO:Ljava/lang/String; = "Control-Write-Encryption-Key"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final Companion:Lcom/shilapi/xcertplay/airplay/PairVerify$Companion;

.field public static final ERROR_AUTHENTICATION:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MSG02:Ljava/lang/String; = "PV-Msg02"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MSG03:Ljava/lang/String; = "PV-Msg03"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_ENCRYPTED_DATA:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_ERROR:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_IDENTIFIER:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_PUBLIC_KEY:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_SIGNATURE:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_STATE:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VERIFY_ENCRYPT_INFO:Ljava/lang/String; = "Pair-Verify-Encrypt-Info"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VERIFY_ENCRYPT_SALT:Ljava/lang/String; = "Pair-Verify-Encrypt-Salt"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private clientEphemeralPublicKey:[B

.field private controllerId:Ljava/lang/String;

.field private encryptionKey:[B

.field private ephemeralPublicKey:[B

.field private final identity:Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;

.field private keys:Lcom/shilapi/xcertplay/airplay/PairVerify$ControlKeys;

.field private final pairings:Lcom/shilapi/xcertplay/airplay/PairingStore;

.field private sharedSecret:[B

.field private verified:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/airplay/PairVerify$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/airplay/PairVerify$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/airplay/PairVerify;->Companion:Lcom/shilapi/xcertplay/airplay/PairVerify$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;Lcom/shilapi/xcertplay/airplay/PairingStore;)V
    .locals 1

    const-string v0, "identity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pairings"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/PairVerify;->identity:Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;

    .line 11
    iput-object p2, p0, Lcom/shilapi/xcertplay/airplay/PairVerify;->pairings:Lcom/shilapi/xcertplay/airplay/PairingStore;

    return-void
.end method

.method private final err(I)[B
    .locals 7

    .line 104
    sget-object v0, Lcom/shilapi/xcertplay/airplay/Tlv8Codec;->INSTANCE:Lcom/shilapi/xcertplay/airplay/Tlv8Codec;

    const/4 v1, 0x2

    .line 106
    new-array v2, v1, [Lcom/shilapi/xcertplay/airplay/Tlv8Item;

    new-instance v3, Lcom/shilapi/xcertplay/airplay/Tlv8Item;

    int-to-byte p1, p1

    const/4 v4, 0x1

    new-array v5, v4, [B

    const/4 v6, 0x0

    aput-byte p1, v5, v6

    const/4 p1, 0x6

    invoke-direct {v3, p1, v5}, Lcom/shilapi/xcertplay/airplay/Tlv8Item;-><init>(I[B)V

    aput-object v3, v2, v6

    .line 107
    new-instance p1, Lcom/shilapi/xcertplay/airplay/Tlv8Item;

    new-array v3, v4, [B

    aput-byte v1, v3, v6

    const/4 v1, 0x7

    invoke-direct {p1, v1, v3}, Lcom/shilapi/xcertplay/airplay/Tlv8Item;-><init>(I[B)V

    aput-object p1, v2, v4

    .line 105
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 104
    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/airplay/Tlv8Codec;->encode(Ljava/util/List;)[B

    move-result-object p1

    return-object p1
.end method

.method private final m2(Ljava/util/Map;)[B
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;)[B"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x3

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    const/4 v3, 0x2

    if-nez v2, :cond_0

    invoke-direct {v0, v3}, Lcom/shilapi/xcertplay/airplay/PairVerify;->err(I)[B

    move-result-object v1

    return-object v1

    .line 44
    :cond_0
    sget-object v4, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->x25519Generate()Lcom/shilapi/xcertplay/airplay/AirPlayCrypto$X25519KeyPair;

    move-result-object v4

    .line 45
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto$X25519KeyPair;->getPublicKey()[B

    move-result-object v5

    iput-object v5, v0, Lcom/shilapi/xcertplay/airplay/PairVerify;->ephemeralPublicKey:[B

    .line 46
    iput-object v2, v0, Lcom/shilapi/xcertplay/airplay/PairVerify;->clientEphemeralPublicKey:[B

    .line 48
    sget-object v5, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto$X25519KeyPair;->getPrivateKey()[B

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->x25519Shared([B[B)[B

    move-result-object v8

    .line 49
    iput-object v8, v0, Lcom/shilapi/xcertplay/airplay/PairVerify;->sharedSecret:[B

    .line 50
    sget-object v7, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;

    const-string v5, "Pair-Verify-Encrypt-Salt"

    invoke-static {v5}, Lcom/shilapi/xcertplay/airplay/BytesKt;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v9

    const-string v5, "Pair-Verify-Encrypt-Info"

    invoke-static {v5}, Lcom/shilapi/xcertplay/airplay/BytesKt;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v10

    const/16 v12, 0x8

    const/4 v13, 0x0

    const/4 v11, 0x0

    invoke-static/range {v7 .. v13}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->hkdfSha512$default(Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;[B[B[BIILjava/lang/Object;)[B

    move-result-object v15

    .line 51
    iput-object v15, v0, Lcom/shilapi/xcertplay/airplay/PairVerify;->encryptionKey:[B

    .line 53
    iget-object v5, v0, Lcom/shilapi/xcertplay/airplay/PairVerify;->identity:Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;->getPairingId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    const-string v6, "getBytes(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    sget-object v6, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;

    .line 55
    iget-object v7, v0, Lcom/shilapi/xcertplay/airplay/PairVerify;->identity:Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;

    invoke-virtual {v7}, Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;->getPrivateKey()[B

    move-result-object v7

    .line 56
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto$X25519KeyPair;->getPublicKey()[B

    move-result-object v8

    new-array v9, v1, [[B

    const/4 v10, 0x0

    aput-object v8, v9, v10

    const/4 v8, 0x1

    aput-object v5, v9, v8

    aput-object v2, v9, v3

    invoke-static {v9}, Lcom/shilapi/xcertplay/airplay/BytesKt;->concatBytes([[B)[B

    move-result-object v2

    .line 54
    invoke-virtual {v6, v7, v2}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->ed25519Sign([B[B)[B

    move-result-object v2

    .line 58
    sget-object v6, Lcom/shilapi/xcertplay/airplay/Tlv8Codec;->INSTANCE:Lcom/shilapi/xcertplay/airplay/Tlv8Codec;

    .line 60
    new-array v7, v3, [Lcom/shilapi/xcertplay/airplay/Tlv8Item;

    new-instance v9, Lcom/shilapi/xcertplay/airplay/Tlv8Item;

    invoke-direct {v9, v8, v5}, Lcom/shilapi/xcertplay/airplay/Tlv8Item;-><init>(I[B)V

    aput-object v9, v7, v10

    .line 61
    new-instance v5, Lcom/shilapi/xcertplay/airplay/Tlv8Item;

    const/16 v9, 0xa

    invoke-direct {v5, v9, v2}, Lcom/shilapi/xcertplay/airplay/Tlv8Item;-><init>(I[B)V

    aput-object v5, v7, v8

    .line 59
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 58
    invoke-virtual {v6, v2}, Lcom/shilapi/xcertplay/airplay/Tlv8Codec;->encode(Ljava/util/List;)[B

    move-result-object v17

    .line 64
    sget-object v14, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;

    sget-object v2, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;

    const-string v5, "PV-Msg02"

    invoke-virtual {v2, v5}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->nonceLabel(Ljava/lang/String;)[B

    move-result-object v16

    const/16 v19, 0x8

    const/16 v20, 0x0

    const/16 v18, 0x0

    invoke-static/range {v14 .. v20}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->chachaSeal$default(Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;[B[B[B[BILjava/lang/Object;)[B

    move-result-object v2

    .line 65
    sget-object v5, Lcom/shilapi/xcertplay/airplay/Tlv8Codec;->INSTANCE:Lcom/shilapi/xcertplay/airplay/Tlv8Codec;

    .line 67
    new-array v6, v1, [Lcom/shilapi/xcertplay/airplay/Tlv8Item;

    new-instance v7, Lcom/shilapi/xcertplay/airplay/Tlv8Item;

    new-array v9, v8, [B

    aput-byte v3, v9, v10

    const/4 v11, 0x6

    invoke-direct {v7, v11, v9}, Lcom/shilapi/xcertplay/airplay/Tlv8Item;-><init>(I[B)V

    aput-object v7, v6, v10

    .line 68
    new-instance v7, Lcom/shilapi/xcertplay/airplay/Tlv8Item;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto$X25519KeyPair;->getPublicKey()[B

    move-result-object v4

    invoke-direct {v7, v1, v4}, Lcom/shilapi/xcertplay/airplay/Tlv8Item;-><init>(I[B)V

    aput-object v7, v6, v8

    .line 69
    new-instance v1, Lcom/shilapi/xcertplay/airplay/Tlv8Item;

    const/4 v4, 0x5

    invoke-direct {v1, v4, v2}, Lcom/shilapi/xcertplay/airplay/Tlv8Item;-><init>(I[B)V

    aput-object v1, v6, v3

    .line 66
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 65
    invoke-virtual {v5, v1}, Lcom/shilapi/xcertplay/airplay/Tlv8Codec;->encode(Ljava/util/List;)[B

    move-result-object v1

    return-object v1
.end method

.method private final m4(Ljava/util/Map;)[B
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;)[B"
        }
    .end annotation

    const/4 v0, 0x5

    .line 75
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, [B

    .line 76
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/PairVerify;->encryptionKey:[B

    .line 77
    iget-object p1, p0, Lcom/shilapi/xcertplay/airplay/PairVerify;->sharedSecret:[B

    .line 78
    iget-object v7, p0, Lcom/shilapi/xcertplay/airplay/PairVerify;->ephemeralPublicKey:[B

    .line 79
    iget-object v8, p0, Lcom/shilapi/xcertplay/airplay/PairVerify;->clientEphemeralPublicKey:[B

    const/4 v11, 0x4

    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    if-eqz v7, :cond_5

    if-eqz v8, :cond_5

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 87
    :cond_0
    sget-object v9, Lcom/shilapi/xcertplay/airplay/Tlv8Codec;->INSTANCE:Lcom/shilapi/xcertplay/airplay/Tlv8Codec;

    sget-object v0, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;

    sget-object v2, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;

    const-string v4, "PV-Msg03"

    invoke-virtual {v2, v4}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->nonceLabel(Ljava/lang/String;)[B

    move-result-object v2

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->chachaOpen$default(Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;[B[B[B[BILjava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/shilapi/xcertplay/airplay/Tlv8Codec;->decode([B)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x1

    .line 88
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    const/16 v3, 0xa

    .line 89
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v2, :cond_4

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 92
    :cond_1
    iget-object v3, p0, Lcom/shilapi/xcertplay/airplay/PairVerify;->pairings:Lcom/shilapi/xcertplay/airplay/PairingStore;

    new-instance v4, Ljava/lang/String;

    sget-object v5, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v2, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v3, v4}, Lcom/shilapi/xcertplay/airplay/PairingStore;->get(Ljava/lang/String;)[B

    move-result-object v3

    if-nez v3, :cond_2

    invoke-direct {p0, v11}, Lcom/shilapi/xcertplay/airplay/PairVerify;->err(I)[B

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v4, 0x3

    .line 93
    new-array v4, v4, [[B

    const/4 v12, 0x0

    aput-object v8, v4, v12

    aput-object v2, v4, v1

    const/4 v5, 0x2

    aput-object v7, v4, v5

    invoke-static {v4}, Lcom/shilapi/xcertplay/airplay/BytesKt;->concatBytes([[B)[B

    move-result-object v4

    .line 94
    sget-object v5, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;

    invoke-virtual {v5, v3, v4, v0}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->ed25519Verify([B[B[B)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, v11}, Lcom/shilapi/xcertplay/airplay/PairVerify;->err(I)[B

    move-result-object p1

    return-object p1

    .line 96
    :cond_3
    sget-object v4, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;

    const-string v0, "Control-Salt"

    invoke-static {v0}, Lcom/shilapi/xcertplay/airplay/BytesKt;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v6

    const-string v3, "Control-Write-Encryption-Key"

    invoke-static {v3}, Lcom/shilapi/xcertplay/airplay/BytesKt;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v7

    const/16 v9, 0x8

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v5, p1

    invoke-static/range {v4 .. v10}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->hkdfSha512$default(Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;[B[B[BIILjava/lang/Object;)[B

    move-result-object p1

    .line 97
    sget-object v4, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;

    invoke-static {v0}, Lcom/shilapi/xcertplay/airplay/BytesKt;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v6

    const-string v0, "Control-Read-Encryption-Key"

    invoke-static {v0}, Lcom/shilapi/xcertplay/airplay/BytesKt;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static/range {v4 .. v10}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->hkdfSha512$default(Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;[B[B[BIILjava/lang/Object;)[B

    move-result-object v0

    .line 98
    new-instance v3, Lcom/shilapi/xcertplay/airplay/PairVerify$ControlKeys;

    invoke-direct {v3, p1, v0}, Lcom/shilapi/xcertplay/airplay/PairVerify$ControlKeys;-><init>([B[B)V

    iput-object v3, p0, Lcom/shilapi/xcertplay/airplay/PairVerify;->keys:Lcom/shilapi/xcertplay/airplay/PairVerify$ControlKeys;

    .line 99
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/airplay/PairVerify;->verified:Z

    .line 100
    new-instance p1, Ljava/lang/String;

    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, v2, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/PairVerify;->controllerId:Ljava/lang/String;

    .line 101
    sget-object p1, Lcom/shilapi/xcertplay/airplay/Tlv8Codec;->INSTANCE:Lcom/shilapi/xcertplay/airplay/Tlv8Codec;

    new-instance v0, Lcom/shilapi/xcertplay/airplay/Tlv8Item;

    new-array v1, v1, [B

    aput-byte v11, v1, v12

    const/4 v2, 0x6

    invoke-direct {v0, v2, v1}, Lcom/shilapi/xcertplay/airplay/Tlv8Item;-><init>(I[B)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/shilapi/xcertplay/airplay/Tlv8Codec;->encode(Ljava/util/List;)[B

    move-result-object p1

    return-object p1

    .line 90
    :cond_4
    :goto_0
    invoke-direct {p0, v11}, Lcom/shilapi/xcertplay/airplay/PairVerify;->err(I)[B

    move-result-object p1

    return-object p1

    .line 84
    :cond_5
    :goto_1
    invoke-direct {p0, v11}, Lcom/shilapi/xcertplay/airplay/PairVerify;->err(I)[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final getControlKeys()Lcom/shilapi/xcertplay/airplay/PairVerify$ControlKeys;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/PairVerify;->keys:Lcom/shilapi/xcertplay/airplay/PairVerify$ControlKeys;

    return-object v0
.end method

.method public final getShared()[B
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/PairVerify;->sharedSecret:[B

    return-object v0
.end method

.method public final getVerifiedControllerId()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/PairVerify;->controllerId:Ljava/lang/String;

    return-object v0
.end method

.method public final handle([B)[B
    .locals 4

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object v0, Lcom/shilapi/xcertplay/airplay/Tlv8Codec;->INSTANCE:Lcom/shilapi/xcertplay/airplay/Tlv8Codec;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/airplay/Tlv8Codec;->decode([B)Ljava/util/Map;

    move-result-object p1

    const/4 v0, 0x6

    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->firstOrNull([B)Ljava/lang/Byte;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    .line 33
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/airplay/PairVerify;->m2(Ljava/util/Map;)[B

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    goto :goto_2

    .line 34
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/airplay/PairVerify;->m4(Ljava/util/Map;)[B

    move-result-object p1

    return-object p1

    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    .line 35
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    :goto_3
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/airplay/PairVerify;->err(I)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    nop

    if-eqz v0, :cond_6

    .line 38
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_6
    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/airplay/PairVerify;->err(I)[B

    move-result-object p1

    return-object p1
.end method

.method public final isVerified()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/airplay/PairVerify;->verified:Z

    return v0
.end method
