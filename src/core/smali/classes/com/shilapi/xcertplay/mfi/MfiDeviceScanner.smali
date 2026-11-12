.class public final Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner;
.super Ljava/lang/Object;
.source "MfiDeviceScanner.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner$Companion;,
        Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner$DeviceVersionRead;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMfiDeviceScanner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MfiDeviceScanner.kt\ncom/shilapi/xcertplay/mfi/MfiDeviceScanner\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,156:1\n1#2:157\n774#3:158\n865#3,2:159\n1563#3:161\n1634#3,3:162\n*S KotlinDebug\n*F\n+ 1 MfiDeviceScanner.kt\ncom/shilapi/xcertplay/mfi/MfiDeviceScanner\n*L\n26#1:158\n26#1:159,2\n97#1:161\n97#1:162,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u001b2\u00020\u0001:\u0002\u001a\u001bB)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0006\u0010\u000b\u001a\u00020\u000cJ\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0006H\u0002J\u0010\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u0008H\u0002J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0008H\u0002J.\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0005*\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00180\u0017j\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0018`\u0019H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner;",
        "",
        "transport",
        "Lcom/shilapi/xcertplay/transport/I2cTransport;",
        "candidateAddresses",
        "",
        "",
        "probeTimeoutMillis",
        "",
        "<init>",
        "(Lcom/shilapi/xcertplay/transport/I2cTransport;Ljava/util/List;J)V",
        "scan",
        "Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;",
        "readDeviceVersion",
        "Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner$DeviceVersionRead;",
        "address7Bit",
        "deadlineAfter",
        "millis",
        "sleepMicros",
        "",
        "micros",
        "toFailures",
        "Lcom/shilapi/xcertplay/mfi/MfiDiscoveryFailure;",
        "Ljava/util/LinkedHashMap;",
        "Lcom/shilapi/xcertplay/mfi/MfiDiscoveryError;",
        "Lkotlin/collections/LinkedHashMap;",
        "DeviceVersionRead",
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
.field private static final BYTE_MASK:I = 0xff

.field public static final Companion:Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner$Companion;

.field private static final DEFAULT_CANDIDATE_ADDRESSES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_PROBE_TIMEOUT_MILLIS:J = 0x7d0L

.field private static final DEVICE_VERSION_REGISTER:I = 0x0

.field private static final MAX_ADDRESS_7_BIT:I = 0x7f

.field private static final MICROS_PER_MILLISECOND:J = 0x3e8L

.field private static final MIN_ADDRESS_7_BIT:I = 0x0

.field private static final NANOS_PER_MICROSECOND:J = 0x3e8L

.field private static final NANOS_PER_MILLISECOND:J = 0xf4240L

.field private static final READ_BIT:I = 0x1

.field private static final RETRY_DELAY_MICROS:J = 0x4e20L


# instance fields
.field private final candidateAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final probeTimeoutMillis:J

.field private final transport:Lcom/shilapi/xcertplay/transport/I2cTransport;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner;->Companion:Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner$Companion;

    const/16 v0, 0x10

    .line 107
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner;->DEFAULT_CANDIDATE_ADDRESSES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/shilapi/xcertplay/transport/I2cTransport;Ljava/util/List;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/transport/I2cTransport;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;J)V"
        }
    .end annotation

    const-string/jumbo v0, "transport"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "candidateAddresses"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner;->transport:Lcom/shilapi/xcertplay/transport/I2cTransport;

    .line 16
    iput-wide p3, p0, Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner;->probeTimeoutMillis:J

    .line 18
    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner;->candidateAddresses:Ljava/util/List;

    const-wide/16 p1, 0x0

    cmp-long v0, p3, p1

    if-lez v0, :cond_0

    return-void

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "probeTimeoutMillis must be positive"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/transport/I2cTransport;Ljava/util/List;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 15
    sget-object p2, Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner;->DEFAULT_CANDIDATE_ADDRESSES:Ljava/util/List;

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    const-wide/16 p3, 0x7d0

    .line 13
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner;-><init>(Lcom/shilapi/xcertplay/transport/I2cTransport;Ljava/util/List;J)V

    return-void
