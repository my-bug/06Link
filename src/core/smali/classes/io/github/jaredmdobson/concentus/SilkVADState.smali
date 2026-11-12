.class Lio/github/jaredmdobson/concentus/SilkVADState;
.super Ljava/lang/Object;
.source "SilkVADState.java"


# instance fields
.field final AnaState:[I

.field final AnaState1:[I

.field final AnaState2:[I

.field HPstate:S

.field final NL:[I

.field final NoiseLevelBias:[I

.field final NrgRatioSmth_Q8:[I

.field final XnrgSubfr:[I

.field counter:I

.field final inv_NL:[I


# direct methods
.method constructor <init>()V
    .locals 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 42
    new-array v1, v0, [I

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/SilkVADState;->AnaState:[I

    .line 47
    new-array v1, v0, [I

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/SilkVADState;->AnaState1:[I

    .line 52
    new-array v0, v0, [I

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/SilkVADState;->AnaState2:[I

    const/4 v0, 0x4

    .line 57
    new-array v1, v0, [I

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/SilkVADState;->XnrgSubfr:[I

    .line 62
    new-array v1, v0, [I

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/SilkVADState;->NrgRatioSmth_Q8:[I

    const/4 v1, 0x0

    .line 67
    iput-short v1, p0, Lio/github/jaredmdobson/concentus/SilkVADState;->HPstate:S

    .line 72
    new-array v2, v0, [I

    iput-object v2, p0, Lio/github/jaredmdobson/concentus/SilkVADState;->NL:[I

    .line 77
    new-array v2, v0, [I

    iput-object v2, p0, Lio/github/jaredmdobson/concentus/SilkVADState;->inv_NL:[I

    .line 82
    new-array v0, v0, [I

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/SilkVADState;->NoiseLevelBias:[I

    .line 87
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkVADState;->counter:I

    return-void
.end method


# virtual methods
.method Reset()V
    .locals 3

    .line 90
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkVADState;->AnaState:[I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 91
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkVADState;->AnaState1:[I

    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 92
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkVADState;->AnaState2:[I

    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 93
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkVADState;->XnrgSubfr:[I

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 94
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkVADState;->NrgRatioSmth_Q8:[I

    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 95
    iput-short v1, p0, Lio/github/jaredmdobson/concentus/SilkVADState;->HPstate:S

    .line 96
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkVADState;->NL:[I

    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 97
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkVADState;->inv_NL:[I

    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 98
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkVADState;->NoiseLevelBias:[I

    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 99
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkVADState;->counter:I

    return-void
.end method
