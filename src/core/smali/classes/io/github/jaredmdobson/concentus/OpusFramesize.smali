.class public final enum Lio/github/jaredmdobson/concentus/OpusFramesize;
.super Ljava/lang/Enum;
.source "OpusFramesize.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/github/jaredmdobson/concentus/OpusFramesize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/github/jaredmdobson/concentus/OpusFramesize;

.field public static final enum OPUS_FRAMESIZE_10_MS:Lio/github/jaredmdobson/concentus/OpusFramesize;

.field public static final enum OPUS_FRAMESIZE_20_MS:Lio/github/jaredmdobson/concentus/OpusFramesize;

.field public static final enum OPUS_FRAMESIZE_2_5_MS:Lio/github/jaredmdobson/concentus/OpusFramesize;

.field public static final enum OPUS_FRAMESIZE_40_MS:Lio/github/jaredmdobson/concentus/OpusFramesize;

.field public static final enum OPUS_FRAMESIZE_5_MS:Lio/github/jaredmdobson/concentus/OpusFramesize;

.field public static final enum OPUS_FRAMESIZE_60_MS:Lio/github/jaredmdobson/concentus/OpusFramesize;

.field public static final enum OPUS_FRAMESIZE_ARG:Lio/github/jaredmdobson/concentus/OpusFramesize;

.field public static final enum OPUS_FRAMESIZE_UNKNOWN:Lio/github/jaredmdobson/concentus/OpusFramesize;

.field public static final enum OPUS_FRAMESIZE_VARIABLE:Lio/github/jaredmdobson/concentus/OpusFramesize;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 47
    new-instance v0, Lio/github/jaredmdobson/concentus/OpusFramesize;

    const-string v1, "OPUS_FRAMESIZE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/github/jaredmdobson/concentus/OpusFramesize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/jaredmdobson/concentus/OpusFramesize;->OPUS_FRAMESIZE_UNKNOWN:Lio/github/jaredmdobson/concentus/OpusFramesize;

    .line 51
    new-instance v1, Lio/github/jaredmdobson/concentus/OpusFramesize;

    const-string v3, "OPUS_FRAMESIZE_ARG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/github/jaredmdobson/concentus/OpusFramesize;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/github/jaredmdobson/concentus/OpusFramesize;->OPUS_FRAMESIZE_ARG:Lio/github/jaredmdobson/concentus/OpusFramesize;

    .line 55
    new-instance v3, Lio/github/jaredmdobson/concentus/OpusFramesize;

    const-string v5, "OPUS_FRAMESIZE_2_5_MS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/github/jaredmdobson/concentus/OpusFramesize;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/github/jaredmdobson/concentus/OpusFramesize;->OPUS_FRAMESIZE_2_5_MS:Lio/github/jaredmdobson/concentus/OpusFramesize;

    .line 59
    new-instance v5, Lio/github/jaredmdobson/concentus/OpusFramesize;

    const-string v7, "OPUS_FRAMESIZE_5_MS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/github/jaredmdobson/concentus/OpusFramesize;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/github/jaredmdobson/concentus/OpusFramesize;->OPUS_FRAMESIZE_5_MS:Lio/github/jaredmdobson/concentus/OpusFramesize;

    .line 63
    new-instance v7, Lio/github/jaredmdobson/concentus/OpusFramesize;

    const-string v9, "OPUS_FRAMESIZE_10_MS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lio/github/jaredmdobson/concentus/OpusFramesize;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/github/jaredmdobson/concentus/OpusFramesize;->OPUS_FRAMESIZE_10_MS:Lio/github/jaredmdobson/concentus/OpusFramesize;

    .line 67
    new-instance v9, Lio/github/jaredmdobson/concentus/OpusFramesize;

    const-string v11, "OPUS_FRAMESIZE_20_MS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lio/github/jaredmdobson/concentus/OpusFramesize;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lio/github/jaredmdobson/concentus/OpusFramesize;->OPUS_FRAMESIZE_20_MS:Lio/github/jaredmdobson/concentus/OpusFramesize;

    .line 71
    new-instance v11, Lio/github/jaredmdobson/concentus/OpusFramesize;

    const-string v13, "OPUS_FRAMESIZE_40_MS"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lio/github/jaredmdobson/concentus/OpusFramesize;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lio/github/jaredmdobson/concentus/OpusFramesize;->OPUS_FRAMESIZE_40_MS:Lio/github/jaredmdobson/concentus/OpusFramesize;

    .line 75
    new-instance v13, Lio/github/jaredmdobson/concentus/OpusFramesize;

    const-string v15, "OPUS_FRAMESIZE_60_MS"

    const/16 v16, 0x0

    const/4 v2, 0x7

    invoke-direct {v13, v15, v2}, Lio/github/jaredmdobson/concentus/OpusFramesize;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lio/github/jaredmdobson/concentus/OpusFramesize;->OPUS_FRAMESIZE_60_MS:Lio/github/jaredmdobson/concentus/OpusFramesize;

    .line 79
    new-instance v15, Lio/github/jaredmdobson/concentus/OpusFramesize;

    const/16 v17, 0x7

    const-string v2, "OPUS_FRAMESIZE_VARIABLE"

    const/16 v18, 0x1

    const/16 v4, 0x8

    invoke-direct {v15, v2, v4}, Lio/github/jaredmdobson/concentus/OpusFramesize;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lio/github/jaredmdobson/concentus/OpusFramesize;->OPUS_FRAMESIZE_VARIABLE:Lio/github/jaredmdobson/concentus/OpusFramesize;

    const/16 v2, 0x9

    .line 43
    new-array v2, v2, [Lio/github/jaredmdobson/concentus/OpusFramesize;

    aput-object v0, v2, v16

    aput-object v1, v2, v18

    aput-object v3, v2, v6

    aput-object v5, v2, v8

    aput-object v7, v2, v10

    aput-object v9, v2, v12

    aput-object v11, v2, v14

    aput-object v13, v2, v17

    aput-object v15, v2, v4

    sput-object v2, Lio/github/jaredmdobson/concentus/OpusFramesize;->$VALUES:[Lio/github/jaredmdobson/concentus/OpusFramesize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/github/jaredmdobson/concentus/OpusFramesize;
    .locals 1

    .line 43
    const-class v0, Lio/github/jaredmdobson/concentus/OpusFramesize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/github/jaredmdobson/concentus/OpusFramesize;

    return-object p0
.end method

.method public static values()[Lio/github/jaredmdobson/concentus/OpusFramesize;
    .locals 1

    .line 43
    sget-object v0, Lio/github/jaredmdobson/concentus/OpusFramesize;->$VALUES:[Lio/github/jaredmdobson/concentus/OpusFramesize;

    invoke-virtual {v0}, [Lio/github/jaredmdobson/concentus/OpusFramesize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/github/jaredmdobson/concentus/OpusFramesize;

    return-object v0
.end method
