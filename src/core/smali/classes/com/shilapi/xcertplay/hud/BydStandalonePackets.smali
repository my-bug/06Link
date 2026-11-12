.class public final Lcom/shilapi/xcertplay/hud/BydStandalonePackets;
.super Ljava/lang/Object;
.source "BydStandalonePackets.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBydStandalonePackets.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BydStandalonePackets.kt\ncom/shilapi/xcertplay/hud/BydStandalonePackets\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,65:1\n1#2:66\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u0012\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0006\u001a\u00020\u0007J\u0006\u0010\u0008\u001a\u00020\u0007J,\u0010\t\u001a\u0004\u0018\u00010\u00072\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u00052\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0007J\u000e\u0010\u000e\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0007J\u000c\u0010\u000f\u001a\u00020\u0007*\u00020\u0010H\u0002J\u0018\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0005H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/hud/BydStandalonePackets;",
        "",
        "<init>",
        "()V",
        "MAX_DISTANCE_METERS",
        "",
        "start",
        "",
        "clear",
        "guidance",
        "icon",
        "exit",
        "distanceMeters",
        "road",
        "streetName",
        "toHex",
        "",
        "record",
        "feature",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/hud/BydStandalonePackets;

.field public static final MAX_DISTANCE_METERS:I = 0xfffffe


