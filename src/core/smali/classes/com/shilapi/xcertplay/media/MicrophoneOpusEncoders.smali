.class public final Lcom/shilapi/xcertplay/media/MicrophoneOpusEncoders;
.super Ljava/lang/Object;
.source "OpusEncoder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOpusEncoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OpusEncoder.kt\ncom/shilapi/xcertplay/media/MicrophoneOpusEncoders\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,174:1\n1#2:175\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J5\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u00072\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/media/MicrophoneOpusEncoders;",
        "",
        "<init>",
        "()V",
        "open",
        "Lcom/shilapi/xcertplay/media/MicrophoneOpusEncoder;",
        "bitrate",
        "",
        "bandwidthRate",
        "complexity",
        "mode",
        "Lio/github/jaredmdobson/concentus/OpusMode;",
        "(ILjava/lang/Integer;ILio/github/jaredmdobson/concentus/OpusMode;)Lcom/shilapi/xcertplay/media/MicrophoneOpusEncoder;",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/media/MicrophoneOpusEncoders;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/media/MicrophoneOpusEncoders;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/media/MicrophoneOpusEncoders;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/media/MicrophoneOpusEncoders;->INSTANCE:Lcom/shilapi/xcertplay/media/MicrophoneOpusEncoders;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic open$default(Lcom/shilapi/xcertplay/media/MicrophoneOpusEncoders;ILjava/lang/Integer;ILio/github/jaredmdobson/concentus/OpusMode;ILjava/lang/Object;)Lcom/shilapi/xcertplay/media/MicrophoneOpusEncoder;
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const/4 p3, 0x5

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 30
    sget-object p4, Lcom/shilapi/xcertplay/media/SoftwareOpusEncoder;->Companion:Lcom/shilapi/xcertplay/media/SoftwareOpusEncoder$Companion;

    invoke-virtual {p4}, Lcom/shilapi/xcertplay/media/SoftwareOpusEncoder$Companion;->getMODE()Lio/github/jaredmdobson/concentus/OpusMode;

    move-result-object p4

    .line 25
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/media/MicrophoneOpusEncoders;->open(ILjava/lang/Integer;ILio/github/jaredmdobson/concentus/OpusMode;)Lcom/shilapi/xcertplay/media/MicrophoneOpusEncoder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final open(ILjava/lang/Integer;ILio/github/jaredmdobson/concentus/OpusMode;)Lcom/shilapi/xcertplay/media/MicrophoneOpusEncoder;
    .locals 2

    const-string v0, "mode"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    sget-object v0, Lcom/shilapi/xcertplay/compat/CodecAvailability;->INSTANCE:Lcom/shilapi/xcertplay/compat/CodecAvailability;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/compat/CodecAvailability;->getOpusEncoder()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    new-instance v0, Lcom/shilapi/xcertplay/media/OpusEncoder;

    invoke-direct {v0, p1}, Lcom/shilapi/xcertplay/media/OpusEncoder;-><init>(I)V

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/media/OpusEncoder;->getAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    check-cast v0, Lcom/shilapi/xcertplay/media/MicrophoneOpusEncoder;

    return-object v0

    .line 35
    :cond_1
    sget-object v0, Lcom/shilapi/xcertplay/media/SoftwareOpusEncoder;->Companion:Lcom/shilapi/xcertplay/media/SoftwareOpusEncoder$Companion;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/media/SoftwareOpusEncoder$Companion;->create(ILjava/lang/Integer;ILio/github/jaredmdobson/concentus/OpusMode;)Lcom/shilapi/xcertplay/media/SoftwareOpusEncoder;

    move-result-object p1

    check-cast p1, Lcom/shilapi/xcertplay/media/MicrophoneOpusEncoder;

    return-object p1
.end method
