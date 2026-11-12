.class public final Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;
.super Ljava/lang/Object;
.source "Iap2LinkEngine.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008 \n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001Ba\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\t\u0010\u001a\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010 \u001a\u00020\u0003H\u00c6\u0003J\t\u0010!\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\"\u001a\u00020\u0003H\u00c6\u0003Jc\u0010#\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\u00032\u0008\u0008\u0002\u0010\n\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010$\u001a\u00020\u00072\u0008\u0010%\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010&\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\'\u001a\u00020(H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0010R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0010R\u0011\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0010R\u0011\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0010R\u0011\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0010R\u0011\u0010\u000c\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0010\u00a8\u0006)"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;",
        "",
        "maxOutgoing",
        "",
        "maxOutgoingDelta",
        "acknowledgementTimeoutMillis",
        "zeroAcknowledgements",
        "",
        "controlSessionVersion",
        "maximumQueuedPackets",
        "maximumOutOfOrderPackets",
        "maximumPendingOutputBytes",
        "maximumPendingEvents",
        "<init>",
        "(IIIZIIIII)V",
        "getMaxOutgoing",
        "()I",
        "getMaxOutgoingDelta",
        "getAcknowledgementTimeoutMillis",
        "getZeroAcknowledgements",
        "()Z",
        "getControlSessionVersion",
        "getMaximumQueuedPackets",
        "getMaximumOutOfOrderPackets",
        "getMaximumPendingOutputBytes",
        "getMaximumPendingEvents",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "",
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
.field private final acknowledgementTimeoutMillis:I

.field private final controlSessionVersion:I

.field private final maxOutgoing:I

.field private final maxOutgoingDelta:I

.field private final maximumOutOfOrderPackets:I

.field private final maximumPendingEvents:I

.field private final maximumPendingOutputBytes:I

.field private final maximumQueuedPackets:I

.field private final zeroAcknowledgements:Z


# direct methods
.method public constructor <init>()V
    .locals 12

    const/16 v10, 0x1ff

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;-><init>(IIIZIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIIZIIIII)V
    .locals 1

    .line 693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 694
    iput p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->maxOutgoing:I

    .line 695
    iput p2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->maxOutgoingDelta:I

    .line 696
    iput p3, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->acknowledgementTimeoutMillis:I

    .line 697
    iput-boolean p4, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->zeroAcknowledgements:Z

    .line 698
    iput p5, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->controlSessionVersion:I

    .line 699
    iput p6, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->maximumQueuedPackets:I

    .line 700
    iput p7, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->maximumOutOfOrderPackets:I

    .line 701
    iput p8, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->maximumPendingOutputBytes:I

    .line 702
    iput p9, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->maximumPendingEvents:I

    .line 705
    const-string p4, "Failed requirement."

    if-ltz p1, :cond_7

    const/16 v0, 0x100

    if-ge p1, v0, :cond_7

    if-ltz p2, :cond_6

    if-ge p2, v0, :cond_6

    if-ltz p3, :cond_5

    const/high16 p1, 0x10000

    if-ge p3, p1, :cond_5

    if-ltz p5, :cond_4

    if-ge p5, v0, :cond_4

    const/4 p1, 0x1

    if-gt p1, p6, :cond_3

    const/16 p2, 0x101

    if-ge p6, p2, :cond_3

    if-gt p1, p7, :cond_2

    if-ge p7, p2, :cond_2

    if-lt p8, p1, :cond_1

    if-lt p9, p1, :cond_0

    return-void

    .line 712
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 711
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 710
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 709
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 708
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 707
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 706
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 705
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(IIIZIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p11, p10, 0x1

    if-eqz p11, :cond_0

    const/16 p1, 0x1e

    :cond_0
    and-int/lit8 p11, p10, 0x2

    const/4 v0, 0x0

    if-eqz p11, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_2

    const/16 p3, 0x1f4

    :cond_2
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_3

    const/4 p4, 0x0

    :cond_3
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_4

    const/4 p5, 0x1

    :cond_4
    and-int/lit8 p11, p10, 0x20

    const/16 v0, 0x40

    if-eqz p11, :cond_5

    const/16 p6, 0x40

    :cond_5
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_6

    const/16 p7, 0x40

    :cond_6
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_7

    const/high16 p8, 0x100000

    :cond_7
    const/16 p11, 0x100

    and-int/2addr p10, p11

    if-eqz p10, :cond_8

    move p9, p7

    move p10, p8

    move p7, p5

    move p8, p6

    move p5, p3

    move p6, p4

    move p3, p1

    move p4, p2

    move-object p2, p0

    goto :goto_0

    :cond_8
    move p11, p9

    move p10, p8

    move p8, p6

    move p9, p7

    move p6, p4

    move p7, p5

    move p4, p2

    move p5, p3

    move-object p2, p0

    move p3, p1

    .line 693
    :goto_0
    invoke-direct/range {p2 .. p11}, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;-><init>(IIIZIIIII)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;IIIZIIIIIILjava/lang/Object;)Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;
    .locals 0

    and-int/lit8 p11, p10, 0x1

    if-eqz p11, :cond_0

    iget p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->maxOutgoing:I

    :cond_0
    and-int/lit8 p11, p10, 0x2

    if-eqz p11, :cond_1

    iget p2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->maxOutgoingDelta:I

    :cond_1
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_2

    iget p3, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->acknowledgementTimeoutMillis:I

    :cond_2
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_3

    iget-boolean p4, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->zeroAcknowledgements:Z

    :cond_3
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_4

    iget p5, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->controlSessionVersion:I

    :cond_4
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_5

    iget p6, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->maximumQueuedPackets:I

    :cond_5
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_6

    iget p7, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->maximumOutOfOrderPackets:I

    :cond_6
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_7

    iget p8, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->maximumPendingOutputBytes:I

    :cond_7
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_8

    iget p9, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->maximumPendingEvents:I

    :cond_8
    move p10, p8

    move p11, p9

    move p8, p6

    move p9, p7

    move p6, p4

    move p7, p5

    move p4, p2

    move p5, p3

    move-object p2, p0

    move p3, p1

    invoke-virtual/range {p2 .. p11}, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->copy(IIIZIIIII)Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->maxOutgoing:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->maxOutgoingDelta:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->acknowledgementTimeoutMillis:I

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->zeroAcknowledgements:Z

    return v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->controlSessionVersion:I

    return v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->maximumQueuedPackets:I

    return v0
