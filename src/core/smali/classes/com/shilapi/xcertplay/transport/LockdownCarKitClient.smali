.class public final Lcom/shilapi/xcertplay/transport/LockdownCarKitClient;
.super Ljava/lang/Object;
.source "LockdownCarKitClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/transport/LockdownCarKitClient$CarkitServiceStream;,
        Lcom/shilapi/xcertplay/transport/LockdownCarKitClient$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLockdownCarKitClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockdownCarKitClient.kt\ncom/shilapi/xcertplay/transport/LockdownCarKitClient\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,148:1\n1#2:149\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00162\u00020\u0001:\u0002\u0015\u0016B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0016\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u0016\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u000bJ\u001e\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000bJ\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000bH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/LockdownCarKitClient;",
        "",
        "host",
        "Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;",
        "<init>",
        "(Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;)V",
        "open",
        "Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;",
        "pairedRecord",
        "Lcom/shilapi/xcertplay/transport/PairedRecord;",
        "label",
        "",
        "pairRecord",
        "Lcom/shilapi/xcertplay/transport/LockdownPairRecord;",
        "openService",
        "serviceName",
        "rejectError",
        "",
        "response",
        "Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;",
        "request",
        "CarkitServiceStream",
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
.field public static final CARKIT_SERVICE:Ljava/lang/String; = "com.apple.carkit.service"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final Companion:Lcom/shilapi/xcertplay/transport/LockdownCarKitClient$Companion;

.field public static final STEP_TIMEOUT_MILLIS:J = 0x1388L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final host:Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/transport/LockdownCarKitClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/transport/LockdownCarKitClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/LockdownCarKitClient;->Companion:Lcom/shilapi/xcertplay/transport/LockdownCarKitClient$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;)V
    .locals 1

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/LockdownCarKitClient;->host:Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;

    return-void
.end method

.method private final rejectError(Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;Ljava/lang/String;)V
    .locals 3

    .line 134
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;->getEntries()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Error"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/transport/LockdownPlistValue;

    if-nez v0, :cond_0

    return-void

    .line 135
    :cond_0
    instance-of v1, v0, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;

    if-nez v1, :cond_4

    .line 136
    instance-of v1, v0, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Integer;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;->getEntries()Ljava/util/Map;

    move-result-object p1

    const-string v1, "ErrorString"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;->getValue()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    .line 137
    :cond_2
    check-cast v0, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Integer;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Integer;->getValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 138
    :cond_3
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " response Error was not text or integer"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw p1

    .line 135
    :cond_4
    check-cast v0, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 140
    :cond_5
    :goto_1
    new-instance v0, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Lockdown "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " failed: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final open(Lcom/shilapi/xcertplay/transport/LockdownPairRecord;Ljava/lang/String;)Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shilapi/xcertplay/transport/IphoneUsbException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "pairRecord"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "label"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    const-string v0, "com.apple.carkit.service"

    invoke-virtual {p0, p1, p2, v0}, Lcom/shilapi/xcertplay/transport/LockdownCarKitClient;->openService(Lcom/shilapi/xcertplay/transport/LockdownPairRecord;Ljava/lang/String;Ljava/lang/String;)Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;

    move-result-object p1

    return-object p1
.end method

.method public final open(Lcom/shilapi/xcertplay/transport/PairedRecord;Ljava/lang/String;)Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shilapi/xcertplay/transport/IphoneUsbException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "pairedRecord"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "label"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/PairedRecord;->getPairRecord()Lcom/shilapi/xcertplay/transport/LockdownPairRecord;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/transport/LockdownCarKitClient;->open(Lcom/shilapi/xcertplay/transport/LockdownPairRecord;Ljava/lang/String;)Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;

    move-result-object p1

    return-object p1
.end method

