.class public final enum Lio/github/jaredmdobson/concentus/OpusSignal;
.super Ljava/lang/Enum;
.source "OpusSignal.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/github/jaredmdobson/concentus/OpusSignal;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/github/jaredmdobson/concentus/OpusSignal;

.field public static final enum OPUS_SIGNAL_AUTO:Lio/github/jaredmdobson/concentus/OpusSignal;

.field public static final enum OPUS_SIGNAL_MUSIC:Lio/github/jaredmdobson/concentus/OpusSignal;

.field public static final enum OPUS_SIGNAL_UNKNOWN:Lio/github/jaredmdobson/concentus/OpusSignal;

.field public static final enum OPUS_SIGNAL_VOICE:Lio/github/jaredmdobson/concentus/OpusSignal;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 44
    new-instance v0, Lio/github/jaredmdobson/concentus/OpusSignal;

    const-string v1, "OPUS_SIGNAL_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/github/jaredmdobson/concentus/OpusSignal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/jaredmdobson/concentus/OpusSignal;->OPUS_SIGNAL_UNKNOWN:Lio/github/jaredmdobson/concentus/OpusSignal;

    .line 45
    new-instance v1, Lio/github/jaredmdobson/concentus/OpusSignal;

    const-string v3, "OPUS_SIGNAL_AUTO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/github/jaredmdobson/concentus/OpusSignal;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/github/jaredmdobson/concentus/OpusSignal;->OPUS_SIGNAL_AUTO:Lio/github/jaredmdobson/concentus/OpusSignal;

    .line 49
    new-instance v3, Lio/github/jaredmdobson/concentus/OpusSignal;

    const-string v5, "OPUS_SIGNAL_VOICE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/github/jaredmdobson/concentus/OpusSignal;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/github/jaredmdobson/concentus/OpusSignal;->OPUS_SIGNAL_VOICE:Lio/github/jaredmdobson/concentus/OpusSignal;

    .line 53
    new-instance v5, Lio/github/jaredmdobson/concentus/OpusSignal;

    const-string v7, "OPUS_SIGNAL_MUSIC"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/github/jaredmdobson/concentus/OpusSignal;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/github/jaredmdobson/concentus/OpusSignal;->OPUS_SIGNAL_MUSIC:Lio/github/jaredmdobson/concentus/OpusSignal;

    const/4 v7, 0x4

    .line 43
    new-array v7, v7, [Lio/github/jaredmdobson/concentus/OpusSignal;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lio/github/jaredmdobson/concentus/OpusSignal;->$VALUES:[Lio/github/jaredmdobson/concentus/OpusSignal;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/github/jaredmdobson/concentus/OpusSignal;
    .locals 1

    .line 43
    const-class v0, Lio/github/jaredmdobson/concentus/OpusSignal;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/github/jaredmdobson/concentus/OpusSignal;

    return-object p0
.end method

.method public static values()[Lio/github/jaredmdobson/concentus/OpusSignal;
    .locals 1

    .line 43
    sget-object v0, Lio/github/jaredmdobson/concentus/OpusSignal;->$VALUES:[Lio/github/jaredmdobson/concentus/OpusSignal;

    invoke-virtual {v0}, [Lio/github/jaredmdobson/concentus/OpusSignal;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/github/jaredmdobson/concentus/OpusSignal;

    return-object v0
.end method
