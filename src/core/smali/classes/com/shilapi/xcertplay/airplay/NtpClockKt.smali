.class public final Lcom/shilapi/xcertplay/airplay/NtpClockKt;
.super Ljava/lang/Object;
.source "NtpClock.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u001a\u0010\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u0001H\u0002\u001a\u0008\u0010\u0008\u001a\u00020\u0003H\u0002\u001a\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0001H\u0002\u001a\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0003H\u0002\u001a\u0018\u0010\u000e\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002\u001a \u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u0010H\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0016\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0016\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "NTP_EPOCH_OFFSET",
        "",
        "TWO32",
        "Ljava/math/BigInteger;",
        "kotlin.jvm.PlatformType",
        "NANOS_PER_SECOND",
        "wallClockNtpOffsetNs",
        "monoNs",
        "ntp64Now",
        "ntpFromNanos",
        "ns",
        "ntpBytes",
        "",
        "value",
        "readNtp",
        "offset",
        "",
        "writeU16Be",
        "",
        "target",
        "shared_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final NANOS_PER_SECOND:Ljava/math/BigInteger;

.field private static final NTP_EPOCH_OFFSET:J = 0x83aa7e80L

.field private static final TWO32:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 237
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/airplay/NtpClockKt;->TWO32:Ljava/math/BigInteger;

    const-wide/32 v0, 0x3b9aca00

    .line 238
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/airplay/NtpClockKt;->NANOS_PER_SECOND:Ljava/math/BigInteger;

    return-void
.end method

.method public static final synthetic access$ntpBytes(Ljava/math/BigInteger;)[B
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/shilapi/xcertplay/airplay/NtpClockKt;->ntpBytes(Ljava/math/BigInteger;)[B

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$ntpFromNanos(J)Ljava/math/BigInteger;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/NtpClockKt;->ntpFromNanos(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$readNtp([BI)Ljava/math/BigInteger;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/NtpClockKt;->readNtp([BI)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$wallClockNtpOffsetNs(J)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/NtpClockKt;->wallClockNtpOffsetNs(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$writeU16Be([BII)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/airplay/NtpClockKt;->writeU16Be([BII)V

    return-void
.end method

.method private static final ntp64Now()Ljava/math/BigInteger;
    .locals 6

    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    const-wide v2, 0x83aa7e80L

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    .line 250
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-long v2, v2

    long-to-double v4, v2

    .line 251
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v4

    sget-object v4, Lcom/shilapi/xcertplay/airplay/NtpClockKt;->TWO32:Ljava/math/BigInteger;

    invoke-virtual {v4}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v4

    mul-double v0, v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    .line 252
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    const-string v1, "or(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final ntpBytes(Ljava/math/BigInteger;)[B
    .locals 8

    .line 262
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    const/16 v0, 0x8

    .line 263
    new-array v2, v0, [B

    .line 264
    array-length v1, p0

    if-le v1, v0, :cond_0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v1, p0

    sub-int/2addr v1, v0

    array-length v3, p0

    invoke-static {p0, v1, v3}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object p0

    :cond_0
    move-object v1, p0

    .line 265
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length p0, v1

    rsub-int/lit8 v3, p0, 0x8

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    return-object v2
.end method

.method private static final ntpFromNanos(J)Ljava/math/BigInteger;
    .locals 4

    const-wide/32 v0, 0x3b9aca00

    .line 256
    invoke-static {p0, p1, v0, v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m$1(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    .line 257
    invoke-static {p0, p1, v0, v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m$2(JJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    const/16 p1, 0x20

    .line 258
    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p0

    sget-object p1, Lcom/shilapi/xcertplay/airplay/NtpClockKt;->NANOS_PER_SECOND:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    const-string p1, "or(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final readNtp([BI)Ljava/math/BigInteger;
    .locals 2

    .line 270
    new-instance v0, Ljava/math/BigInteger;

    add-int/lit8 v1, p1, 0x8

    invoke-static {p0, p1, v1}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x1

    invoke-direct {v0, p1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method private static final wallClockNtpOffsetNs(J)J
    .locals 3

    .line 241
    invoke-static {}, Lcom/shilapi/xcertplay/airplay/NtpClockKt;->ntp64Now()Ljava/math/BigInteger;

    move-result-object v0

    .line 242
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 243
    sget-object v1, Lcom/shilapi/xcertplay/airplay/NtpClockKt;->NANOS_PER_SECOND:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    const/16 v1, 0x20

    .line 244
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 245
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private static final writeU16Be([BII)V
    .locals 1

    ushr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 273
    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 274
    aput-byte p2, p0, p1

    return-void
.end method
