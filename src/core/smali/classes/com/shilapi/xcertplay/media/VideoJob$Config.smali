.class public final Lcom/shilapi/xcertplay/media/VideoJob$Config;
.super Ljava/lang/Object;
.source "VideoDecodeQueue.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/media/VideoJob;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/media/VideoJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/media/VideoJob$Config;",
        "Lcom/shilapi/xcertplay/media/VideoJob;",
        "codec",
        "Lcom/shilapi/xcertplay/airplay/VideoCodec;",
        "codecData",
        "",
        "<init>",
        "(Lcom/shilapi/xcertplay/airplay/VideoCodec;[B)V",
        "getCodec",
        "()Lcom/shilapi/xcertplay/airplay/VideoCodec;",
        "getCodecData",
        "()[B",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
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
.field private final codec:Lcom/shilapi/xcertplay/airplay/VideoCodec;

.field private final codecData:[B


# direct methods
.method public constructor <init>(Lcom/shilapi/xcertplay/airplay/VideoCodec;[B)V
    .locals 1

    const-string v0, "codec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "codecData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/media/VideoJob$Config;->codec:Lcom/shilapi/xcertplay/airplay/VideoCodec;

    iput-object p2, p0, Lcom/shilapi/xcertplay/media/VideoJob$Config;->codecData:[B

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/media/VideoJob$Config;Lcom/shilapi/xcertplay/airplay/VideoCodec;[BILjava/lang/Object;)Lcom/shilapi/xcertplay/media/VideoJob$Config;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/shilapi/xcertplay/media/VideoJob$Config;->codec:Lcom/shilapi/xcertplay/airplay/VideoCodec;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/shilapi/xcertplay/media/VideoJob$Config;->codecData:[B

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/media/VideoJob$Config;->copy(Lcom/shilapi/xcertplay/airplay/VideoCodec;[B)Lcom/shilapi/xcertplay/media/VideoJob$Config;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/shilapi/xcertplay/airplay/VideoCodec;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/media/VideoJob$Config;->codec:Lcom/shilapi/xcertplay/airplay/VideoCodec;

    return-object v0
.end method

.method public final component2()[B
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/media/VideoJob$Config;->codecData:[B

    return-object v0
.end method

.method public final copy(Lcom/shilapi/xcertplay/airplay/VideoCodec;[B)Lcom/shilapi/xcertplay/media/VideoJob$Config;
    .locals 1

    const-string v0, "codec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "codecData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/shilapi/xcertplay/media/VideoJob$Config;

    invoke-direct {v0, p1, p2}, Lcom/shilapi/xcertplay/media/VideoJob$Config;-><init>(Lcom/shilapi/xcertplay/airplay/VideoCodec;[B)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/media/VideoJob$Config;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/media/VideoJob$Config;

    iget-object v1, p0, Lcom/shilapi/xcertplay/media/VideoJob$Config;->codec:Lcom/shilapi/xcertplay/airplay/VideoCodec;

    iget-object v3, p1, Lcom/shilapi/xcertplay/media/VideoJob$Config;->codec:Lcom/shilapi/xcertplay/airplay/VideoCodec;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/media/VideoJob$Config;->codecData:[B

    iget-object p1, p1, Lcom/shilapi/xcertplay/media/VideoJob$Config;->codecData:[B

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getCodec()Lcom/shilapi/xcertplay/airplay/VideoCodec;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/VideoJob$Config;->codec:Lcom/shilapi/xcertplay/airplay/VideoCodec;

    return-object v0
.end method

.method public final getCodecData()[B
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/VideoJob$Config;->codecData:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/shilapi/xcertplay/media/VideoJob$Config;->codec:Lcom/shilapi/xcertplay/airplay/VideoCodec;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/VideoCodec;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/media/VideoJob$Config;->codecData:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/shilapi/xcertplay/media/VideoJob$Config;->codec:Lcom/shilapi/xcertplay/airplay/VideoCodec;

    iget-object v1, p0, Lcom/shilapi/xcertplay/media/VideoJob$Config;->codecData:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Config(codec="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", codecData="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
