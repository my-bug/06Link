.class final Lj$/time/format/DateTimeFormatterBuilder$InstantPrinterParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InstantPrinterParser"
.end annotation


# instance fields
.field private final fractionalDigits:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 3407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3408
    iput p1, p0, Lj$/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    return-void
.end method


# virtual methods
.method public format(Lj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 3414
    sget-object v2, Lj$/time/temporal/ChronoField;->INSTANT_SECONDS:Lj$/time/temporal/ChronoField;

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Lj$/time/format/DateTimePrintContext;->getValue(Lj$/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v2

    .line 3416
    invoke-virtual {v3}, Lj$/time/format/DateTimePrintContext;->getTemporal()Lj$/time/temporal/TemporalAccessor;

    move-result-object v4

    sget-object v5, Lj$/time/temporal/ChronoField;->NANO_OF_SECOND:Lj$/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Lj$/time/temporal/TemporalAccessor;->isSupported(Lj$/time/temporal/TemporalField;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3417
    invoke-virtual {v3}, Lj$/time/format/DateTimePrintContext;->getTemporal()Lj$/time/temporal/TemporalAccessor;

    move-result-object v3

    invoke-interface {v3, v5}, Lj$/time/temporal/TemporalAccessor;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-nez v2, :cond_1

    return v4

    .line 3422
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    if-eqz v3, :cond_2

    .line 3423
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_1

    :cond_2
    move-wide v2, v8

    :goto_1
    invoke-virtual {v5, v2, v3}, Lj$/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v2

    const-wide v10, -0xe79747c00L

    .line 3425
    const-string v3, ":00"

    const-wide/16 v12, 0x1

    const-wide v14, 0xe79747c00L

    move-wide/from16 v16, v6

    const/16 p1, 0x1

    const-wide v5, 0x497968bd80L

    cmp-long v7, v16, v10

    if-ltz v7, :cond_4

    const-wide v10, 0x3afff44180L

    sub-long v10, v16, v10

    .line 3428
    invoke-static {v10, v11, v5, v6}, Lj$/time/DesugarLocalDate$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v16

    add-long v12, v16, v12

    .line 3429
    invoke-static {v10, v11, v5, v6}, Lj$/time/Clock$TickClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v5

    sub-long/2addr v5, v14

    .line 3430
    sget-object v7, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    invoke-static {v5, v6, v4, v7}, Lj$/time/LocalDateTime;->ofEpochSecond(JILj$/time/ZoneOffset;)Lj$/time/LocalDateTime;

    move-result-object v5

    cmp-long v6, v12, v8

    if-lez v6, :cond_3

    const/16 v6, 0x2b

    .line 3432
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3434
    :cond_3
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3435
    invoke-virtual {v5}, Lj$/time/LocalDateTime;->getSecond()I

    move-result v5

    if-nez v5, :cond_8

    .line 3436
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    add-long v10, v16, v14

    move-wide/from16 v16, v5

    .line 3441
    div-long v5, v10, v16

    .line 3442
    rem-long v10, v10, v16

    sub-long v14, v10, v14

    .line 3443
    sget-object v7, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    invoke-static {v14, v15, v4, v7}, Lj$/time/LocalDateTime;->ofEpochSecond(JILj$/time/ZoneOffset;)Lj$/time/LocalDateTime;

    move-result-object v7

    .line 3444
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    .line 3445
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3446
    invoke-virtual {v7}, Lj$/time/LocalDateTime;->getSecond()I

    move-result v15

    if-nez v15, :cond_5

    .line 3447
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    cmp-long v3, v5, v8

    if-gez v3, :cond_8

    .line 3450
    invoke-virtual {v7}, Lj$/time/LocalDateTime;->getYear()I

    move-result v3

    const/16 v7, -0x2710

    if-ne v3, v7, :cond_6

    add-int/lit8 v3, v14, 0x2

    sub-long/2addr v5, v12

    .line 3451
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v14, v3, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    cmp-long v3, v10, v8

    if-nez v3, :cond_7

    .line 3453
    invoke-virtual {v1, v14, v5, v6}, Ljava/lang/StringBuilder;->insert(IJ)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    add-int/lit8 v14, v14, 0x1

    .line 3455
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    invoke-virtual {v1, v14, v5, v6}, Ljava/lang/StringBuilder;->insert(IJ)Ljava/lang/StringBuilder;

    .line 3460
    :cond_8
    :goto_2
    iget v3, v0, Lj$/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    if-gez v3, :cond_9

    if-gtz v2, :cond_a

    :cond_9
    if-lez v3, :cond_e

    :cond_a
    const/16 v3, 0x2e

    .line 3461
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const v3, 0x5f5e100

    .line 3463
    :goto_3
    iget v5, v0, Lj$/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_b

    if-gtz v2, :cond_d

    :cond_b
    const/4 v6, -0x2

    if-ne v5, v6, :cond_c

    if-gtz v2, :cond_d

    rem-int/lit8 v6, v4, 0x3

    if-nez v6, :cond_d

    :cond_c
    if-ge v4, v5, :cond_e

    .line 3466
    :cond_d
    div-int v5, v2, v3

    add-int/lit8 v6, v5, 0x30

    int-to-char v6, v6

    .line 3467
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    mul-int v5, v5, v3

    sub-int/2addr v2, v5

    .line 3469
    div-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_e
    const/16 v2, 0x5a

    .line 3472
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 3529
    const-string v0, "Instant()"

    return-object v0
.end method
