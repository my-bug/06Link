.class public final Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;
.super Ljava/lang/Object;
.source "Iap2LinkEngine.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SynchronizationPayload"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIap2LinkEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Iap2LinkEngine.kt\ncom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,715:1\n1869#2,2:716\n*S KotlinDebug\n*F\n+ 1 Iap2LinkEngine.kt\ncom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload\n*L\n74#1:716,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0012\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000 \'2\u00020\u0001:\u0001\'BE\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0006\u0010\u0017\u001a\u00020\u0018J\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u0003H\u00c6\u0003J\u000f\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u00c6\u0003JU\u0010 \u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u000e\u0008\u0002\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u00c6\u0001J\u0013\u0010!\u001a\u00020\"2\u0008\u0010#\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010$\u001a\u00020\u0003H\u00d6\u0001J\t\u0010%\u001a\u00020&H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000fR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u000fR\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u000fR\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006("
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;",
        "",
        "maxOutgoing",
        "",
        "maxLength",
        "retransmissionTimeoutMillis",
        "acknowledgementTimeoutMillis",
        "maxRetransmissions",
        "maxAcknowledgements",
        "sessions",
        "",
        "Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;",
        "<init>",
        "(IIIIIILjava/util/List;)V",
        "getMaxOutgoing",
        "()I",
        "getMaxLength",
        "getRetransmissionTimeoutMillis",
        "getAcknowledgementTimeoutMillis",
        "getMaxRetransmissions",
        "getMaxAcknowledgements",
        "getSessions",
        "()Ljava/util/List;",
        "encode",
        "",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
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
.field public static final Companion:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload$Companion;


# instance fields
.field private final acknowledgementTimeoutMillis:I

.field private final maxAcknowledgements:I

.field private final maxLength:I

.field private final maxOutgoing:I

.field private final maxRetransmissions:I

.field private final retransmissionTimeoutMillis:I

.field private final sessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->Companion:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload$Companion;

    return-void
.end method

.method public constructor <init>(IIIIIILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIII",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;",
            ">;)V"
        }
    .end annotation

    const-string v0, "sessions"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->maxOutgoing:I

    .line 49
    iput p2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->maxLength:I

    .line 50
    iput p3, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->retransmissionTimeoutMillis:I

    .line 51
    iput p4, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->acknowledgementTimeoutMillis:I

    .line 52
    iput p5, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->maxRetransmissions:I

    .line 53
    iput p6, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->maxAcknowledgements:I

    .line 54
    iput-object p7, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->sessions:Ljava/util/List;

    .line 57
    const-string p7, "Failed requirement."

    if-ltz p1, :cond_5

    const/16 v0, 0x100

    if-ge p1, v0, :cond_5

    if-ltz p2, :cond_4

    const/high16 p1, 0x10000

    if-ge p2, p1, :cond_4

    if-ltz p3, :cond_3

    if-ge p3, p1, :cond_3

    if-ltz p4, :cond_2

    if-ge p4, p1, :cond_2

    if-ltz p5, :cond_1

    if-ge p5, v0, :cond_1

    if-ltz p6, :cond_0

    if-ge p6, v0, :cond_0

    return-void

    .line 62
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;IIIIIILjava/util/List;ILjava/lang/Object;)Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;
    .locals 0

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->maxOutgoing:I

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget p2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->maxLength:I

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    iget p3, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->retransmissionTimeoutMillis:I

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    iget p4, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->acknowledgementTimeoutMillis:I

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    iget p5, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->maxRetransmissions:I

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    iget p6, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->maxAcknowledgements:I

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    iget-object p7, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->sessions:Ljava/util/List;

    :cond_6
    move p8, p6

    move-object p9, p7

    move p6, p4

    move p7, p5

    move p4, p2

    move p5, p3

    move-object p2, p0

    move p3, p1

    invoke-virtual/range {p2 .. p9}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->copy(IIIIIILjava/util/List;)Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->maxOutgoing:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->maxLength:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->retransmissionTimeoutMillis:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->acknowledgementTimeoutMillis:I

    return v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->maxRetransmissions:I

    return v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->maxAcknowledgements:I

    return v0
