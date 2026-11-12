.class Lio/github/jaredmdobson/concentus/MDCTLookup;
.super Ljava/lang/Object;
.source "MDCTLookup.java"


# instance fields
.field kfft:[Lio/github/jaredmdobson/concentus/FFTState;

.field maxshift:I

.field n:I

.field trig:[S


# direct methods
.method constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lio/github/jaredmdobson/concentus/MDCTLookup;->n:I

    .line 41
    iput v0, p0, Lio/github/jaredmdobson/concentus/MDCTLookup;->maxshift:I

    const/4 v0, 0x4

    .line 44
    new-array v0, v0, [Lio/github/jaredmdobson/concentus/FFTState;

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/MDCTLookup;->kfft:[Lio/github/jaredmdobson/concentus/FFTState;

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lio/github/jaredmdobson/concentus/MDCTLookup;->trig:[S

    return-void
.end method
