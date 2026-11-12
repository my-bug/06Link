.class Lio/github/jaredmdobson/concentus/CeltMode;
.super Ljava/lang/Object;
.source "CeltMode.java"


# static fields
.field static final mode48000_960_120:Lio/github/jaredmdobson/concentus/CeltMode;


# instance fields
.field Fs:I

.field allocVectors:[S

.field cache:Lio/github/jaredmdobson/concentus/PulseCache;

.field eBands:[S

.field effEBands:I

.field logN:[S

.field maxLM:I

.field mdct:Lio/github/jaredmdobson/concentus/MDCTLookup;

.field nbAllocVectors:I

.field nbEBands:I

.field nbShortMdcts:I

.field overlap:I

.field preemph:[I

.field shortMdctSize:I

.field window:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 73
    new-instance v0, Lio/github/jaredmdobson/concentus/CeltMode;

    invoke-direct {v0}, Lio/github/jaredmdobson/concentus/CeltMode;-><init>()V

    sput-object v0, Lio/github/jaredmdobson/concentus/CeltMode;->mode48000_960_120:Lio/github/jaredmdobson/concentus/CeltMode;

    const v1, 0xbb80

    .line 76
    iput v1, v0, Lio/github/jaredmdobson/concentus/CeltMode;->Fs:I

    const/16 v1, 0x78

    .line 77
    iput v1, v0, Lio/github/jaredmdobson/concentus/CeltMode;->overlap:I

    const/16 v2, 0x15

    .line 78
    iput v2, v0, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    .line 79
    iput v2, v0, Lio/github/jaredmdobson/concentus/CeltMode;->effEBands:I

    const/16 v2, 0x1000

    const/16 v3, 0x2000

    const/16 v4, 0x6ccd

    const/4 v5, 0x0

    .line 80
    filled-new-array {v4, v5, v2, v3}, [I

    move-result-object v2

    iput-object v2, v0, Lio/github/jaredmdobson/concentus/CeltMode;->preemph:[I

    .line 81
    sget-object v2, Lio/github/jaredmdobson/concentus/CeltTables;->eband5ms:[S

    iput-object v2, v0, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    const/4 v2, 0x3

    .line 82
    iput v2, v0, Lio/github/jaredmdobson/concentus/CeltMode;->maxLM:I

    const/16 v3, 0x8

    .line 83
    iput v3, v0, Lio/github/jaredmdobson/concentus/CeltMode;->nbShortMdcts:I

    .line 84
    iput v1, v0, Lio/github/jaredmdobson/concentus/CeltMode;->shortMdctSize:I

    const/16 v1, 0xb

    .line 85
    iput v1, v0, Lio/github/jaredmdobson/concentus/CeltMode;->nbAllocVectors:I

    .line 86
    sget-object v1, Lio/github/jaredmdobson/concentus/CeltTables;->band_allocation:[S

    iput-object v1, v0, Lio/github/jaredmdobson/concentus/CeltMode;->allocVectors:[S

    .line 87
    sget-object v1, Lio/github/jaredmdobson/concentus/CeltTables;->logN400:[S

    iput-object v1, v0, Lio/github/jaredmdobson/concentus/CeltMode;->logN:[S

    .line 88
    sget-object v1, Lio/github/jaredmdobson/concentus/CeltTables;->window120:[I

    iput-object v1, v0, Lio/github/jaredmdobson/concentus/CeltMode;->window:[I

    .line 89
    new-instance v1, Lio/github/jaredmdobson/concentus/MDCTLookup;

    invoke-direct {v1}, Lio/github/jaredmdobson/concentus/MDCTLookup;-><init>()V

    iput-object v1, v0, Lio/github/jaredmdobson/concentus/CeltMode;->mdct:Lio/github/jaredmdobson/concentus/MDCTLookup;

    const/16 v3, 0x780

    .line 91
    iput v3, v1, Lio/github/jaredmdobson/concentus/MDCTLookup;->n:I

    .line 92
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/CeltMode;->mdct:Lio/github/jaredmdobson/concentus/MDCTLookup;

    iput v2, v1, Lio/github/jaredmdobson/concentus/MDCTLookup;->maxshift:I

    .line 93
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/CeltMode;->mdct:Lio/github/jaredmdobson/concentus/MDCTLookup;

    const/4 v3, 0x4

    new-array v3, v3, [Lio/github/jaredmdobson/concentus/FFTState;

    sget-object v4, Lio/github/jaredmdobson/concentus/CeltTables;->fft_state48000_960_0:Lio/github/jaredmdobson/concentus/FFTState;

    aput-object v4, v3, v5

    const/4 v4, 0x1

    sget-object v5, Lio/github/jaredmdobson/concentus/CeltTables;->fft_state48000_960_1:Lio/github/jaredmdobson/concentus/FFTState;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Lio/github/jaredmdobson/concentus/CeltTables;->fft_state48000_960_2:Lio/github/jaredmdobson/concentus/FFTState;

    aput-object v5, v3, v4

    sget-object v4, Lio/github/jaredmdobson/concentus/CeltTables;->fft_state48000_960_3:Lio/github/jaredmdobson/concentus/FFTState;

    aput-object v4, v3, v2

    iput-object v3, v1, Lio/github/jaredmdobson/concentus/MDCTLookup;->kfft:[Lio/github/jaredmdobson/concentus/FFTState;

    .line 99
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/CeltMode;->mdct:Lio/github/jaredmdobson/concentus/MDCTLookup;

    sget-object v2, Lio/github/jaredmdobson/concentus/CeltTables;->mdct_twiddles960:[S

    iput-object v2, v1, Lio/github/jaredmdobson/concentus/MDCTLookup;->trig:[S

    .line 100
    new-instance v1, Lio/github/jaredmdobson/concentus/PulseCache;

    invoke-direct {v1}, Lio/github/jaredmdobson/concentus/PulseCache;-><init>()V

    iput-object v1, v0, Lio/github/jaredmdobson/concentus/CeltMode;->cache:Lio/github/jaredmdobson/concentus/PulseCache;

    const/16 v2, 0x188

    .line 101
    iput v2, v1, Lio/github/jaredmdobson/concentus/PulseCache;->size:I

    .line 102
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/CeltMode;->cache:Lio/github/jaredmdobson/concentus/PulseCache;

    sget-object v2, Lio/github/jaredmdobson/concentus/CeltTables;->cache_index50:[S

    iput-object v2, v1, Lio/github/jaredmdobson/concentus/PulseCache;->index:[S

    .line 103
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/CeltMode;->cache:Lio/github/jaredmdobson/concentus/PulseCache;

    sget-object v2, Lio/github/jaredmdobson/concentus/CeltTables;->cache_bits50:[S

    iput-object v2, v1, Lio/github/jaredmdobson/concentus/PulseCache;->bits:[S

    .line 104
    iget-object v0, v0, Lio/github/jaredmdobson/concentus/CeltMode;->cache:Lio/github/jaredmdobson/concentus/PulseCache;

    sget-object v1, Lio/github/jaredmdobson/concentus/CeltTables;->cache_caps50:[S

    iput-object v1, v0, Lio/github/jaredmdobson/concentus/PulseCache;->caps:[S

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltMode;->Fs:I

    .line 40
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltMode;->overlap:I

    .line 42
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    .line 43
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltMode;->effEBands:I

    .line 44
    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v1

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/CeltMode;->preemph:[I

    const/4 v1, 0x0

    .line 49
    iput-object v1, p0, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    .line 51
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltMode;->maxLM:I

    .line 52
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltMode;->nbShortMdcts:I

    .line 53
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltMode;->shortMdctSize:I

    .line 58
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltMode;->nbAllocVectors:I

    .line 63
    iput-object v1, p0, Lio/github/jaredmdobson/concentus/CeltMode;->allocVectors:[S

    .line 64
    iput-object v1, p0, Lio/github/jaredmdobson/concentus/CeltMode;->logN:[S

    .line 66
    iput-object v1, p0, Lio/github/jaredmdobson/concentus/CeltMode;->window:[I

    .line 67
    new-instance v0, Lio/github/jaredmdobson/concentus/MDCTLookup;

    invoke-direct {v0}, Lio/github/jaredmdobson/concentus/MDCTLookup;-><init>()V

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/CeltMode;->mdct:Lio/github/jaredmdobson/concentus/MDCTLookup;

    .line 68
    new-instance v0, Lio/github/jaredmdobson/concentus/PulseCache;

    invoke-direct {v0}, Lio/github/jaredmdobson/concentus/PulseCache;-><init>()V

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/CeltMode;->cache:Lio/github/jaredmdobson/concentus/PulseCache;

    return-void
.end method