# direct methods
.method public static synthetic $r8$lambda$GhrpTfFQf7sX9k4ZJszai0z0mm8(B)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/hud/BydStandalonePackets;->toHex$lambda$4(B)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/hud/BydStandalonePackets;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/hud/BydStandalonePackets;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/hud/BydStandalonePackets;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydStandalonePackets;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic guidance$default(Lcom/shilapi/xcertplay/hud/BydStandalonePackets;IIILjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/hud/BydStandalonePackets;->guidance(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final record(II)[B
    .locals 8

    ushr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    ushr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    int-to-byte p1, p1

    ushr-int/lit8 v3, p2, 0x18

    int-to-byte v3, v3

    ushr-int/lit8 v4, p2, 0x10

    int-to-byte v4, v4

    ushr-int/lit8 v5, p2, 0x8

    int-to-byte v5, v5

    int-to-byte p2, p2

    const/16 v6, 0x9

    .line 62
    new-array v6, v6, [B

    const/4 v7, 0x0

    aput-byte v0, v6, v7

    const/4 v0, 0x1

    aput-byte v1, v6, v0

    const/4 v0, 0x2

    aput-byte v2, v6, v0

    const/4 v0, 0x3

    aput-byte p1, v6, v0

    const/4 p1, 0x4

    aput-byte p1, v6, p1

    const/4 p1, 0x5

    aput-byte v3, v6, p1

    const/4 p1, 0x6

    aput-byte v4, v6, p1

    const/4 p1, 0x7

    aput-byte v5, v6, p1

    const/16 p1, 0x8

    aput-byte p2, v6, p1

    return-object v6
.end method

.method private final toHex([B)Ljava/lang/String;
    .locals 10

    .line 56
    const-string v0, ","

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v7, Lcom/shilapi/xcertplay/hud/BydStandalonePackets$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/shilapi/xcertplay/hud/BydStandalonePackets$$ExternalSyntheticLambda0;-><init>()V

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v9}, Lkotlin/collections/ArraysKt;->joinToString$default([BLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static final toHex$lambda$4(B)Ljava/lang/CharSequence;
    .locals 3

    and-int/lit16 p0, p0, 0xff

    .line 56
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%02X"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "format(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method


# virtual methods
.method public final clear()Ljava/lang/String;
    .locals 1

    .line 7
    const-string v0, "43,E0,00,3A,01,01"

    return-object v0
.end method

.method public final guidance(IIILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 9
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydFactoryTurnCode;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydFactoryTurnCode;

    invoke-virtual {v0, p1, p2}, Lcom/shilapi/xcertplay/hud/BydFactoryTurnCode;->map(II)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ltz p3, :cond_2

    const v0, 0xffffff

    if-ge p3, v0, :cond_2

    const p2, 0x43f01018

    .line 11
    invoke-direct {p0, p2, p3}, Lcom/shilapi/xcertplay/hud/BydStandalonePackets;->record(II)[B

    move-result-object p2

    const p3, 0x43f01010

    invoke-direct {p0, p3, p1}, Lcom/shilapi/xcertplay/hud/BydStandalonePackets;->record(II)[B

    move-result-object p3

    invoke-static {p2, p3}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p2

    const p3, 0x43f01030

    .line 12
    invoke-direct {p0, p3, p1}, Lcom/shilapi/xcertplay/hud/BydStandalonePackets;->record(II)[B

    move-result-object p1

    .line 11
    invoke-static {p2, p1}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    .line 12
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/hud/BydStandalonePackets;->toHex([B)Ljava/lang/String;

    move-result-object p1

    if-eqz p4, :cond_0

    sget-object p2, Lcom/shilapi/xcertplay/hud/BydStandalonePackets;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydStandalonePackets;

    invoke-virtual {p2, p4}, Lcom/shilapi/xcertplay/hud/BydStandalonePackets;->streetName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, ","

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    :cond_0
    const-string p2, ""

    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object p2
.end method

.method public final start()Ljava/lang/String;
    .locals 1

    .line 6
    const-string v0, "43,E0,00,3A,01,02"

    return-object v0
.end method

.method public final streetName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "road"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 21
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/16 v4, 0x30

    if-ge v3, v4, :cond_4

    add-int/lit8 v3, v2, 0x1

    .line 22
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 24
    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/16 v6, 0x2e

    if-gt v5, v6, :cond_4

    .line 27
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 30
    :cond_0
    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-nez v2, :cond_3

    .line 31
    invoke-static {v4}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v4}, Lkotlin/text/CharsKt;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 32
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    :goto_1
    const/16 v2, 0x20

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    :goto_2
    move v2, v3

    goto :goto_0

    .line 19
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 35
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_5

    const-string p1, " "

    :cond_5
    check-cast p1, Ljava/lang/String;

    .line 36
    sget-object v0, Lkotlin/text/Charsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const-string p1, "getBytes(...)"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    array-length p1, v2

    const/16 v0, 0x8

    add-int/2addr p1, v0

    .line 38
    div-int/lit8 p1, p1, 0x7

    mul-int/lit8 p1, p1, 0x7

    new-array v3, p1, [B

    const/4 v4, 0x0

    :goto_3
    if-ge v4, p1, :cond_6

    const/4 v5, -0x1

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 39
    :cond_6
    array-length v4, v2

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 40
    invoke-static/range {v2 .. v8}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    .line 41
    array-length v4, v2

    add-int/lit8 v4, v4, 0x1

    array-length v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_4
    if-ge v6, v5, :cond_7

    aget-byte v8, v2, v6

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_7
    int-to-byte v2, v7

    aput-byte v2, v3, v4

    .line 42
    div-int/lit8 p1, p1, 0x7

    mul-int/lit8 v2, p1, 0xd

    new-array v2, v2, [B

    :goto_5
    if-ge v1, p1, :cond_8

    shl-int/lit8 v4, v1, 0xc

    const v5, 0x43fa1008

    add-int/2addr v4, v5

    mul-int/lit8 v5, v1, 0xd

    ushr-int/lit8 v6, v4, 0x18

    int-to-byte v6, v6

    .line 46
    aput-byte v6, v2, v5

    add-int/lit8 v6, v5, 0x1

    ushr-int/lit8 v7, v4, 0x10

    int-to-byte v7, v7

    .line 47
    aput-byte v7, v2, v6

    add-int/lit8 v6, v5, 0x2

    ushr-int/lit8 v7, v4, 0x8

    int-to-byte v7, v7

    .line 48
    aput-byte v7, v2, v6

    add-int/lit8 v6, v5, 0x3

    int-to-byte v7, v4

    .line 49
    aput-byte v7, v2, v6

    add-int/lit8 v6, v5, 0x4

    .line 50
    aput-byte v0, v2, v6

    add-int/lit8 v6, v5, 0x5

    ushr-int/lit8 v4, v4, 0xc

    int-to-byte v4, v4

    .line 51
    aput-byte v4, v2, v6

    add-int/lit8 v5, v5, 0x6

    mul-int/lit8 v4, v1, 0x7

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v6, v1, 0x7

    .line 52
    invoke-static {v3, v2, v5, v4, v6}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    goto :goto_5

    .line 54
    :cond_8
    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/hud/BydStandalonePackets;->toHex([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
