.class public final Lcom/shilapi/xcertplay/media/OpusDecoderChoice;
.super Ljava/lang/Object;
.source "AndroidMediaSink.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/media/OpusDecoderChoice;",
        "",
        "<init>",
        "()V",
        "useMediaCodec",
        "",
        "sdk",
        "",
        "mediaCodecHasOpus",
        "forceSoftware",
        "mediaCodecUsable",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/media/OpusDecoderChoice;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/media/OpusDecoderChoice;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/media/OpusDecoderChoice;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/media/OpusDecoderChoice;->INSTANCE:Lcom/shilapi/xcertplay/media/OpusDecoderChoice;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final mediaCodecUsable(I)Z
    .locals 1

    const/16 v0, 0x10

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final useMediaCodec(IZZ)Z
    .locals 0

    if-nez p3, :cond_0

    const/16 p3, 0x15

    if-lt p1, p3, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
