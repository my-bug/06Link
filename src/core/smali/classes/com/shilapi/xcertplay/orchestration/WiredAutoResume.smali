.class public final Lcom/shilapi/xcertplay/orchestration/WiredAutoResume;
.super Ljava/lang/Object;
.source "UsbPresenceTracker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/orchestration/WiredAutoResume$Action;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUsbPresenceTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UsbPresenceTracker.kt\ncom/shilapi/xcertplay/orchestration/WiredAutoResume\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,153:1\n1#2:154\n1788#3,4:155\n*S KotlinDebug\n*F\n+ 1 UsbPresenceTracker.kt\ncom/shilapi/xcertplay/orchestration/WiredAutoResume\n*L\n151#1:155,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0019B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J&\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u0005J,\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0011J\u001c\u0010\u0015\u001a\u00020\u00052\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00172\u0006\u0010\u0018\u001a\u00020\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/orchestration/WiredAutoResume;",
        "",
        "<init>",
        "()V",
        "MAX_AUTO_RESUMES",
        "",
        "WINDOW_MILLIS",
        "",
        "onAttach",
        "Lcom/shilapi/xcertplay/orchestration/WiredAutoResume$Action;",
        "stopped",
        "",
        "change",
        "Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker$Change;",
        "unstable",
        "recentResumes",
        "problemAfterAttach",
        "Lcom/shilapi/xcertplay/orchestration/SetupProblem;",
        "action",
        "shown",
        "stopProblem",
        "recent",
        "resumeTimes",
        "",
        "nowMillis",
        "Action",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/orchestration/WiredAutoResume;

.field public static final MAX_AUTO_RESUMES:I = 0x2

.field public static final WINDOW_MILLIS:J = 0x1d4c0L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/orchestration/WiredAutoResume;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/orchestration/WiredAutoResume;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/orchestration/WiredAutoResume;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/WiredAutoResume;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAttach(ZLcom/shilapi/xcertplay/orchestration/UsbPresenceTracker$Change;ZI)Lcom/shilapi/xcertplay/orchestration/WiredAutoResume$Action;
    .locals 1

    const-string v0, "change"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 130
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/WiredAutoResume$Action;->IGNORE:Lcom/shilapi/xcertplay/orchestration/WiredAutoResume$Action;

    return-object p1

    :cond_0
    if-eqz p3, :cond_1

    .line 131
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/WiredAutoResume$Action;->SHOW_UNSTABLE:Lcom/shilapi/xcertplay/orchestration/WiredAutoResume$Action;

    return-object p1

    .line 132
    :cond_1
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker$Change;->PLUGGED_IN:Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker$Change;

    if-eq p2, p1, :cond_2

    sget-object p1, Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker$Change;->REPLUGGED:Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker$Change;

    if-eq p2, p1, :cond_2

    sget-object p1, Lcom/shilapi/xcertplay/orchestration/WiredAutoResume$Action;->IGNORE:Lcom/shilapi/xcertplay/orchestration/WiredAutoResume$Action;

    return-object p1

    :cond_2
    const/4 p1, 0x2

    if-lt p4, p1, :cond_3

    .line 133
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/WiredAutoResume$Action;->WAIT_FOR_PERSON:Lcom/shilapi/xcertplay/orchestration/WiredAutoResume$Action;

    return-object p1

    .line 134
    :cond_3
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/WiredAutoResume$Action;->RESTART:Lcom/shilapi/xcertplay/orchestration/WiredAutoResume$Action;

    return-object p1
.end method

.method public final problemAfterAttach(Lcom/shilapi/xcertplay/orchestration/WiredAutoResume$Action;ZLcom/shilapi/xcertplay/orchestration/SetupProblem;Lcom/shilapi/xcertplay/orchestration/SetupProblem;)Lcom/shilapi/xcertplay/orchestration/SetupProblem;
    .locals 2

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/WiredAutoResume$Action;->IGNORE:Lcom/shilapi/xcertplay/orchestration/WiredAutoResume$Action;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/shilapi/xcertplay/orchestration/WiredAutoResume$Action;->WAIT_FOR_PERSON:Lcom/shilapi/xcertplay/orchestration/WiredAutoResume$Action;

    if-eq p1, v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p2, :cond_5

    .line 146
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->IPHONE_LEFT_USB:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    if-eq p3, p1, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p4, :cond_4

    .line 147
    invoke-virtual {p4}, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->getStopsRetry()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move-object p4, v1

    :goto_0
    if-nez p4, :cond_3

    goto :goto_1

    :cond_3
    return-object p4

    :cond_4
    :goto_1
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->RETRIES_STOPPED:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    return-object p1

    :cond_5
    :goto_2
    return-object v1
.end method

.method public final recent(Ljava/util/List;J)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;J)I"
        }
    .end annotation

    const-string v0, "resumeTimes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    check-cast p1, Ljava/lang/Iterable;

    .line 155
    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 157
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    sub-long v2, p2, v2

    const-wide/32 v4, 0x1d4c0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    if-gez v1, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    goto :goto_0

    :cond_2
    return v1
.end method
