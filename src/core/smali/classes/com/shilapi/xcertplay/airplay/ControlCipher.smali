.class public final Lcom/shilapi/xcertplay/airplay/ControlCipher;
.super Ljava/lang/Object;
.source "ControlCipher.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/airplay/ControlCipher$Companion;,
        Lcom/shilapi/xcertplay/airplay/ControlCipher$Decrypted;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nControlCipher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ControlCipher.kt\ncom/shilapi/xcertplay/airplay/ControlCipher\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,56:1\n37#2:57\n36#2,3:58\n37#2:61\n36#2,3:62\n*S KotlinDebug\n*F\n+ 1 ControlCipher.kt\ncom/shilapi/xcertplay/airplay/ControlCipher\n*L\n29#1:57\n29#1:58,3\n44#1:61\n44#1:62,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 \u00142\u00020\u0001:\u0002\u0013\u0014B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0003J\u000e\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0003J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0010H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/ControlCipher;",
        "",
        "readKey",
        "",
        "writeKey",
        "<init>",
        "([B[B)V",
        "readCounter",
        "",
        "writeCounter",
        "decrypt",
        "Lcom/shilapi/xcertplay/airplay/ControlCipher$Decrypted;",
        "buffer",
        "encrypt",
        "plaintext",
        "readU16Le",
        "",
        "source",
        "offset",
        "Decrypted",
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
.field private static final Companion:Lcom/shilapi/xcertplay/airplay/ControlCipher$Companion;

.field public static final HEADER_SIZE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAX_PAYLOAD:I = 0x4000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG_SIZE:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private readCounter:J

.field private final readKey:[B

.field private writeCounter:J

.field private final writeKey:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/airplay/ControlCipher$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/airplay/ControlCipher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/airplay/ControlCipher;->Companion:Lcom/shilapi/xcertplay/airplay/ControlCipher$Companion;

    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 1

    const-string v0, "readKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "writeKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/ControlCipher;->readKey:[B

    iput-object p2, p0, Lcom/shilapi/xcertplay/airplay/ControlCipher;->writeKey:[B

    return-void
.end method

.method private final readU16Le([BI)I
    .locals 1

    .line 48
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p2, p2, 0x1

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public final decrypt([B)Lcom/shilapi/xcertplay/airplay/ControlCipher$Decrypted;
    .locals 10

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 19
    :goto_0
    array-length v3, p1

    sub-int/2addr v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 20
    invoke-direct {p0, p1, v2}, Lcom/shilapi/xcertplay/airplay/ControlCipher;->readU16Le([BI)I

    move-result v3

    add-int/lit8 v4, v2, 0x2

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x10

    .line 22
    array-length v5, p1

    if-lt v5, v3, :cond_0

    .line 23
    invoke-static {p1, v2, v4}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v2

    .line 24
    invoke-static {p1, v4, v3}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v4

    .line 25
    sget-object v5, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;

    iget-object v6, p0, Lcom/shilapi/xcertplay/airplay/ControlCipher;->readKey:[B

    sget-object v7, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;

    iget-wide v8, p0, Lcom/shilapi/xcertplay/airplay/ControlCipher;->readCounter:J

    invoke-virtual {v7, v8, v9}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->nonce64(J)[B

    move-result-object v7

    invoke-virtual {v5, v6, v7, v4, v2}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->chachaOpen([B[B[B[B)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    iget-wide v4, p0, Lcom/shilapi/xcertplay/airplay/ControlCipher;->readCounter:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/shilapi/xcertplay/airplay/ControlCipher;->readCounter:J

    move v2, v3

    goto :goto_0

    .line 29
    :cond_0
    new-instance v3, Lcom/shilapi/xcertplay/airplay/ControlCipher$Decrypted;

    check-cast v0, Ljava/util/Collection;

    .line 60
    new-array v1, v1, [[B

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 29
    check-cast v0, [[B

    check-cast v0, [Ljava/lang/Object;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    invoke-static {v0}, Lcom/shilapi/xcertplay/airplay/BytesKt;->concatBytes([[B)[B

    move-result-object v0

    array-length v1, p1

    invoke-static {p1, v2, v1}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object p1

    invoke-direct {v3, v0, p1}, Lcom/shilapi/xcertplay/airplay/ControlCipher$Decrypted;-><init>([B[B)V

    return-object v3
.end method

.method public final encrypt([B)[B
    .locals 10

    const-string v0, "plaintext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    add-int/lit16 v3, v2, 0x4000

    .line 36
    array-length v4, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {p1, v2, v4}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v2

    .line 37
    array-length v4, v2

    int-to-byte v4, v4

    array-length v5, v2

    ushr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    const/4 v6, 0x2

    new-array v6, v6, [B

    aput-byte v4, v6, v1

    const/4 v4, 0x1

    aput-byte v5, v6, v4

    .line 38
    sget-object v4, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;

    iget-object v5, p0, Lcom/shilapi/xcertplay/airplay/ControlCipher;->writeKey:[B

    sget-object v7, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;

    iget-wide v8, p0, Lcom/shilapi/xcertplay/airplay/ControlCipher;->writeCounter:J

    invoke-virtual {v7, v8, v9}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->nonce64(J)[B

    move-result-object v7

    invoke-virtual {v4, v5, v7, v2, v6}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->chachaSeal([B[B[B[B)[B

    move-result-object v2

    .line 39
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    iget-wide v4, p0, Lcom/shilapi/xcertplay/airplay/ControlCipher;->writeCounter:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/shilapi/xcertplay/airplay/ControlCipher;->writeCounter:J

    .line 43
    array-length v2, p1

    if-lt v3, v2, :cond_0

    .line 44
    check-cast v0, Ljava/util/Collection;

    .line 64
    new-array p1, v1, [[B

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 44
    check-cast p1, [[B

    check-cast p1, [Ljava/lang/Object;

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[B

    invoke-static {p1}, Lcom/shilapi/xcertplay/airplay/BytesKt;->concatBytes([[B)[B

    move-result-object p1

    return-object p1

    :cond_0
    move v2, v3

    goto :goto_0
.end method
