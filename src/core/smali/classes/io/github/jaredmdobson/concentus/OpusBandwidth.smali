.class public final enum Lio/github/jaredmdobson/concentus/OpusBandwidth;
.super Ljava/lang/Enum;
.source "OpusBandwidth.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/github/jaredmdobson/concentus/OpusBandwidth;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/github/jaredmdobson/concentus/OpusBandwidth;

.field public static final enum OPUS_BANDWIDTH_AUTO:Lio/github/jaredmdobson/concentus/OpusBandwidth;

.field public static final enum OPUS_BANDWIDTH_FULLBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

.field public static final enum OPUS_BANDWIDTH_MEDIUMBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

.field public static final enum OPUS_BANDWIDTH_NARROWBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

.field public static final enum OPUS_BANDWIDTH_SUPERWIDEBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

.field public static final enum OPUS_BANDWIDTH_UNKNOWN:Lio/github/jaredmdobson/concentus/OpusBandwidth;

.field public static final enum OPUS_BANDWIDTH_WIDEBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 44
    new-instance v0, Lio/github/jaredmdobson/concentus/OpusBandwidth;

    const-string v1, "OPUS_BANDWIDTH_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/github/jaredmdobson/concentus/OpusBandwidth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_UNKNOWN:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    .line 45
    new-instance v1, Lio/github/jaredmdobson/concentus/OpusBandwidth;

    const-string v3, "OPUS_BANDWIDTH_AUTO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/github/jaredmdobson/concentus/OpusBandwidth;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_AUTO:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    .line 46
    new-instance v3, Lio/github/jaredmdobson/concentus/OpusBandwidth;

    const-string v5, "OPUS_BANDWIDTH_NARROWBAND"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/github/jaredmdobson/concentus/OpusBandwidth;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_NARROWBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    .line 47
    new-instance v5, Lio/github/jaredmdobson/concentus/OpusBandwidth;

    const-string v7, "OPUS_BANDWIDTH_MEDIUMBAND"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/github/jaredmdobson/concentus/OpusBandwidth;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_MEDIUMBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    .line 48
    new-instance v7, Lio/github/jaredmdobson/concentus/OpusBandwidth;

    const-string v9, "OPUS_BANDWIDTH_WIDEBAND"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lio/github/jaredmdobson/concentus/OpusBandwidth;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_WIDEBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    .line 49
    new-instance v9, Lio/github/jaredmdobson/concentus/OpusBandwidth;

    const-string v11, "OPUS_BANDWIDTH_SUPERWIDEBAND"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lio/github/jaredmdobson/concentus/OpusBandwidth;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_SUPERWIDEBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    .line 50
    new-instance v11, Lio/github/jaredmdobson/concentus/OpusBandwidth;

    const-string v13, "OPUS_BANDWIDTH_FULLBAND"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lio/github/jaredmdobson/concentus/OpusBandwidth;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_FULLBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    const/4 v13, 0x7

    .line 43
    new-array v13, v13, [Lio/github/jaredmdobson/concentus/OpusBandwidth;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lio/github/jaredmdobson/concentus/OpusBandwidth;->$VALUES:[Lio/github/jaredmdobson/concentus/OpusBandwidth;

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

.method public static valueOf(Ljava/lang/String;)Lio/github/jaredmdobson/concentus/OpusBandwidth;
    .locals 1

    .line 43
    const-class v0, Lio/github/jaredmdobson/concentus/OpusBandwidth;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/github/jaredmdobson/concentus/OpusBandwidth;

    return-object p0
.end method

.method public static values()[Lio/github/jaredmdobson/concentus/OpusBandwidth;
    .locals 1

    .line 43
    sget-object v0, Lio/github/jaredmdobson/concentus/OpusBandwidth;->$VALUES:[Lio/github/jaredmdobson/concentus/OpusBandwidth;

    invoke-virtual {v0}, [Lio/github/jaredmdobson/concentus/OpusBandwidth;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/github/jaredmdobson/concentus/OpusBandwidth;

    return-object v0
.end method
