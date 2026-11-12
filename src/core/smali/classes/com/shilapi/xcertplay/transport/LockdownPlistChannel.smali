.class public final Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;
.super Ljava/lang/Object;
.source "LockdownPlistChannel.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/transport/LockdownPlistChannel$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLockdownPlistChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockdownPlistChannel.kt\ncom/shilapi/xcertplay/transport/LockdownPlistChannel\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,332:1\n488#2,11:333\n1179#2,2:346\n216#3,2:344\n*S KotlinDebug\n*F\n+ 1 LockdownPlistChannel.kt\ncom/shilapi/xcertplay/transport/LockdownPlistChannel\n*L\n215#1:333,11\n258#1:346,2\n242#1:344,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0012\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 22\u00020\u0001:\u00012B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013J\u0010\u0010\u0014\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0007J\u0018\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0007J\u0006\u0010\u0017\u001a\u00020\u0003J\u0008\u0010\u0018\u001a\u00020\u0011H\u0016J\u0010\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u0010\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0007H\u0002J\u0018\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u0007H\u0002J\u0010\u0010\u001f\u001a\u00020\u00132\u0006\u0010 \u001a\u00020\u001cH\u0002J\u0018\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u0005H\u0002J\u0010\u0010&\u001a\u00020\'2\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J \u0010(\u001a\u00020\u0011*\u00060)j\u0002`*2\u0006\u0010+\u001a\u00020\"2\u0006\u0010%\u001a\u00020\u0005H\u0002J\u001c\u0010,\u001a\u00060)j\u0002`**\u00060)j\u0002`*2\u0006\u0010+\u001a\u00020\'H\u0002J\u0018\u0010-\u001a\u00020\'2\u0006\u0010#\u001a\u00020$2\u0006\u0010.\u001a\u00020\'H\u0002J\u0018\u0010/\u001a\u00020\u00112\u0006\u0010#\u001a\u00020$2\u0006\u0010.\u001a\u00020\'H\u0002J\u0008\u00100\u001a\u00020\u0011H\u0002J\u0010\u00101\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0007H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00063"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;",
        "Ljava/io/Closeable;",
        "connection",
        "Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;",
        "maximumMessageBytes",
        "",
        "defaultTimeoutMillis",
        "",
        "<init>",
        "(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;IJ)V",
        "stateLock",
        "",
        "ioLock",
        "closed",
        "",
        "detached",
        "send",
        "",
        "message",
        "Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;",
        "receive",
        "timeoutMillis",
        "request",
        "detach",
        "close",
        "sendLocked",
        "receiveLocked",
        "readFully",
        "",
        "byteCount",
        "deadlineNanos",
        "parse",
        "xml",
        "parseValue",
        "Lcom/shilapi/xcertplay/transport/LockdownPlistValue;",
        "parser",
        "Lorg/xmlpull/v1/XmlPullParser;",
        "depth",
        "encode",
        "",
        "appendValue",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "value",
        "appendEscaped",
        "simpleText",
        "name",
        "requireEmpty",
        "checkOpen",
        "validateTimeout",
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
.field public static final ABSOLUTE_MAXIMUM_MESSAGE_BYTES:I = 0x400000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final Companion:Lcom/shilapi/xcertplay/transport/LockdownPlistChannel$Companion;

.field public static final DEFAULT_MAXIMUM_MESSAGE_BYTES:I = 0x100000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_TIMEOUT_MILLIS:J = 0x1388L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LENGTH_BYTES:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAXIMUM_DICTIONARY_ENTRIES:I = 0x400
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAXIMUM_NESTING:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAXIMUM_TIMEOUT_MILLIS:J = 0x493e0L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NANOS_PER_MILLISECOND:J = 0xf4240L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private closed:Z

.field private final connection:Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;

.field private final defaultTimeoutMillis:J

.field private detached:Z

.field private final ioLock:Ljava/lang/Object;

.field private final maximumMessageBytes:I

.field private final stateLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->Companion:Lcom/shilapi/xcertplay/transport/LockdownPlistChannel$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;IJ)V
    .locals 1

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->connection:Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;

    .line 34
    iput p2, p0, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->maximumMessageBytes:I

    .line 35
    iput-wide p3, p0, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->defaultTimeoutMillis:J

    .line 37
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->stateLock:Ljava/lang/Object;

    .line 38
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->ioLock:Ljava/lang/Object;

    const/4 p1, 0x1

    if-gt p1, p2, :cond_1

    const p1, 0x400001

    if-ge p2, p1, :cond_1

    const-wide/16 p1, 0x1

    cmp-long v0, p1, p3

    if-gtz v0, :cond_0

    const-wide/32 p1, 0x493e1

    cmp-long v0, p3, p1

    if-gez v0, :cond_0

    return-void

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "defaultTimeoutMillis must be between 1 and 300000"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maximumMessageBytes must be between 1 and 4194304"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;IJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/high16 p2, 0x100000

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    const-wide/16 p3, 0x1388

    .line 32
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;-><init>(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;IJ)V

    return-void
