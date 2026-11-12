.class public final Lcom/shilapi/xcertplay/VolumeKeyReach;
.super Ljava/lang/Object;
.source "PerformanceChoices.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/VolumeKeyReach;",
        "",
        "<init>",
        "()V",
        "STREAM_MUSIC",
        "",
        "reached",
        "",
        "streamOverride",
        "streamName",
        "",
        "stream",
        "common_release"
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/VolumeKeyReach;

.field public static final STREAM_MUSIC:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/VolumeKeyReach;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/VolumeKeyReach;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/VolumeKeyReach;->INSTANCE:Lcom/shilapi/xcertplay/VolumeKeyReach;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final reached(I)Z
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final streamName(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    .line 87
    :pswitch_0
    const-string v0, "STREAM"

    goto :goto_0

    .line 86
    :pswitch_1
    const-string v0, "STREAM_ACCESSIBILITY"

    goto :goto_0

    :pswitch_2
    const-string v0, "STREAM_TTS"

    goto :goto_0

    :pswitch_3
    const-string v0, "STREAM_DTMF"

    goto :goto_0

    :pswitch_4
    const-string v0, "STREAM_BLUETOOTH_SCO"

    goto :goto_0

    :pswitch_5
    const-string v0, "STREAM_NOTIFICATION"

    goto :goto_0

    .line 85
    :pswitch_6
    const-string v0, "STREAM_ALARM"

    goto :goto_0

    :pswitch_7
    const-string v0, "STREAM_MUSIC"

    goto :goto_0

    :pswitch_8
    const-string v0, "STREAM_RING"

    goto :goto_0

    :pswitch_9
    const-string v0, "STREAM_SYSTEM"

    goto :goto_0

    :pswitch_a
    const-string v0, "STREAM_VOICE_CALL"

    .line 88
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
