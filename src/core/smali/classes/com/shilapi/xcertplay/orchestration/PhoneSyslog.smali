.class public final Lcom/shilapi/xcertplay/orchestration/PhoneSyslog;
.super Ljava/lang/Object;
.source "CarPlayController.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0008\u001a\u00020\tJ\u0010\u0010\n\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000b\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/orchestration/PhoneSyslog;",
        "",
        "<init>",
        "()V",
        "PROPERTY",
        "",
        "relevant",
        "Lkotlin/text/Regex;",
        "enabled",
        "",
        "redacted",
        "line",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/orchestration/PhoneSyslog;

.field private static final PROPERTY:Ljava/lang/String; = "debug.freeauto.phone_syslog"

.field private static final relevant:Lkotlin/text/Regex;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/shilapi/xcertplay/orchestration/PhoneSyslog;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/orchestration/PhoneSyslog;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/orchestration/PhoneSyslog;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/PhoneSyslog;

    .line 229
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, " (accessoryd|ACCCarPlayService|iap2d|CarPlay)([\\[(])"

    sget-object v2, Lkotlin/text/RegexOption;->IGNORE_CASE:Lkotlin/text/RegexOption;

    invoke-direct {v0, v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;Lkotlin/text/RegexOption;)V

    sput-object v0, Lcom/shilapi/xcertplay/orchestration/PhoneSyslog;->relevant:Lkotlin/text/Regex;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final enabled()Z
    .locals 2

    .line 231
    const-string v0, "debug.freeauto.phone_syslog"

    invoke-static {v0}, Lcom/shilapi/xcertplay/compat/LegacyWiredOverrideKt;->readDebugProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final redacted(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "line"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/PhoneSyslog;->relevant:Lkotlin/text/Regex;

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v4

    .line 235
    :cond_0
    sget-object v1, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->INSTANCE:Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;

    invoke-interface {v0}, Lkotlin/text/MatchResult;->getRange()Lkotlin/ranges/IntRange;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "substring(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->mask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
