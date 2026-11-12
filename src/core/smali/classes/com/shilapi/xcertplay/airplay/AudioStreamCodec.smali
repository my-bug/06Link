.class public final Lcom/shilapi/xcertplay/airplay/AudioStreamCodec;
.super Ljava/lang/Object;
.source "AudioStream.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bR\u000e\u0010\u000c\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R&\u0010\u000f\u001a\u001a\u0012\u0004\u0012\u00020\u0007\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u00110\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/AudioStreamCodec;",
        "",
        "<init>",
        "()V",
        "fromFormatBits",
        "Lcom/shilapi/xcertplay/airplay/AudioFormat;",
        "bits",
        "",
        "payloadType",
        "",
        "audioType",
        "",
        "AAC_LC_44K_STEREO",
        "AAC_LC_48K_STEREO",
        "OPUS_MONO",
        "PCM_FORMAT",
        "",
        "Lkotlin/Pair;",
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
.field private static final AAC_LC_44K_STEREO:J = 0x400000L

.field private static final AAC_LC_48K_STEREO:J = 0x800000L

.field public static final INSTANCE:Lcom/shilapi/xcertplay/airplay/AudioStreamCodec;

.field private static final OPUS_MONO:J = 0x70000000L

.field private static final PCM_FORMAT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/shilapi/xcertplay/airplay/AudioStreamCodec;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/airplay/AudioStreamCodec;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/airplay/AudioStreamCodec;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AudioStreamCodec;

    const/16 v0, 0xc

    .line 241
    new-array v0, v0, [Lkotlin/Pair;

    const-wide/16 v1, 0x4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x1f40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    invoke-static {v1, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v5, 0x0

    aput-object v1, v0, v5

    const-wide/16 v5, 0x8

    .line 242
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v3

    const-wide/16 v1, 0x10

    .line 243
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x3e80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v5

    const-wide/16 v7, 0x20

    .line 244
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v2, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-wide/16 v1, 0x40

    .line 245
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x5dc0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const-wide/16 v7, 0x80

    .line 246
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v2, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-wide/16 v1, 0x100

    .line 247
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x7d00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x6

    aput-object v1, v0, v3

    const-wide/16 v7, 0x200

    .line 248
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v2, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-wide/16 v1, 0x400

    .line 249
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0xac44

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v3, 0x8

    aput-object v1, v0, v3

    const-wide/16 v7, 0x800

    .line 250
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v2, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-wide/16 v1, 0x4000

    .line 251
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0xbb80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v3, 0xa

    aput-object v1, v0, v3

    const-wide/32 v3, 0x8000

    .line 252
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v2, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 240
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/airplay/AudioStreamCodec;->PCM_FORMAT:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic fromFormatBits$default(Lcom/shilapi/xcertplay/airplay/AudioStreamCodec;JILjava/lang/String;ILjava/lang/Object;)Lcom/shilapi/xcertplay/airplay/AudioFormat;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 218
    const-string p4, "media"

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/airplay/AudioStreamCodec;->fromFormatBits(JILjava/lang/String;)Lcom/shilapi/xcertplay/airplay/AudioFormat;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final fromFormatBits(JILjava/lang/String;)Lcom/shilapi/xcertplay/airplay/AudioFormat;
    .locals 9

    const-string v0, "audioType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/32 v0, 0xc00000

    and-long/2addr v0, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v7, v0, v4

    if-eqz v7, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-wide/32 v7, 0x70000000

    and-long/2addr v7, p1

    cmp-long v1, v7, v4

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 221
    :goto_1
    sget-object v1, Lcom/shilapi/xcertplay/airplay/AudioStreamCodec;->PCM_FORMAT:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    if-eqz v2, :cond_2

    .line 223
    new-instance v1, Lcom/shilapi/xcertplay/airplay/AudioFormat;

    sget-object v2, Lcom/shilapi/xcertplay/airplay/AudioCodecKind;->OPUS:Lcom/shilapi/xcertplay/airplay/AudioCodecKind;

    const v3, 0xbb80

    const/4 v4, 0x1

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/shilapi/xcertplay/airplay/AudioFormat;-><init>(Lcom/shilapi/xcertplay/airplay/AudioCodecKind;IIILjava/lang/String;)V

    return-object v1

    :cond_2
    if-eqz v0, :cond_4

    .line 224
    new-instance v1, Lcom/shilapi/xcertplay/airplay/AudioFormat;

    .line 225
    sget-object v2, Lcom/shilapi/xcertplay/airplay/AudioCodecKind;->AAC_LC:Lcom/shilapi/xcertplay/airplay/AudioCodecKind;

    const-wide/32 v6, 0x800000

    and-long/2addr v6, p1

    cmp-long v0, v6, v4

    if-eqz v0, :cond_3

    const v0, 0xbb80

    const v3, 0xbb80

    goto :goto_2

    :cond_3
    const v0, 0xac44

    const v3, 0xac44

    :goto_2
    const/4 v4, 0x2

    move v5, p3

    move-object v6, p4

    .line 224
    invoke-direct/range {v1 .. v6}, Lcom/shilapi/xcertplay/airplay/AudioFormat;-><init>(Lcom/shilapi/xcertplay/airplay/AudioCodecKind;IIILjava/lang/String;)V

    return-object v1

    :cond_4
    if-eqz v1, :cond_5

    move-object v0, v1

    .line 231
    new-instance v1, Lcom/shilapi/xcertplay/airplay/AudioFormat;

    sget-object v2, Lcom/shilapi/xcertplay/airplay/AudioCodecKind;->LPCM:Lcom/shilapi/xcertplay/airplay/AudioCodecKind;

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v4

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/shilapi/xcertplay/airplay/AudioFormat;-><init>(Lcom/shilapi/xcertplay/airplay/AudioCodecKind;IIILjava/lang/String;)V

    return-object v1

    .line 232
    :cond_5
    new-instance v1, Lcom/shilapi/xcertplay/airplay/AudioFormat;

    sget-object v2, Lcom/shilapi/xcertplay/airplay/AudioCodecKind;->LPCM:Lcom/shilapi/xcertplay/airplay/AudioCodecKind;

    const v3, 0xac44

    const/4 v4, 0x2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/shilapi/xcertplay/airplay/AudioFormat;-><init>(Lcom/shilapi/xcertplay/airplay/AudioCodecKind;IIILjava/lang/String;)V

    return-object v1
.end method
