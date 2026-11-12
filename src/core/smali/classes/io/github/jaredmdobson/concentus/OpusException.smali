.class public Lio/github/jaredmdobson/concentus/OpusException;
.super Ljava/lang/Exception;
.source "OpusException.java"


# instance fields
.field private _message:Ljava/lang/String;

.field private _opus_error_code:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 53
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/github/jaredmdobson/concentus/OpusException;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 62
    invoke-direct {p0, p1, v0}, Lio/github/jaredmdobson/concentus/OpusException;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lio/github/jaredmdobson/concentus/CodecHelpers;->opus_strerror(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/github/jaredmdobson/concentus/OpusException;->_message:Ljava/lang/String;

    .line 73
    iput p2, p0, Lio/github/jaredmdobson/concentus/OpusException;->_opus_error_code:I

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusException;->_message:Ljava/lang/String;

    return-object v0
.end method
