.class public final Lcom/shilapi/xcertplay/media/SoftwareOpusDecoder$Companion;
.super Ljava/lang/Object;
.source "SoftwareOpusDecoder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/media/SoftwareOpusDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSoftwareOpusDecoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SoftwareOpusDecoder.kt\ncom/shilapi/xcertplay/media/SoftwareOpusDecoder$Companion\n*L\n1#1,56:1\n44#1,2:57\n*S KotlinDebug\n*F\n+ 1 SoftwareOpusDecoder.kt\ncom/shilapi/xcertplay/media/SoftwareOpusDecoder$Companion\n*L\n51#1:57,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\t\u001a\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000cH\u0082\u0008J\u0010\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/media/SoftwareOpusDecoder$Companion;",
        "",
        "<init>",
        "()V",
        "SAMPLE_RATE",
        "",
        "MAX_FRAME_SAMPLES",
        "TAG",
        "",
        "log",
        "",
        "block",
        "Lkotlin/Function0;",
        "open",
        "Lcom/shilapi/xcertplay/media/SoftwareOpusDecoder;",
        "channels",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/media/SoftwareOpusDecoder$Companion;-><init>()V

    return-void
.end method

.method private final log(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 44
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public final open(I)Lcom/shilapi/xcertplay/media/SoftwareOpusDecoder;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 48
    :try_start_0
    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p1

    .line 49
    new-instance v0, Lcom/shilapi/xcertplay/media/SoftwareOpusDecoder;

    new-instance v1, Lio/github/jaredmdobson/concentus/OpusDecoder;

    const v3, 0xbb80

    invoke-direct {v1, v3, p1}, Lio/github/jaredmdobson/concentus/OpusDecoder;-><init>(II)V

    invoke-direct {v0, v1, p1, v2}, Lcom/shilapi/xcertplay/media/SoftwareOpusDecoder;-><init>(Lio/github/jaredmdobson/concentus/OpusDecoder;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    .line 51
    :try_start_1
    const-string/jumbo v0, "xcertplay-usb"

    const-string/jumbo v1, "software Opus decoder unavailable"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v2
.end method
