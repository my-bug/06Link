.class Lio/github/jaredmdobson/concentus/VorbisLayout;
.super Ljava/lang/Object;
.source "VorbisLayout.java"


# static fields
.field static final vorbis_mappings:[Lio/github/jaredmdobson/concentus/VorbisLayout;


# instance fields
.field mapping:[S

.field nb_coupled_streams:I

.field nb_streams:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 50
    new-instance v0, Lio/github/jaredmdobson/concentus/VorbisLayout;

    const/4 v1, 0x1

    new-array v2, v1, [S

    const/4 v3, 0x0

    aput-short v3, v2, v3

    invoke-direct {v0, v1, v3, v2}, Lio/github/jaredmdobson/concentus/VorbisLayout;-><init>(II[S)V

    new-instance v2, Lio/github/jaredmdobson/concentus/VorbisLayout;

    const/4 v4, 0x2

    new-array v5, v4, [S

    fill-array-data v5, :array_0

    invoke-direct {v2, v1, v1, v5}, Lio/github/jaredmdobson/concentus/VorbisLayout;-><init>(II[S)V

    new-instance v5, Lio/github/jaredmdobson/concentus/VorbisLayout;

    const/4 v6, 0x3

    new-array v7, v6, [S

    fill-array-data v7, :array_1

    invoke-direct {v5, v4, v1, v7}, Lio/github/jaredmdobson/concentus/VorbisLayout;-><init>(II[S)V

    new-instance v7, Lio/github/jaredmdobson/concentus/VorbisLayout;

    const/4 v8, 0x4

    new-array v9, v8, [S

    fill-array-data v9, :array_2

    invoke-direct {v7, v4, v4, v9}, Lio/github/jaredmdobson/concentus/VorbisLayout;-><init>(II[S)V

    new-instance v9, Lio/github/jaredmdobson/concentus/VorbisLayout;

    const/4 v10, 0x5

    new-array v11, v10, [S

    fill-array-data v11, :array_3

    invoke-direct {v9, v6, v4, v11}, Lio/github/jaredmdobson/concentus/VorbisLayout;-><init>(II[S)V

    new-instance v11, Lio/github/jaredmdobson/concentus/VorbisLayout;

    const/4 v12, 0x6

    new-array v13, v12, [S

    fill-array-data v13, :array_4

    invoke-direct {v11, v8, v4, v13}, Lio/github/jaredmdobson/concentus/VorbisLayout;-><init>(II[S)V

    new-instance v13, Lio/github/jaredmdobson/concentus/VorbisLayout;

    const/4 v14, 0x7

    new-array v15, v14, [S

    fill-array-data v15, :array_5

    invoke-direct {v13, v8, v6, v15}, Lio/github/jaredmdobson/concentus/VorbisLayout;-><init>(II[S)V

    new-instance v15, Lio/github/jaredmdobson/concentus/VorbisLayout;

    const/16 v16, 0x1

    const/16 v1, 0x8

    const/16 v17, 0x0

    new-array v3, v1, [S

    fill-array-data v3, :array_6

    invoke-direct {v15, v10, v6, v3}, Lio/github/jaredmdobson/concentus/VorbisLayout;-><init>(II[S)V

    new-array v1, v1, [Lio/github/jaredmdobson/concentus/VorbisLayout;

    aput-object v0, v1, v17

    aput-object v2, v1, v16

    aput-object v5, v1, v4

    aput-object v7, v1, v6

    aput-object v9, v1, v8

    aput-object v11, v1, v10

    aput-object v13, v1, v12

    aput-object v15, v1, v14

    sput-object v1, Lio/github/jaredmdobson/concentus/VorbisLayout;->vorbis_mappings:[Lio/github/jaredmdobson/concentus/VorbisLayout;

    return-void

    :array_0
    .array-data 2
        0x0s
        0x1s
    .end array-data

    :array_1
    .array-data 2
        0x0s
        0x2s
        0x1s
    .end array-data

    nop

    :array_2
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x3s
    .end array-data

    :array_3
    .array-data 2
        0x0s
        0x4s
        0x1s
        0x2s
        0x3s
    .end array-data

    nop

    :array_4
    .array-data 2
        0x0s
        0x4s
        0x1s
        0x2s
        0x3s
        0x5s
    .end array-data

    :array_5
    .array-data 2
        0x0s
        0x4s
        0x1s
        0x2s
        0x3s
        0x5s
        0x6s
    .end array-data

    nop

    :array_6
    .array-data 2
        0x0s
        0x6s
        0x1s
        0x2s
        0x3s
        0x4s
        0x5s
        0x7s
    .end array-data
.end method

.method constructor <init>(II[S)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lio/github/jaredmdobson/concentus/VorbisLayout;->nb_streams:I

    .line 41
    iput p2, p0, Lio/github/jaredmdobson/concentus/VorbisLayout;->nb_coupled_streams:I

    .line 42
    iput-object p3, p0, Lio/github/jaredmdobson/concentus/VorbisLayout;->mapping:[S

    return-void
.end method
