.class public final Lcom/shilapi/xcertplay/network/LegacyHotspotRadio;
.super Ljava/lang/Object;
.source "LegacyHotspotRadio.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/network/LegacyHotspotRadio$Reading;,
        Lcom/shilapi/xcertplay/network/LegacyHotspotRadio$Settled;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLegacyHotspotRadio.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LegacyHotspotRadio.kt\ncom/shilapi/xcertplay/network/LegacyHotspotRadio\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,60:1\n1#2:61\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u00c0\u0002\u0018\u00002\u00020\u0001:\u0002\u0010\u0011B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\"\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\nJ\'\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000c2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u000f\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/LegacyHotspotRadio;",
        "",
        "<init>",
        "()V",
        "read",
        "Lcom/shilapi/xcertplay/network/LegacyHotspotRadio$Reading;",
        "interfaceName",
        "",
        "band",
        "inferBandFromChannel",
        "",
        "decodeFrequency",
        "",
        "mantissa",
        "exponent",
        "(IILjava/lang/String;)Ljava/lang/Integer;",
        "Reading",
        "Settled",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/network/LegacyHotspotRadio;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/network/LegacyHotspotRadio;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/network/LegacyHotspotRadio;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/network/LegacyHotspotRadio;->INSTANCE:Lcom/shilapi/xcertplay/network/LegacyHotspotRadio;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic read$default(Lcom/shilapi/xcertplay/network/LegacyHotspotRadio;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/shilapi/xcertplay/network/LegacyHotspotRadio$Reading;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/network/LegacyHotspotRadio;->read(Ljava/lang/String;Ljava/lang/String;Z)Lcom/shilapi/xcertplay/network/LegacyHotspotRadio$Reading;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final decodeFrequency(IILjava/lang/String;)Ljava/lang/Integer;
    .locals 10

    const/4 v0, 0x0

    if-lez p1, :cond_9

    if-ltz p2, :cond_9

    const/16 v1, 0xa

    if-ge p2, v1, :cond_9

    const/16 v2, 0x1388

    const/4 v3, 0x5

    if-nez p2, :cond_3

    const/16 v4, 0x3e8

    if-ge p1, v4, :cond_3

    .line 31
    const-string p2, "2.4 GHz"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/16 v4, 0xe

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    if-gt v1, p1, :cond_0

    if-ge p1, v4, :cond_0

    mul-int/lit8 p1, p1, 0x5

    add-int/lit16 p1, p1, 0x967

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 32
    :cond_0
    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    if-ne p1, v4, :cond_1

    const/16 p1, 0x9b4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 33
    :cond_1
    const-string p2, "5 GHz"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/16 p2, 0x20

    if-gt p2, p1, :cond_2

    const/16 p2, 0xb2

    if-ge p1, p2, :cond_2

    mul-int/lit8 p1, p1, 0x5

    add-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0

    :cond_3
    int-to-long v4, p1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p2, :cond_4

    int-to-long v6, v1

    mul-long v4, v4, v6

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    const p1, 0xf4240

    int-to-long p1, p1

    .line 38
    rem-long v6, v4, p1

    const-wide/16 v8, 0x0

    cmp-long p3, v6, v8

    if-eqz p3, :cond_5

    return-object v0

    .line 39
    :cond_5
    div-long/2addr v4, p1

    long-to-int p1, v4

    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    const-wide/16 p2, 0x96c

    cmp-long v1, p2, v4

    if-gtz v1, :cond_6

    const-wide/16 p2, 0x9a9

    cmp-long v1, v4, p2

    if-gez v1, :cond_6

    const/16 p2, 0x96c

    int-to-long p2, p2

    sub-long p2, v4, p2

    int-to-long v6, v3

    .line 41
    rem-long/2addr p2, v6

    cmp-long v1, p2, v8

    if-eqz v1, :cond_8

    :cond_6
    const-wide/16 p2, 0x9b4

    cmp-long v1, v4, p2

    if-eqz v1, :cond_8

    const-wide/16 p2, 0x1428

    cmp-long v1, p2, v4

    if-gtz v1, :cond_7

    const-wide/16 p2, 0x16fe

    cmp-long v1, v4, p2

    if-gez v1, :cond_7

    int-to-long p2, v2

    sub-long/2addr v4, p2

    int-to-long p2, v3

    .line 42
    rem-long/2addr v4, p2

    cmp-long p2, v4, v8

    if-nez p2, :cond_7

    goto :goto_1

    :cond_7
    return-object v0

    :cond_8
    :goto_1
    return-object p1

    :cond_9
    return-object v0
.end method

.method public final read(Ljava/lang/String;Ljava/lang/String;Z)Lcom/shilapi/xcertplay/network/LegacyHotspotRadio$Reading;
    .locals 3

    const-string v0, "interfaceName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v1, Lkotlin/text/Regex;

    const-string v2, "(?:ap|wlan|swlan|softap|p2p)[0-9]+|p2p-[A-Za-z0-9]+-[0-9]+"

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 10
    new-instance p1, Lcom/shilapi/xcertplay/network/LegacyHotspotRadio$Reading;

    const-string p2, "invalid AP interface"

    invoke-direct {p1, v1, p2}, Lcom/shilapi/xcertplay/network/LegacyHotspotRadio$Reading;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    return-object p1

    .line 11
    :cond_0
    :try_start_0
    sget-object v0, Lcom/shilapi/xcertplay/network/LegacyHotspotNative;->INSTANCE:Lcom/shilapi/xcertplay/network/LegacyHotspotNative;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/network/LegacyHotspotNative;->query(Ljava/lang/String;)[I

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    array-length v0, p1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    new-instance p1, Lcom/shilapi/xcertplay/network/LegacyHotspotRadio$Reading;

    const-string p2, "invalid driver response"

    invoke-direct {p1, v1, p2}, Lcom/shilapi/xcertplay/network/LegacyHotspotRadio$Reading;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    return-object p1

    :cond_1
    const/4 v0, 0x0

    .line 14
    aget v2, p1, v0

    if-eqz v2, :cond_2

    new-instance p2, Lcom/shilapi/xcertplay/network/LegacyHotspotRadio$Reading;

    aget p1, p1, v0

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "driver frequency query errno="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Lcom/shilapi/xcertplay/network/LegacyHotspotRadio$Reading;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    return-object p2

    :cond_2
    const/4 v0, 0x2

    const/4 v2, 0x1

    if-nez p2, :cond_5

    if-eqz p3, :cond_4

    .line 17
    aget p2, p1, v0

    if-nez p2, :cond_4

    aget p2, p1, v2

    if-gt v2, p2, :cond_3

    const/16 p3, 0xf

    if-ge p2, p3, :cond_3

    .line 18
    const-string p2, "2.4 GHz"

    goto :goto_0

    :cond_3
    const/16 p3, 0x20

    if-gt p3, p2, :cond_4

    const/16 p3, 0xb2

    if-ge p2, p3, :cond_4

    .line 19
    const-string p2, "5 GHz"

    goto :goto_0

    :cond_4
    move-object p2, v1

    .line 22
    :cond_5
    :goto_0
    aget p3, p1, v2

    aget p1, p1, v0

    invoke-virtual {p0, p3, p1, p2}, Lcom/shilapi/xcertplay/network/LegacyHotspotRadio;->decodeFrequency(IILjava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 23
    new-instance p2, Lcom/shilapi/xcertplay/network/LegacyHotspotRadio$Reading;

    if-nez p1, :cond_6

    const-string/jumbo v1, "unrecognized driver frequency"

    :cond_6
    invoke-direct {p2, p1, v1}, Lcom/shilapi/xcertplay/network/LegacyHotspotRadio$Reading;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    return-object p2

    .line 12
    :catch_0
    new-instance p1, Lcom/shilapi/xcertplay/network/LegacyHotspotRadio$Reading;

    const-string p2, "driver reader unavailable"

    invoke-direct {p1, v1, p2}, Lcom/shilapi/xcertplay/network/LegacyHotspotRadio$Reading;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    return-object p1
.end method
