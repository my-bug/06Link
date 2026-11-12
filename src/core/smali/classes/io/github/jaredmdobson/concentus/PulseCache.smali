.class Lio/github/jaredmdobson/concentus/PulseCache;
.super Ljava/lang/Object;
.source "PulseCache.java"


# instance fields
.field bits:[S

.field caps:[S

.field index:[S

.field size:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lio/github/jaredmdobson/concentus/PulseCache;->size:I

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lio/github/jaredmdobson/concentus/PulseCache;->index:[S

    .line 41
    iput-object v0, p0, Lio/github/jaredmdobson/concentus/PulseCache;->bits:[S

    .line 42
    iput-object v0, p0, Lio/github/jaredmdobson/concentus/PulseCache;->caps:[S

    return-void
.end method


# virtual methods
.method Reset()V
    .locals 1

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lio/github/jaredmdobson/concentus/PulseCache;->size:I

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lio/github/jaredmdobson/concentus/PulseCache;->index:[S

    .line 47
    iput-object v0, p0, Lio/github/jaredmdobson/concentus/PulseCache;->bits:[S

    .line 48
    iput-object v0, p0, Lio/github/jaredmdobson/concentus/PulseCache;->caps:[S

    return-void
.end method
