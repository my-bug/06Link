.class public final Lcom/shilapi/xcertplay/media/AudioChannelSelection;
.super Ljava/lang/Object;
.source "AudioChannelMapping.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0080\u0008\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0007H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/media/AudioChannelSelection;",
        "",
        "channel",
        "Lcom/shilapi/xcertplay/media/AudioChannel;",
        "contentType",
        "Lcom/shilapi/xcertplay/media/AudioContentType;",
        "streamType",
        "",
        "<init>",
        "(Lcom/shilapi/xcertplay/media/AudioChannel;Lcom/shilapi/xcertplay/media/AudioContentType;I)V",
        "getChannel",
        "()Lcom/shilapi/xcertplay/media/AudioChannel;",
        "getContentType",
        "()Lcom/shilapi/xcertplay/media/AudioContentType;",
        "getStreamType",
        "()I",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
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
.field private final channel:Lcom/shilapi/xcertplay/media/AudioChannel;

.field private final contentType:Lcom/shilapi/xcertplay/media/AudioContentType;

.field private final streamType:I


# direct methods
.method public constructor <init>(Lcom/shilapi/xcertplay/media/AudioChannel;Lcom/shilapi/xcertplay/media/AudioContentType;I)V
    .locals 1

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/shilapi/xcertplay/media/AudioChannelSelection;->channel:Lcom/shilapi/xcertplay/media/AudioChannel;

    .line 24
    iput-object p2, p0, Lcom/shilapi/xcertplay/media/AudioChannelSelection;->contentType:Lcom/shilapi/xcertplay/media/AudioContentType;

    .line 25
    iput p3, p0, Lcom/shilapi/xcertplay/media/AudioChannelSelection;->streamType:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/media/AudioChannel;Lcom/shilapi/xcertplay/media/AudioContentType;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x3

    .line 22
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/media/AudioChannelSelection;-><init>(Lcom/shilapi/xcertplay/media/AudioChannel;Lcom/shilapi/xcertplay/media/AudioContentType;I)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/media/AudioChannelSelection;Lcom/shilapi/xcertplay/media/AudioChannel;Lcom/shilapi/xcertplay/media/AudioContentType;IILjava/lang/Object;)Lcom/shilapi/xcertplay/media/AudioChannelSelection;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/shilapi/xcertplay/media/AudioChannelSelection;->channel:Lcom/shilapi/xcertplay/media/AudioChannel;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/shilapi/xcertplay/media/AudioChannelSelection;->contentType:Lcom/shilapi/xcertplay/media/AudioContentType;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lcom/shilapi/xcertplay/media/AudioChannelSelection;->streamType:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/media/AudioChannelSelection;->copy(Lcom/shilapi/xcertplay/media/AudioChannel;Lcom/shilapi/xcertplay/media/AudioContentType;I)Lcom/shilapi/xcertplay/media/AudioChannelSelection;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/shilapi/xcertplay/media/AudioChannel;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AudioChannelSelection;->channel:Lcom/shilapi/xcertplay/media/AudioChannel;

    return-object v0
.end method

.method public final component2()Lcom/shilapi/xcertplay/media/AudioContentType;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AudioChannelSelection;->contentType:Lcom/shilapi/xcertplay/media/AudioContentType;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/media/AudioChannelSelection;->streamType:I

    return v0
.end method

.method public final copy(Lcom/shilapi/xcertplay/media/AudioChannel;Lcom/shilapi/xcertplay/media/AudioContentType;I)Lcom/shilapi/xcertplay/media/AudioChannelSelection;
    .locals 1

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/shilapi/xcertplay/media/AudioChannelSelection;

    invoke-direct {v0, p1, p2, p3}, Lcom/shilapi/xcertplay/media/AudioChannelSelection;-><init>(Lcom/shilapi/xcertplay/media/AudioChannel;Lcom/shilapi/xcertplay/media/AudioContentType;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/media/AudioChannelSelection;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/media/AudioChannelSelection;

    iget-object v1, p0, Lcom/shilapi/xcertplay/media/AudioChannelSelection;->channel:Lcom/shilapi/xcertplay/media/AudioChannel;

    iget-object v3, p1, Lcom/shilapi/xcertplay/media/AudioChannelSelection;->channel:Lcom/shilapi/xcertplay/media/AudioChannel;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/media/AudioChannelSelection;->contentType:Lcom/shilapi/xcertplay/media/AudioContentType;

    iget-object v3, p1, Lcom/shilapi/xcertplay/media/AudioChannelSelection;->contentType:Lcom/shilapi/xcertplay/media/AudioContentType;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/shilapi/xcertplay/media/AudioChannelSelection;->streamType:I

    iget p1, p1, Lcom/shilapi/xcertplay/media/AudioChannelSelection;->streamType:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getChannel()Lcom/shilapi/xcertplay/media/AudioChannel;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AudioChannelSelection;->channel:Lcom/shilapi/xcertplay/media/AudioChannel;

    return-object v0
.end method

.method public final getContentType()Lcom/shilapi/xcertplay/media/AudioContentType;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AudioChannelSelection;->contentType:Lcom/shilapi/xcertplay/media/AudioContentType;

    return-object v0
.end method

.method public final getStreamType()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/shilapi/xcertplay/media/AudioChannelSelection;->streamType:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AudioChannelSelection;->channel:Lcom/shilapi/xcertplay/media/AudioChannel;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/media/AudioChannel;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/media/AudioChannelSelection;->contentType:Lcom/shilapi/xcertplay/media/AudioContentType;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/media/AudioContentType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/media/AudioChannelSelection;->streamType:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AudioChannelSelection;->channel:Lcom/shilapi/xcertplay/media/AudioChannel;

    iget-object v1, p0, Lcom/shilapi/xcertplay/media/AudioChannelSelection;->contentType:Lcom/shilapi/xcertplay/media/AudioContentType;

    iget v2, p0, Lcom/shilapi/xcertplay/media/AudioChannelSelection;->streamType:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AudioChannelSelection(channel="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", contentType="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", streamType="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
