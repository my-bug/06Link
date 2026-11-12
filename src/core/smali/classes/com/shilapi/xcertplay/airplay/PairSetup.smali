.class public final Lcom/shilapi/xcertplay/airplay/PairSetup;
.super Ljava/lang/Object;
.source "PairSetup.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/airplay/PairSetup$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010$\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u000bJ\u0008\u0010\u0013\u001a\u00020\u000bH\u0002J\u001c\u0010\u0014\u001a\u00020\u000b2\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000b0\u0016H\u0002J\u001c\u0010\u0018\u001a\u00020\u000b2\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000b0\u0016H\u0002J\u0010\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u0017H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\r@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/PairSetup;",
        "",
        "identity",
        "Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;",
        "pairings",
        "Lcom/shilapi/xcertplay/airplay/PairingStore;",
        "<init>",
        "(Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;Lcom/shilapi/xcertplay/airplay/PairingStore;)V",
        "srp",
        "Lcom/shilapi/xcertplay/airplay/Srp6aSession;",
        "sessionKey",
        "",
        "value",
        "",
        "complete",
        "getComplete",
        "()Z",
        "handle",
        "body",
        "m2",
        "m4",
        "tlv",
        "",
        "",
        "m6",
        "err",
        "state",
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
.field public static final ACCESSORY_SIGN_INFO:Ljava/lang/String; = "Pair-Setup-Accessory-Sign-Info"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACCESSORY_SIGN_SALT:Ljava/lang/String; = "Pair-Setup-Accessory-Sign-Salt"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTROLLER_SIGN_INFO:Ljava/lang/String; = "Pair-Setup-Controller-Sign-Info"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTROLLER_SIGN_SALT:Ljava/lang/String; = "Pair-Setup-Controller-Sign-Salt"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final Companion:Lcom/shilapi/xcertplay/airplay/PairSetup$Companion;

.field public static final ENCRYPT_INFO:Ljava/lang/String; = "Pair-Setup-Encrypt-Info"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ENCRYPT_SALT:Ljava/lang/String; = "Pair-Setup-Encrypt-Salt"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ERROR_AUTHENTICATION:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MSG05:Ljava/lang/String; = "PS-Msg05"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MSG06:Ljava/lang/String; = "PS-Msg06"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SETUP_CODE:Ljava/lang/String; = "3939"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SETUP_USERNAME:Ljava/lang/String; = "Pair-Setup"
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

.field public static final TYPE_METHOD:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_PROOF:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_PUBLIC_KEY:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_SALT:I = 0x2
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


# instance fields
.field private complete:Z

.field private final identity:Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;

.field private final pairings:Lcom/shilapi/xcertplay/airplay/PairingStore;

.field private sessionKey:[B

.field private srp:Lcom/shilapi/xcertplay/airplay/Srp6aSession;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/airplay/PairSetup$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/airplay/PairSetup$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/airplay/PairSetup;->Companion:Lcom/shilapi/xcertplay/airplay/PairSetup$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;Lcom/shilapi/xcertplay/airplay/PairingStore;)V
    .locals 1

    const-string v0, "identity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pairings"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/PairSetup;->identity:Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;

    .line 12
    iput-object p2, p0, Lcom/shilapi/xcertplay/airplay/PairSetup;->pairings:Lcom/shilapi/xcertplay/airplay/PairingStore;

    return-void
.end method

