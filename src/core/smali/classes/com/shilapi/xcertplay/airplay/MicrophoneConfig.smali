.class public final Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;
.super Ljava/lang/Object;
.source "MicrophonePacketizer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/airplay/MicrophoneConfig$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008+\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0086\u0008\u0018\u0000 ?2\u00020\u0001:\u0001?Bu\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\t\u0010,\u001a\u00020\u0003H\u00c6\u0003J\t\u0010-\u001a\u00020\u0005H\u00c6\u0003J\t\u0010.\u001a\u00020\u0005H\u00c6\u0003J\t\u0010/\u001a\u00020\u0005H\u00c6\u0003J\t\u00100\u001a\u00020\u0005H\u00c6\u0003J\t\u00101\u001a\u00020\nH\u00c6\u0003J\t\u00102\u001a\u00020\u0005H\u00c6\u0003J\t\u00103\u001a\u00020\rH\u00c6\u0003J\t\u00104\u001a\u00020\u000fH\u00c6\u0003J\u0010\u00105\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010$J\u0010\u00106\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010$J\u000b\u00107\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u008c\u0001\u00108\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00052\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\nH\u00c6\u0001\u00a2\u0006\u0002\u00109J\u0013\u0010:\u001a\u00020;2\u0008\u0010<\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010=\u001a\u00020\u0005H\u00d6\u0001J\t\u0010>\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0018R\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0018R\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0018R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0011\u0010\u000b\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u0018R\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u0015\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010%\u001a\u0004\u0008#\u0010$R\u0015\u0010\u0011\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010%\u001a\u0004\u0008&\u0010$R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010\u001dR\u0011\u0010(\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010\u0018R\u0011\u0010*\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010\u0018\u00a8\u0006@"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;",
        "",
        "audioType",
        "",
        "sampleRate",
        "",
        "channels",
        "payloadType",
        "frameMillis",
        "host",
        "Ljava/net/InetAddress;",
        "port",
        "key",
        "",
        "codec",
        "Lcom/shilapi/xcertplay/airplay/AudioCodecKind;",
        "bitrate",
        "opusBandwidthRate",
        "localAddress",
        "<init>",
        "(Ljava/lang/String;IIIILjava/net/InetAddress;I[BLcom/shilapi/xcertplay/airplay/AudioCodecKind;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/net/InetAddress;)V",
        "getAudioType",
        "()Ljava/lang/String;",
        "getSampleRate",
        "()I",
        "getChannels",
        "getPayloadType",
        "getFrameMillis",
        "getHost",
        "()Ljava/net/InetAddress;",
        "getPort",
        "getKey",
        "()[B",
        "getCodec",
        "()Lcom/shilapi/xcertplay/airplay/AudioCodecKind;",
        "getBitrate",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getOpusBandwidthRate",
        "getLocalAddress",
        "samplesPerPacket",
        "getSamplesPerPacket",
        "frameBytes",
        "getFrameBytes",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "component12",
        "copy",
        "(Ljava/lang/String;IIIILjava/net/InetAddress;I[BLcom/shilapi/xcertplay/airplay/AudioCodecKind;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/net/InetAddress;)Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
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
.field private static final Companion:Lcom/shilapi/xcertplay/airplay/MicrophoneConfig$Companion;

.field public static final OPUS_SAMPLES_PER_PACKET:I = 0x3c0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final audioType:Ljava/lang/String;

.field private final bitrate:Ljava/lang/Integer;

.field private final channels:I

.field private final codec:Lcom/shilapi/xcertplay/airplay/AudioCodecKind;

.field private final frameMillis:I

.field private final host:Ljava/net/InetAddress;

