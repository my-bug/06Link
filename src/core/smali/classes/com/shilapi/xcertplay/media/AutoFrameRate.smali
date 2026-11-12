.class public final Lcom/shilapi/xcertplay/media/AutoFrameRate;
.super Ljava/lang/Object;
.source "AutoFrameRate.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/media/AutoFrameRate$Decision;,
        Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\u0016\u0017B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\u000b\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u00082\u0008\u0010\r\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\u000eJ\u001e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/media/AutoFrameRate;",
        "",
        "<init>",
        "()V",
        "HIGH",
        "",
        "LOW",
        "MEASURED_60_MIN",
        "",
        "LOG_TAG",
        "",
        "measuredAtCanvas",
        "lower",
        "upper",
        "(Ljava/lang/Double;Ljava/lang/Double;)Ljava/lang/Double;",
        "decide",
        "Lcom/shilapi/xcertplay/media/AutoFrameRate$Decision;",
        "probe",
        "Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;",
        "softwareH264Required",
        "",
        "remembered60Unsustainable",
        "Probe",
        "Decision",
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
.field public static final HIGH:I = 0x3c

.field public static final INSTANCE:Lcom/shilapi/xcertplay/media/AutoFrameRate;

.field public static final LOG_TAG:Ljava/lang/String; = "DiPlay-VideoStats"

.field public static final LOW:I = 0x1e

.field public static final MEASURED_60_MIN:D = 55.0


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/media/AutoFrameRate;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/media/AutoFrameRate;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/media/AutoFrameRate;->INSTANCE:Lcom/shilapi/xcertplay/media/AutoFrameRate;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final decide(Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;ZZ)Lcom/shilapi/xcertplay/media/AutoFrameRate$Decision;
    .locals 4

    const-string v0, "probe"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x1e

    if-eqz p2, :cond_0

    .line 55
    new-instance p1, Lcom/shilapi/xcertplay/media/AutoFrameRate$Decision;

    const-string/jumbo p2, "software_h264_decoder"

    invoke-direct {p1, v0, p2}, Lcom/shilapi/xcertplay/media/AutoFrameRate$Decision;-><init>(ILjava/lang/String;)V

    return-object p1

    .line 56
    :cond_0
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;->getQueryAvailable()Z

    move-result p2

    if-nez p2, :cond_1

    new-instance p1, Lcom/shilapi/xcertplay/media/AutoFrameRate$Decision;

    const-string p2, "capability_query_unavailable"

    invoke-direct {p1, v0, p2}, Lcom/shilapi/xcertplay/media/AutoFrameRate$Decision;-><init>(ILjava/lang/String;)V

    return-object p1

    .line 57
    :cond_1
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;->getCodecName()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    new-instance p1, Lcom/shilapi/xcertplay/media/AutoFrameRate$Decision;

    const-string p2, "no_decoder"

    invoke-direct {p1, v0, p2}, Lcom/shilapi/xcertplay/media/AutoFrameRate$Decision;-><init>(ILjava/lang/String;)V

    return-object p1

    .line 58
    :cond_2
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;->getHardware()Z

    move-result p2

    if-nez p2, :cond_3

    new-instance p1, Lcom/shilapi/xcertplay/media/AutoFrameRate$Decision;

    const-string/jumbo p2, "software_decoder"

    invoke-direct {p1, v0, p2}, Lcom/shilapi/xcertplay/media/AutoFrameRate$Decision;-><init>(ILjava/lang/String;)V

    return-object p1

    .line 59
    :cond_3
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;->getSupports60()Z

    move-result p2

    if-nez p2, :cond_4

    new-instance p1, Lcom/shilapi/xcertplay/media/AutoFrameRate$Decision;

    const-string p2, "decoder_rejects_60fps_at_canvas"

    invoke-direct {p1, v0, p2}, Lcom/shilapi/xcertplay/media/AutoFrameRate$Decision;-><init>(ILjava/lang/String;)V

    return-object p1

    .line 60
    :cond_4
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;->getMeasuredLow()Ljava/lang/Double;

    move-result-object p2

    if-nez p2, :cond_5

    new-instance p1, Lcom/shilapi/xcertplay/media/AutoFrameRate$Decision;

    const-string p2, "no_measured_performance"

    invoke-direct {p1, v0, p2}, Lcom/shilapi/xcertplay/media/AutoFrameRate$Decision;-><init>(ILjava/lang/String;)V

    return-object p1

    .line 61
    :cond_5
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/media/AutoFrameRate$Probe;->getMeasuredLow()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    const-wide v1, 0x404b800000000000L    # 55.0

    cmpg-double v3, p1, v1

    if-gez v3, :cond_6

    new-instance p1, Lcom/shilapi/xcertplay/media/AutoFrameRate$Decision;

    const-string p2, "measured_below_60fps"

    invoke-direct {p1, v0, p2}, Lcom/shilapi/xcertplay/media/AutoFrameRate$Decision;-><init>(ILjava/lang/String;)V

    return-object p1

    :cond_6
    if-eqz p3, :cond_7

    .line 62
    new-instance p1, Lcom/shilapi/xcertplay/media/AutoFrameRate$Decision;

    const-string p2, "60fps_not_sustained_before"

    invoke-direct {p1, v0, p2}, Lcom/shilapi/xcertplay/media/AutoFrameRate$Decision;-><init>(ILjava/lang/String;)V

    return-object p1

    .line 63
    :cond_7
    new-instance p1, Lcom/shilapi/xcertplay/media/AutoFrameRate$Decision;

    const/16 p2, 0x3c

    const-string p3, "hardware_decoder_measured_60fps"

    invoke-direct {p1, p2, p3}, Lcom/shilapi/xcertplay/media/AutoFrameRate$Decision;-><init>(ILjava/lang/String;)V

    return-object p1
.end method

.method public final measuredAtCanvas(Ljava/lang/Double;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    return-object p1
.end method
