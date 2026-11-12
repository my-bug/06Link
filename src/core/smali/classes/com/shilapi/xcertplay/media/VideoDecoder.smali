.class final Lcom/shilapi/xcertplay/media/VideoDecoder;
.super Ljava/lang/Object;
.source "AndroidMediaSink.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/media/VideoDecoder$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidMediaSink.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidMediaSink.kt\ncom/shilapi/xcertplay/media/VideoDecoder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,1750:1\n1#2:1751\n1878#3,3:1752\n1310#4,2:1755\n1310#4,2:1757\n*S KotlinDebug\n*F\n+ 1 AndroidMediaSink.kt\ncom/shilapi/xcertplay/media/VideoDecoder\n*L\n732#1:1752,3\n767#1:1755,2\n777#1:1757,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0008\u0002\u0018\u0000 P2\u00020\u0001:\u0001PBw\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u0012\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000c0\u000e\u0012\u0016\u0008\u0002\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000e\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0016\u0010-\u001a\u00020\u000c2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u000201J\u000e\u00102\u001a\u00020\u000c2\u0006\u00103\u001a\u000201J\u0010\u00104\u001a\u00020\u000c2\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0008\u00105\u001a\u00020\u000cH\u0016J\u0008\u00106\u001a\u00020\u000cH\u0002J\u0010\u00107\u001a\u00020\u000c2\u0006\u00108\u001a\u00020\u001dH\u0002J\u0018\u00109\u001a\u00020\u000c2\u0006\u00108\u001a\u00020\u001d2\u0006\u0010\u0004\u001a\u00020\u0005H\u0002J\u0018\u0010:\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00020*2\u0006\u0010;\u001a\u000201H\u0002J&\u0010<\u001a\u00020=2\u0006\u0010>\u001a\u00020\u000f2\u000c\u0010?\u001a\u0008\u0012\u0004\u0012\u0002010@2\u0006\u0010A\u001a\u00020BH\u0002J0\u0010C\u001a\u0004\u0018\u00010\u001a2\u0006\u0010>\u001a\u00020\u000f2\u000c\u0010?\u001a\u0008\u0012\u0004\u0012\u0002010@2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010A\u001a\u00020BH\u0002J\u0012\u0010D\u001a\u0004\u0018\u00010\u000f2\u0006\u0010>\u001a\u00020\u000fH\u0002J\u0010\u0010E\u001a\u00020\u001a2\u0006\u0010>\u001a\u00020\u000fH\u0002J\u0012\u0010F\u001a\u00020\u000c2\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0002J\u0010\u0010G\u001a\u00020\u000c2\u0006\u00103\u001a\u000201H\u0002J\u001a\u0010H\u001a\u00020\u000c2\u0006\u0010I\u001a\u00020\u000f2\u0008\u0008\u0002\u0010J\u001a\u00020\tH\u0002J\u0008\u0010K\u001a\u00020\u000cH\u0002J\u0010\u0010L\u001a\u00020\u000c2\u0006\u0010.\u001a\u00020\u001aH\u0002J\u0010\u0010M\u001a\u00020\u000c2\u0006\u0010N\u001a\u00020=H\u0002J\u0008\u0010O\u001a\u00020\u000cH\u0002R\u000e\u0010\u0006\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000c0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\"X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020&X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010)\u001a\u0004\u0018\u00010*X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020,X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006Q"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/media/VideoDecoder;",
        "Ljava/io/Closeable;",
        "streamType",
        "",
        "surface",
        "Landroid/view/Surface;",
        "width",
        "height",
        "preferSoftwareHevcDecoder",
        "",
        "requestKeyFrame",
        "Lkotlin/Function0;",
        "",
        "report",
        "Lkotlin/Function1;",
        "",
        "onWindow",
        "Lcom/shilapi/xcertplay/media/VideoWindow;",
        "picture",
        "Lcom/shilapi/xcertplay/media/FirstPictureCounters;",
        "<init>",
        "(ILandroid/view/Surface;IIZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/shilapi/xcertplay/media/FirstPictureCounters;)V",
        "queue",
        "Lcom/shilapi/xcertplay/media/VideoDecodeQueue;",
        "running",
        "decoder",
        "Landroid/media/MediaCodec;",
        "outputSurface",
        "lastConfig",
        "Lcom/shilapi/xcertplay/media/VideoJob$Config;",
        "renderedFrameLogged",
        "submittedFrameLogged",
        "duplicateConfigLogged",
        "referenceChain",
        "Lcom/shilapi/xcertplay/media/VideoReferenceChain;",
        "lastKeyFrameRequestNs",
        "",
        "stats",
        "Lcom/shilapi/xcertplay/media/VideoStats;",
        "noDecoderReported",
        "softwareOnly",
        "software",
        "Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;",
        "thread",
        "Ljava/lang/Thread;",
        "configure",
        "codec",
        "Lcom/shilapi/xcertplay/airplay/VideoCodec;",
        "codecData",
        "",
        "submit",
        "nalus",
        "setSurface",
        "close",
        "run",
        "configureDecoder",
        "config",
        "configureSoftware",
        "decodeSoftware",
        "annexB",
        "buildFormat",
        "Landroid/media/MediaFormat;",
        "mime",
        "csd",
        "",
        "attempt",
        "Lcom/shilapi/xcertplay/media/VideoDecoderAttempts$Attempt;",
        "tryConfigure",
        "softwareDecoderName",
        "createDecoder",
        "changeSurface",
        "feed",
        "recover",
        "reason",
        "flushIfPossible",
        "requestKeyFrameIfDue",
        "drainOutput",
        "logOutputFormat",
        "format",
        "releaseDecoder",
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
.field private static final Companion:Lcom/shilapi/xcertplay/media/VideoDecoder$Companion;

