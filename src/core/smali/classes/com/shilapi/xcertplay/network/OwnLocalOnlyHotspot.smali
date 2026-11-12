.class public final Lcom/shilapi/xcertplay/network/OwnLocalOnlyHotspot;
.super Ljava/lang/Object;
.source "LocalOnlyHotspotManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\r\u0010\u0006\u001a\u00020\u0007H\u0000\u00a2\u0006\u0002\u0008\u0008J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/OwnLocalOnlyHotspot;",
        "",
        "<init>",
        "()V",
        "releasedAtNanos",
        "",
        "released",
        "",
        "released$shared_release",
        "releasedWithin",
        "",
        "millis",
        "nowNanos",
        "shared_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/shilapi/xcertplay/network/OwnLocalOnlyHotspot;

.field private static volatile releasedAtNanos:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/network/OwnLocalOnlyHotspot;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/network/OwnLocalOnlyHotspot;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/network/OwnLocalOnlyHotspot;->INSTANCE:Lcom/shilapi/xcertplay/network/OwnLocalOnlyHotspot;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 903
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic releasedWithin$default(Lcom/shilapi/xcertplay/network/OwnLocalOnlyHotspot;JJILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    .line 909
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p3

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/network/OwnLocalOnlyHotspot;->releasedWithin(JJ)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final released$shared_release()V
    .locals 2

    .line 906
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/shilapi/xcertplay/network/OwnLocalOnlyHotspot;->releasedAtNanos:J

    return-void
.end method

.method public final releasedWithin(JJ)Z
    .locals 5

    .line 910
    sget-wide v0, Lcom/shilapi/xcertplay/network/OwnLocalOnlyHotspot;->releasedAtNanos:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    sget-wide v0, Lcom/shilapi/xcertplay/network/OwnLocalOnlyHotspot;->releasedAtNanos:J

    sub-long/2addr p3, v0

    cmp-long v0, v2, p3

    if-gtz v0, :cond_0

    cmp-long v0, p3, p1

    if-gtz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
