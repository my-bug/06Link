.class Lio/github/jaredmdobson/concentus/TOCStruct;
.super Ljava/lang/Object;
.source "TOCStruct.java"


# instance fields
.field VADFlag:I

.field final VADFlags:[I

.field inbandFECFlag:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lio/github/jaredmdobson/concentus/TOCStruct;->VADFlag:I

    const/4 v1, 0x3

    .line 47
    new-array v1, v1, [I

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/TOCStruct;->VADFlags:[I

    .line 52
    iput v0, p0, Lio/github/jaredmdobson/concentus/TOCStruct;->inbandFECFlag:I

    return-void
.end method


# virtual methods
.method Reset()V
    .locals 3

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lio/github/jaredmdobson/concentus/TOCStruct;->VADFlag:I

    .line 56
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/TOCStruct;->VADFlags:[I

    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 57
    iput v0, p0, Lio/github/jaredmdobson/concentus/TOCStruct;->inbandFECFlag:I

    return-void
.end method