.method public final openService(Lcom/shilapi/xcertplay/transport/LockdownPairRecord;Ljava/lang/String;Ljava/lang/String;)Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "StartService"

    const-string v5, "StartSession"

    const-string v6, "Request"

    const-string v7, "pairRecord"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "label"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "serviceName"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    move-object v7, v2

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 27
    move-object v7, v3

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 29
    iget-object v7, v1, Lcom/shilapi/xcertplay/transport/LockdownCarKitClient;->host:Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;

    const v8, 0xf27e

    const-wide/16 v9, 0x1388

    invoke-virtual {v7, v8, v9, v10}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->connect(IJ)Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;

    move-result-object v7

    .line 33
    new-instance v11, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;

    move-object v12, v7

    check-cast v12, Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;

    const/16 v16, 0x6

    const/16 v17, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    invoke-direct/range {v11 .. v17}, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;-><init>(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;IJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v11, Ljava/io/Closeable;

    :try_start_0
    move-object v7, v11

    check-cast v7, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;

    .line 35
    new-instance v8, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;

    const/4 v12, 0x4

    .line 37
    new-array v12, v12, [Lkotlin/Pair;

    const-string v13, "Label"

    new-instance v14, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;

    invoke-direct {v14, v2}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;-><init>(Ljava/lang/String;)V

    invoke-static {v13, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v13, 0x0

    aput-object v2, v12, v13

    .line 38
    new-instance v2, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;

    invoke-direct {v2, v5}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v14, 0x1

    aput-object v2, v12, v14

    .line 39
    const-string v2, "HostID"

    new-instance v15, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;

    const/16 p2, 0x0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/LockdownPairRecord;->getHostId()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v15, v13}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v13, 0x2

    aput-object v2, v12, v13

    .line 40
    const-string v2, "SystemBUID"

    new-instance v15, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;

    const/16 v16, 0x1

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/LockdownPairRecord;->getSystemBuid()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v15, v14}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v14, 0x3

    aput-object v2, v12, v14

    .line 36
    invoke-static {v12}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 35
    invoke-direct {v8, v2}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;-><init>(Ljava/util/Map;)V

    .line 34
    invoke-virtual {v7, v8, v9, v10}, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->request(Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;J)Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;

    move-result-object v2

    .line 45
    invoke-direct {v1, v2, v5}, Lcom/shilapi/xcertplay/transport/LockdownCarKitClient;->rejectError(Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;->getEntries()Ljava/util/Map;

    move-result-object v2

    const-string v5, "EnableSessionSSL"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v5, v2, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Boolean;

    const/4 v8, 0x0

    if-eqz v5, :cond_0

    check-cast v2, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Boolean;

    goto :goto_0

    :cond_0
    move-object v2, v8

    :goto_0
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Boolean;->getValue()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 51
    sget-object v2, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->Companion:Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$Companion;

    .line 52
    invoke-virtual {v7}, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->detach()Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;

    move-result-object v5

    .line 51
    invoke-virtual {v2, v5, v0, v9, v10}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$Companion;->open(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;Lcom/shilapi/xcertplay/transport/LockdownPairRecord;J)Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 33
    invoke-static {v11, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 58
    new-instance v17, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;

    move-object/from16 v18, v2

    check-cast v18, Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;

    const/16 v22, 0x6

    const/16 v23, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    invoke-direct/range {v17 .. v23}, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;-><init>(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;IJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, v17

    .line 66
    :try_start_1
    new-instance v5, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;

    .line 68
    new-array v7, v13, [Lkotlin/Pair;

    new-instance v11, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;

    invoke-direct {v11, v4}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    aput-object v6, v7, p2

    .line 69
    const-string v6, "Service"

    new-instance v11, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;

    invoke-direct {v11, v3}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v7, v16

    .line 67
    invoke-static {v7}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 66
    invoke-direct {v5, v3}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;-><init>(Ljava/util/Map;)V

    .line 65
    invoke-virtual {v2, v5, v9, v10}, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->request(Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;J)Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;

    move-result-object v3

    .line 74
    invoke-direct {v1, v3, v4}, Lcom/shilapi/xcertplay/transport/LockdownCarKitClient;->rejectError(Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;->getEntries()Ljava/util/Map;

    move-result-object v4

    const-string v5, "Port"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Integer;

    if-eqz v5, :cond_1

    check-cast v4, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Integer;

    goto :goto_1

    :cond_1
    move-object v4, v8

    :goto_1
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Integer;->getValue()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v11, v6, v4

    if-gtz v11, :cond_5

    const-wide/32 v6, 0x10000

    cmp-long v11, v4, v6

    if-gez v11, :cond_5

    .line 80
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;->getEntries()Ljava/util/Map;

    move-result-object v3

    const-string v6, "EnableServiceSSL"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v6, v3, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Boolean;

    if-eqz v6, :cond_2

    check-cast v3, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Boolean;

    goto :goto_2

    :cond_2
    move-object v3, v8

    :goto_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Boolean;->getValue()Z

    move-result v3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    .line 83
    :goto_3
    iget-object v6, v1, Lcom/shilapi/xcertplay/transport/LockdownCarKitClient;->host:Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;

    long-to-int v5, v4

    invoke-virtual {v6, v5, v9, v10}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->connect(IJ)Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;

    move-result-object v4

    .line 87
    move-object v5, v4

    check-cast v5, Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v3, :cond_4

    .line 89
    :try_start_2
    sget-object v3, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->Companion:Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$Companion;

    .line 90
    check-cast v4, Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;

    .line 89
    invoke-virtual {v3, v4, v0, v9, v10}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$Companion;->open(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;Lcom/shilapi/xcertplay/transport/LockdownPairRecord;J)Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;

    goto :goto_4

    .line 95
    :cond_4
    move-object v0, v4

    check-cast v0, Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;

    .line 97
    :goto_4
    new-instance v3, Lcom/shilapi/xcertplay/transport/LockdownCarKitClient$CarkitServiceStream;

    move-object v4, v2

    check-cast v4, Ljava/io/Closeable;

    invoke-direct {v3, v0, v4}, Lcom/shilapi/xcertplay/transport/LockdownCarKitClient$CarkitServiceStream;-><init>(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    check-cast v3, Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v3

    :catchall_0
    move-exception v0

    move-object v8, v5

    const/4 v13, 0x1

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v8, v5

    goto :goto_5

    .line 78
    :cond_5
    :try_start_4
    new-instance v0, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    const-string v3, "StartService returned an invalid Port"

    invoke-direct {v0, v3}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_6
    new-instance v0, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    const-string v3, "StartService response omitted integer Port"

    invoke-direct {v0, v3}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    :goto_5
    const/4 v13, 0x0

    :goto_6
    if-nez v13, :cond_8

    if-eqz v8, :cond_7

    .line 101
    :try_start_5
    invoke-interface {v8}, Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v0

    .line 105
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->close()V

    throw v0

    :catch_0
    :cond_7
    :goto_7
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->close()V

    :cond_8
    throw v0

    .line 49
    :cond_9
    :try_start_6
    new-instance v0, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    const-string v2, "StartSession did not enable TLS"

    invoke-direct {v0, v2}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_a
    new-instance v0, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    const-string v2, "StartSession response omitted boolean EnableSessionSSL"

    invoke-direct {v0, v2}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v0

    move-object v2, v0

    .line 33
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :catchall_5
    move-exception v0

    invoke-static {v11, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 27
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "serviceName must not be blank"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "label must not be blank"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
