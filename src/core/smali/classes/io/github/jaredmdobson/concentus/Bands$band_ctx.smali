.class public Lio/github/jaredmdobson/concentus/Bands$band_ctx;
.super Ljava/lang/Object;
.source "Bands.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/jaredmdobson/concentus/Bands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "band_ctx"
.end annotation


# instance fields
.field public bandE:[[I

.field public ec:Lio/github/jaredmdobson/concentus/EntropyCoder;

.field public encode:I

.field public i:I

.field public intensity:I

.field public m:Lio/github/jaredmdobson/concentus/CeltMode;

.field public remaining_bits:I

.field public seed:I

.field public spread:I

.field public tf_change:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
