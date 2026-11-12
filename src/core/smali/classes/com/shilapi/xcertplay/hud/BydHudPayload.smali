.class public final Lcom/shilapi/xcertplay/hud/BydHudPayload;
.super Ljava/lang/Object;
.source "BydHudPayload.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J6\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u00052\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\rJ\u0006\u0010\u000f\u001a\u00020\u0008J\u0010\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0005H\u0002J\u0010\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0013\u001a\u00020\rH\u0002J\u001c\u0010\u0014\u001a\u00020\u0015*\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0018H\u0002J\u001c\u0010\u0019\u001a\u00020\u0015*\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0008H\u0002J\u000c\u0010\u001a\u001a\u00020\u0008*\u00020\u0008H\u0002J\u0014\u0010\u001b\u001a\u00020\u0015*\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u0018H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/hud/BydHudPayload;",
        "",
        "<init>",
        "()V",
        "MIN_DISTANCE_METERS",
        "",
        "MAX_TEXT_BYTES",
        "guidance",
        "",
        "distanceMeters",
        "maneuver",
        "icon",
        "road",
        "",
        "eta",
        "clear",
        "displayDistance",
        "meters",
        "text",
        "value",
        "field",
        "",
        "Ljava/io/ByteArrayOutputStream;",
        "number",
        "",
        "bytes",
        "wrap",
        "writeVarint",
        "initialValue",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/hud/BydHudPayload;

.field private static final MAX_TEXT_BYTES:I = 0xc8

