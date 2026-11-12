.class Lio/github/jaredmdobson/concentus/SilkResamplerState;
.super Ljava/lang/Object;
.source "SilkResamplerState.java"


# instance fields
.field Coefs:[S

.field FIR_Fracs:I

.field FIR_Order:I

.field Fs_in_kHz:I

.field Fs_out_kHz:I

.field batchSize:I

.field final delayBuf:[S

.field inputDelay:I

.field invRatio_Q16:I

.field resampler_function:I

.field final sFIR_i16:[S

.field final sFIR_i32:[I

.field final sIIR:[I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    .line 36
    new-array v0, v0, [I

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->sIIR:[I

    const/16 v0, 0x24

    .line 38
    new-array v1, v0, [I

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->sFIR_i32:[I

    .line 39
    new-array v0, v0, [S

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->sFIR_i16:[S

    const/16 v0, 0x30

    .line 41
    new-array v0, v0, [S

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->delayBuf:[S

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->resampler_function:I

    .line 43
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->batchSize:I

    .line 44
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->invRatio_Q16:I

    .line 45
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->FIR_Order:I

    .line 46
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->FIR_Fracs:I

    .line 47
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->Fs_in_kHz:I

    .line 48
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->Fs_out_kHz:I

    .line 49
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->inputDelay:I

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->Coefs:[S

    return-void
.end method


# virtual methods
.method Assign(Lio/github/jaredmdobson/concentus/SilkResamplerState;)V
    .locals 4

    .line 73
    iget v0, p1, Lio/github/jaredmdobson/concentus/SilkResamplerState;->resampler_function:I

    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->resampler_function:I

    .line 74
    iget v0, p1, Lio/github/jaredmdobson/concentus/SilkResamplerState;->batchSize:I

    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->batchSize:I

    .line 75
    iget v0, p1, Lio/github/jaredmdobson/concentus/SilkResamplerState;->invRatio_Q16:I

    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->invRatio_Q16:I

    .line 76
    iget v0, p1, Lio/github/jaredmdobson/concentus/SilkResamplerState;->FIR_Order:I

    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->FIR_Order:I

    .line 77
    iget v0, p1, Lio/github/jaredmdobson/concentus/SilkResamplerState;->FIR_Fracs:I

    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->FIR_Fracs:I

    .line 78
    iget v0, p1, Lio/github/jaredmdobson/concentus/SilkResamplerState;->Fs_in_kHz:I

    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->Fs_in_kHz:I

    .line 79
    iget v0, p1, Lio/github/jaredmdobson/concentus/SilkResamplerState;->Fs_out_kHz:I

    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->Fs_out_kHz:I

    .line 80
    iget v0, p1, Lio/github/jaredmdobson/concentus/SilkResamplerState;->inputDelay:I

    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->inputDelay:I

    .line 81
    iget-object v0, p1, Lio/github/jaredmdobson/concentus/SilkResamplerState;->Coefs:[S

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->Coefs:[S

    .line 82
    iget-object v0, p1, Lio/github/jaredmdobson/concentus/SilkResamplerState;->sIIR:[I

    iget-object v1, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->sIIR:[I

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    iget-object v0, p1, Lio/github/jaredmdobson/concentus/SilkResamplerState;->sFIR_i32:[I

    iget-object v1, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->sFIR_i32:[I

    const/16 v2, 0x24

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    iget-object v0, p1, Lio/github/jaredmdobson/concentus/SilkResamplerState;->sFIR_i16:[S

    iget-object v1, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->sFIR_i16:[S

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    iget-object p1, p1, Lio/github/jaredmdobson/concentus/SilkResamplerState;->delayBuf:[S

    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->delayBuf:[S

    const/16 v1, 0x30

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method Reset()V
    .locals 3

    .line 57
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->sIIR:[I

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 58
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->sFIR_i32:[I

    const/16 v1, 0x24

    invoke-static {v0, v2, v1}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 59
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->sFIR_i16:[S

    invoke-static {v0, v2, v1}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([SSI)V

    .line 60
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->delayBuf:[S

    const/16 v1, 0x30

    invoke-static {v0, v2, v1}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([SSI)V

    .line 61
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->resampler_function:I

    .line 62
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->batchSize:I

    .line 63
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->invRatio_Q16:I

    .line 64
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->FIR_Order:I

    .line 65
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->FIR_Fracs:I

    .line 66
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->Fs_in_kHz:I

    .line 67
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->Fs_out_kHz:I

    .line 68
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->inputDelay:I

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->Coefs:[S

    return-void
.end method