.end method

.method private final appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 3

    .line 258
    check-cast p2, Ljava/lang/CharSequence;

    const/4 v0, 0x0

    .line 346
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_5

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    if-eq v1, v2, :cond_4

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_3

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_2

    const/16 v2, 0x26

    if-eq v1, v2, :cond_1

    const/16 v2, 0x27

    if-eq v1, v2, :cond_0

    .line 266
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 265
    :cond_0
    const-string v1, "&apos;"

    goto :goto_1

    .line 261
    :cond_1
    const-string v1, "&amp;"

    goto :goto_1

    .line 263
    :cond_2
    const-string v1, "&gt;"

    goto :goto_1

    .line 262
    :cond_3
    const-string v1, "&lt;"

    goto :goto_1

    .line 264
    :cond_4
    const-string v1, "&quot;"

    .line 259
    :goto_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-object p1
.end method

.method private final appendValue(Ljava/lang/StringBuilder;Lcom/shilapi/xcertplay/transport/LockdownPlistValue;I)V
    .locals 4

    const/16 v0, 0x40

    if-gt p3, v0, :cond_8

    .line 237
    instance-of v0, p2, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;

    const-string v1, "append(...)"

    if-eqz v0, :cond_2

    .line 238
    check-cast p2, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;->getEntries()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v2, 0x400

    if-gt v0, v2, :cond_1

    .line 241
    const-string v0, "<dict>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;->getEntries()Ljava/util/Map;

    move-result-object p2

    .line 344
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/transport/LockdownPlistValue;

    .line 243
    const-string v3, "<key>"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v2}, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</key>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p3, 0x1

    .line 244
    invoke-direct {p0, p1, v0, v2}, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->appendValue(Ljava/lang/StringBuilder;Lcom/shilapi/xcertplay/transport/LockdownPlistValue;I)V

    goto :goto_0

    .line 246
    :cond_0
    const-string p2, "</dict>"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 239
    :cond_1
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    const-string p2, "Lockdown plist dictionary exceeds 1024 entries"

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw p1

    .line 248
    :cond_2
    instance-of p3, p2, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;

    if-eqz p3, :cond_3

    const-string p3, "<string>"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "</string>"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 249
    :cond_3
    instance-of p3, p2, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Integer;

    if-eqz p3, :cond_4

    const-string p3, "<integer>"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p2, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Integer;

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Integer;->getValue()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "</integer>"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 250
    :cond_4
    instance-of p3, p2, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Boolean;

    if-eqz p3, :cond_6

    check-cast p2, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Boolean;

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Boolean;->getValue()Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "<true/>"

    goto :goto_1

    :cond_5
    const-string p2, "<false/>"

    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 251
    :cond_6
    instance-of p3, p2, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Data;

    if-eqz p3, :cond_7

    const-string p3, "<data>"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-static {}, Lj$/util/Base64;->getEncoder()Lj$/util/Base64$Encoder;

    move-result-object p3

    check-cast p2, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Data;

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Data;->getBytes()[B

    move-result-object p2

    invoke-virtual {p3, p2}, Lj$/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    const-string p2, "</data>"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 236
    :cond_7
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 235
    :cond_8
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    const-string p2, "Lockdown plist nesting exceeds 64"

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private final checkOpen()V
    .locals 5

    .line 297
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 298
    :try_start_0
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->closed:Z

    if-nez v1, :cond_0

    .line 299
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    monitor-exit v0

    return-void

    .line 298
    :cond_0
    :try_start_1
    new-instance v1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;

    const-string v2, "Lockdown plist channel is closed"

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3, v4}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    .line 297
    monitor-exit v0

    throw v1
.end method