.field public static final INPUT_TIMEOUT_US:J = 0x2710L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAX_FRAME_AGE_NS:J = 0x59682f00L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final START_CODE:[B

.field public static final TAG:Ljava/lang/String; = "xcertplay-usb"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private volatile decoder:Landroid/media/MediaCodec;

.field private duplicateConfigLogged:Z

.field private final e01Backlog:Lcom/shilapi/xcertplay/E01BacklogRecovery;

.field private e01ReceivedNs:J

.field private final height:I

.field private lastConfig:Lcom/shilapi/xcertplay/media/VideoJob$Config;

.field private lastKeyFrameRequestNs:J

.field private noDecoderReported:Z

.field private volatile outputSurface:Landroid/view/Surface;

.field private final picture:Lcom/shilapi/xcertplay/media/FirstPictureCounters;

.field private final preferSoftwareHevcDecoder:Z

.field private final queue:Lcom/shilapi/xcertplay/media/VideoDecodeQueue;

.field private final referenceChain:Lcom/shilapi/xcertplay/media/VideoReferenceChain;

.field private volatile renderedFrameLogged:Z

.field private final report:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final requestKeyFrame:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private reusedOutputInfo:Landroid/media/MediaCodec$BufferInfo;

.field private volatile running:Z

.field private software:Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;

.field private final softwareOnly:Z

.field private final stats:Lcom/shilapi/xcertplay/media/VideoStats;

.field private submittedFrameLogged:Z

.field private final thread:Ljava/lang/Thread;

.field private final width:I


# direct methods
.method public static synthetic $r8$lambda$DoXGGXMSjXvunHtA4L7E1PO5h6o(Lcom/shilapi/xcertplay/media/VideoDecoder;)Z
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/media/VideoDecoder;->feed$lambda$19(Lcom/shilapi/xcertplay/media/VideoDecoder;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$FZhDMJoLLhvUzNNNcnoeyq588Ic(Landroid/media/MediaCodec;)I
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/media/VideoDecoder;->feed$lambda$21(Landroid/media/MediaCodec;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Sq2YuXyVPz8zfmpoxGUTdtW5IHc(Lcom/shilapi/xcertplay/media/VideoDecoder;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/media/VideoDecoder;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$Vdv755UQZb5HAWK9dthNkjayivA(Lcom/shilapi/xcertplay/media/VideoDecoder;Landroid/media/MediaCodec;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/media/VideoDecoder;->feed$lambda$20(Lcom/shilapi/xcertplay/media/VideoDecoder;Landroid/media/MediaCodec;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uclYhN8iHdymWNbVa3-prZUmMnM(B)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/media/VideoDecoder;->feed$lambda$18(B)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/media/VideoDecoder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/media/VideoDecoder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/media/VideoDecoder;->Companion:Lcom/shilapi/xcertplay/media/VideoDecoder$Companion;

    const/4 v0, 0x4

    .line 956
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/shilapi/xcertplay/media/VideoDecoder;->START_CODE:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>(ILandroid/view/Surface;IIZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/shilapi/xcertplay/media/FirstPictureCounters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/Surface;",
            "IIZ",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/media/VideoWindow;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/shilapi/xcertplay/media/FirstPictureCounters;",
            ")V"
        }
    .end annotation

    const-string v0, "requestKeyFrame"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "report"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    iput p3, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->width:I

    .line 553
    iput p4, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->height:I

    .line 554
    iput-boolean p5, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->preferSoftwareHevcDecoder:Z

    .line 555
    iput-object p6, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->requestKeyFrame:Lkotlin/jvm/functions/Function0;

    .line 556
    iput-object p7, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->report:Lkotlin/jvm/functions/Function1;

    .line 558
    iput-object p9, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->picture:Lcom/shilapi/xcertplay/media/FirstPictureCounters;

    .line 560
    new-instance p3, Lcom/shilapi/xcertplay/media/VideoDecodeQueue;

    const/4 p4, 0x3

    const/4 p5, 0x0

    const/4 p6, 0x0

    invoke-direct {p3, p6, p6, p4, p5}, Lcom/shilapi/xcertplay/media/VideoDecodeQueue;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p3, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->queue:Lcom/shilapi/xcertplay/media/VideoDecodeQueue;

    const/4 p3, 0x1

    .line 561
    iput-boolean p3, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->running:Z

    .line 563
    iput-object p2, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->outputSurface:Landroid/view/Surface;

    .line 568
    new-instance p2, Lcom/shilapi/xcertplay/media/VideoReferenceChain;

    invoke-direct {p2}, Lcom/shilapi/xcertplay/media/VideoReferenceChain;-><init>()V

    iput-object p2, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->referenceChain:Lcom/shilapi/xcertplay/media/VideoReferenceChain;

    new-instance p2, Lcom/shilapi/xcertplay/E01BacklogRecovery;

    invoke-direct {p2}, Lcom/shilapi/xcertplay/E01BacklogRecovery;-><init>()V

    iput-object p2, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->e01Backlog:Lcom/shilapi/xcertplay/E01BacklogRecovery;

    .line 571
    new-instance p4, Lcom/shilapi/xcertplay/media/VideoStats;

    const/16 p2, 0x6e

    if-ne p1, p2, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, " stream="

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object p5, p1

    move-object p7, p8

    const/4 p8, 0x2

    const/4 p9, 0x0

    const/4 p6, 0x0

    invoke-direct/range {p4 .. p9}, Lcom/shilapi/xcertplay/media/VideoStats;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p4, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->stats:Lcom/shilapi/xcertplay/media/VideoStats;

    .line 574
    sget-object p1, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;->Companion:Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Companion;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Companion;->getRequired()Z

    move-result p1

    iput-boolean p1, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->softwareOnly:Z

    .line 576
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/shilapi/xcertplay/media/VideoDecoder$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0}, Lcom/shilapi/xcertplay/media/VideoDecoder$$ExternalSyntheticLambda7;-><init>(Lcom/shilapi/xcertplay/media/VideoDecoder;)V

    const-string p4, "carplay-video"

    invoke-direct {p1, p2, p4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->thread:Ljava/lang/Thread;

    return-void
.end method

.method public synthetic constructor <init>(ILandroid/view/Surface;IIZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/shilapi/xcertplay/media/FirstPictureCounters;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit16 p11, p10, 0x80

    const/4 v0, 0x0

    if-eqz p11, :cond_0

    move-object p8, v0

    :cond_0
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_1

    move-object p10, v0

    goto :goto_0

    :cond_1
    move-object p10, p9

    :goto_0
    move-object p9, p8

    move-object p8, p7

    move-object p7, p6

    move p6, p5

    move p5, p4

    move p4, p3

    move-object p3, p2

    move p2, p1

    move-object p1, p0

    .line 549
    invoke-direct/range {p1 .. p10}, Lcom/shilapi/xcertplay/media/VideoDecoder;-><init>(ILandroid/view/Surface;IIZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/shilapi/xcertplay/media/FirstPictureCounters;)V

    return-void
.end method

.method public static final synthetic access$getSTART_CODE$cp()[B
    .locals 1

    .line 549
    sget-object v0, Lcom/shilapi/xcertplay/media/VideoDecoder;->START_CODE:[B

    return-object v0
.end method

.method private final buildFormat(Ljava/lang/String;Ljava/util/List;Lcom/shilapi/xcertplay/media/VideoDecoderAttempts$Attempt;)Landroid/media/MediaFormat;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[B>;",
            "Lcom/shilapi/xcertplay/media/VideoDecoderAttempts$Attempt;",
            ")",
            "Landroid/media/MediaFormat;"
        }
    .end annotation

    .line 729
    iget v0, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->width:I

    iget v1, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->height:I

    invoke-static {p1, v0, v1}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m$1(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p1

    const-string v0, "createVideoFormat(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 730
    invoke-virtual {p3}, Lcom/shilapi/xcertplay/media/VideoDecoderAttempts$Attempt;->getMaxInputBytes()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const-string v1, "max-input-size"

    invoke-static {p1, v1, v0}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 731
    :cond_0
    invoke-virtual {p3}, Lcom/shilapi/xcertplay/media/VideoDecoderAttempts$Attempt;->getPriority()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    const-string p3, "priority"

    invoke-static {p1, p3, v0}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 732
    :cond_1
    check-cast p2, Ljava/lang/Iterable;

    .line 1753
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    add-int/lit8 v1, v0, 0x1

    if-gez v0, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_2
    check-cast p3, [B

    .line 732
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "csd-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-static {p1, v0, p3}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/media/MediaFormat;Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    move v0, v1

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method private final changeSurface(Landroid/view/Surface;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->running:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/media/VideoDecoder;->requestKeyFrameIfDue()V

    .line 792
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->outputSurface:Landroid/view/Surface;

    if-ne v0, p1, :cond_1

    goto :goto_1

    .line 793
    :cond_1
    iput-object p1, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->outputSurface:Landroid/view/Surface;

    .line 794
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->picture:Lcom/shilapi/xcertplay/media/FirstPictureCounters;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/media/FirstPictureCounters;->onSurface(Z)V

    .line 795
    :cond_3
    const-string/jumbo v0, "xcertplay-usb"

    if-nez p1, :cond_4

    .line 796
    invoke-direct {p0}, Lcom/shilapi/xcertplay/media/VideoDecoder;->releaseDecoder()V

    .line 797
    const-string/jumbo p1, "video decoder detached from surface"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 800
    :cond_4
    iget-object v1, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->software:Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;

    if-eqz v1, :cond_5

    .line 801
    invoke-virtual {v1, p1}, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;->setSurface(Landroid/view/Surface;)V

    .line 802
    const-string/jumbo p1, "software video decoder output surface updated"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 805
    :cond_5
    iget-object v1, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->decoder:Landroid/media/MediaCodec;

    if-eqz v1, :cond_6

    .line 807
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_6

    .line 809
    :try_start_0
    invoke-static {v1, p1}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodec;Landroid/view/Surface;)V

    .line 810
    const-string/jumbo p1, "video decoder output surface updated"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 813
    const-string/jumbo v1, "video decoder output surface update failed; reconfiguring"

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 816
    :cond_6
    invoke-direct {p0}, Lcom/shilapi/xcertplay/media/VideoDecoder;->releaseDecoder()V

    .line 817
    iget-object p1, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->lastConfig:Lcom/shilapi/xcertplay/media/VideoJob$Config;

    if-eqz p1, :cond_7

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/media/VideoDecoder;->configureDecoder(Lcom/shilapi/xcertplay/media/VideoJob$Config;)V

    :cond_7
    :goto_1
    return-void
.end method

.method private final configureDecoder(Lcom/shilapi/xcertplay/media/VideoJob$Config;)V
    .locals 10

    .line 633
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->lastConfig:Lcom/shilapi/xcertplay/media/VideoJob$Config;

    .line 635
    iget-object v1, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->decoder:Landroid/media/MediaCodec;

    const-string/jumbo v2, "xcertplay-usb"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->software:Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;

    if-eqz v1, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    .line 636
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/media/VideoJob$Config;->getCodec()Lcom/shilapi/xcertplay/airplay/VideoCodec;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v4

    :goto_0
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/media/VideoJob$Config;->getCodec()Lcom/shilapi/xcertplay/airplay/VideoCodec;

    move-result-object v5

    if-ne v1, v5, :cond_2

    .line 637
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/media/VideoJob$Config;->getCodecData()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/media/VideoJob$Config;->getCodecData()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 639
    iget-boolean p1, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->duplicateConfigLogged:Z

    if-nez p1, :cond_13

    .line 640
    iput-boolean v3, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->duplicateConfigLogged:Z

    .line 641
    const-string/jumbo p1, "video decoder config unchanged; keeping existing decoder"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 645
    :cond_2
    iput-object p1, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->lastConfig:Lcom/shilapi/xcertplay/media/VideoJob$Config;

    const/4 v0, 0x0

    .line 646
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->duplicateConfigLogged:Z

    .line 647
    invoke-direct {p0}, Lcom/shilapi/xcertplay/media/VideoDecoder;->releaseDecoder()V

    .line 648
    iget-object v1, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->referenceChain:Lcom/shilapi/xcertplay/media/VideoReferenceChain;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/media/VideoReferenceChain;->reset()V

    .line 649
    iget-object v1, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->outputSurface:Landroid/view/Surface;

    if-nez v1, :cond_3

    goto/16 :goto_b

    .line 650
    :cond_3
    iget-boolean v5, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->softwareOnly:Z

    if-eqz v5, :cond_4

    .line 651
    invoke-direct {p0, p1, v1}, Lcom/shilapi/xcertplay/media/VideoDecoder;->configureSoftware(Lcom/shilapi/xcertplay/media/VideoJob$Config;Landroid/view/Surface;)V

    return-void

    .line 654
    :cond_4
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/media/VideoJob$Config;->getCodec()Lcom/shilapi/xcertplay/airplay/VideoCodec;

    move-result-object v5

    .line 655
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/media/VideoJob$Config;->getCodecData()[B

    move-result-object p1

    .line 656
    sget-object v6, Lcom/shilapi/xcertplay/airplay/VideoCodec;->H265:Lcom/shilapi/xcertplay/airplay/VideoCodec;

    if-ne v5, v6, :cond_5

    const-string/jumbo v6, "video/hevc"

    goto :goto_1

    .line 657
    :cond_5
    const-string/jumbo v6, "video/avc"

    .line 658
    :goto_1
    sget-object v7, Lcom/shilapi/xcertplay/airplay/VideoCodec;->H265:Lcom/shilapi/xcertplay/airplay/VideoCodec;

    if-ne v5, v7, :cond_9

    .line 659
    sget-object v5, Lcom/shilapi/xcertplay/media/MediaCodecSupport;->INSTANCE:Lcom/shilapi/xcertplay/media/MediaCodecSupport;

    invoke-virtual {v5, p1}, Lcom/shilapi/xcertplay/media/MediaCodecSupport;->hevcCodecSpecificData([B)[B

    move-result-object p1

    array-length v5, p1

    if-nez v5, :cond_6

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_7

    goto :goto_3

    :cond_7
    move-object p1, v4

    :goto_3
    if-eqz p1, :cond_8

    .line 660
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_8

    goto :goto_a

    :cond_8
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_a

    .line 662
    :cond_9
    sget-object v5, Lcom/shilapi/xcertplay/media/MediaCodecSupport;->INSTANCE:Lcom/shilapi/xcertplay/media/MediaCodecSupport;

    invoke-virtual {v5, p1}, Lcom/shilapi/xcertplay/media/MediaCodecSupport;->avcParameterSets([B)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 664
    array-length v7, v5

    if-nez v7, :cond_a

    const/4 v7, 0x1

    goto :goto_4

    :cond_a
    const/4 v7, 0x0

    :goto_4
    if-nez v7, :cond_b

    goto :goto_5

    :cond_b
    move-object v5, v4

    :goto_5
    if-eqz v5, :cond_c

    sget-object v7, Lcom/shilapi/xcertplay/media/VideoDecoder;->START_CODE:[B

    invoke-static {v7, v5}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v5

    goto :goto_6

    :cond_c
    move-object v5, v4

    .line 665
    :goto_6
    array-length v7, p1

    if-nez v7, :cond_d

    const/4 v7, 0x1

    goto :goto_7

    :cond_d
    const/4 v7, 0x0

    :goto_7
    if-nez v7, :cond_e

    goto :goto_8

    :cond_e
    move-object p1, v4

    :goto_8
    if-eqz p1, :cond_f

    sget-object v7, Lcom/shilapi/xcertplay/media/VideoDecoder;->START_CODE:[B

    invoke-static {v7, p1}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    goto :goto_9

    :cond_f
    move-object p1, v4

    :goto_9
    const/4 v7, 0x2

    new-array v7, v7, [[B

    aput-object v5, v7, v0

    aput-object p1, v7, v3

    .line 664
    check-cast v7, [Ljava/lang/Object;

    .line 663
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 670
    :goto_a
    sget-object v3, Lcom/shilapi/xcertplay/media/VideoDecoderAttempts;->INSTANCE:Lcom/shilapi/xcertplay/media/VideoDecoderAttempts;

    invoke-direct {p0, v6}, Lcom/shilapi/xcertplay/media/VideoDecoder;->softwareDecoderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/shilapi/xcertplay/media/VideoDecoderAttempts;->list(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 672
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shilapi/xcertplay/media/VideoDecoderAttempts$Attempt;

    .line 673
    invoke-direct {p0, v6, p1, v1, v4}, Lcom/shilapi/xcertplay/media/VideoDecoder;->tryConfigure(Ljava/lang/String;Ljava/util/List;Landroid/view/Surface;Lcom/shilapi/xcertplay/media/VideoDecoderAttempts$Attempt;)Landroid/media/MediaCodec;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 676
    :cond_11
    const-string/jumbo p1, "x"

    const-string v1, " size="

    if-nez v4, :cond_12

    .line 677
    iget-object v3, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->report:Lkotlin/jvm/functions/Function1;

    iget v5, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->width:I

    iget v7, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->height:I

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "decoder configuration failed mime="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    :cond_12
    iput-object v4, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->decoder:Landroid/media/MediaCodec;

    .line 680
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->renderedFrameLogged:Z

    .line 681
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->submittedFrameLogged:Z

    if-eqz v4, :cond_13

    .line 683
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->report:Lkotlin/jvm/functions/Function1;

    sget-object v3, Lcom/shilapi/xcertplay/compat/MediaCodecCompat;->INSTANCE:Lcom/shilapi/xcertplay/compat/MediaCodecCompat;

    invoke-virtual {v3, v4}, Lcom/shilapi/xcertplay/compat/MediaCodecCompat;->name(Landroid/media/MediaCodec;)Ljava/lang/String;

    move-result-object v3

    iget v5, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->width:I

    iget v7, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->height:I

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "decoder="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mime="

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    sget-object v0, Lcom/shilapi/xcertplay/compat/MediaCodecCompat;->INSTANCE:Lcom/shilapi/xcertplay/compat/MediaCodecCompat;

    invoke-virtual {v0, v4}, Lcom/shilapi/xcertplay/compat/MediaCodecCompat;->name(Landroid/media/MediaCodec;)Ljava/lang/String;

    move-result-object v0

    iget v4, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->width:I

    iget v5, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->height:I

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "video decoder configured name="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 684
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    :goto_b
    return-void
.end method

.method private final configureSoftware(Lcom/shilapi/xcertplay/media/VideoJob$Config;Landroid/view/Surface;)V
    .locals 5

    .line 692
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/media/VideoJob$Config;->getCodec()Lcom/shilapi/xcertplay/airplay/VideoCodec;

    move-result-object v0

    sget-object v1, Lcom/shilapi/xcertplay/airplay/VideoCodec;->H264:Lcom/shilapi/xcertplay/airplay/VideoCodec;

    const-string/jumbo v2, "xcertplay-usb"

    const/4 v3, 0x1

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;->Companion:Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Companion;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Companion;->getAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 700
    :cond_0
    sget-object v0, Lcom/shilapi/xcertplay/media/MediaCodecSupport;->INSTANCE:Lcom/shilapi/xcertplay/media/MediaCodecSupport;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/media/VideoJob$Config;->getCodecData()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/media/MediaCodecSupport;->avcParameterSets([B)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 701
    array-length v1, v0

    const/4 v4, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    array-length v1, p1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_3

    sget-object v1, Lcom/shilapi/xcertplay/media/VideoDecoder;->START_CODE:[B

    invoke-static {v1, v0}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    goto :goto_2

    :cond_3
    new-array p1, v4, [B

    .line 702
    :goto_2
    new-instance v0, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;

    invoke-direct {v0, p1}, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;-><init>([B)V

    .line 703
    invoke-virtual {v0, p2}, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;->setSurface(Landroid/view/Surface;)V

    .line 704
    iput-object v0, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->software:Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;

    .line 705
    iput-boolean v4, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->renderedFrameLogged:Z

    .line 706
    iput-boolean v4, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->submittedFrameLogged:Z

    .line 707
    iget-object p1, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->report:Lkotlin/jvm/functions/Function1;

    iget p2, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->width:I

    iget v0, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->height:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "decoder=ffmpeg-h264 (software) mime=video/avc size="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "x"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    iget p1, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->width:I

    iget v0, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->height:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "video decoder configured name=ffmpeg-h264 (software) size="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 693
    :cond_4
    :goto_3
    iget-boolean p2, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->noDecoderReported:Z

    if-nez p2, :cond_5

    .line 694
    iput-boolean v3, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->noDecoderReported:Z

    .line 695
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/media/VideoJob$Config;->getCodec()Lcom/shilapi/xcertplay/airplay/VideoCodec;

    move-result-object p2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "no "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " decoder on API "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "; video frames are dropped"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iget-object p2, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->report:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/media/VideoJob$Config;->getCodec()Lcom/shilapi/xcertplay/airplay/VideoCodec;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "decoder unavailable: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " without MediaCodec"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method private final createDecoder(Ljava/lang/String;)Landroid/media/MediaCodec;
    .locals 6

    .line 773
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_2

    .line 774
    const-string/jumbo v0, "video/hevc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 775
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->preferSoftwareHevcDecoder:Z

    if-eqz v0, :cond_2

    .line 777
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-static {v0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodecList;)[Landroid/media/MediaCodecInfo;

    move-result-object v0

    const-string v2, "getCodecInfos(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/Object;

    .line 1757
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    invoke-static {v3}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/MediaCodecInfo;

    move-result-object v4

    .line 778
    invoke-static {v4}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodecInfo;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodecInfo;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodecInfo;)[Ljava/lang/String;

    move-result-object v4

    const-string v5, "getSupportedTypes(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v4, p1}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 777
    :goto_1
    invoke-static {v3}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/MediaCodecInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 782
    :try_start_0
    invoke-static {v0}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodecInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m$1(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    const-string v2, "createByCodecName(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 784
    invoke-static {v0}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodecInfo;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "software HEVC decoder unavailable name="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v1, Ljava/lang/Throwable;

    const-string/jumbo v2, "xcertplay-usb"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 788
    :cond_2
    invoke-static {p1}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    const-string v0, "createDecoderByType(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final decodeSoftware(Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;[B)V
    .locals 2

    .line 712
    invoke-virtual {p1, p2}, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;->decode([B)I

    move-result p2

    const/4 v0, 0x0

    if-gez p2, :cond_0

    .line 714
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "software decoder error "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, p2, v1}, Lcom/shilapi/xcertplay/media/VideoDecoder;->recover$default(Lcom/shilapi/xcertplay/media/VideoDecoder;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    .line 717
    :cond_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->referenceChain:Lcom/shilapi/xcertplay/media/VideoReferenceChain;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/media/VideoReferenceChain;->onQueued()V

    :goto_0
    if-ge v0, p2, :cond_1

    .line 718
    iget-object v1, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->stats:Lcom/shilapi/xcertplay/media/VideoStats;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/media/VideoStats;->onRendered()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-lez p2, :cond_2

    .line 719
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->picture:Lcom/shilapi/xcertplay/media/FirstPictureCounters;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/media/FirstPictureCounters;->onRendered()V

    :cond_2
    if-lez p2, :cond_3

    .line 720
    iget-boolean p2, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->renderedFrameLogged:Z

    if-nez p2, :cond_3

    const/4 p2, 0x1

    .line 721
    iput-boolean p2, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->renderedFrameLogged:Z

    .line 722
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;->stats()Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Stats;

    move-result-object p1

    .line 723
    iget-object p2, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->report:Lkotlin/jvm/functions/Function1;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "first frame rendered (software "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "video decoder rendered first frame software "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "xcertplay-usb"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private final drainOutput(Landroid/media/MediaCodec;)V
    .locals 5

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/E01VideoOutput;->intercept(Ljava/lang/Object;Landroid/media/MediaCodec;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/shilapi/xcertplay/E01VideoOutput;->info(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$BufferInfo;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->reusedOutputInfo:Landroid/media/MediaCodec$BufferInfo;

    if-nez v0, :cond_1

    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->reusedOutputInfo:Landroid/media/MediaCodec$BufferInfo;

    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->running:Z

    if-eqz v1, :cond_9

    invoke-static {p1}, Lcom/shilapi/xcertplay/E01VideoOutput;->active(Landroid/media/MediaCodec;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-wide/16 v1, 0x0

    invoke-static {p1, v0}, Lcom/shilapi/xcertplay/E01SmoothVideo;->take(Landroid/media/MediaCodec;Landroid/media/MediaCodec$BufferInfo;)I

    move-result v1

    invoke-static {p1}, Lcom/shilapi/xcertplay/E01VideoOutput;->active(Landroid/media/MediaCodec;)Z

    move-result v2

    if-nez v2, :cond_2

    if-ltz v1, :cond_9

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void

    :cond_2
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, -0x2

    if-ne v1, v2, :cond_4

    invoke-static {p1}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodec;)Landroid/media/MediaFormat;

    move-result-object v1

    const-string v2, "getOutputFormat(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/shilapi/xcertplay/E01VideoOutput;->active(Landroid/media/MediaCodec;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/media/VideoDecoder;->logOutputFormat(Landroid/media/MediaFormat;)V

    goto :goto_0

    :cond_4
    if-ltz v1, :cond_9

    iget-object v2, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->outputSurface:Landroid/view/Surface;

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    iget-object v4, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->picture:Lcom/shilapi/xcertplay/media/FirstPictureCounters;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/media/FirstPictureCounters;->onDecoded()V

    :cond_6
    invoke-static {p1, v1, v2, v0}, Lcom/shilapi/xcertplay/E01SmoothVideo;->release(Landroid/media/MediaCodec;IZLandroid/media/MediaCodec$BufferInfo;)V

    invoke-static {p1}, Lcom/shilapi/xcertplay/E01VideoOutput;->active(Landroid/media/MediaCodec;)Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v2, :cond_7

    iget-object v1, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->stats:Lcom/shilapi/xcertplay/media/VideoStats;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/media/VideoStats;->onRendered()V

    iget-object v1, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->picture:Lcom/shilapi/xcertplay/media/FirstPictureCounters;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/media/FirstPictureCounters;->onRendered()V

    :cond_7
    if-eqz v2, :cond_8

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->renderedFrameLogged:Z

    if-nez v1, :cond_8

    iput-boolean v3, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->renderedFrameLogged:Z

    iget-object v1, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->report:Lkotlin/jvm/functions/Function1;

    const-string v2, "first frame rendered"

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "video decoder rendered first frame bytes="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "xcertplay-usb"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-static {v0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    :cond_9
    :goto_2
    return-void
.end method

.method private final feed([B)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 821
    sget-object v2, Lcom/shilapi/xcertplay/media/MediaCodecSupport;->INSTANCE:Lcom/shilapi/xcertplay/media/MediaCodecSupport;

    invoke-virtual {v2, v1}, Lcom/shilapi/xcertplay/media/MediaCodecSupport;->toAnnexB([B)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shilapi/xcertplay/E01SmoothVideo;->converted([B[B)V

    .line 822
    iget-object v3, v0, Lcom/shilapi/xcertplay/media/VideoDecoder;->lastConfig:Lcom/shilapi/xcertplay/media/VideoJob$Config;

    if-nez v3, :cond_1

    iget-boolean v4, v0, Lcom/shilapi/xcertplay/media/VideoDecoder;->running:Z

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/shilapi/xcertplay/media/VideoDecoder;->outputSurface:Landroid/view/Surface;

    if-eqz v4, :cond_0

    invoke-direct {v0}, Lcom/shilapi/xcertplay/media/VideoDecoder;->requestKeyFrameIfDue()V

    :cond_0
    return-void

    .line 823
    :cond_1
    iget-object v4, v0, Lcom/shilapi/xcertplay/media/VideoDecoder;->outputSurface:Landroid/view/Surface;

    if-nez v4, :cond_2

    goto :goto_0

    .line 824
    :cond_2
    array-length v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-nez v4, :cond_3

    const-string v1, "invalid video access unit"

    invoke-static {v0, v1, v7, v6, v5}, Lcom/shilapi/xcertplay/media/VideoDecoder;->recover$default(Lcom/shilapi/xcertplay/media/VideoDecoder;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    .line 825
    :cond_3
    iget-object v4, v0, Lcom/shilapi/xcertplay/media/VideoDecoder;->referenceChain:Lcom/shilapi/xcertplay/media/VideoReferenceChain;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/media/VideoJob$Config;->getCodec()Lcom/shilapi/xcertplay/airplay/VideoCodec;

    move-result-object v8

    invoke-virtual {v4, v2, v8}, Lcom/shilapi/xcertplay/media/VideoReferenceChain;->accepts([BLcom/shilapi/xcertplay/airplay/VideoCodec;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 826
    invoke-direct {v0}, Lcom/shilapi/xcertplay/media/VideoDecoder;->requestKeyFrameIfDue()V

    return-void

    .line 829
    :cond_4
    iget-object v4, v0, Lcom/shilapi/xcertplay/media/VideoDecoder;->decoder:Landroid/media/MediaCodec;

    if-nez v4, :cond_5

    iget-object v4, v0, Lcom/shilapi/xcertplay/media/VideoDecoder;->software:Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;

    if-nez v4, :cond_5

    invoke-direct {v0, v3}, Lcom/shilapi/xcertplay/media/VideoDecoder;->configureDecoder(Lcom/shilapi/xcertplay/media/VideoJob$Config;)V

    iget-object v8, v0, Lcom/shilapi/xcertplay/media/VideoDecoder;->referenceChain:Lcom/shilapi/xcertplay/media/VideoReferenceChain;

    invoke-virtual {v8}, Lcom/shilapi/xcertplay/media/VideoReferenceChain;->getNeedsKeyFrame()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/shilapi/xcertplay/media/VideoDecoder;->queue:Lcom/shilapi/xcertplay/media/VideoDecodeQueue;

    invoke-virtual {v8}, Lcom/shilapi/xcertplay/media/VideoDecodeQueue;->e01BacklogAfterCurrent()Lcom/shilapi/xcertplay/E01BacklogRecovery$Snapshot;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    iget-wide v11, v0, Lcom/shilapi/xcertplay/media/VideoDecoder;->e01ReceivedNs:J

    invoke-static/range {v9 .. v13}, Lcom/shilapi/xcertplay/E01BacklogRecovery;->obsolete(JJLcom/shilapi/xcertplay/E01BacklogRecovery$Snapshot;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/shilapi/xcertplay/media/VideoDecoder;->queue:Lcom/shilapi/xcertplay/media/VideoDecodeQueue;

    invoke-virtual {v8}, Lcom/shilapi/xcertplay/media/VideoDecodeQueue;->e01DiscardCurrentChain()V

    iget-object v8, v0, Lcom/shilapi/xcertplay/media/VideoDecoder;->e01Backlog:Lcom/shilapi/xcertplay/E01BacklogRecovery;

    invoke-virtual {v8}, Lcom/shilapi/xcertplay/E01BacklogRecovery;->reset()V

    invoke-direct {v0}, Lcom/shilapi/xcertplay/media/VideoDecoder;->requestKeyFrameIfDue()V

    return-void

    .line 830
    :cond_5
    iget-object v3, v0, Lcom/shilapi/xcertplay/media/VideoDecoder;->software:Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;

    if-eqz v3, :cond_6

    .line 831
    invoke-direct {v0, v3, v2}, Lcom/shilapi/xcertplay/media/VideoDecoder;->decodeSoftware(Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;[B)V

    return-void

    .line 834
    :cond_6
    iget-object v8, v0, Lcom/shilapi/xcertplay/media/VideoDecoder;->decoder:Landroid/media/MediaCodec;

    if-nez v8, :cond_7

    :goto_0
    return-void

    .line 835
    :cond_7
    iget-boolean v3, v0, Lcom/shilapi/xcertplay/media/VideoDecoder;->submittedFrameLogged:Z

    if-nez v3, :cond_8

    const/4 v3, 0x1

    .line 836
    iput-boolean v3, v0, Lcom/shilapi/xcertplay/media/VideoDecoder;->submittedFrameLogged:Z

    .line 839
    array-length v1, v1

    array-length v3, v2

    const/16 v4, 0x10

    .line 840
    invoke-static {v2, v4}, Lkotlin/collections/ArraysKt;->take([BI)Ljava/util/List;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Ljava/lang/Iterable;

    const-string v4, ""

    move-object v10, v4

    check-cast v10, Ljava/lang/CharSequence;

    new-instance v15, Lcom/shilapi/xcertplay/media/VideoDecoder$$ExternalSyntheticLambda8;

    invoke-direct {v15}, Lcom/shilapi/xcertplay/media/VideoDecoder$$ExternalSyntheticLambda8;-><init>()V

    const/16 v16, 0x1e

    const/16 v17, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v9 .. v17}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "video decoder first input avcc="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " annexB="

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " head="

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 837
    const-string/jumbo v3, "xcertplay-usb"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    :cond_8
    sget-object v9, Lcom/shilapi/xcertplay/media/VideoInputPump;->INSTANCE:Lcom/shilapi/xcertplay/media/VideoInputPump;

    new-instance v10, Lcom/shilapi/xcertplay/media/VideoDecoder$$ExternalSyntheticLambda9;

    invoke-direct {v10, v0}, Lcom/shilapi/xcertplay/media/VideoDecoder$$ExternalSyntheticLambda9;-><init>(Lcom/shilapi/xcertplay/media/VideoDecoder;)V

    new-instance v11, Lcom/shilapi/xcertplay/media/VideoDecoder$$ExternalSyntheticLambda10;

    invoke-direct {v11, v0, v8}, Lcom/shilapi/xcertplay/media/VideoDecoder$$ExternalSyntheticLambda10;-><init>(Lcom/shilapi/xcertplay/media/VideoDecoder;Landroid/media/MediaCodec;)V

    new-instance v12, Lcom/shilapi/xcertplay/media/VideoDecoder$$ExternalSyntheticLambda11;

    invoke-direct {v12, v8}, Lcom/shilapi/xcertplay/media/VideoDecoder$$ExternalSyntheticLambda11;-><init>(Landroid/media/MediaCodec;)V

    const/16 v16, 0x18

    const/16 v17, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    invoke-static {v8}, Lcom/shilapi/xcertplay/E01SmoothVideo;->inputStart(Landroid/media/MediaCodec;)V

    invoke-static/range {v9 .. v17}, Lcom/shilapi/xcertplay/media/VideoInputPump;->acquire$default(Lcom/shilapi/xcertplay/media/VideoInputPump;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;JILjava/lang/Object;)I

    move-result v9

    invoke-static {v8}, Lcom/shilapi/xcertplay/E01SmoothVideo;->inputEnd(Landroid/media/MediaCodec;)V

    iget-boolean v1, v0, Lcom/shilapi/xcertplay/media/VideoDecoder;->running:Z

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/shilapi/xcertplay/media/VideoDecoder;->decoder:Landroid/media/MediaCodec;

    if-ne v1, v8, :cond_9

    if-gez v9, :cond_a

    .line 847
    const-string/jumbo v1, "video decoder input stalled"

    invoke-static {v0, v1, v7, v6, v5}, Lcom/shilapi/xcertplay/media/VideoDecoder;->recover$default(Lcom/shilapi/xcertplay/media/VideoDecoder;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_9
    return-void

    .line 848
    :cond_a
    sget-object v1, Lcom/shilapi/xcertplay/compat/MediaCodecCompat;->INSTANCE:Lcom/shilapi/xcertplay/compat/MediaCodecCompat;

    invoke-virtual {v1, v8, v9}, Lcom/shilapi/xcertplay/compat/MediaCodecCompat;->inputBuffer(Landroid/media/MediaCodec;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 849
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 850
    array-length v3, v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-gt v3, v4, :cond_b

    .line 851
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 852
    array-length v11, v2

    invoke-static {v0, v2}, Lcom/shilapi/xcertplay/E01SmoothVideo;->presentation(Ljava/lang/Object;[B)J

    move-result-wide v12

    const/4 v14, 0x0

    const/4 v10, 0x0

    invoke-static/range {v8 .. v14}, Lcom/shilapi/xcertplay/E01SmoothVideo;->queueInput(Landroid/media/MediaCodec;IIIJI)V

    .line 853
    iget-object v1, v0, Lcom/shilapi/xcertplay/media/VideoDecoder;->referenceChain:Lcom/shilapi/xcertplay/media/VideoReferenceChain;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/media/VideoReferenceChain;->onQueued()V

    .line 858
    invoke-direct {v0, v8}, Lcom/shilapi/xcertplay/media/VideoDecoder;->drainOutput(Landroid/media/MediaCodec;)V

    return-void

    .line 855
    :cond_b
    const-string/jumbo v1, "video frame exceeded codec input capacity"

    invoke-static {v0, v1, v7, v6, v5}, Lcom/shilapi/xcertplay/media/VideoDecoder;->recover$default(Lcom/shilapi/xcertplay/media/VideoDecoder;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    .line 848
    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Decoder input buffer unavailable"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static final feed$lambda$18(B)Ljava/lang/CharSequence;
    .locals 3

    and-int/lit16 p0, p0, 0xff

    .line 840
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%02x"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "format(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private static final feed$lambda$19(Lcom/shilapi/xcertplay/media/VideoDecoder;)Z
    .locals 0

    .line 844
    iget-boolean p0, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->running:Z

    return p0
.end method

.method private static final feed$lambda$20(Lcom/shilapi/xcertplay/media/VideoDecoder;Landroid/media/MediaCodec;)Lkotlin/Unit;
    .locals 0

    .line 844
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/media/VideoDecoder;->drainOutput(Landroid/media/MediaCodec;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final feed$lambda$21(Landroid/media/MediaCodec;)I
    .locals 1

    invoke-static {p0}, Lcom/shilapi/xcertplay/E01SmoothVideo;->dequeueInput(Landroid/media/MediaCodec;)I

    move-result v0

    return v0
.end method

.method private final logOutputFormat(Landroid/media/MediaFormat;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 913
    iget-object v2, v0, Lcom/shilapi/xcertplay/media/VideoDecoder;->report:Lkotlin/jvm/functions/Function1;

    iget v3, v0, Lcom/shilapi/xcertplay/media/VideoDecoder;->width:I

    iget v4, v0, Lcom/shilapi/xcertplay/media/VideoDecoder;->height:I

    .line 914
    const-string/jumbo v5, "width"

    # invokes: Lcom/shilapi/xcertplay/media/AndroidMediaSinkKt;->intOrNull(Landroid/media/MediaFormat;Ljava/lang/String;)Ljava/lang/Integer;
    invoke-static {v1, v5}, Lcom/shilapi/xcertplay/media/AndroidMediaSinkKt;->access$intOrNull(Landroid/media/MediaFormat;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "height"

    # invokes: Lcom/shilapi/xcertplay/media/AndroidMediaSinkKt;->intOrNull(Landroid/media/MediaFormat;Ljava/lang/String;)Ljava/lang/Integer;
    invoke-static {v1, v7}, Lcom/shilapi/xcertplay/media/AndroidMediaSinkKt;->access$intOrNull(Landroid/media/MediaFormat;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 915
    const-string v9, "crop-left"

    # invokes: Lcom/shilapi/xcertplay/media/AndroidMediaSinkKt;->intOrNull(Landroid/media/MediaFormat;Ljava/lang/String;)Ljava/lang/Integer;
    invoke-static {v1, v9}, Lcom/shilapi/xcertplay/media/AndroidMediaSinkKt;->access$intOrNull(Landroid/media/MediaFormat;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "crop-top"

    # invokes: Lcom/shilapi/xcertplay/media/AndroidMediaSinkKt;->intOrNull(Landroid/media/MediaFormat;Ljava/lang/String;)Ljava/lang/Integer;
    invoke-static {v1, v10}, Lcom/shilapi/xcertplay/media/AndroidMediaSinkKt;->access$intOrNull(Landroid/media/MediaFormat;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    .line 916
    const-string v11, "crop-right"

    # invokes: Lcom/shilapi/xcertplay/media/AndroidMediaSinkKt;->intOrNull(Landroid/media/MediaFormat;Ljava/lang/String;)Ljava/lang/Integer;
    invoke-static {v1, v11}, Lcom/shilapi/xcertplay/media/AndroidMediaSinkKt;->access$intOrNull(Landroid/media/MediaFormat;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "crop-bottom"

    # invokes: Lcom/shilapi/xcertplay/media/AndroidMediaSinkKt;->intOrNull(Landroid/media/MediaFormat;Ljava/lang/String;)Ljava/lang/Integer;
    invoke-static {v1, v12}, Lcom/shilapi/xcertplay/media/AndroidMediaSinkKt;->access$intOrNull(Landroid/media/MediaFormat;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    .line 917
    const-string/jumbo v13, "stride"

    # invokes: Lcom/shilapi/xcertplay/media/AndroidMediaSinkKt;->intOrNull(Landroid/media/MediaFormat;Ljava/lang/String;)Ljava/lang/Integer;
    invoke-static {v1, v13}, Lcom/shilapi/xcertplay/media/AndroidMediaSinkKt;->access$intOrNull(Landroid/media/MediaFormat;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    const-string/jumbo v15, "slice-height"

    # invokes: Lcom/shilapi/xcertplay/media/AndroidMediaSinkKt;->intOrNull(Landroid/media/MediaFormat;Ljava/lang/String;)Ljava/lang/Integer;
    invoke-static {v1, v15}, Lcom/shilapi/xcertplay/media/AndroidMediaSinkKt;->access$intOrNull(Landroid/media/MediaFormat;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v16, v15

    .line 918
    const-string v15, "color-standard"

    move-object/from16 v17, v13

    # invokes: Lcom/shilapi/xcertplay/media/AndroidMediaSinkKt;->intOrNull(Landroid/media/MediaFormat;Ljava/lang/String;)Ljava/lang/Integer;
    invoke-static {v1, v15}, Lcom/shilapi/xcertplay/media/AndroidMediaSinkKt;->access$intOrNull(Landroid/media/MediaFormat;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v18, v15

    const-string v15, "color-range"

    move-object/from16 v19, v7

    # invokes: Lcom/shilapi/xcertplay/media/AndroidMediaSinkKt;->intOrNull(Landroid/media/MediaFormat;Ljava/lang/String;)Ljava/lang/Integer;
    invoke-static {v1, v15}, Lcom/shilapi/xcertplay/media/AndroidMediaSinkKt;->access$intOrNull(Landroid/media/MediaFormat;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v20, v15

    const-string v15, "color-transfer"

    move-object/from16 v21, v5

    # invokes: Lcom/shilapi/xcertplay/media/AndroidMediaSinkKt;->intOrNull(Landroid/media/MediaFormat;Ljava/lang/String;)Ljava/lang/Integer;
    invoke-static {v1, v15}, Lcom/shilapi/xcertplay/media/AndroidMediaSinkKt;->access$intOrNull(Landroid/media/MediaFormat;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v22, v15

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v1, "output format requested="

    invoke-direct {v15, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " coded="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " crop="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " stride="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " slice="

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " color="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 913
    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    move-object/from16 v2, v21

    .line 922
    # invokes: Lcom/shilapi/xcertplay/media/AndroidMediaSinkKt;->intOrNull(Landroid/media/MediaFormat;Ljava/lang/String;)Ljava/lang/Integer;
    invoke-static {v0, v2}, Lcom/shilapi/xcertplay/media/AndroidMediaSinkKt;->access$intOrNull(Landroid/media/MediaFormat;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v5, v19

    .line 923
    # invokes: Lcom/shilapi/xcertplay/media/AndroidMediaSinkKt;->intOrNull(Landroid/media/MediaFormat;Ljava/lang/String;)Ljava/lang/Integer;
    invoke-static {v0, v5}, Lcom/shilapi/xcertplay/media/AndroidMediaSinkKt;->access$intOrNull(Landroid/media/MediaFormat;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v6, v17

    .line 924
    # invokes: Lcom/shilapi/xcertplay/media/AndroidMediaSinkKt;->intOrNull(Landroid/media/MediaFormat;Ljava/lang/String;)Ljava/lang/Integer;
    invoke-static {v0, v6}, Lcom/shilapi/xcertplay/media/AndroidMediaSinkKt;->access$intOrNull(Landroid/media/MediaFormat;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v7, v16

    .line 925
    # invokes: Lcom/shilapi/xcertplay/media/AndroidMediaSinkKt;->intOrNull(Landroid/media/MediaFormat;Ljava/lang/String;)Ljava/lang/Integer;
    invoke-static {v0, v7}, Lcom/shilapi/xcertplay/media/AndroidMediaSinkKt;->access$intOrNull(Landroid/media/MediaFormat;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v8, v18

    .line 926
    # invokes: Lcom/shilapi/xcertplay/media/AndroidMediaSinkKt;->intOrNull(Landroid/media/MediaFormat;Ljava/lang/String;)Ljava/lang/Integer;
    invoke-static {v0, v8}, Lcom/shilapi/xcertplay/media/AndroidMediaSinkKt;->access$intOrNull(Landroid/media/MediaFormat;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v9, v20

    .line 927
    # invokes: Lcom/shilapi/xcertplay/media/AndroidMediaSinkKt;->intOrNull(Landroid/media/MediaFormat;Ljava/lang/String;)Ljava/lang/Integer;
    invoke-static {v0, v9}, Lcom/shilapi/xcertplay/media/AndroidMediaSinkKt;->access$intOrNull(Landroid/media/MediaFormat;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v10, v22

    .line 928
    # invokes: Lcom/shilapi/xcertplay/media/AndroidMediaSinkKt;->intOrNull(Landroid/media/MediaFormat;Ljava/lang/String;)Ljava/lang/Integer;
    invoke-static {v0, v10}, Lcom/shilapi/xcertplay/media/AndroidMediaSinkKt;->access$intOrNull(Landroid/media/MediaFormat;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "video decoder output format size="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " standard="

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " range="

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " transfer="

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 919
    const-string/jumbo v1, "xcertplay-usb"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final recover(Ljava/lang/String;Z)V
    .locals 5

    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Video recovery: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; waiting for keyframe"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "xcertplay-usb"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v0}, Lcom/shilapi/xcertplay/E01VideoEvidence;->recovery(Ljava/lang/Object;Ljava/lang/String;)V

    .line 863
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->stats:Lcom/shilapi/xcertplay/media/VideoStats;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/media/VideoStats;->onRecovery()V

    .line 864
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->report:Lkotlin/jvm/functions/Function1;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "recovery: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->outputSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->decoder:Landroid/media/MediaCodec;

    invoke-static {p0, v0, v1, p1}, Lcom/shilapi/xcertplay/E01MtkRuntime;->onRecovery(Ljava/lang/Object;Landroid/view/Surface;Landroid/media/MediaCodec;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/shilapi/xcertplay/media/VideoDecoder;->releaseDecoder()V

    iget-object v0, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->queue:Lcom/shilapi/xcertplay/media/VideoDecodeQueue;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/media/VideoDecodeQueue;->e01DiscardCurrentChain()V

    iget-object v0, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->referenceChain:Lcom/shilapi/xcertplay/media/VideoReferenceChain;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/media/VideoReferenceChain;->reset()V

    invoke-direct {p0}, Lcom/shilapi/xcertplay/media/VideoDecoder;->requestKeyFrameIfDue()V

    return-void
.end method

.method static synthetic recover$default(Lcom/shilapi/xcertplay/media/VideoDecoder;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 861
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/media/VideoDecoder;->recover(Ljava/lang/String;Z)V

    return-void
.end method

.method private final declared-synchronized releaseDecoder()V
    .locals 2

    monitor-enter p0

    .line 934
    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->e01Backlog:Lcom/shilapi/xcertplay/E01BacklogRecovery;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/E01BacklogRecovery;->reset()V

    iget-object v0, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->software:Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 935
    iput-object v0, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->software:Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;

    .line 936
    iget-object v1, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->decoder:Landroid/media/MediaCodec;

    .line 937
    iput-object v0, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->decoder:Landroid/media/MediaCodec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-static {v1}, Lcom/shilapi/xcertplay/E01VideoOutput;->release(Landroid/media/MediaCodec;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private final requestKeyFrameIfDue()V
    .locals 7

    .line 882
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 883
    iget-wide v2, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->lastKeyFrameRequestNs:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    sub-long v2, v0, v2

    const-wide/32 v4, 0x3b9aca00

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    return-void

    .line 884
    :cond_0
    iput-wide v0, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->lastKeyFrameRequestNs:J

    .line 885
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->requestKeyFrame:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final run()V
    .locals 7

    invoke-static {}, Lcom/shilapi/xcertplay/E01Realtime;->videoThread()V

    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->running:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->queue:Lcom/shilapi/xcertplay/media/VideoDecodeQueue;

    const-wide/16 v1, 0x5

    iget-object v3, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->software:Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;

    if-eqz v3, :cond_1

    const-wide/16 v1, 0x32

    :cond_1
    invoke-virtual {v0, v1, v2}, Lcom/shilapi/xcertplay/media/VideoDecodeQueue;->poll(J)Lcom/shilapi/xcertplay/media/VideoJob;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :try_start_1
    instance-of v2, v0, Lcom/shilapi/xcertplay/media/VideoJob$Config;

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Lcom/shilapi/xcertplay/media/VideoJob$Config;

    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/media/VideoDecoder;->configureDecoder(Lcom/shilapi/xcertplay/media/VideoJob$Config;)V

    goto :goto_1

    :cond_2
    instance-of v2, v0, Lcom/shilapi/xcertplay/media/VideoJob$Frame;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->referenceChain:Lcom/shilapi/xcertplay/media/VideoReferenceChain;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/media/VideoReferenceChain;->getNeedsKeyFrame()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->e01Backlog:Lcom/shilapi/xcertplay/E01BacklogRecovery;

    iget-object v3, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->queue:Lcom/shilapi/xcertplay/media/VideoDecodeQueue;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/media/VideoDecodeQueue;->e01BacklogAfterCurrent()Lcom/shilapi/xcertplay/E01BacklogRecovery$Snapshot;

    move-result-object v3

    move-object v4, v0

    check-cast v4, Lcom/shilapi/xcertplay/media/VideoJob$Frame;

    invoke-virtual {v2, v3, v4}, Lcom/shilapi/xcertplay/E01BacklogRecovery;->check(Lcom/shilapi/xcertplay/E01BacklogRecovery$Snapshot;Lcom/shilapi/xcertplay/media/VideoJob$Frame;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "video backlog kept growing or exceeded hard limit"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/shilapi/xcertplay/media/VideoDecoder;->recover(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_3
    move-object v2, v0

    check-cast v2, Lcom/shilapi/xcertplay/media/VideoJob$Frame;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/media/VideoJob$Frame;->getNalus()[B

    move-result-object v2

    move-object v3, v0

    check-cast v3, Lcom/shilapi/xcertplay/media/VideoJob$Frame;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/media/VideoJob$Frame;->getReceivedNs()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->e01ReceivedNs:J

    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/media/VideoDecoder;->feed([B)V

    goto :goto_1

    :cond_4
    instance-of v2, v0, Lcom/shilapi/xcertplay/media/VideoJob$SurfaceChanged;

    if-eqz v2, :cond_5

    move-object v2, v0

    check-cast v2, Lcom/shilapi/xcertplay/media/VideoJob$SurfaceChanged;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/media/VideoJob$SurfaceChanged;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/media/VideoDecoder;->changeSurface(Landroid/view/Surface;)V

    goto :goto_1

    :cond_5
    instance-of v2, v0, Lcom/shilapi/xcertplay/media/VideoJob$Resync;

    if-eqz v2, :cond_6

    const-string/jumbo v2, "video queue overflow"

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {p0, v2, v3, v4, v1}, Lcom/shilapi/xcertplay/media/VideoDecoder;->recover$default(Lcom/shilapi/xcertplay/media/VideoDecoder;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_1

    :cond_6
    if-nez v0, :cond_9

    :goto_1
    iget-object v2, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->decoder:Landroid/media/MediaCodec;

    if-eqz v2, :cond_7

    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/media/VideoDecoder;->drainOutput(Landroid/media/MediaCodec;)V

    :cond_7
    iget-object v2, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->stats:Lcom/shilapi/xcertplay/media/VideoStats;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/media/VideoStats;->logIfDue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v3, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->report:Lkotlin/jvm/functions/Function1;

    invoke-interface {v3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object v2, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->referenceChain:Lcom/shilapi/xcertplay/media/VideoReferenceChain;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/media/VideoReferenceChain;->getNeedsKeyFrame()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->lastConfig:Lcom/shilapi/xcertplay/media/VideoJob$Config;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->outputSurface:Landroid/view/Surface;

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/media/VideoDecoder;->requestKeyFrameIfDue()V

    goto/16 :goto_0

    :cond_9
    new-instance v2, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v2}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v2

    iget-boolean v3, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->running:Z

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->outputSurface:Landroid/view/Surface;

    iget-object v4, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->decoder:Landroid/media/MediaCodec;

    invoke-static {p0, v2}, Lcom/shilapi/xcertplay/E01VideoEvidence;->failure(Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-static {p0, v3, v4, v2}, Lcom/shilapi/xcertplay/E01MtkRuntime;->onFailure(Ljava/lang/Object;Landroid/view/Surface;Landroid/media/MediaCodec;Ljava/lang/Throwable;)V

    :try_start_2
    iget-boolean v3, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->running:Z

    if-eqz v3, :cond_b

    const-string/jumbo v3, "xcertplay-usb"

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "video decoder job failed: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v2

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v3, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->running:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->report:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decoder error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; waiting for keyframe"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    invoke-direct {p0}, Lcom/shilapi/xcertplay/media/VideoDecoder;->releaseDecoder()V

    iget-object v0, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->queue:Lcom/shilapi/xcertplay/media/VideoDecodeQueue;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/media/VideoDecodeQueue;->e01DiscardCurrentChain()V

    iget-object v0, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->referenceChain:Lcom/shilapi/xcertplay/media/VideoReferenceChain;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/media/VideoReferenceChain;->reset()V

    invoke-direct {p0}, Lcom/shilapi/xcertplay/media/VideoDecoder;->requestKeyFrameIfDue()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/media/VideoDecoder;->releaseDecoder()V

    throw v0

    :catch_1
    :cond_d
    invoke-direct {p0}, Lcom/shilapi/xcertplay/media/VideoDecoder;->releaseDecoder()V

    return-void
.end method

.method private final softwareDecoderName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 766
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return-object v2

    .line 767
    :cond_0
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-static {v0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodecList;)[Landroid/media/MediaCodecInfo;

    move-result-object v0

    const-string v3, "getCodecInfos(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/Object;

    .line 1755
    array-length v3, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v0, v1

    invoke-static {v4}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/MediaCodecInfo;

    move-result-object v5

    .line 768
    invoke-static {v5}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodecInfo;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v5}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodecInfo;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v5}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodecInfo;)[Ljava/lang/String;

    move-result-object v5

    const-string v6, "getSupportedTypes(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, [Ljava/lang/Object;

    invoke-static {v5, p1}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move-object v4, v2

    .line 767
    :goto_1
    invoke-static {v4}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/MediaCodecInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 769
    invoke-static {p1}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodecInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v2
.end method

.method private final tryConfigure(Ljava/lang/String;Ljava/util/List;Landroid/view/Surface;Lcom/shilapi/xcertplay/media/VideoDecoderAttempts$Attempt;)Landroid/media/MediaCodec;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[B>;",
            "Landroid/view/Surface;",
            "Lcom/shilapi/xcertplay/media/VideoDecoderAttempts$Attempt;",
            ")",
            "Landroid/media/MediaCodec;"
        }
    .end annotation

    .line 741
    const-string v0, "low-latency"

    const/4 v1, 0x0

    .line 743
    :try_start_0
    invoke-direct {p0, p1, p2, p4}, Lcom/shilapi/xcertplay/media/VideoDecoder;->buildFormat(Ljava/lang/String;Ljava/util/List;Lcom/shilapi/xcertplay/media/VideoDecoderAttempts$Attempt;)Landroid/media/MediaFormat;

    move-result-object p2

    .line 744
    invoke-virtual {p4}, Lcom/shilapi/xcertplay/media/VideoDecoderAttempts$Attempt;->getCodecName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m$1(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/media/VideoDecoder;->createDecoder(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 746
    :cond_1
    :try_start_1
    invoke-virtual {p4}, Lcom/shilapi/xcertplay/media/VideoDecoderAttempts$Attempt;->getPriority()Z

    move-result v3

    if-eqz v3, :cond_2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_2

    .line 747
    invoke-static {v2}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodec;)Landroid/media/MediaCodecInfo;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodecInfo$CodecCapabilities;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    .line 748
    invoke-static {p2, v0, v3}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    :cond_2
    const/4 v0, 0x0

    .line 750
    invoke-virtual {p4}, Lcom/shilapi/xcertplay/media/VideoDecoderAttempts$Attempt;->getPriority()Z

    move-result v3

    invoke-static {p0, v3}, Lcom/shilapi/xcertplay/E01MtkRuntime;->allow(Ljava/lang/Object;Z)Z

    move-result v3

    invoke-static {v2, p2, p3, v3}, Lcom/shilapi/xcertplay/E01SmoothVideo;->configure(Landroid/media/MediaCodec;Landroid/media/MediaFormat;Landroid/view/Surface;Z)V

    invoke-static {v2, p2, p3, v1, v0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodec;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 751
    invoke-static {v2}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m$3(Landroid/media/MediaCodec;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    :catch_0
    move-exception p2

    invoke-static {v2}, Lcom/shilapi/xcertplay/E01SmoothVideo;->configureFailed(Landroid/media/MediaCodec;)V

    goto :goto_0

    :catch_1
    move-exception p2

    move-object v2, v1

    .line 754
    :goto_0
    :try_start_2
    sget-object p3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/MediaCodec;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-static {p3}, Lcom/shilapi/xcertplay/E01VideoOutput;->release(Landroid/media/MediaCodec;)V

    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    :cond_3
    move-object p3, v1

    :goto_1
    invoke-static {p3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p3

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p3}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    :goto_2
    invoke-virtual {p4}, Lcom/shilapi/xcertplay/media/VideoDecoderAttempts$Attempt;->getCodecName()Ljava/lang/String;

    move-result-object p3

    const-string v0, "default"

    if-nez p3, :cond_4

    move-object p3, v0

    .line 758
    :cond_4
    invoke-virtual {p4}, Lcom/shilapi/xcertplay/media/VideoDecoderAttempts$Attempt;->getMaxInputBytes()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    move-object v0, v2

    :goto_3
    invoke-virtual {p4}, Lcom/shilapi/xcertplay/media/VideoDecoderAttempts$Attempt;->getPriority()Z

    move-result p4

    iget v2, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->width:I

    iget v3, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->height:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "video decoder configure failed name="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " maxInput="

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " priority="

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " mime="

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " size="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "x"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 759
    check-cast p2, Ljava/lang/Throwable;

    .line 755
    const-string/jumbo p3, "xcertplay-usb"

    invoke-static {p3, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 593
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->running:Z

    .line 594
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public final configure(Lcom/shilapi/xcertplay/airplay/VideoCodec;[B)V
    .locals 2

    const-string v0, "codec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "codecData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->queue:Lcom/shilapi/xcertplay/media/VideoDecodeQueue;

    new-instance v1, Lcom/shilapi/xcertplay/media/VideoJob$Config;

    invoke-direct {v1, p1, p2}, Lcom/shilapi/xcertplay/media/VideoJob$Config;-><init>(Lcom/shilapi/xcertplay/airplay/VideoCodec;[B)V

    check-cast v1, Lcom/shilapi/xcertplay/media/VideoJob;

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/media/VideoDecodeQueue;->offer(Lcom/shilapi/xcertplay/media/VideoJob;)V

    return-void
.end method

.method public final setSurface(Landroid/view/Surface;)V
    .locals 2

    .line 589
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->queue:Lcom/shilapi/xcertplay/media/VideoDecodeQueue;

    new-instance v1, Lcom/shilapi/xcertplay/media/VideoJob$SurfaceChanged;

    invoke-direct {v1, p1}, Lcom/shilapi/xcertplay/media/VideoJob$SurfaceChanged;-><init>(Landroid/view/Surface;)V

    check-cast v1, Lcom/shilapi/xcertplay/media/VideoJob;

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/media/VideoDecodeQueue;->offer(Lcom/shilapi/xcertplay/media/VideoJob;)V

    return-void
.end method

.method public final submit([B)V
    .locals 7

    const-string v0, "nalus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->stats:Lcom/shilapi/xcertplay/media/VideoStats;

    array-length v1, p1

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/media/VideoStats;->onReceived(I)V

    .line 584
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->picture:Lcom/shilapi/xcertplay/media/FirstPictureCounters;

    if-eqz v0, :cond_0

    array-length v1, p1

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/media/FirstPictureCounters;->onBytes(I)V

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/VideoDecoder;->queue:Lcom/shilapi/xcertplay/media/VideoDecodeQueue;

    new-instance v1, Lcom/shilapi/xcertplay/media/VideoJob$Frame;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/shilapi/xcertplay/media/VideoJob$Frame;-><init>([BJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lcom/shilapi/xcertplay/media/VideoJob;

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/media/VideoDecodeQueue;->offer(Lcom/shilapi/xcertplay/media/VideoJob;)V

    return-void
.end method
