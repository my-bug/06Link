.class public final Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker;
.super Ljava/lang/Object;
.source "UsbPresenceTracker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker$Change;,
        Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUsbPresenceTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UsbPresenceTracker.kt\ncom/shilapi/xcertplay/orchestration/UsbPresenceTracker\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,153:1\n1#2:154\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000  2\u00020\u0001:\u0002\u001f B%\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\tJ\u000e\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0003J\u0006\u0010\u0017\u001a\u00020\u0013J\u0006\u0010\u0018\u001a\u00020\u0013J\u000e\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0003J\u000e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0016\u001a\u00020\u0003J\u000e\u0010\u001c\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u0003J\u0010\u0010\u001d\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u0003H\u0002J\u0010\u0010\u001e\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0003H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\n\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t@BX\u0086\u000e\u00a2\u0006\n\n\u0002\u0010\r\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\u000e\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker;",
        "",
        "replugMinAbsentMillis",
        "",
        "unstableWindowMillis",
        "expectWindowMillis",
        "<init>",
        "(JJJ)V",
        "value",
        "",
        "present",
        "getPresent",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "detachedAt",
        "expectedAt",
        "shortDrops",
        "Lkotlin/collections/ArrayDeque;",
        "seed",
        "",
        "iphoneOnUsb",
        "expectReenumeration",
        "nowMillis",
        "clearExpectation",
        "reset",
        "detached",
        "attached",
        "Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker$Change;",
        "unstable",
        "expected",
        "prune",
        "Change",
        "Companion",
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
.field public static final Companion:Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker$Companion;

.field public static final EXPECT_WINDOW_MILLIS:J = 0x3a98L

.field public static final REPLUG_MIN_ABSENT_MILLIS:J = 0x7d0L

.field public static final UNSTABLE_SHORT_DROPS:I = 0x2

.field public static final UNSTABLE_WINDOW_MILLIS:J = 0x15f90L


# instance fields
.field private detachedAt:J

.field private final expectWindowMillis:J

.field private expectedAt:J

.field private present:Ljava/lang/Boolean;

.field private final replugMinAbsentMillis:J

.field private final shortDrops:Lkotlin/collections/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/ArrayDeque<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final unstableWindowMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker;->Companion:Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    const/4 v7, 0x7

    const/4 v8, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker;-><init>(JJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-wide p1, p0, Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker;->replugMinAbsentMillis:J

    .line 19
    iput-wide p3, p0, Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker;->unstableWindowMillis:J

    .line 20
    iput-wide p5, p0, Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker;->expectWindowMillis:J

    const-wide/16 p1, -0x1

    .line 27
    iput-wide p1, p0, Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker;->detachedAt:J

    .line 28
    iput-wide p1, p0, Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker;->expectedAt:J

    .line 29
    new-instance p1, Lkotlin/collections/ArrayDeque;

    invoke-direct {p1}, Lkotlin/collections/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker;->shortDrops:Lkotlin/collections/ArrayDeque;

    return-void
.end method

.method public synthetic constructor <init>(JJJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    const-wide/16 p1, 0x7d0

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    const-wide/32 p3, 0x15f90

    :cond_1
    move-wide v3, p3

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    const-wide/16 p5, 0x3a98

    :cond_2
    move-object v0, p0

    move-wide v5, p5

    .line 17
    invoke-direct/range {v0 .. v6}, Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker;-><init>(JJJ)V

    return-void
.end method

.method private final expected(J)Z
    .locals 5

    .line 92
    iget-wide v0, p0, Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker;->expectedAt:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    sub-long/2addr p1, v0

    iget-wide v0, p0, Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker;->expectWindowMillis:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final prune(J)V
    .locals 5

    .line 95
    :goto_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker;->shortDrops:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->firstOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    sub-long v0, p1, v0

    iget-wide v2, p0, Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker;->unstableWindowMillis:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker;->shortDrops:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final attached(J)Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker$Change;
    .locals 5

    .line 62
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker;->present:Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker$Change;->NONE:Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker$Change;

    return-object p1

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker;->present:Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 64
    iput-object v1, p0, Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker;->present:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 65
    iget-wide v0, p0, Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker;->detachedAt:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    goto :goto_0

    :cond_1
    sub-long v0, p1, v0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker;->expected(J)Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 p1, -0x1

    .line 69
    iput-wide p1, p0, Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker;->expectedAt:J

    .line 70
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker$Change;->REENUMERATED_AS_ASKED:Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker$Change;

    return-object p1

    .line 72
    :cond_2
    iget-wide v2, p0, Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker;->replugMinAbsentMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_3

    sget-object p1, Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker$Change;->REPLUGGED:Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker$Change;

    return-object p1

    .line 74
    :cond_3
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker;->shortDrops:Lkotlin/collections/ArrayDeque;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 75
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker$Change;->REENUMERATED:Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker$Change;

    return-object p1

    .line 65
    :cond_4
    :goto_0
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker$Change;->PLUGGED_IN:Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker$Change;

    return-object p1
.end method

.method public final clearExpectation()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 43
    iput-wide v0, p0, Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker;->expectedAt:J

    return-void
.end method

.method public final detached(J)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker;->present:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 57
    :cond_0
    iput-object v1, p0, Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker;->present:Ljava/lang/Boolean;

    .line 58
    iput-wide p1, p0, Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker;->detachedAt:J

    return-void
.end method

.method public final expectReenumeration(J)V
    .locals 0

    .line 38
    iput-wide p1, p0, Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker;->expectedAt:J

    return-void
.end method

.method public final getPresent()Ljava/lang/Boolean;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker;->present:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final reset()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker;->shortDrops:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->clear()V

    const-wide/16 v0, -0x1

    .line 52
    iput-wide v0, p0, Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker;->expectedAt:J

    return-void
.end method

.method public final seed(Z)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker;->present:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker;->present:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method

.method public final unstable(J)Z
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker;->prune(J)V

    .line 89
    iget-object p1, p0, Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker;->shortDrops:Lkotlin/collections/ArrayDeque;

    invoke-virtual {p1}, Lkotlin/collections/ArrayDeque;->size()I

    move-result p1

    const/4 p2, 0x2

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
