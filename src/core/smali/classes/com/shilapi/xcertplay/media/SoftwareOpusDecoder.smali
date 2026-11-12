.class public final Lcom/shilapi/xcertplay/media/SoftwareOpusDecoder;
.super Ljava/lang/Object;
.source "SoftwareOpusDecoder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/media/SoftwareOpusDecoder$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSoftwareOpusDecoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SoftwareOpusDecoder.kt\ncom/shilapi/xcertplay/media/SoftwareOpusDecoder\n+ 2 SoftwareOpusDecoder.kt\ncom/shilapi/xcertplay/media/SoftwareOpusDecoder$Companion\n*L\n1#1,56:1\n44#2,2:57\n44#2,2:59\n*S KotlinDebug\n*F\n+ 1 SoftwareOpusDecoder.kt\ncom/shilapi/xcertplay/media/SoftwareOpusDecoder\n*L\n29#1:57,2\n33#1:59,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0006\u0008\u0000\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0019\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\u000c\u001a\u0004\u0018\u00010\t2\u0006\u0010\r\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/media/SoftwareOpusDecoder;",
        "",
        "decoder",
        "Lio/github/jaredmdobson/concentus/OpusDecoder;",
        "channels",
        "",
        "<init>",
        "(Lio/github/jaredmdobson/concentus/OpusDecoder;I)V",
        "pcm",
        "",
        "packets",
        "failures",
        "decode",
        "packet",
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
.field public static final Companion:Lcom/shilapi/xcertplay/media/SoftwareOpusDecoder$Companion;

.field private static final MAX_FRAME_SAMPLES:I = 0x1680

.field public static final SAMPLE_RATE:I = 0xbb80

.field private static final TAG:Ljava/lang/String; = "xcertplay-usb"


# instance fields
.field private final channels:I

.field private final decoder:Lio/github/jaredmdobson/concentus/OpusDecoder;

.field private failures:I

.field private packets:I

.field private final pcm:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/media/SoftwareOpusDecoder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/media/SoftwareOpusDecoder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/media/SoftwareOpusDecoder;->Companion:Lcom/shilapi/xcertplay/media/SoftwareOpusDecoder$Companion;

    return-void
.end method

.method private constructor <init>(Lio/github/jaredmdobson/concentus/OpusDecoder;I)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/shilapi/xcertplay/media/SoftwareOpusDecoder;->decoder:Lio/github/jaredmdobson/concentus/OpusDecoder;

    .line 17
    iput p2, p0, Lcom/shilapi/xcertplay/media/SoftwareOpusDecoder;->channels:I

    mul-int/lit16 p2, p2, 0x2d00

    .line 19
    new-array p1, p2, [B

    iput-object p1, p0, Lcom/shilapi/xcertplay/media/SoftwareOpusDecoder;->pcm:[B

    return-void
.end method

.method public synthetic constructor <init>(Lio/github/jaredmdobson/concentus/OpusDecoder;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/media/SoftwareOpusDecoder;-><init>(Lio/github/jaredmdobson/concentus/OpusDecoder;I)V

    return-void
.end method


# virtual methods
.method public final decode([B)[B
    .locals 13

    const-string/jumbo v1, "xcertplay-usb"

    const-string/jumbo v0, "software Opus decoder first frame samples="

    const-string/jumbo v2, "software Opus decode failed bytes="

    const-string v3, "packet"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    array-length v3, p1

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    :cond_0
    const/4 v3, 0x1

    .line 27
    :try_start_0
    iget-object v5, p0, Lcom/shilapi/xcertplay/media/SoftwareOpusDecoder;->decoder:Lio/github/jaredmdobson/concentus/OpusDecoder;

    array-length v8, p1

    iget-object v9, p0, Lcom/shilapi/xcertplay/media/SoftwareOpusDecoder;->pcm:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/16 v11, 0x1680

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v6, p1

    :try_start_1
    invoke-virtual/range {v5 .. v12}, Lio/github/jaredmdobson/concentus/OpusDecoder;->decode([BII[BIIZ)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-gtz p1, :cond_1

    return-object v4

    .line 33
    :cond_1
    iget v2, p0, Lcom/shilapi/xcertplay/media/SoftwareOpusDecoder;->packets:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/shilapi/xcertplay/media/SoftwareOpusDecoder;->packets:I

    if-ne v2, v3, :cond_2

    :try_start_2
    iget v2, p0, Lcom/shilapi/xcertplay/media/SoftwareOpusDecoder;->channels:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " channels="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 34
    :catch_0
    :cond_2
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/SoftwareOpusDecoder;->pcm:[B

    iget v1, p0, Lcom/shilapi/xcertplay/media/SoftwareOpusDecoder;->channels:I

    mul-int p1, p1, v1

    mul-int/lit8 p1, p1, 0x2

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const-string v0, "copyOf(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v6, p1

    :goto_0
    move-object p1, v0

    .line 29
    iget v0, p0, Lcom/shilapi/xcertplay/media/SoftwareOpusDecoder;->failures:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/shilapi/xcertplay/media/SoftwareOpusDecoder;->failures:I

    const/4 v3, 0x3

    if-gt v0, v3, :cond_3

    :try_start_3
    array-length v0, v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :cond_3
    return-object v4
.end method
