.class public final Lcom/shilapi/xcertplay/airplay/AirPlayIdentity$Companion;
.super Ljava/lang/Object;
.source "AirPlayIdentity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/AirPlayIdentity$Companion;",
        "",
        "<init>",
        "()V",
        "generate",
        "Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/airplay/AirPlayIdentity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final generate()Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;
    .locals 5

    .line 15
    sget-object v0, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->ed25519Generate()Lcom/shilapi/xcertplay/airplay/AirPlayCrypto$Ed25519KeyPair;

    move-result-object v0

    .line 16
    new-instance v1, Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto$Ed25519KeyPair;->getPrivateKey()[B

    move-result-object v2

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto$Ed25519KeyPair;->getPublicKey()[B

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "toString(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, v0, v3}, Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;-><init>([B[BLjava/lang/String;)V

    return-object v1
.end method