.end method

.method public static final synthetic access$getDEFAULT_CANDIDATE_ADDRESSES$cp()Ljava/util/List;
    .locals 1

    .line 13
    sget-object v0, Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner;->DEFAULT_CANDIDATE_ADDRESSES:Ljava/util/List;

    return-object v0
.end method

.method private final deadlineAfter(J)J
    .locals 7

    .line 83
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long p1, p1, v2

    const-wide v2, 0x7fffffffffffffffL

    sub-long v4, v2, v0

    cmp-long v6, v4, p1

    if-gez v6, :cond_0

    return-wide v2

    :cond_0
    add-long/2addr v0, p1

    return-wide v0
.end method

.method private final readDeviceVersion(I)Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner$DeviceVersionRead;
    .locals 4

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner;->transport:Lcom/shilapi/xcertplay/transport/I2cTransport;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte v3, v2, v3

    invoke-interface {v0, p1, v2, v3}, Lcom/shilapi/xcertplay/transport/I2cTransport;->transaction(I[BI)[B

    move-result-object v0

    .line 63
    array-length v2, v0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    .line 64
    new-instance p1, Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner$DeviceVersionRead$Failure;

    new-instance v1, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryError$UnexpectedResponseLength;

    array-length v0, v0

    invoke-direct {v1, v3, v0}, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryError$UnexpectedResponseLength;-><init>(II)V

    check-cast v1, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryError;

    invoke-direct {p1, v1}, Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner$DeviceVersionRead$Failure;-><init>(Lcom/shilapi/xcertplay/mfi/MfiDiscoveryError;)V

    check-cast p1, Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner$DeviceVersionRead;

    return-object p1

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner;->transport:Lcom/shilapi/xcertplay/transport/I2cTransport;

    new-array v2, v3, [B

    invoke-interface {v0, p1, v2, v1}, Lcom/shilapi/xcertplay/transport/I2cTransport;->transaction(I[BI)[B

    move-result-object p1

    .line 67
    array-length v0, p1

    if-eq v0, v1, :cond_2

    .line 68
    new-instance v0, Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner$DeviceVersionRead$Failure;

    new-instance v2, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryError$UnexpectedResponseLength;

    array-length p1, p1

    invoke-direct {v2, v1, p1}, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryError$UnexpectedResponseLength;-><init>(II)V

    check-cast v2, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryError;

    invoke-direct {v0, v2}, Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner$DeviceVersionRead$Failure;-><init>(Lcom/shilapi/xcertplay/mfi/MfiDiscoveryError;)V

    check-cast v0, Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner$DeviceVersionRead;

    return-object v0

    .line 70
    :cond_2
    aget-byte p1, p1, v3

    const/16 v0, 0xff

    and-int/2addr p1, v0

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_3

    .line 74
    new-instance v0, Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner$DeviceVersionRead$Success;

    invoke-direct {v0, p1}, Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner$DeviceVersionRead$Success;-><init>(I)V

    check-cast v0, Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner$DeviceVersionRead;

    return-object v0

    .line 72
    :cond_3
    new-instance v0, Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner$DeviceVersionRead$Failure;

    new-instance v1, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryError$InvalidDeviceVersion;

    invoke-direct {v1, p1}, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryError$InvalidDeviceVersion;-><init>(I)V

    check-cast v1, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryError;

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner$DeviceVersionRead$Failure;-><init>(Lcom/shilapi/xcertplay/mfi/MfiDiscoveryError;)V

    check-cast v0, Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner$DeviceVersionRead;
    :try_end_0
    .catch Lcom/shilapi/xcertplay/transport/I2cTransportException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 79
    new-instance v0, Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner$DeviceVersionRead$Failure;

    new-instance v1, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryError$Transport;

    invoke-direct {v1, p1}, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryError$Transport;-><init>(Lcom/shilapi/xcertplay/transport/I2cTransportException;)V

    check-cast v1, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryError;

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner$DeviceVersionRead$Failure;-><init>(Lcom/shilapi/xcertplay/mfi/MfiDiscoveryError;)V

    check-cast v0, Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner$DeviceVersionRead;

    return-object v0
.end method

.method private final sleepMicros(J)Z
    .locals 4

    const-wide/16 v0, 0x3e8

    .line 89
    :try_start_0
    div-long v2, p1, v0

    rem-long/2addr p1, v0

    mul-long p1, p1, v0

    long-to-int p2, p1

    invoke-static {v2, v3, p2}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    .line 92
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    const/4 p1, 0x0

    return p1
.end method

.method private final toFailures(Ljava/util/LinkedHashMap;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/shilapi/xcertplay/mfi/MfiDiscoveryError;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/mfi/MfiDiscoveryFailure;",
            ">;"
        }
    .end annotation

    .line 97
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    const-string v0, "<get-entries>(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 162
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 163
    check-cast v1, Ljava/util/Map$Entry;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "component1(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string v3, "component2(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryError;

    .line 97
    new-instance v3, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryFailure;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v3, v2, v1}, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryFailure;-><init>(ILcom/shilapi/xcertplay/mfi/MfiDiscoveryError;)V

    .line 163
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 164
    :cond_0
    check-cast v0, Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final scan()Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;
    .locals 14

    .line 25
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 26
    iget-object v1, p0, Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner;->candidateAddresses:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 158
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 159
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-ltz v4, :cond_0

    const/16 v5, 0x80

    if-ge v4, v5, :cond_0

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 30
    :cond_0
    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryError$InvalidCandidateAddress;

    invoke-direct {v6, v4}, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryError$InvalidCandidateAddress;-><init>(I)V

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 160
    :cond_1
    check-cast v2, Ljava/util/List;

    .line 34
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v3, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner;->toFailures(Ljava/util/LinkedHashMap;)Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;-><init>(Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3

    .line 36
    :cond_2
    iget-wide v3, p0, Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner;->probeTimeoutMillis:J

    invoke-direct {p0, v3, v4}, Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner;->deadlineAfter(J)J

    move-result-wide v3

    .line 38
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 39
    invoke-direct {p0, v5}, Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner;->readDeviceVersion(I)Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner$DeviceVersionRead;

    move-result-object v6

    .line 40
    instance-of v7, v6, Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner$DeviceVersionRead$Success;

    if-eqz v7, :cond_4

    .line 41
    new-instance v8, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;

    .line 42
    new-instance v9, Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;

    shl-int/lit8 v1, v5, 0x1

    or-int/lit8 v2, v1, 0x1

    .line 46
    check-cast v6, Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner$DeviceVersionRead$Success;

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner$DeviceVersionRead$Success;->getValue()I

    move-result v3

    .line 42
    invoke-direct {v9, v5, v1, v2, v3}, Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;-><init>(IIII)V

    .line 48
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner;->toFailures(Ljava/util/LinkedHashMap;)Ljava/util/List;

    move-result-object v10

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v11, 0x0

    .line 41
    invoke-direct/range {v8 .. v13}, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;-><init>(Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8

    .line 51
    :cond_4
    instance-of v7, v6, Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner$DeviceVersionRead$Failure;

    if-eqz v7, :cond_5

    move-object v7, v0

    check-cast v7, Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v6, Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner$DeviceVersionRead$Failure;

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner$DeviceVersionRead$Failure;->getError()Lcom/shilapi/xcertplay/mfi/MfiDiscoveryError;

    move-result-object v6

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 39
    :cond_5
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 54
    :cond_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-ltz v1, :cond_7

    new-instance v5, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner;->toFailures(Ljava/util/LinkedHashMap;)Ljava/util/List;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;-><init>(Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5

    :cond_7
    const-wide/16 v5, 0x4e20

    .line 55
    invoke-direct {p0, v5, v6}, Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner;->sleepMicros(J)Z

    move-result v1

    if-nez v1, :cond_3

    .line 56
    new-instance v1, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;

    const/4 v2, 0x0

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner;->toFailures(Ljava/util/LinkedHashMap;)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;-><init>(Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;Ljava/util/List;Z)V

    return-object v1
.end method