.end method

.method public final component7()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->maximumOutOfOrderPackets:I

    return v0
.end method

.method public final component8()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->maximumPendingOutputBytes:I

    return v0
.end method

.method public final component9()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->maximumPendingEvents:I

    return v0
.end method

.method public final copy(IIIZIIIII)Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;
    .locals 10

    new-instance v0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;-><init>(IIIZIIIII)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;

    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->maxOutgoing:I

    iget v3, p1, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->maxOutgoing:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->maxOutgoingDelta:I

    iget v3, p1, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->maxOutgoingDelta:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->acknowledgementTimeoutMillis:I

    iget v3, p1, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->acknowledgementTimeoutMillis:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->zeroAcknowledgements:Z

    iget-boolean v3, p1, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->zeroAcknowledgements:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->controlSessionVersion:I

    iget v3, p1, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->controlSessionVersion:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->maximumQueuedPackets:I

    iget v3, p1, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->maximumQueuedPackets:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->maximumOutOfOrderPackets:I

    iget v3, p1, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->maximumOutOfOrderPackets:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->maximumPendingOutputBytes:I

    iget v3, p1, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->maximumPendingOutputBytes:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->maximumPendingEvents:I

    iget p1, p1, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->maximumPendingEvents:I

    if-eq v1, p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getAcknowledgementTimeoutMillis()I
    .locals 1

    .line 696
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->acknowledgementTimeoutMillis:I

    return v0
.end method

.method public final getControlSessionVersion()I
    .locals 1

    .line 698
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->controlSessionVersion:I

    return v0
.end method

.method public final getMaxOutgoing()I
    .locals 1

    .line 694
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->maxOutgoing:I

    return v0
.end method

.method public final getMaxOutgoingDelta()I
    .locals 1

    .line 695
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->maxOutgoingDelta:I

    return v0
.end method

.method public final getMaximumOutOfOrderPackets()I
    .locals 1

    .line 700
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->maximumOutOfOrderPackets:I

    return v0
.end method

.method public final getMaximumPendingEvents()I
    .locals 1

    .line 702
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->maximumPendingEvents:I

    return v0
.end method

.method public final getMaximumPendingOutputBytes()I
    .locals 1

    .line 701
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->maximumPendingOutputBytes:I

    return v0
.end method

.method public final getMaximumQueuedPackets()I
    .locals 1

    .line 699
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->maximumQueuedPackets:I

    return v0
.end method

.method public final getZeroAcknowledgements()Z
    .locals 1

    .line 697
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->zeroAcknowledgements:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->maxOutgoing:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->maxOutgoingDelta:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->acknowledgementTimeoutMillis:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->zeroAcknowledgements:Z

    invoke-static {v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->controlSessionVersion:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->maximumQueuedPackets:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->maximumOutOfOrderPackets:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->maximumPendingOutputBytes:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->maximumPendingEvents:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->maxOutgoing:I

    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->maxOutgoingDelta:I

    iget v2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->acknowledgementTimeoutMillis:I

    iget-boolean v3, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->zeroAcknowledgements:Z

    iget v4, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->controlSessionVersion:I

    iget v5, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->maximumQueuedPackets:I

    iget v6, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->maximumOutOfOrderPackets:I

    iget v7, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->maximumPendingOutputBytes:I

    iget v8, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->maximumPendingEvents:I

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Iap2LinkConfig(maxOutgoing="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", maxOutgoingDelta="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", acknowledgementTimeoutMillis="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", zeroAcknowledgements="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", controlSessionVersion="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", maximumQueuedPackets="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", maximumOutOfOrderPackets="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", maximumPendingOutputBytes="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", maximumPendingEvents="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
