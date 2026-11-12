.class public final Lcom/shilapi/xcertplay/airplay/AudioFormat;
.super Ljava/lang/Object;
.source "AudioStream.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0011\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\tH\u00c6\u0003J;\u0010\u0019\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u00c6\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u001e\u001a\u00020\tH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000fR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/AudioFormat;",
        "",
        "codec",
        "Lcom/shilapi/xcertplay/airplay/AudioCodecKind;",
        "sampleRate",
        "",
        "channels",
        "payloadType",
        "audioType",
        "",
        "<init>",
        "(Lcom/shilapi/xcertplay/airplay/AudioCodecKind;IIILjava/lang/String;)V",
        "getCodec",
        "()Lcom/shilapi/xcertplay/airplay/AudioCodecKind;",
        "getSampleRate",
        "()I",
        "getChannels",
        "getPayloadType",
        "getAudioType",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
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
.field private final audioType:Ljava/lang/String;

.field private final channels:I

.field private final codec:Lcom/shilapi/xcertplay/airplay/AudioCodecKind;

.field private final payloadType:I

.field private final sampleRate:I


# direct methods
.method public constructor <init>(Lcom/shilapi/xcertplay/airplay/AudioCodecKind;IIILjava/lang/String;)V
    .locals 1

    const-string v0, "codec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioType"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/AudioFormat;->codec:Lcom/shilapi/xcertplay/airplay/AudioCodecKind;

    .line 16
    iput p2, p0, Lcom/shilapi/xcertplay/airplay/AudioFormat;->sampleRate:I

    .line 17
    iput p3, p0, Lcom/shilapi/xcertplay/airplay/AudioFormat;->channels:I

    .line 18
    iput p4, p0, Lcom/shilapi/xcertplay/airplay/AudioFormat;->payloadType:I

    .line 19
    iput-object p5, p0, Lcom/shilapi/xcertplay/airplay/AudioFormat;->audioType:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/airplay/AudioCodecKind;IIILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    .line 19
    const-string p5, "media"

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/airplay/AudioFormat;-><init>(Lcom/shilapi/xcertplay/airplay/AudioCodecKind;IIILjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/airplay/AudioFormat;Lcom/shilapi/xcertplay/airplay/AudioCodecKind;IIILjava/lang/String;ILjava/lang/Object;)Lcom/shilapi/xcertplay/airplay/AudioFormat;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/shilapi/xcertplay/airplay/AudioFormat;->codec:Lcom/shilapi/xcertplay/airplay/AudioCodecKind;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget p2, p0, Lcom/shilapi/xcertplay/airplay/AudioFormat;->sampleRate:I

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget p3, p0, Lcom/shilapi/xcertplay/airplay/AudioFormat;->channels:I

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    iget p4, p0, Lcom/shilapi/xcertplay/airplay/AudioFormat;->payloadType:I

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget-object p5, p0, Lcom/shilapi/xcertplay/airplay/AudioFormat;->audioType:Ljava/lang/String;

    :cond_4
    move p6, p4

    move-object p7, p5

    move p4, p2

    move p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/shilapi/xcertplay/airplay/AudioFormat;->copy(Lcom/shilapi/xcertplay/airplay/AudioCodecKind;IIILjava/lang/String;)Lcom/shilapi/xcertplay/airplay/AudioFormat;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/shilapi/xcertplay/airplay/AudioCodecKind;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AudioFormat;->codec:Lcom/shilapi/xcertplay/airplay/AudioCodecKind;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/airplay/AudioFormat;->sampleRate:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/airplay/AudioFormat;->channels:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/airplay/AudioFormat;->payloadType:I

    return v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AudioFormat;->audioType:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lcom/shilapi/xcertplay/airplay/AudioCodecKind;IIILjava/lang/String;)Lcom/shilapi/xcertplay/airplay/AudioFormat;
    .locals 7

    const-string v0, "codec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioType"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/shilapi/xcertplay/airplay/AudioFormat;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/shilapi/xcertplay/airplay/AudioFormat;-><init>(Lcom/shilapi/xcertplay/airplay/AudioCodecKind;IIILjava/lang/String;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/airplay/AudioFormat;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/airplay/AudioFormat;

    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/AudioFormat;->codec:Lcom/shilapi/xcertplay/airplay/AudioCodecKind;

    iget-object v3, p1, Lcom/shilapi/xcertplay/airplay/AudioFormat;->codec:Lcom/shilapi/xcertplay/airplay/AudioCodecKind;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/shilapi/xcertplay/airplay/AudioFormat;->sampleRate:I

    iget v3, p1, Lcom/shilapi/xcertplay/airplay/AudioFormat;->sampleRate:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/shilapi/xcertplay/airplay/AudioFormat;->channels:I

    iget v3, p1, Lcom/shilapi/xcertplay/airplay/AudioFormat;->channels:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/shilapi/xcertplay/airplay/AudioFormat;->payloadType:I

    iget v3, p1, Lcom/shilapi/xcertplay/airplay/AudioFormat;->payloadType:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/AudioFormat;->audioType:Ljava/lang/String;

    iget-object p1, p1, Lcom/shilapi/xcertplay/airplay/AudioFormat;->audioType:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getAudioType()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AudioFormat;->audioType:Ljava/lang/String;

    return-object v0
.end method

.method public final getChannels()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/shilapi/xcertplay/airplay/AudioFormat;->channels:I

    return v0
.end method

.method public final getCodec()Lcom/shilapi/xcertplay/airplay/AudioCodecKind;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AudioFormat;->codec:Lcom/shilapi/xcertplay/airplay/AudioCodecKind;

    return-object v0
.end method

.method public final getPayloadType()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/shilapi/xcertplay/airplay/AudioFormat;->payloadType:I

    return v0
.end method

.method public final getSampleRate()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/shilapi/xcertplay/airplay/AudioFormat;->sampleRate:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AudioFormat;->codec:Lcom/shilapi/xcertplay/airplay/AudioCodecKind;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/AudioCodecKind;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/airplay/AudioFormat;->sampleRate:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/airplay/AudioFormat;->channels:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/airplay/AudioFormat;->payloadType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/AudioFormat;->audioType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AudioFormat;->codec:Lcom/shilapi/xcertplay/airplay/AudioCodecKind;

    iget v1, p0, Lcom/shilapi/xcertplay/airplay/AudioFormat;->sampleRate:I

    iget v2, p0, Lcom/shilapi/xcertplay/airplay/AudioFormat;->channels:I

    iget v3, p0, Lcom/shilapi/xcertplay/airplay/AudioFormat;->payloadType:I

    iget-object v4, p0, Lcom/shilapi/xcertplay/airplay/AudioFormat;->audioType:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "AudioFormat(codec="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", sampleRate="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", channels="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", payloadType="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", audioType="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