.end method

.method public final component7()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->sessions:Ljava/util/List;

    return-object v0
.end method

.method public final copy(IIIIIILjava/util/List;)Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIII",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;",
            ">;)",
            "Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;"
        }
    .end annotation

    const-string v0, "sessions"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;-><init>(IIIIIILjava/util/List;)V

    return-object v1
.end method

.method public final encode()[B
    .locals 4

    .line 66
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->sessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0xa

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v1, 0x1

    .line 67
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 68
    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->maxOutgoing:I

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 69
    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->Companion:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;

    iget v2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->maxLength:I

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->writeU16(Ljava/io/ByteArrayOutputStream;I)V
    invoke-static {v1, v0, v2}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->access$writeU16(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;Ljava/io/ByteArrayOutputStream;I)V

    .line 70
    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->Companion:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;

    iget v2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->retransmissionTimeoutMillis:I

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->writeU16(Ljava/io/ByteArrayOutputStream;I)V
    invoke-static {v1, v0, v2}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->access$writeU16(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;Ljava/io/ByteArrayOutputStream;I)V

    .line 71
    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->Companion:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;

    iget v2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->acknowledgementTimeoutMillis:I

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->writeU16(Ljava/io/ByteArrayOutputStream;I)V
    invoke-static {v1, v0, v2}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->access$writeU16(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;Ljava/io/ByteArrayOutputStream;I)V

    .line 72
    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->maxRetransmissions:I

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 73
    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->maxAcknowledgements:I

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 74
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->sessions:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 716
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;

    .line 75
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 76
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;->getKind()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 77
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;->getVersion()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string/jumbo v1, "toByteArray(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;

    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->maxOutgoing:I

    iget v3, p1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->maxOutgoing:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->maxLength:I

    iget v3, p1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->maxLength:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->retransmissionTimeoutMillis:I

    iget v3, p1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->retransmissionTimeoutMillis:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->acknowledgementTimeoutMillis:I

    iget v3, p1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->acknowledgementTimeoutMillis:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->maxRetransmissions:I

    iget v3, p1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->maxRetransmissions:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->maxAcknowledgements:I

    iget v3, p1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->maxAcknowledgements:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->sessions:Ljava/util/List;

    iget-object p1, p1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->sessions:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getAcknowledgementTimeoutMillis()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->acknowledgementTimeoutMillis:I

    return v0
.end method

.method public final getMaxAcknowledgements()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->maxAcknowledgements:I

    return v0
.end method

.method public final getMaxLength()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->maxLength:I

    return v0
.end method

.method public final getMaxOutgoing()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->maxOutgoing:I

    return v0
.end method

.method public final getMaxRetransmissions()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->maxRetransmissions:I

    return v0
.end method

.method public final getRetransmissionTimeoutMillis()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->retransmissionTimeoutMillis:I

    return v0
.end method

.method public final getSessions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->sessions:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->maxOutgoing:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->maxLength:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->retransmissionTimeoutMillis:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->acknowledgementTimeoutMillis:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->maxRetransmissions:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->maxAcknowledgements:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->sessions:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->maxOutgoing:I

    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->maxLength:I

    iget v2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->retransmissionTimeoutMillis:I

    iget v3, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->acknowledgementTimeoutMillis:I

    iget v4, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->maxRetransmissions:I

    iget v5, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->maxAcknowledgements:I

    iget-object v6, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->sessions:Ljava/util/List;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "SynchronizationPayload(maxOutgoing="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", maxLength="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", retransmissionTimeoutMillis="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", acknowledgementTimeoutMillis="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", maxRetransmissions="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", maxAcknowledgements="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", sessions="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
