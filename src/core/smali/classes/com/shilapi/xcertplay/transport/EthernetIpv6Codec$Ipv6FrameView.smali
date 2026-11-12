.class public final Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec$Ipv6FrameView;
.super Ljava/lang/Object;
.source "EthernetIpv6Codec.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Ipv6FrameView"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\'\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000c\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec$Ipv6FrameView;",
        "",
        "sourceMac",
        "",
        "payloadOffset",
        "",
        "payloadLength",
        "<init>",
        "([BII)V",
        "getSourceMac",
        "()[B",
        "getPayloadOffset",
        "()I",
        "getPayloadLength",
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
.field private final payloadLength:I

.field private final payloadOffset:I

.field private final sourceMac:[B


# direct methods
.method public constructor <init>([BII)V
    .locals 1

    const-string/jumbo v0, "sourceMac"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec$Ipv6FrameView;->sourceMac:[B

    .line 23
    iput p2, p0, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec$Ipv6FrameView;->payloadOffset:I

    .line 24
    iput p3, p0, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec$Ipv6FrameView;->payloadLength:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec$Ipv6FrameView;[BIIILjava/lang/Object;)Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec$Ipv6FrameView;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec$Ipv6FrameView;->sourceMac:[B

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec$Ipv6FrameView;->payloadOffset:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec$Ipv6FrameView;->payloadLength:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec$Ipv6FrameView;->copy([BII)Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec$Ipv6FrameView;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()[B
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec$Ipv6FrameView;->sourceMac:[B

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec$Ipv6FrameView;->payloadOffset:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec$Ipv6FrameView;->payloadLength:I

    return v0
.end method

.method public final copy([BII)Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec$Ipv6FrameView;
    .locals 1

    const-string/jumbo v0, "sourceMac"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec$Ipv6FrameView;

    invoke-direct {v0, p1, p2, p3}, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec$Ipv6FrameView;-><init>([BII)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec$Ipv6FrameView;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec$Ipv6FrameView;

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec$Ipv6FrameView;->sourceMac:[B

    iget-object v3, p1, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec$Ipv6FrameView;->sourceMac:[B

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec$Ipv6FrameView;->payloadOffset:I

    iget v3, p1, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec$Ipv6FrameView;->payloadOffset:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec$Ipv6FrameView;->payloadLength:I

    iget p1, p1, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec$Ipv6FrameView;->payloadLength:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getPayloadLength()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec$Ipv6FrameView;->payloadLength:I

    return v0
.end method

.method public final getPayloadOffset()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec$Ipv6FrameView;->payloadOffset:I

    return v0
.end method

.method public final getSourceMac()[B
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec$Ipv6FrameView;->sourceMac:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec$Ipv6FrameView;->sourceMac:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec$Ipv6FrameView;->payloadOffset:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec$Ipv6FrameView;->payloadLength:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec$Ipv6FrameView;->sourceMac:[B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec$Ipv6FrameView;->payloadOffset:I

    iget v2, p0, Lcom/shilapi/xcertplay/transport/EthernetIpv6Codec$Ipv6FrameView;->payloadLength:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Ipv6FrameView(sourceMac="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", payloadOffset="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", payloadLength="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
