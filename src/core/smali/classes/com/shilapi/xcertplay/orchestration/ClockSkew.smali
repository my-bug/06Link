.class public final Lcom/shilapi/xcertplay/orchestration/ClockSkew;
.super Ljava/lang/Object;
.source "ClockSkew.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/orchestration/ClockSkew$Assessment;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u000fB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0005J\u0016\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u0005J\u0016\u0010\r\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/orchestration/ClockSkew;",
        "",
        "<init>",
        "()V",
        "MIN_REASONABLE_WALL_MS",
        "",
        "MAX_REASONABLE_WALL_MS",
        "assess",
        "Lcom/shilapi/xcertplay/orchestration/ClockSkew$Assessment;",
        "wallClockMs",
        "remaining",
        "deadlineElapsedMs",
        "nowElapsedMs",
        "deadline",
        "timeoutMs",
        "Assessment",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/orchestration/ClockSkew;

.field public static final MAX_REASONABLE_WALL_MS:J = 0x1f3a29bcc00L

.field public static final MIN_REASONABLE_WALL_MS:J = 0x14aa2cab000L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/orchestration/ClockSkew;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/orchestration/ClockSkew;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/orchestration/ClockSkew;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/ClockSkew;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final assess(J)Lcom/shilapi/xcertplay/orchestration/ClockSkew$Assessment;
    .locals 3

    const-wide v0, 0x14aa2cab000L

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    const-wide v0, 0x1f3a29bcc00L

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    new-instance p1, Lcom/shilapi/xcertplay/orchestration/ClockSkew$Assessment;

    const-string p2, ""

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Lcom/shilapi/xcertplay/orchestration/ClockSkew$Assessment;-><init>(ZLjava/lang/String;Z)V

    return-object p1

    .line 26
    :cond_1
    :goto_0
    new-instance v0, Lcom/shilapi/xcertplay/orchestration/ClockSkew$Assessment;

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "head-unit wall clock looks wrong (wallMs="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "); timeouts use elapsedRealtime; cert date checks tolerated"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    .line 26
    invoke-direct {v0, p2, p1, p2}, Lcom/shilapi/xcertplay/orchestration/ClockSkew$Assessment;-><init>(ZLjava/lang/String;Z)V

    return-object v0
.end method

.method public final deadline(JJ)J
    .locals 2

    const-wide/16 v0, 0x0

    .line 37
    invoke-static {p3, p4, v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide p3

    add-long/2addr p1, p3

    return-wide p1
.end method

.method public final remaining(JJ)J
    .locals 0

    sub-long/2addr p1, p3

    const-wide/16 p3, 0x0

    .line 35
    invoke-static {p1, p2, p3, p4}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide p1

    return-wide p1
.end method