.method private final encode(Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;)Ljava/lang/String;
    .locals 2

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    const-string v1, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><!DOCTYPE plist PUBLIC \"-//Apple//DTD PLIST 1.0//EN\" \"http://www.apple.com/DTDs/PropertyList-1.0.dtd\"><plist version=\"1.0\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    check-cast p1, Lcom/shilapi/xcertplay/transport/LockdownPlistValue;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->appendValue(Ljava/lang/StringBuilder;Lcom/shilapi/xcertplay/transport/LockdownPlistValue;I)V

    .line 231
    const-string p1, "</plist>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final parse([B)Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;
    .locals 6

    .line 146
    const-string v0, "plist"

    .line 147
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 148
    const-string v2, "http://xmlpull.org/v1/doc/features.html#process-docdecl"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 149
    const-string v2, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 150
    new-instance v2, Ljava/io/StringReader;

    sget-object v4, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v5, "UTF_8"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v2, v5}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/io/Reader;

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 152
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_9

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 155
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result p1
    :try_end_0
    .catch Lcom/shilapi/xcertplay/transport/IphoneUsbException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "Lockdown plist must contain exactly one root value"

    if-ne p1, v2, :cond_8

    .line 158
    :try_start_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v1, v3}, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->parseValue(Lorg/xmlpull/v1/XmlPullParser;I)Lcom/shilapi/xcertplay/transport/LockdownPlistValue;

    move-result-object p1

    .line 159
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_7

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 163
    :goto_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-result v0
    :try_end_1
    .catch Lcom/shilapi/xcertplay/transport/IphoneUsbException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x4

    const-string v3, "Unexpected content after Lockdown plist"

    if-eq v0, v2, :cond_1

    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 170
    :cond_0
    :try_start_2
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    invoke-direct {p1, v3}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw p1

    .line 166
    :cond_1
    :goto_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 167
    :cond_3
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    invoke-direct {p1, v3}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw p1

    .line 173
    :cond_4
    instance-of v0, p1, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_6

    return-object p1

    .line 174
    :cond_6
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    const-string v0, "Lockdown plist root value must be <dict>"

    invoke-direct {p1, v0}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw p1

    .line 160
    :cond_7
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    invoke-direct {p1, v4}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw p1

    .line 156
    :cond_8
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    invoke-direct {p1, v4}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw p1

    .line 153
    :cond_9
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    const-string v0, "Lockdown plist root must be <plist>"

    invoke-direct {p1, v0}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Lcom/shilapi/xcertplay/transport/IphoneUsbException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 178
    new-instance v0, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid Lockdown plist XML: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception p1

    .line 176
    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private final parseValue(Lorg/xmlpull/v1/XmlPullParser;I)Lcom/shilapi/xcertplay/transport/LockdownPlistValue;
    .locals 8

    const/16 v0, 0x40

    if-gt p2, v0, :cond_9

    .line 184
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string p2, "integer"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 202
    new-instance v0, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Integer;

    .line 203
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->simpleText(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 202
    invoke-direct {v0, p1, p2}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Integer;-><init>(J)V

    check-cast v0, Lcom/shilapi/xcertplay/transport/LockdownPlistValue;

    return-object v0

    .line 204
    :cond_0
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    const-string p2, "Invalid Lockdown plist integer"

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw p1

    .line 184
    :sswitch_1
    const-string p2, "false"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 211
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->requireEmpty(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 212
    new-instance p1, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Boolean;

    invoke-direct {p1, v2}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Boolean;-><init>(Z)V

    check-cast p1, Lcom/shilapi/xcertplay/transport/LockdownPlistValue;

    return-object p1

    .line 184
    :sswitch_2
    const-string/jumbo p2, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 207
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->requireEmpty(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 208
    new-instance p1, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Boolean;

    invoke-direct {p1, v3}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Boolean;-><init>(Z)V

    check-cast p1, Lcom/shilapi/xcertplay/transport/LockdownPlistValue;

    return-object p1

    .line 184
    :sswitch_3
    const-string v1, "dict"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 186
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 187
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v2

    const-string v4, "Invalid Lockdown plist dictionary"

    const/4 v5, 0x2

    if-ne v2, v5, :cond_4

    .line 188
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v6, "key"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    const/16 v7, 0x400

    if-eq v2, v7, :cond_3

    .line 191
    invoke-direct {p0, p1, v6}, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->simpleText(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 192
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 193
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v4

    if-ne v4, v5, :cond_1

    .line 196
    move-object v4, v0

    check-cast v4, Ljava/util/Map;

    add-int/lit8 v5, p2, 0x1

    invoke-direct {p0, p1, v5}, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->parseValue(Lorg/xmlpull/v1/XmlPullParser;I)Lcom/shilapi/xcertplay/transport/LockdownPlistValue;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 194
    :cond_1
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    const-string p2, "Lockdown plist dictionary value is missing"

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw p1

    .line 192
    :cond_2
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Duplicate Lockdown plist key \'"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw p1

    .line 189
    :cond_3
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    invoke-direct {p1, v4}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw p1

    .line 198
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 199
    new-instance p1, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;

    check-cast v0, Ljava/util/Map;

    invoke-direct {p1, v0}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;-><init>(Ljava/util/Map;)V

    check-cast p1, Lcom/shilapi/xcertplay/transport/LockdownPlistValue;

    return-object p1

    .line 198
    :cond_5
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    invoke-direct {p1, v4}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw p1

    .line 184
    :sswitch_4
    const-string p2, "data"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 215
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->simpleText(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 333
    check-cast p1, Ljava/lang/CharSequence;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p2, Ljava/lang/Appendable;

    .line 342
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge v2, v0, :cond_7

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 215
    invoke-static {v0}, Lkotlin/text/CharsKt;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_6

    .line 342
    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 343
    :cond_7
    check-cast p2, Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 217
    :try_start_0
    new-instance p2, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Data;

    invoke-static {}, Lj$/util/Base64;->getDecoder()Lj$/util/Base64$Decoder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lj$/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    const-string v0, "decode(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Data;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    check-cast p2, Lcom/shilapi/xcertplay/transport/LockdownPlistValue;

    return-object p2

    :catch_0
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    const-string p2, "Invalid base64 Lockdown plist data"

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw p1

    .line 184
    :sswitch_5
    const-string/jumbo p2, "string"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 201
    new-instance v0, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;

    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->simpleText(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/shilapi/xcertplay/transport/LockdownPlistValue;

    return-object v0

    .line 222
    :cond_8
    :goto_2
    new-instance p2, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported Lockdown plist value <"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw p2

    .line 183
    :cond_9
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    const-string p2, "Lockdown plist nesting exceeds 64"

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        -0x352a9fef -> :sswitch_5
        0x2eefaa -> :sswitch_4
        0x2f0bb6 -> :sswitch_3
        0x36758e -> :sswitch_2
        0x5cb1923 -> :sswitch_1
        0x74b5813e -> :sswitch_0
    .end sparse-switch
.end method

.method private final readFully(IJ)[B
    .locals 10

    .line 126
    new-array v1, p1, [B

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_3

    .line 129
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long v3, p2, v3

    const-wide/16 v5, 0x0

    const/4 v0, 0x2

    .line 130
    const-string v7, "Timed out while reading Lockdown plist frame"

    const/4 v8, 0x0

    cmp-long v9, v3, v5

    if-lez v9, :cond_2

    const-wide/32 v5, 0xf423f

    add-long/2addr v3, v5

    const-wide/32 v5, 0xf4240

    .line 133
    div-long/2addr v3, v5

    const-wide/16 v5, 0x1

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 134
    iget-object v5, p0, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->connection:Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;

    sub-int v6, p1, v2

    invoke-interface {v5, v6, v3, v4}, Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;->recv(IJ)[B

    move-result-object v3

    if-eqz v3, :cond_1

    .line 136
    array-length v0, v3

    if-eqz v0, :cond_0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 139
    invoke-static/range {v0 .. v6}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    .line 140
    array-length v0, v0

    add-int/2addr v2, v0

    goto :goto_0

    .line 137
    :cond_0
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    const-string p2, "USBMUX TCP stream ended inside a Lockdown plist frame"

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw p1

    .line 135
    :cond_1
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$TimedOut;

    invoke-direct {p1, v7, v8, v0, v8}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$TimedOut;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1

    .line 131
    :cond_2
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$TimedOut;

    invoke-direct {p1, v7, v8, v0, v8}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$TimedOut;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1

    :cond_3
    return-object v1
.end method

.method public static synthetic receive$default(Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;JILjava/lang/Object;)Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 58
    iget-wide p1, p0, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->defaultTimeoutMillis:J

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->receive(J)Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;

    move-result-object p0

    return-object p0
.end method

.method private final receiveLocked(J)Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;
    .locals 5

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->validateTimeout(J)V

    .line 115
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long p1, p1, v2

    add-long/2addr v0, p1

    const/4 p1, 0x4

    .line 116
    invoke-direct {p0, p1, v0, v1}, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->readFully(IJ)[B

    move-result-object p1

    .line 117
    sget-object p2, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->Companion:Lcom/shilapi/xcertplay/transport/LockdownPlistChannel$Companion;

    const/4 v2, 0x0

    invoke-virtual {p2, p1, v2}, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel$Companion;->readU32([BI)J

    move-result-wide p1

    const-wide/16 v2, 0x1

    cmp-long v4, v2, p1

    if-gtz v4, :cond_0

    .line 118
    iget v2, p0, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->maximumMessageBytes:I

    int-to-long v2, v2

    cmp-long v4, p1, v2

    if-gtz v4, :cond_0

    long-to-int p2, p1

    .line 121
    invoke-direct {p0, p2, v0, v1}, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->readFully(IJ)[B

    move-result-object p1

    .line 122
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->parse([B)Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;

    move-result-object p1

    return-object p1

    .line 119
    :cond_0
    new-instance v0, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    iget v1, p0, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->maximumMessageBytes:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid Lockdown plist message length "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " (maximum "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic request$default(Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;JILjava/lang/Object;)Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 66
    iget-wide p2, p0, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->defaultTimeoutMillis:J

    .line 64
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->request(Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;J)Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;

    move-result-object p0

    return-object p0
.end method

.method private final requireEmpty(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 2

    .line 291
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 292
    :cond_0
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Lockdown plist <"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "> must be empty"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final sendLocked(Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;)V
    .locals 9

    .line 103
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->encode(Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "UTF_8"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const-string p1, "getBytes(...)"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    array-length p1, v2

    if-eqz p1, :cond_0

    array-length p1, v2

    iget v0, p0, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->maximumMessageBytes:I

    if-gt p1, v0, :cond_0

    .line 107
    array-length p1, v2

    add-int/lit8 p1, p1, 0x4

    new-array v3, p1, [B

    .line 108
    sget-object p1, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->Companion:Lcom/shilapi/xcertplay/transport/LockdownPlistChannel$Companion;

    array-length v0, v2

    int-to-long v0, v0

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v0, v1}, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel$Companion;->putU32([BIJ)V

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 109
    invoke-static/range {v2 .. v8}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    .line 110
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->connection:Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;

    invoke-interface {p1, v3}, Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;->send([B)V

    return-void

    .line 105
    :cond_0
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    array-length v0, v2

    iget v1, p0, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->maximumMessageBytes:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Lockdown plist message length "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is outside 1.."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final simpleText(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-result v1

    const-string v2, ">"

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 278
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 278
    :cond_0
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown entity in Lockdown plist <"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw p1

    .line 276
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 281
    :pswitch_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 282
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "toString(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 281
    :cond_2
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid Lockdown plist <"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw p1

    .line 284
    :pswitch_3
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Lockdown plist <"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "> must not contain elements"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw p1

    .line 285
    :pswitch_4
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Lockdown plist ended inside <"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final validateTimeout(J)V
    .locals 3

    const-wide/16 v0, 0x1

    cmp-long v2, v0, p1

    if-gtz v2, :cond_0

    const-wide/32 v0, 0x493e1

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    return-void

    .line 303
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "timeoutMillis must be between 1 and 300000"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 94
    :try_start_0
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->closed:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 95
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :goto_0
    monitor-exit v0

    if-eqz v1, :cond_1

    .line 99
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->detached:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->connection:Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;

    invoke-interface {v0}, Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 93
    monitor-exit v0

    throw v1
.end method

.method public final detach()Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;
    .locals 6

    const-string v0, "Lockdown plist channel is "

    .line 80
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->ioLock:Ljava/lang/Object;

    monitor-enter v1

    .line 81
    :try_start_0
    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->stateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 82
    :try_start_1
    iget-boolean v3, p0, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->closed:Z

    if-eqz v3, :cond_1

    .line 83
    iget-boolean v3, p0, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->detached:Z

    if-eqz v3, :cond_0

    const-string v3, "already detached"

    goto :goto_0

    :cond_0
    const-string v3, "closed"

    .line 84
    :goto_0
    new-instance v4, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v3, v5}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v4

    :cond_1
    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->detached:Z

    .line 87
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->closed:Z

    .line 88
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->connection:Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 80
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    .line 81
    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 80
    monitor-exit v1

    throw v0
.end method

.method public final receive(J)Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->ioLock:Ljava/lang/Object;

    monitor-enter v0

    .line 59
    :try_start_0
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->checkOpen()V

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->receiveLocked(J)Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final request(Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;J)Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->ioLock:Ljava/lang/Object;

    monitor-enter v0

    .line 68
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->validateTimeout(J)V

    .line 69
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->checkOpen()V

    .line 70
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->sendLocked(Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;)V

    .line 71
    invoke-direct {p0, p2, p3}, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->receiveLocked(J)Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final send(Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->ioLock:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_0
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->checkOpen()V

    .line 54
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->sendLocked(Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;)V

    .line 55
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
