.class final Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder$Timestamp;
.super Ljava/lang/Object;
.source "Iap2LocationClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Timestamp"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u000f\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u001c\u0010\u0008\u001a\n \u0007*\u0004\u0018\u00010\u00060\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0017\u0010\u000b\u001a\u00020\n8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000eR\u0017\u0010\u000f\u001a\u00020\n8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u000c\u001a\u0004\u0008\u0010\u0010\u000eR\u0017\u0010\u0011\u001a\u00020\n8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u000c\u001a\u0004\u0008\u0012\u0010\u000eR\u0017\u0010\u0013\u001a\u00020\n8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u000c\u001a\u0004\u0008\u0014\u0010\u000eR\u0017\u0010\u0015\u001a\u00020\n8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u000c\u001a\u0004\u0008\u0016\u0010\u000eR\u0017\u0010\u0017\u001a\u00020\n8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u000c\u001a\u0004\u0008\u0018\u0010\u000e\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder$Timestamp;",
        "",
        "",
        "millis",
        "<init>",
        "(J)V",
        "j$/time/ZonedDateTime",
        "kotlin.jvm.PlatformType",
        "fields",
        "Lj$/time/ZonedDateTime;",
        "",
        "hour",
        "I",
        "getHour",
        "()I",
        "minute",
        "getMinute",
        "second",
        "getSecond",
        "day",
        "getDay",
        "month",
        "getMonth",
        "year",
        "getYear",
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


# instance fields
.field private final day:I

.field private final fields:Lj$/time/ZonedDateTime;

.field private final hour:I

.field private final minute:I

.field private final month:I

.field private final second:I

.field private final year:I


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-static {p1, p2}, Lj$/time/Instant;->ofEpochMilli(J)Lj$/time/Instant;

    move-result-object p1

    .line 122
    sget-object p2, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    check-cast p2, Lj$/time/ZoneId;

    invoke-virtual {p1, p2}, Lj$/time/Instant;->atZone(Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder$Timestamp;->fields:Lj$/time/ZonedDateTime;

    .line 124
    invoke-virtual {p1}, Lj$/time/ZonedDateTime;->getHour()I

    move-result p2

    iput p2, p0, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder$Timestamp;->hour:I

    .line 125
    invoke-virtual {p1}, Lj$/time/ZonedDateTime;->getMinute()I

    move-result p2

    iput p2, p0, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder$Timestamp;->minute:I

    .line 126
    invoke-virtual {p1}, Lj$/time/ZonedDateTime;->getSecond()I

    move-result p2

    iput p2, p0, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder$Timestamp;->second:I

    .line 127
    invoke-virtual {p1}, Lj$/time/ZonedDateTime;->getDayOfMonth()I

    move-result p2

    iput p2, p0, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder$Timestamp;->day:I

    .line 128
    invoke-virtual {p1}, Lj$/time/ZonedDateTime;->getMonthValue()I

    move-result p2

    iput p2, p0, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder$Timestamp;->month:I

    .line 129
    invoke-virtual {p1}, Lj$/time/ZonedDateTime;->getYear()I

    move-result p1

    iput p1, p0, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder$Timestamp;->year:I

    return-void
.end method


# virtual methods
.method public final getDay()I
    .locals 1

    .line 127
    iget v0, p0, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder$Timestamp;->day:I

    return v0
.end method

.method public final getHour()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder$Timestamp;->hour:I

    return v0
.end method

.method public final getMinute()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder$Timestamp;->minute:I

    return v0
.end method

.method public final getMonth()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder$Timestamp;->month:I

    return v0
.end method

.method public final getSecond()I
    .locals 1

    .line 126
    iget v0, p0, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder$Timestamp;->second:I

    return v0
.end method

.method public final getYear()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder$Timestamp;->year:I

    return v0
.end method
