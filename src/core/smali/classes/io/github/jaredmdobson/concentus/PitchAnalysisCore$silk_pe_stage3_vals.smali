.class Lio/github/jaredmdobson/concentus/PitchAnalysisCore$silk_pe_stage3_vals;
.super Ljava/lang/Object;
.source "PitchAnalysisCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/jaredmdobson/concentus/PitchAnalysisCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "silk_pe_stage3_vals"
.end annotation


# instance fields
.field public final Values:[I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 53
    new-array v0, v0, [I

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/PitchAnalysisCore$silk_pe_stage3_vals;->Values:[I

    return-void
.end method
