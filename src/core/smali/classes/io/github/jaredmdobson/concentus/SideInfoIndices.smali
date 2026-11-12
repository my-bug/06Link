.class Lio/github/jaredmdobson/concentus/SideInfoIndices;
.super Ljava/lang/Object;
.source "SideInfoIndices.java"


# instance fields
.field final GainsIndices:[B

.field final LTPIndex:[B

.field LTP_scaleIndex:B

.field final NLSFIndices:[B

.field NLSFInterpCoef_Q2:B

.field PERIndex:B

.field Seed:B

.field contourIndex:B

.field lagIndex:S

.field quantOffsetType:B

.field signalType:B


# direct methods
.method constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 36
    new-array v1, v0, [B

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/SideInfoIndices;->GainsIndices:[B

    .line 37
    new-array v0, v0, [B

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/SideInfoIndices;->LTPIndex:[B

    const/16 v0, 0x11

    .line 38
    new-array v0, v0, [B

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/SideInfoIndices;->NLSFIndices:[B

    const/4 v0, 0x0

    .line 39
    iput-short v0, p0, Lio/github/jaredmdobson/concentus/SideInfoIndices;->lagIndex:S

    .line 40
    iput-byte v0, p0, Lio/github/jaredmdobson/concentus/SideInfoIndices;->contourIndex:B

    .line 41
    iput-byte v0, p0, Lio/github/jaredmdobson/concentus/SideInfoIndices;->signalType:B

    .line 42
    iput-byte v0, p0, Lio/github/jaredmdobson/concentus/SideInfoIndices;->quantOffsetType:B

    .line 43
    iput-byte v0, p0, Lio/github/jaredmdobson/concentus/SideInfoIndices;->NLSFInterpCoef_Q2:B

    .line 44
    iput-byte v0, p0, Lio/github/jaredmdobson/concentus/SideInfoIndices;->PERIndex:B

    .line 45
    iput-byte v0, p0, Lio/github/jaredmdobson/concentus/SideInfoIndices;->LTP_scaleIndex:B

    .line 46
    iput-byte v0, p0, Lio/github/jaredmdobson/concentus/SideInfoIndices;->Seed:B

    return-void
.end method


# virtual methods
.method Assign(Lio/github/jaredmdobson/concentus/SideInfoIndices;)V
    .locals 4

    .line 67
    iget-object v0, p1, Lio/github/jaredmdobson/concentus/SideInfoIndices;->GainsIndices:[B

    iget-object v1, p0, Lio/github/jaredmdobson/concentus/SideInfoIndices;->GainsIndices:[B

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    iget-object v0, p1, Lio/github/jaredmdobson/concentus/SideInfoIndices;->LTPIndex:[B

    iget-object v1, p0, Lio/github/jaredmdobson/concentus/SideInfoIndices;->LTPIndex:[B

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    iget-object v0, p1, Lio/github/jaredmdobson/concentus/SideInfoIndices;->NLSFIndices:[B

    iget-object v1, p0, Lio/github/jaredmdobson/concentus/SideInfoIndices;->NLSFIndices:[B

    const/16 v3, 0x11

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    iget-short v0, p1, Lio/github/jaredmdobson/concentus/SideInfoIndices;->lagIndex:S

    iput-short v0, p0, Lio/github/jaredmdobson/concentus/SideInfoIndices;->lagIndex:S

    .line 71
    iget-byte v0, p1, Lio/github/jaredmdobson/concentus/SideInfoIndices;->contourIndex:B

    iput-byte v0, p0, Lio/github/jaredmdobson/concentus/SideInfoIndices;->contourIndex:B

    .line 72
    iget-byte v0, p1, Lio/github/jaredmdobson/concentus/SideInfoIndices;->signalType:B

    iput-byte v0, p0, Lio/github/jaredmdobson/concentus/SideInfoIndices;->signalType:B

    .line 73
    iget-byte v0, p1, Lio/github/jaredmdobson/concentus/SideInfoIndices;->quantOffsetType:B

    iput-byte v0, p0, Lio/github/jaredmdobson/concentus/SideInfoIndices;->quantOffsetType:B

    .line 74
    iget-byte v0, p1, Lio/github/jaredmdobson/concentus/SideInfoIndices;->NLSFInterpCoef_Q2:B

    iput-byte v0, p0, Lio/github/jaredmdobson/concentus/SideInfoIndices;->NLSFInterpCoef_Q2:B

    .line 75
    iget-byte v0, p1, Lio/github/jaredmdobson/concentus/SideInfoIndices;->PERIndex:B

    iput-byte v0, p0, Lio/github/jaredmdobson/concentus/SideInfoIndices;->PERIndex:B

    .line 76
    iget-byte v0, p1, Lio/github/jaredmdobson/concentus/SideInfoIndices;->LTP_scaleIndex:B

    iput-byte v0, p0, Lio/github/jaredmdobson/concentus/SideInfoIndices;->LTP_scaleIndex:B

    .line 77
    iget-byte p1, p1, Lio/github/jaredmdobson/concentus/SideInfoIndices;->Seed:B

    iput-byte p1, p0, Lio/github/jaredmdobson/concentus/SideInfoIndices;->Seed:B

    return-void
.end method

.method Reset()V
    .locals 3

    .line 49
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SideInfoIndices;->GainsIndices:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([BBI)V

    .line 50
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SideInfoIndices;->LTPIndex:[B

    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([BBI)V

    .line 51
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SideInfoIndices;->NLSFIndices:[B

    const/16 v2, 0x11

    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([BBI)V

    .line 52
    iput-short v1, p0, Lio/github/jaredmdobson/concentus/SideInfoIndices;->lagIndex:S

    .line 53
    iput-byte v1, p0, Lio/github/jaredmdobson/concentus/SideInfoIndices;->contourIndex:B

    .line 54
    iput-byte v1, p0, Lio/github/jaredmdobson/concentus/SideInfoIndices;->signalType:B

    .line 55
    iput-byte v1, p0, Lio/github/jaredmdobson/concentus/SideInfoIndices;->quantOffsetType:B

    .line 56
    iput-byte v1, p0, Lio/github/jaredmdobson/concentus/SideInfoIndices;->NLSFInterpCoef_Q2:B

    .line 57
    iput-byte v1, p0, Lio/github/jaredmdobson/concentus/SideInfoIndices;->PERIndex:B

    .line 58
    iput-byte v1, p0, Lio/github/jaredmdobson/concentus/SideInfoIndices;->LTP_scaleIndex:B

    .line 59
    iput-byte v1, p0, Lio/github/jaredmdobson/concentus/SideInfoIndices;->Seed:B

    return-void
.end method
