.class Lio/github/jaredmdobson/concentus/StereoDecodeState;
.super Ljava/lang/Object;
.source "StereoDecodeState.java"


# instance fields
.field final pred_prev_Q13:[S

.field final sMid:[S

.field final sSide:[S


# direct methods
.method constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 36
    new-array v1, v0, [S

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/StereoDecodeState;->pred_prev_Q13:[S

    .line 37
    new-array v1, v0, [S

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/StereoDecodeState;->sMid:[S

    .line 38
    new-array v0, v0, [S

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/StereoDecodeState;->sSide:[S

    return-void
.end method


# virtual methods
.method Reset()V
    .locals 3

    .line 41
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/StereoDecodeState;->pred_prev_Q13:[S

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([SSI)V

    .line 42
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/StereoDecodeState;->sMid:[S

    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([SSI)V

    .line 43
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/StereoDecodeState;->sSide:[S

    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([SSI)V

    return-void
.end method