.method private final err(I)[B
    .locals 7

    .line 108
    sget-object v0, Lcom/shilapi/xcertplay/airplay/Tlv8Codec;->INSTANCE:Lcom/shilapi/xcertplay/airplay/Tlv8Codec;

    const/4 v1, 0x2

    .line 110
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

    .line 111
    new-instance p1, Lcom/shilapi/xcertplay/airplay/Tlv8Item;

    new-array v3, v4, [B

    aput-byte v1, v3, v6

    const/4 v1, 0x7

    invoke-direct {p1, v1, v3}, Lcom/shilapi/xcertplay/airplay/Tlv8Item;-><init>(I[B)V

    aput-object p1, v2, v4

    .line 109
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 108
    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/airplay/Tlv8Codec;->encode(Ljava/util/List;)[B

    move-result-object p1

    return-object p1
.end method

.method private final m2()[B
    .locals 10

    .line 35
    sget-object v0, Lcom/shilapi/xcertplay/airplay/Srp6a;->INSTANCE:Lcom/shilapi/xcertplay/airplay/Srp6a;

    const-string v1, "Pair-Setup"

    const-string v2, "3939"

    invoke-virtual {v0, v1, v2}, Lcom/shilapi/xcertplay/airplay/Srp6a;->start(Ljava/lang/String;Ljava/lang/String;)Lcom/shilapi/xcertplay/airplay/Srp6aSession;

    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/shilapi/xcertplay/airplay/PairSetup;->srp:Lcom/shilapi/xcertplay/airplay/Srp6aSession;

    .line 37
    sget-object v1, Lcom/shilapi/xcertplay/airplay/Tlv8Codec;->INSTANCE:Lcom/shilapi/xcertplay/airplay/Tlv8Codec;

    const/4 v2, 0x3

    .line 39
    new-array v3, v2, [Lcom/shilapi/xcertplay/airplay/Tlv8Item;

    new-instance v4, Lcom/shilapi/xcertplay/airplay/Tlv8Item;

    const/4 v5, 0x1

    new-array v6, v5, [B

    const/4 v7, 0x0

    const/4 v8, 0x2

    aput-byte v8, v6, v7

    const/4 v9, 0x6

    invoke-direct {v4, v9, v6}, Lcom/shilapi/xcertplay/airplay/Tlv8Item;-><init>(I[B)V

    aput-object v4, v3, v7

    .line 40
    new-instance v4, Lcom/shilapi/xcertplay/airplay/Tlv8Item;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/Srp6aSession;->getPublicKey()[B

    move-result-object v6

    invoke-direct {v4, v2, v6}, Lcom/shilapi/xcertplay/airplay/Tlv8Item;-><init>(I[B)V

    aput-object v4, v3, v5

    .line 41
    new-instance v2, Lcom/shilapi/xcertplay/airplay/Tlv8Item;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/Srp6aSession;->getSalt()[B

    move-result-object v0

    invoke-direct {v2, v8, v0}, Lcom/shilapi/xcertplay/airplay/Tlv8Item;-><init>(I[B)V

    aput-object v2, v3, v8

    .line 38
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 37
    invoke-virtual {v1, v0}, Lcom/shilapi/xcertplay/airplay/Tlv8Codec;->encode(Ljava/util/List;)[B

    move-result-object v0

    return-object v0
.end method

.method private final m4(Ljava/util/Map;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;)[B"
        }
    .end annotation

    const/4 v0, 0x3

    .line 47
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const/4 v1, 0x4

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 49
    iget-object v2, p0, Lcom/shilapi/xcertplay/airplay/PairSetup;->srp:Lcom/shilapi/xcertplay/airplay/Srp6aSession;

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 51
    :cond_0
    invoke-virtual {v2, v0, p1}, Lcom/shilapi/xcertplay/airplay/Srp6aSession;->verify([B[B)Lcom/shilapi/xcertplay/airplay/Srp6aResult;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/Srp6aResult;->getOk()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/Srp6aResult;->getSessionKey()[B

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/Srp6aResult;->getServerProof()[B

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/Srp6aResult;->getSessionKey()[B

    move-result-object v0

    iput-object v0, p0, Lcom/shilapi/xcertplay/airplay/PairSetup;->sessionKey:[B

    .line 54
    sget-object v0, Lcom/shilapi/xcertplay/airplay/Tlv8Codec;->INSTANCE:Lcom/shilapi/xcertplay/airplay/Tlv8Codec;

    const/4 v2, 0x2

    .line 56
    new-array v2, v2, [Lcom/shilapi/xcertplay/airplay/Tlv8Item;

    new-instance v3, Lcom/shilapi/xcertplay/airplay/Tlv8Item;

    const/4 v4, 0x1

    new-array v5, v4, [B

    const/4 v6, 0x0

    aput-byte v1, v5, v6

    const/4 v7, 0x6

    invoke-direct {v3, v7, v5}, Lcom/shilapi/xcertplay/airplay/Tlv8Item;-><init>(I[B)V

    aput-object v3, v2, v6

    .line 57
    new-instance v3, Lcom/shilapi/xcertplay/airplay/Tlv8Item;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/Srp6aResult;->getServerProof()[B

    move-result-object p1

    invoke-direct {v3, v1, p1}, Lcom/shilapi/xcertplay/airplay/Tlv8Item;-><init>(I[B)V

    aput-object v3, v2, v4

    .line 55
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 54
    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/airplay/Tlv8Codec;->encode(Ljava/util/List;)[B

    move-result-object p1

    return-object p1

    .line 52
    :cond_2
    :goto_0
    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/airplay/PairSetup;->err(I)[B

    move-result-object p1

    return-object p1

    .line 50
    :cond_3
    :goto_1
    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/airplay/PairSetup;->err(I)[B

    move-result-object p1

    return-object p1
.end method

.method private final m6(Ljava/util/Map;)[B
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;)[B"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x5

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, [B

    .line 64
    iget-object v8, v0, Lcom/shilapi/xcertplay/airplay/PairSetup;->sessionKey:[B

    const/4 v2, 0x6

    if-eqz v8, :cond_4

    if-nez v6, :cond_0

    goto/16 :goto_1

    .line 67
    :cond_0
    sget-object v7, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;

    const-string v3, "Pair-Setup-Encrypt-Salt"

    invoke-static {v3}, Lcom/shilapi/xcertplay/airplay/BytesKt;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v9

    const-string v3, "Pair-Setup-Encrypt-Info"

    invoke-static {v3}, Lcom/shilapi/xcertplay/airplay/BytesKt;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v10

    const/16 v12, 0x8

    const/4 v13, 0x0

    const/4 v11, 0x0

    invoke-static/range {v7 .. v13}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->hkdfSha512$default(Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;[B[B[BIILjava/lang/Object;)[B

    move-result-object v15

    move-object v10, v8

    .line 68
    sget-object v11, Lcom/shilapi/xcertplay/airplay/Tlv8Codec;->INSTANCE:Lcom/shilapi/xcertplay/airplay/Tlv8Codec;

    sget-object v3, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;

    sget-object v4, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;

    const-string v5, "PS-Msg05"

    invoke-virtual {v4, v5}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->nonceLabel(Ljava/lang/String;)[B

    move-result-object v5

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v4, v15

    invoke-static/range {v3 .. v9}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->chachaOpen$default(Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;[B[B[B[BILjava/lang/Object;)[B

    move-result-object v3

    invoke-virtual {v11, v3}, Lcom/shilapi/xcertplay/airplay/Tlv8Codec;->decode([B)Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x1

    .line 69
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    const/4 v6, 0x3

    .line 70
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v14, v7

    check-cast v14, [B

    const/16 v7, 0xa

    .line 71
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v5, :cond_3

    if-eqz v14, :cond_3

    if-nez v3, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v8, 0xa

    .line 74
    sget-object v7, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;

    .line 76
    const-string v9, "Pair-Setup-Controller-Sign-Salt"

    invoke-static {v9}, Lcom/shilapi/xcertplay/airplay/BytesKt;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v9

    .line 77
    const-string v11, "Pair-Setup-Controller-Sign-Info"

    invoke-static {v11}, Lcom/shilapi/xcertplay/airplay/BytesKt;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v11

    const/16 v12, 0x8

    const/4 v13, 0x0

    move-object v8, v10

    move-object v10, v11

    const/16 v16, 0xa

    const/4 v11, 0x0

    const/16 v1, 0xa

    .line 74
    invoke-static/range {v7 .. v13}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->hkdfSha512$default(Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;[B[B[BIILjava/lang/Object;)[B

    move-result-object v7

    .line 79
    new-array v9, v6, [[B

    const/16 v21, 0x0

    aput-object v7, v9, v21

    aput-object v5, v9, v4

    const/4 v7, 0x2

    aput-object v14, v9, v7

    invoke-static {v9}, Lcom/shilapi/xcertplay/airplay/BytesKt;->concatBytes([[B)[B

    move-result-object v9

    .line 80
    sget-object v10, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;

    invoke-virtual {v10, v14, v9, v3}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->ed25519Verify([B[B[B)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {v0, v2}, Lcom/shilapi/xcertplay/airplay/PairSetup;->err(I)[B

    move-result-object v1

    return-object v1

    .line 81
    :cond_2
    iget-object v3, v0, Lcom/shilapi/xcertplay/airplay/PairSetup;->pairings:Lcom/shilapi/xcertplay/airplay/PairingStore;

    new-instance v9, Ljava/lang/String;

    sget-object v10, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v5, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v3, v9, v14}, Lcom/shilapi/xcertplay/airplay/PairingStore;->save(Ljava/lang/String;[B)V

    .line 83
    iget-object v3, v0, Lcom/shilapi/xcertplay/airplay/PairSetup;->identity:Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;->getPairingId()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    const-string v5, "getBytes(...)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    .line 84
    sget-object v7, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;

    .line 86
    const-string v9, "Pair-Setup-Accessory-Sign-Salt"

    invoke-static {v9}, Lcom/shilapi/xcertplay/airplay/BytesKt;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v9

    .line 87
    const-string v10, "Pair-Setup-Accessory-Sign-Info"

    invoke-static {v10}, Lcom/shilapi/xcertplay/airplay/BytesKt;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v10

    const/16 v12, 0x8

    const/4 v13, 0x0

    const/4 v11, 0x0

    .line 84
    invoke-static/range {v7 .. v13}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->hkdfSha512$default(Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;[B[B[BIILjava/lang/Object;)[B

    move-result-object v7

    .line 89
    iget-object v8, v0, Lcom/shilapi/xcertplay/airplay/PairSetup;->identity:Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;

    invoke-virtual {v8}, Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;->getPublicKey()[B

    move-result-object v8

    new-array v9, v6, [[B

    aput-object v7, v9, v21

    aput-object v3, v9, v4

    aput-object v8, v9, v5

    invoke-static {v9}, Lcom/shilapi/xcertplay/airplay/BytesKt;->concatBytes([[B)[B

    move-result-object v7

    .line 90
    sget-object v8, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;

    iget-object v9, v0, Lcom/shilapi/xcertplay/airplay/PairSetup;->identity:Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;

    invoke-virtual {v9}, Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;->getPrivateKey()[B

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->ed25519Sign([B[B)[B

    move-result-object v7

    .line 91
    sget-object v8, Lcom/shilapi/xcertplay/airplay/Tlv8Codec;->INSTANCE:Lcom/shilapi/xcertplay/airplay/Tlv8Codec;

    .line 93
    new-array v9, v6, [Lcom/shilapi/xcertplay/airplay/Tlv8Item;

    new-instance v10, Lcom/shilapi/xcertplay/airplay/Tlv8Item;

    invoke-direct {v10, v4, v3}, Lcom/shilapi/xcertplay/airplay/Tlv8Item;-><init>(I[B)V

    aput-object v10, v9, v21

    .line 94
    new-instance v3, Lcom/shilapi/xcertplay/airplay/Tlv8Item;

    iget-object v10, v0, Lcom/shilapi/xcertplay/airplay/PairSetup;->identity:Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;

    invoke-virtual {v10}, Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;->getPublicKey()[B

    move-result-object v10

    invoke-direct {v3, v6, v10}, Lcom/shilapi/xcertplay/airplay/Tlv8Item;-><init>(I[B)V

    aput-object v3, v9, v4

    .line 95
    new-instance v3, Lcom/shilapi/xcertplay/airplay/Tlv8Item;

    invoke-direct {v3, v1, v7}, Lcom/shilapi/xcertplay/airplay/Tlv8Item;-><init>(I[B)V

    aput-object v3, v9, v5

    .line 92
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 91
    invoke-virtual {v8, v1}, Lcom/shilapi/xcertplay/airplay/Tlv8Codec;->encode(Ljava/util/List;)[B

    move-result-object v17

    .line 98
    sget-object v14, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;

    sget-object v1, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;

    const-string v3, "PS-Msg06"

    invoke-virtual {v1, v3}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->nonceLabel(Ljava/lang/String;)[B

    move-result-object v16

    const/16 v19, 0x8

    const/16 v20, 0x0

    const/16 v18, 0x0

    invoke-static/range {v14 .. v20}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->chachaSeal$default(Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;[B[B[B[BILjava/lang/Object;)[B

    move-result-object v1

    .line 99
    iput-boolean v4, v0, Lcom/shilapi/xcertplay/airplay/PairSetup;->complete:Z

    .line 100
    sget-object v3, Lcom/shilapi/xcertplay/airplay/Tlv8Codec;->INSTANCE:Lcom/shilapi/xcertplay/airplay/Tlv8Codec;

    .line 102
    new-array v5, v5, [Lcom/shilapi/xcertplay/airplay/Tlv8Item;

    new-instance v6, Lcom/shilapi/xcertplay/airplay/Tlv8Item;

    new-array v7, v4, [B

    aput-byte v2, v7, v21

    invoke-direct {v6, v2, v7}, Lcom/shilapi/xcertplay/airplay/Tlv8Item;-><init>(I[B)V

    aput-object v6, v5, v21

    .line 103
    new-instance v2, Lcom/shilapi/xcertplay/airplay/Tlv8Item;

    const/4 v6, 0x5

    invoke-direct {v2, v6, v1}, Lcom/shilapi/xcertplay/airplay/Tlv8Item;-><init>(I[B)V

    aput-object v2, v5, v4

    .line 101
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 100
    invoke-virtual {v3, v1}, Lcom/shilapi/xcertplay/airplay/Tlv8Codec;->encode(Ljava/util/List;)[B

    move-result-object v1

    return-object v1

    .line 72
    :cond_3
    :goto_0
    invoke-direct {v0, v2}, Lcom/shilapi/xcertplay/airplay/PairSetup;->err(I)[B

    move-result-object v1

    return-object v1

    .line 65
    :cond_4
    :goto_1
    invoke-direct {v0, v2}, Lcom/shilapi/xcertplay/airplay/PairSetup;->err(I)[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public final getComplete()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/airplay/PairSetup;->complete:Z

    return v0
.end method

.method public final handle([B)[B
    .locals 4

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v0, Lcom/shilapi/xcertplay/airplay/Tlv8Codec;->INSTANCE:Lcom/shilapi/xcertplay/airplay/Tlv8Codec;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/airplay/Tlv8Codec;->decode([B)Ljava/util/Map;

    move-result-object p1

    const/4 v0, 0x6

    .line 21
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

    .line 24
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    invoke-direct {p0}, Lcom/shilapi/xcertplay/airplay/PairSetup;->m2()[B

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    goto :goto_2

    .line 25
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/airplay/PairSetup;->m4(Ljava/util/Map;)[B

    move-result-object p1

    return-object p1

    :cond_4
    :goto_2
    if-nez v0, :cond_5

    goto :goto_3

    .line 26
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_6

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/airplay/PairSetup;->m6(Ljava/util/Map;)[B

    move-result-object p1

    return-object p1

    :cond_6
    :goto_3
    if-eqz v0, :cond_7

    .line 27
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_4

    :cond_7
    const/4 p1, 0x0

    :goto_4
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/airplay/PairSetup;->err(I)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    nop

    if-eqz v0, :cond_8

    .line 30
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_8
    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/airplay/PairSetup;->err(I)[B

    move-result-object p1

    return-object p1
.end method
