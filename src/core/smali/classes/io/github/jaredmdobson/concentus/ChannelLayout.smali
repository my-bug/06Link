.class Lio/github/jaredmdobson/concentus/ChannelLayout;
.super Ljava/lang/Object;
.source "ChannelLayout.java"


# instance fields
.field final mapping:[S

.field nb_channels:I

.field nb_coupled_streams:I

.field nb_streams:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    .line 42
    new-array v0, v0, [S

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/ChannelLayout;->mapping:[S

    return-void
.end method


# virtual methods
.method Reset()V
    .locals 2

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_channels:I

    .line 46
    iput v0, p0, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_streams:I

    .line 47
    iput v0, p0, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_coupled_streams:I

    .line 48
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/ChannelLayout;->mapping:[S

    invoke-static {v1, v0}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([SS)V

    return-void
.end method