.field private final key:[B

.field private final localAddress:Ljava/net/InetAddress;

.field private final opusBandwidthRate:Ljava/lang/Integer;

.field private final payloadType:I

.field private final port:I

.field private final sampleRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->Companion:Lcom/shilapi/xcertplay/airplay/MicrophoneConfig$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIILjava/net/InetAddress;I[BLcom/shilapi/xcertplay/airplay/AudioCodecKind;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/net/InetAddress;)V
    .locals 1

    const-string v0, "audioType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "host"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "codec"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->audioType:Ljava/lang/String;

    .line 8
    iput p2, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->sampleRate:I

    .line 9
    iput p3, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->channels:I

    .line 10
    iput p4, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->payloadType:I

    .line 11
    iput p5, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->frameMillis:I

    .line 12
    iput-object p6, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->host:Ljava/net/InetAddress;

    .line 13
    iput p7, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->port:I

    .line 14
    iput-object p8, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->key:[B

    .line 15
    iput-object p9, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->codec:Lcom/shilapi/xcertplay/airplay/AudioCodecKind;

    .line 16
    iput-object p10, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->bitrate:Ljava/lang/Integer;

    .line 18
    iput-object p11, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->opusBandwidthRate:Ljava/lang/Integer;

    .line 20
    iput-object p12, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->localAddress:Ljava/net/InetAddress;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IIIILjava/net/InetAddress;I[BLcom/shilapi/xcertplay/airplay/AudioCodecKind;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/net/InetAddress;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 15

    move/from16 v0, p13

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_0

    .line 15
    sget-object v1, Lcom/shilapi/xcertplay/airplay/AudioCodecKind;->LPCM:Lcom/shilapi/xcertplay/airplay/AudioCodecKind;

    move-object v11, v1

    goto :goto_0

    :cond_0
    move-object/from16 v11, p9

    :goto_0
    and-int/lit16 v1, v0, 0x200

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v12, v2

    goto :goto_1

    :cond_1
    move-object/from16 v12, p10

    :goto_1
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_2

    move-object v13, v2

    goto :goto_2

    :cond_2
    move-object/from16 v13, p11

    :goto_2
    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_3

    move-object v14, v2

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object v2, p0

    goto :goto_3

    :cond_3
    move-object/from16 v14, p12

    move-object v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    .line 6
    :goto_3
    invoke-direct/range {v2 .. v14}, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;-><init>(Ljava/lang/String;IIIILjava/net/InetAddress;I[BLcom/shilapi/xcertplay/airplay/AudioCodecKind;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/net/InetAddress;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;Ljava/lang/String;IIIILjava/net/InetAddress;I[BLcom/shilapi/xcertplay/airplay/AudioCodecKind;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/net/InetAddress;ILjava/lang/Object;)Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;
    .locals 0

    and-int/lit8 p14, p13, 0x1

    if-eqz p14, :cond_0

    iget-object p1, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->audioType:Ljava/lang/String;

    :cond_0
    and-int/lit8 p14, p13, 0x2

    if-eqz p14, :cond_1

    iget p2, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->sampleRate:I

    :cond_1
    and-int/lit8 p14, p13, 0x4

    if-eqz p14, :cond_2

    iget p3, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->channels:I

    :cond_2
    and-int/lit8 p14, p13, 0x8

    if-eqz p14, :cond_3

    iget p4, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->payloadType:I

    :cond_3
    and-int/lit8 p14, p13, 0x10

    if-eqz p14, :cond_4

    iget p5, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->frameMillis:I

    :cond_4
    and-int/lit8 p14, p13, 0x20

    if-eqz p14, :cond_5

    iget-object p6, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->host:Ljava/net/InetAddress;

    :cond_5
    and-int/lit8 p14, p13, 0x40

    if-eqz p14, :cond_6

    iget p7, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->port:I

    :cond_6
    and-int/lit16 p14, p13, 0x80

    if-eqz p14, :cond_7

    iget-object p8, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->key:[B

    :cond_7
    and-int/lit16 p14, p13, 0x100

    if-eqz p14, :cond_8

    iget-object p9, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->codec:Lcom/shilapi/xcertplay/airplay/AudioCodecKind;

    :cond_8
    and-int/lit16 p14, p13, 0x200

    if-eqz p14, :cond_9

    iget-object p10, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->bitrate:Ljava/lang/Integer;

    :cond_9
    and-int/lit16 p14, p13, 0x400

    if-eqz p14, :cond_a

    iget-object p11, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->opusBandwidthRate:Ljava/lang/Integer;

    :cond_a
    and-int/lit16 p13, p13, 0x800

    if-eqz p13, :cond_b

    iget-object p12, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->localAddress:Ljava/net/InetAddress;

    :cond_b
    move-object p13, p11

    move-object p14, p12

    move-object p11, p9

    move-object p12, p10

    move p9, p7

    move-object p10, p8

    move p7, p5

    move-object p8, p6

    move p5, p3

    move p6, p4

    move-object p3, p1

    move p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p14}, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->copy(Ljava/lang/String;IIIILjava/net/InetAddress;I[BLcom/shilapi/xcertplay/airplay/AudioCodecKind;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/net/InetAddress;)Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->audioType:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->bitrate:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component11()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->opusBandwidthRate:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component12()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->localAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->sampleRate:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->channels:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->payloadType:I

    return v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->frameMillis:I

    return v0
.end method

.method public final component6()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->host:Ljava/net/InetAddress;

    return-object v0
.end method

.method public final component7()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->port:I

    return v0
.end method

.method public final component8()[B
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->key:[B

    return-object v0
.end method

.method public final component9()Lcom/shilapi/xcertplay/airplay/AudioCodecKind;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->codec:Lcom/shilapi/xcertplay/airplay/AudioCodecKind;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;IIIILjava/net/InetAddress;I[BLcom/shilapi/xcertplay/airplay/AudioCodecKind;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/net/InetAddress;)Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;
    .locals 14

    const-string v0, "audioType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "host"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "codec"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v1 .. v13}, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;-><init>(Ljava/lang/String;IIIILjava/net/InetAddress;I[BLcom/shilapi/xcertplay/airplay/AudioCodecKind;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/net/InetAddress;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;

    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->audioType:Ljava/lang/String;

    iget-object v3, p1, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->audioType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->sampleRate:I

    iget v3, p1, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->sampleRate:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->channels:I

    iget v3, p1, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->channels:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->payloadType:I

    iget v3, p1, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->payloadType:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->frameMillis:I

    iget v3, p1, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->frameMillis:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->host:Ljava/net/InetAddress;

    iget-object v3, p1, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->host:Ljava/net/InetAddress;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->port:I

    iget v3, p1, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->port:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->key:[B

    iget-object v3, p1, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->key:[B

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->codec:Lcom/shilapi/xcertplay/airplay/AudioCodecKind;

    iget-object v3, p1, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->codec:Lcom/shilapi/xcertplay/airplay/AudioCodecKind;

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->bitrate:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->bitrate:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->opusBandwidthRate:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->opusBandwidthRate:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->localAddress:Ljava/net/InetAddress;

    iget-object p1, p1, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->localAddress:Ljava/net/InetAddress;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    return v2

    :cond_d
    return v0
.end method

.method public final getAudioType()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->audioType:Ljava/lang/String;

    return-object v0
.end method

.method public final getBitrate()Ljava/lang/Integer;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->bitrate:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getChannels()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->channels:I

    return v0
.end method

.method public final getCodec()Lcom/shilapi/xcertplay/airplay/AudioCodecKind;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->codec:Lcom/shilapi/xcertplay/airplay/AudioCodecKind;

    return-object v0
.end method

.method public final getFrameBytes()I
    .locals 2

    .line 30
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->getSamplesPerPacket()I

    move-result v0

    iget v1, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->channels:I

    mul-int v0, v0, v1

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public final getFrameMillis()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->frameMillis:I

    return v0
.end method

.method public final getHost()Ljava/net/InetAddress;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->host:Ljava/net/InetAddress;

    return-object v0
.end method

.method public final getKey()[B
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->key:[B

    return-object v0
.end method

.method public final getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->localAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public final getOpusBandwidthRate()Ljava/lang/Integer;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->opusBandwidthRate:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getPayloadType()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->payloadType:I

    return v0
.end method

.method public final getPort()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->port:I

    return v0
.end method

.method public final getSampleRate()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->sampleRate:I

    return v0
.end method

.method public final getSamplesPerPacket()I
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->codec:Lcom/shilapi/xcertplay/airplay/AudioCodecKind;

    sget-object v1, Lcom/shilapi/xcertplay/airplay/AudioCodecKind;->OPUS:Lcom/shilapi/xcertplay/airplay/AudioCodecKind;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x3c0

    return v0

    .line 26
    :cond_0
    iget v0, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->sampleRate:I

    iget v1, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->frameMillis:I

    mul-int v0, v0, v1

    div-int/lit16 v0, v0, 0x3e8

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->audioType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->sampleRate:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->channels:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->payloadType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->frameMillis:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->host:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->port:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->key:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->codec:Lcom/shilapi/xcertplay/airplay/AudioCodecKind;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/airplay/AudioCodecKind;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->bitrate:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->opusBandwidthRate:Ljava/lang/Integer;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->localAddress:Ljava/net/InetAddress;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/net/InetAddress;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->audioType:Ljava/lang/String;

    iget v1, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->sampleRate:I

    iget v2, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->channels:I

    iget v3, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->payloadType:I

    iget v4, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->frameMillis:I

    iget-object v5, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->host:Ljava/net/InetAddress;

    iget v6, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->port:I

    iget-object v7, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->key:[B

    invoke-static {v7}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->codec:Lcom/shilapi/xcertplay/airplay/AudioCodecKind;

    iget-object v9, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->bitrate:Ljava/lang/Integer;

    iget-object v10, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->opusBandwidthRate:Ljava/lang/Integer;

    iget-object v11, p0, Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;->localAddress:Ljava/net/InetAddress;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "MicrophoneConfig(audioType="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", sampleRate="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", channels="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", payloadType="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", frameMillis="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", host="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", port="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", key="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", codec="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", bitrate="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", opusBandwidthRate="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", localAddress="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
