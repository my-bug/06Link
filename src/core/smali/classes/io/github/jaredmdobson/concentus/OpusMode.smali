.class public final enum Lio/github/jaredmdobson/concentus/OpusMode;
.super Ljava/lang/Enum;
.source "OpusMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/github/jaredmdobson/concentus/OpusMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/github/jaredmdobson/concentus/OpusMode;

.field public static final enum MODE_AUTO:Lio/github/jaredmdobson/concentus/OpusMode;

.field public static final enum MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

.field public static final enum MODE_HYBRID:Lio/github/jaredmdobson/concentus/OpusMode;

.field public static final enum MODE_SILK_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

.field public static final enum MODE_UNKNOWN:Lio/github/jaredmdobson/concentus/OpusMode;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 44
    new-instance v0, Lio/github/jaredmdobson/concentus/OpusMode;

    const-string v1, "MODE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/github/jaredmdobson/concentus/OpusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_UNKNOWN:Lio/github/jaredmdobson/concentus/OpusMode;

    .line 45
    new-instance v1, Lio/github/jaredmdobson/concentus/OpusMode;

    const-string v3, "MODE_AUTO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/github/jaredmdobson/concentus/OpusMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_AUTO:Lio/github/jaredmdobson/concentus/OpusMode;

    .line 46
    new-instance v3, Lio/github/jaredmdobson/concentus/OpusMode;

    const-string v5, "MODE_SILK_ONLY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/github/jaredmdobson/concentus/OpusMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_SILK_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    .line 47
    new-instance v5, Lio/github/jaredmdobson/concentus/OpusMode;

    const-string v7, "MODE_HYBRID"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/github/jaredmdobson/concentus/OpusMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_HYBRID:Lio/github/jaredmdobson/concentus/OpusMode;

    .line 48
    new-instance v7, Lio/github/jaredmdobson/concentus/OpusMode;

    const-string v9, "MODE_CELT_ONLY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lio/github/jaredmdobson/concentus/OpusMode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    const/4 v9, 0x5

    .line 43
    new-array v9, v9, [Lio/github/jaredmdobson/concentus/OpusMode;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lio/github/jaredmdobson/concentus/OpusMode;->$VALUES:[Lio/github/jaredmdobson/concentus/OpusMode;

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

.method public static valueOf(Ljava/lang/String;)Lio/github/jaredmdobson/concentus/OpusMode;
    .locals 1

    .line 43
    const-class v0, Lio/github/jaredmdobson/concentus/OpusMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/github/jaredmdobson/concentus/OpusMode;

    return-object p0
.end method

.method public static values()[Lio/github/jaredmdobson/concentus/OpusMode;
    .locals 1

    .line 43
    sget-object v0, Lio/github/jaredmdobson/concentus/OpusMode;->$VALUES:[Lio/github/jaredmdobson/concentus/OpusMode;

    invoke-virtual {v0}, [Lio/github/jaredmdobson/concentus/OpusMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/github/jaredmdobson/concentus/OpusMode;

    return-object v0
.end method
