.class public final Lcom/shilapi/xcertplay/HeadUnitCheckSummary;
.super Ljava/lang/Object;
.source "HeadUnitCheckSummary.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/HeadUnitCheckSummary$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHeadUnitCheckSummary.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HeadUnitCheckSummary.kt\ncom/shilapi/xcertplay/HeadUnitCheckSummary\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,66:1\n1#2:67\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0008\u001a\u00020\tJ\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0008\u001a\u00020\tJ \u0010\u000f\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00120\u00110\u00102\u0006\u0010\u0008\u001a\u00020\tJ\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u0005H\u0002J*\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0018J\u000e\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0008\u001a\u00020\tJ\u0015\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0000\u00a2\u0006\u0002\u0008\u001dR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/HeadUnitCheckSummary;",
        "",
        "<init>",
        "()V",
        "PREFS",
        "",
        "save",
        "",
        "context",
        "Landroid/content/Context;",
        "result",
        "Lcom/shilapi/xcertplay/HeadUnitCheck$Result;",
        "at",
        "",
        "line",
        "words",
        "",
        "Lkotlin/Pair;",
        "Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;",
        "state",
        "Lcom/shilapi/xcertplay/HeadUnitCheck$State;",
        "name",
        "word",
        "step",
        "",
        "noteBackLongPress",
        "backLongPressSeen",
        "",
        "clearForTest",
        "clearForTest$common_release",
        "common_release"
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/HeadUnitCheckSummary;

.field private static final PREFS:Ljava/lang/String; = "free_auto_check_summary"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/HeadUnitCheckSummary;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/HeadUnitCheckSummary;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/HeadUnitCheckSummary;->INSTANCE:Lcom/shilapi/xcertplay/HeadUnitCheckSummary;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final state(Ljava/lang/String;)Lcom/shilapi/xcertplay/HeadUnitCheck$State;
    .locals 1

    .line 48
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitCheckSummary;

    invoke-static {p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$State;->valueOf(Ljava/lang/String;)Lcom/shilapi/xcertplay/HeadUnitCheck$State;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lcom/shilapi/xcertplay/HeadUnitCheck$State;

    return-object p1
.end method


# virtual methods
.method public final at(Landroid/content/Context;)J
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    const-string v0, "free_auto_check_summary"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "at"

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final backLongPressSeen(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    const-string v0, "free_auto_check_summary"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "back_long_seen"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public final clearForTest$common_release(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    const-string v0, "free_auto_check_summary"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final line(Landroid/content/Context;)Ljava/lang/String;
    .locals 13

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/HeadUnitCheckSummary;->words(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    return-object v2

    .line 32
    :cond_1
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/HeadUnitCheckSummary;->at(Landroid/content/Context;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 33
    sget v4, Lcom/shilapi/xcertplay/host/R$string;->check_summary_port:I

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/Pair;

    invoke-virtual {v6}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlin/Pair;

    invoke-virtual {v8}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x2

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    .line 34
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v11, "HH:mm"

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v10, v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v6, v2, v5

    aput-object v8, v2, v7

    aput-object v0, v2, v9

    aput-object v1, v2, v3

    .line 33
    invoke-virtual {p1, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v2
.end method

.method public final noteBackLongPress(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    const-string v0, "free_auto_check_summary"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 59
    const-string v0, "back_long_seen"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public final save(Landroid/content/Context;Lcom/shilapi/xcertplay/HeadUnitCheck$Result;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/HeadUnitCheck$Result;->getPort()Lcom/shilapi/xcertplay/HeadUnitCheck$Port;

    move-result-object v0

    .line 20
    const-string v1, "free_auto_check_summary"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 21
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/HeadUnitCheck$Result;->getWiredVerdict()Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;->getState()Lcom/shilapi/xcertplay/HeadUnitCheck$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/HeadUnitCheck$State;->name()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "wired"

    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/HeadUnitCheck$Result;->getWiredVerdict()Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;->getStep()I

    move-result v1

    const-string/jumbo v3, "wired_step"

    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 22
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/HeadUnitCheck$Result;->getWirelessVerdict()Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;->getState()Lcom/shilapi/xcertplay/HeadUnitCheck$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/HeadUnitCheck$State;->name()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "wireless"

    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/HeadUnitCheck$Result;->getWirelessVerdict()Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;->getStep()I

    move-result v1

    const-string/jumbo v3, "wireless_step"

    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 23
    const-string v1, "port"

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/HeadUnitCheck$Port;->getPreferred()I

    move-result v3

    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/HeadUnitCheck$Port;->getMoved()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/HeadUnitCheck$Port;->getFallback()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_0
    const-string v0, "port_fallback"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 24
    const-string v0, "at"

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/HeadUnitCheck$Result;->getAt()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final word(Landroid/content/Context;Lcom/shilapi/xcertplay/HeadUnitCheck$State;I)Lkotlin/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/shilapi/xcertplay/HeadUnitCheck$State;",
            "I)",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCheckSummary$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/HeadUnitCheck$State;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const-string v0, "getString(...)"

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    const/4 p3, 0x3

    if-ne p2, p3, :cond_0

    .line 53
    sget p2, Lcom/shilapi/xcertplay/host/R$string;->chk_pill_bad:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->BAD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1

    .line 50
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 52
    :cond_1
    sget p2, Lcom/shilapi/xcertplay/host/R$string;->chk_pill_stuck:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->BAD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1

    .line 51
    :cond_2
    sget p2, Lcom/shilapi/xcertplay/host/R$string;->chk_pill_ok:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->GOOD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final words(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;",
            ">;>;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    const-string v0, "free_auto_check_summary"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 40
    const-string/jumbo v2, "wired"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/HeadUnitCheckSummary;->state(Ljava/lang/String;)Lcom/shilapi/xcertplay/HeadUnitCheck$State;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 41
    :cond_0
    const-string/jumbo v4, "wireless"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v3}, Lcom/shilapi/xcertplay/HeadUnitCheckSummary;->state(Ljava/lang/String;)Lcom/shilapi/xcertplay/HeadUnitCheck$State;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 42
    :cond_1
    const-string v4, "port_fallback"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-lez v4, :cond_2

    .line 43
    sget v6, Lcom/shilapi/xcertplay/host/R$string;->chk_port_moved:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v4, v7, v1

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->WARN:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    invoke-static {v4, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    goto :goto_0

    .line 44
    :cond_2
    const-string v4, "port"

    const/16 v6, 0x1b58

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->GOOD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    invoke-static {v4, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    :goto_0
    const/4 v6, 0x3

    .line 45
    new-array v6, v6, [Lkotlin/Pair;

    const-string/jumbo v7, "wired_step"

    invoke-interface {v0, v7, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {p0, p1, v2, v7}, Lcom/shilapi/xcertplay/HeadUnitCheckSummary;->word(Landroid/content/Context;Lcom/shilapi/xcertplay/HeadUnitCheck$State;I)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v6, v1

    const-string/jumbo v2, "wireless_step"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, p1, v3, v0}, Lcom/shilapi/xcertplay/HeadUnitCheckSummary;->word(Landroid/content/Context;Lcom/shilapi/xcertplay/HeadUnitCheck$State;I)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v6, v5

    const/4 p1, 0x2

    aput-object v4, v6, p1

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 41
    :cond_3
    :goto_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 40
    :cond_4
    :goto_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