.field private static final MIN_DISTANCE_METERS:I = 0xb


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/hud/BydHudPayload;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/hud/BydHudPayload;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/hud/BydHudPayload;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydHudPayload;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final bytes(Ljava/io/ByteArrayOutputStream;I[B)V
    .locals 4

    int-to-long v0, p2

    const/4 p2, 0x3

    shl-long/2addr v0, p2

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    .line 53
    invoke-direct {p0, p1, v0, v1}, Lcom/shilapi/xcertplay/hud/BydHudPayload;->writeVarint(Ljava/io/ByteArrayOutputStream;J)V

    .line 54
    array-length p2, p3

    int-to-long v0, p2

    invoke-direct {p0, p1, v0, v1}, Lcom/shilapi/xcertplay/hud/BydHudPayload;->writeVarint(Ljava/io/ByteArrayOutputStream;J)V

    .line 55
    invoke-virtual {p1, p3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    return-void
.end method

.method private final displayDistance(I)I
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    const/16 v0, 0xb

    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    return p1
.end method

.method private final field(Ljava/io/ByteArrayOutputStream;IJ)V
    .locals 2

    int-to-long v0, p2

    const/4 p2, 0x3

    shl-long/2addr v0, p2

    .line 48
    invoke-direct {p0, p1, v0, v1}, Lcom/shilapi/xcertplay/hud/BydHudPayload;->writeVarint(Ljava/io/ByteArrayOutputStream;J)V

    .line 49
    invoke-direct {p0, p1, p3, p4}, Lcom/shilapi/xcertplay/hud/BydHudPayload;->writeVarint(Ljava/io/ByteArrayOutputStream;J)V

    return-void
.end method

.method public static synthetic guidance$default(Lcom/shilapi/xcertplay/hud/BydHudPayload;II[BLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)[B
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const/4 p3, 0x0

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p6, 0x8

    .line 10
    const-string p7, ""

    if-eqz p3, :cond_1

    move-object v4, p7

    goto :goto_0

    :cond_1
    move-object v4, p4

    :goto_0
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    move-object v5, p7

    goto :goto_1

    :cond_2
    move-object v5, p5

    :goto_1
    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/shilapi/xcertplay/hud/BydHudPayload;->guidance(II[BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private final text(Ljava/lang/String;)[B
    .locals 3

    .line 39
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "getBytes(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    array-length v0, p1

    const/16 v1, 0xc8

    if-gt v0, v1, :cond_0

    return-object p1

    :cond_0
    :goto_0
    if-lez v1, :cond_1

    .line 43
    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xc0

    const/16 v2, 0x80

    if-ne v0, v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 44
    :cond_1
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const-string v0, "copyOf(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final wrap([B)[B
    .locals 4

    .line 58
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v1, p1

    add-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v1, 0xa

    .line 59
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 60
    sget-object v1, Lcom/shilapi/xcertplay/hud/BydHudPayload;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydHudPayload;

    array-length v2, p1

    int-to-long v2, v2

    invoke-direct {v1, v0, v2, v3}, Lcom/shilapi/xcertplay/hud/BydHudPayload;->writeVarint(Ljava/io/ByteArrayOutputStream;J)V

    .line 61
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 62
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const-string/jumbo v0, "toByteArray(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final writeVarint(Ljava/io/ByteArrayOutputStream;J)V
    .locals 4

    :cond_0
    const-wide/16 v0, 0x7f

    and-long/2addr v0, p2

    long-to-int v1, v0

    const/4 v0, 0x7

    ushr-long/2addr p2, v0

    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-eqz v0, :cond_1

    or-int/lit16 v1, v1, 0x80

    .line 70
    :cond_1
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    cmp-long v0, p2, v2

    if-nez v0, :cond_0

    return-void
.end method


# virtual methods
.method public final clear()[B
    .locals 5

    .line 30
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 31
    sget-object v1, Lcom/shilapi/xcertplay/hud/BydHudPayload;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydHudPayload;

    const/4 v2, 0x2

    const-wide/16 v3, 0x2

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/shilapi/xcertplay/hud/BydHudPayload;->field(Ljava/io/ByteArrayOutputStream;IJ)V

    const/4 v2, 0x6

    const-wide/16 v3, 0xff

    .line 32
    invoke-direct {v1, v0, v2, v3, v4}, Lcom/shilapi/xcertplay/hud/BydHudPayload;->field(Ljava/io/ByteArrayOutputStream;IJ)V

    const/16 v2, 0x10

    const-wide/16 v3, 0x1

    .line 33
    invoke-direct {v1, v0, v2, v3, v4}, Lcom/shilapi/xcertplay/hud/BydHudPayload;->field(Ljava/io/ByteArrayOutputStream;IJ)V

    .line 34
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string/jumbo v1, "toByteArray(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/hud/BydHudPayload;->wrap([B)[B

    move-result-object v0

    return-object v0
.end method

.method public final guidance(II[BLjava/lang/String;Ljava/lang/String;)[B
    .locals 8

    const-string v0, "road"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eta"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    array-length v2, p3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v2, v2, 0x40

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 19
    sget-object v2, Lcom/shilapi/xcertplay/hud/BydHudPayload;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydHudPayload;

    const/4 v3, 0x2

    const-wide/16 v4, 0x2

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/shilapi/xcertplay/hud/BydHudPayload;->field(Ljava/io/ByteArrayOutputStream;IJ)V

    const/4 v3, 0x6

    const-wide/16 v6, 0x1

    .line 20
    invoke-direct {v2, v0, v3, v6, v7}, Lcom/shilapi/xcertplay/hud/BydHudPayload;->field(Ljava/io/ByteArrayOutputStream;IJ)V

    const/4 v3, 0x7

    .line 21
    new-array v6, v1, [B

    invoke-direct {v2, v0, v3, v6}, Lcom/shilapi/xcertplay/hud/BydHudPayload;->bytes(Ljava/io/ByteArrayOutputStream;I[B)V

    if-nez p3, :cond_1

    .line 22
    new-array p3, v1, [B

    :cond_1
    const/16 v3, 0x8

    invoke-direct {v2, v0, v3, p3}, Lcom/shilapi/xcertplay/hud/BydHudPayload;->bytes(Ljava/io/ByteArrayOutputStream;I[B)V

    .line 23
    invoke-direct {v2, p1}, Lcom/shilapi/xcertplay/hud/BydHudPayload;->displayDistance(I)I

    move-result p1

    int-to-long v6, p1

    const/16 p1, 0x9

    invoke-direct {v2, v0, p1, v6, v7}, Lcom/shilapi/xcertplay/hud/BydHudPayload;->field(Ljava/io/ByteArrayOutputStream;IJ)V

    const/16 p1, 0xa

    .line 24
    invoke-direct {v2, p4}, Lcom/shilapi/xcertplay/hud/BydHudPayload;->text(Ljava/lang/String;)[B

    move-result-object p3

    invoke-direct {v2, v0, p1, p3}, Lcom/shilapi/xcertplay/hud/BydHudPayload;->bytes(Ljava/io/ByteArrayOutputStream;I[B)V

    const/16 p1, 0x10

    .line 25
    invoke-direct {v2, v0, p1, v4, v5}, Lcom/shilapi/xcertplay/hud/BydHudPayload;->field(Ljava/io/ByteArrayOutputStream;IJ)V

    const/16 p1, 0x1a

    .line 26
    invoke-direct {v2, p5}, Lcom/shilapi/xcertplay/hud/BydHudPayload;->text(Ljava/lang/String;)[B

    move-result-object p3

    invoke-direct {v2, v0, p1, p3}, Lcom/shilapi/xcertplay/hud/BydHudPayload;->bytes(Ljava/io/ByteArrayOutputStream;I[B)V

    .line 27
    invoke-static {p2, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    int-to-long p1, p1

    const/16 p3, 0x1c

    invoke-direct {v2, v0, p3, p1, p2}, Lcom/shilapi/xcertplay/hud/BydHudPayload;->field(Ljava/io/ByteArrayOutputStream;IJ)V

    .line 28
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const-string/jumbo p2, "toByteArray(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/hud/BydHudPayload;->wrap([B)[B

    move-result-object p1

    return-object p1
.end method
