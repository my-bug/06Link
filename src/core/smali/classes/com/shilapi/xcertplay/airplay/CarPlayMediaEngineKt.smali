.class public final Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngineKt;
.super Ljava/lang/Object;
.source "CarPlayMediaEngine.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCarPlayMediaEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CarPlayMediaEngine.kt\ncom/shilapi/xcertplay/airplay/CarPlayMediaEngineKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,477:1\n1#2:478\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u001a\u0014\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0000\u001a\u0012\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "unsignedPlistDecimal",
        "",
        "value",
        "",
        "unsignedPlistInteger",
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


# direct methods
.method public static final unsignedPlistDecimal(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 464
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 465
    :cond_0
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 466
    :cond_1
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result p0

    const v0, 0xffff

    and-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 467
    :cond_2
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 468
    :cond_3
    instance-of v0, p0, Ljava/math/BigInteger;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    check-cast p0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_4

    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v1

    .line 469
    :cond_5
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_6

    check-cast p0, Ljava/lang/Number;

    goto :goto_0

    :cond_6
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    return-object v1
.end method

.method public static final unsignedPlistInteger(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 473
    instance-of v0, p0, Ljava/lang/Long;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-gez v5, :cond_2

    new-instance p0, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 474
    :cond_0
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-gez v1, :cond_2

    new-instance p0, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_1
    if-nez p0, :cond_2

    .line 475
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :cond_2
    return-object p0
.end method
