.class Lio/github/jaredmdobson/concentus/SilkShapeState;
.super Ljava/lang/Object;
.source "SilkShapeState.java"


# instance fields
.field HarmBoost_smth_Q16:I

.field HarmShapeGain_smth_Q16:I

.field LastGainIndex:B

.field Tilt_smth_Q16:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-byte v0, p0, Lio/github/jaredmdobson/concentus/SilkShapeState;->LastGainIndex:B

    .line 40
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkShapeState;->HarmBoost_smth_Q16:I

    .line 41
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkShapeState;->HarmShapeGain_smth_Q16:I

    .line 42
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkShapeState;->Tilt_smth_Q16:I

    return-void
.end method


# virtual methods
.method Reset()V
    .locals 1

    const/4 v0, 0x0

    .line 45
    iput-byte v0, p0, Lio/github/jaredmdobson/concentus/SilkShapeState;->LastGainIndex:B

    .line 46
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkShapeState;->HarmBoost_smth_Q16:I

    .line 47
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkShapeState;->HarmShapeGain_smth_Q16:I

    .line 48
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkShapeState;->Tilt_smth_Q16:I

    return-void
.end method
