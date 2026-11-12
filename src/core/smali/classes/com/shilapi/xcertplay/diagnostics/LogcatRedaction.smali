.class public final Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;
.super Ljava/lang/Object;
.source "LogcatRedaction.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u000e\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0007R\u000e\u0010\u0008\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;",
        "",
        "<init>",
        "()V",
        "rx",
        "Lkotlin/text/Regex;",
        "pattern",
        "",
        "credentialValue",
        "nameValue",
        "secretValue",
        "mac",
        "byteDump",
        "identifier",
        "ipv4",
        "ipv6",
        "mask",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;

.field private static final byteDump:Lkotlin/text/Regex;

.field private static final credentialValue:Lkotlin/text/Regex;

.field private static final identifier:Lkotlin/text/Regex;

.field private static final ipv4:Lkotlin/text/Regex;

.field private static final ipv6:Lkotlin/text/Regex;

.field private static final mac:Lkotlin/text/Regex;

.field private static final nameValue:Lkotlin/text/Regex;

.field private static final secretValue:Lkotlin/text/Regex;


# direct methods
.method public static synthetic $r8$lambda$7VW7ZBQxm2HiydYIvqiyHzvC9zI(Lkotlin/text/MatchResult;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->mask$lambda$4$lambda$0(Lkotlin/text/MatchResult;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GML-K_AFNEfrHDcWp9KkalPMOj8(Lkotlin/text/MatchResult;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->mask$lambda$4$lambda$2(Lkotlin/text/MatchResult;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$P_V1hDaNHLdSi64IWjaCkiDMKZc(Lkotlin/text/MatchResult;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->mask$lambda$4$lambda$3(Lkotlin/text/MatchResult;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WZzPLQy53VtO3UOiTgU2W6Ds998(Lkotlin/text/MatchResult;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->mask$lambda$4$lambda$1(Lkotlin/text/MatchResult;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->INSTANCE:Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;

    .line 21
    const-string v1, "(?i)\\b(ssid|pass(?:word|phrase)?)(\\s*[=:]\\s*)(\"(?:\\\\.|[^\"\\\\])*\"|\'[^\']*\'|\\S+)"

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->rx(Ljava/lang/String;)Lkotlin/text/Regex;

    move-result-object v1

    sput-object v1, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->credentialValue:Lkotlin/text/Regex;

    .line 29
    const-string v1, "(?i)\\b(x-apple-client-name|x-apple-device-name|device info name|device ?name|display ?name|remote ?name|bt ?name|bluetooth ?name|friendly ?name|phone ?name)(\\s*[=:]\\s*)(\"(?:\\\\.|[^\"\\\\])*\"|\'[^\']*\'|.+?(?=,\\s|\\}|\\s+[\\w-]+[=:]|$))"

    .line 28
    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->rx(Ljava/lang/String;)Lkotlin/text/Regex;

    move-result-object v1

    sput-object v1, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->nameValue:Lkotlin/text/Regex;

    .line 38
    const-string v1, "(?i)(?<![A-Za-z0-9_-])([\"\']?)([\\w-]*?(?:private[\\s_-]?key|secret|seed|token)|pair[\\s_-]?record)\\1(\\s*[=:]\\s*)(\"(?:\\\\.|[^\"\\\\])*\"|\'[^\']*\'|[^\\s,;\\}]+)"

    .line 37
    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->rx(Ljava/lang/String;)Lkotlin/text/Regex;

    move-result-object v1

    sput-object v1, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->secretValue:Lkotlin/text/Regex;

    .line 41
    const-string v1, "(?i)(?<![0-9a-f])(?:[0-9a-f]{2}[:-]){5}[0-9a-f]{2}(?![0-9a-f])"

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->rx(Ljava/lang/String;)Lkotlin/text/Regex;

    move-result-object v1

    sput-object v1, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->mac:Lkotlin/text/Regex;

    .line 43
    const-string v1, "(?i)\\[(?:[0-9a-f]{2}[ ,]+){5,}[0-9a-f]{2}\\]"

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->rx(Ljava/lang/String;)Lkotlin/text/Regex;

    move-result-object v1

    sput-object v1, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->byteDump:Lkotlin/text/Regex;

    .line 45
    const-string v1, "(?i)(?<![0-9a-z])[0-9a-f]{24,}(?![0-9a-z])"

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->rx(Ljava/lang/String;)Lkotlin/text/Regex;

    move-result-object v1

    sput-object v1, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->identifier:Lkotlin/text/Regex;

    .line 47
    const-string v1, "(?<![0-9A-Za-z.])(?:[0-9]{1,3}\\.){3}[0-9]{1,3}(?![0-9])"

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->rx(Ljava/lang/String;)Lkotlin/text/Regex;

    move-result-object v1

    sput-object v1, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->ipv4:Lkotlin/text/Regex;

    .line 49
    const-string v1, "(?i)(?<![0-9a-z:])(?:(?:[0-9a-f]{1,4}:){7}[0-9a-f]{1,4}|(?:[0-9a-f]{1,4}:)*[0-9a-f]{0,4}::(?:[0-9a-f]{1,4}:)*[0-9a-f]{0,4})(?:%[a-z0-9_.-]+)?(?![0-9a-z:])"

    .line 48
    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->rx(Ljava/lang/String;)Lkotlin/text/Regex;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->ipv6:Lkotlin/text/Regex;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final mask$lambda$4$lambda$0(Lkotlin/text/MatchResult;)Ljava/lang/CharSequence;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-interface {p0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "<redacted>"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private static final mask$lambda$4$lambda$1(Lkotlin/text/MatchResult;)Ljava/lang/CharSequence;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-interface {p0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "<redacted>"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private static final mask$lambda$4$lambda$2(Lkotlin/text/MatchResult;)Ljava/lang/CharSequence;
    .locals 4

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-interface {p0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object p0

    const/4 v3, 0x3

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "<redacted>"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private static final mask$lambda$4$lambda$3(Lkotlin/text/MatchResult;)Ljava/lang/CharSequence;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-interface {p0}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    invoke-interface {p0}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "::"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string p0, "<ip>"

    :goto_0
    check-cast p0, Ljava/lang/CharSequence;

    return-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private final rx(Ljava/lang/String;)Lkotlin/text/Regex;
    .locals 1

    .line 17
    sget-object v0, Lcom/shilapi/xcertplay/compat/SafeRegex;->INSTANCE:Lcom/shilapi/xcertplay/compat/SafeRegex;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/compat/SafeRegex;->compile(Ljava/lang/String;)Lkotlin/text/Regex;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final mask(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "line"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;

    .line 55
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    sget-object v1, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->credentialValue:Lkotlin/text/Regex;

    new-instance v2, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v0, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 56
    sget-object v1, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->nameValue:Lkotlin/text/Regex;

    new-instance v2, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v1, v0, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 57
    sget-object v1, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->secretValue:Lkotlin/text/Regex;

    new-instance v2, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v1, v0, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 58
    sget-object v1, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->byteDump:Lkotlin/text/Regex;

    const-string v2, "[bytes]"

    invoke-virtual {v1, v0, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 59
    sget-object v1, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->mac:Lkotlin/text/Regex;

    const-string v2, "<mac>"

    invoke-virtual {v1, v0, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 60
    sget-object v1, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->identifier:Lkotlin/text/Regex;

    const-string v2, "<id>"

    invoke-virtual {v1, v0, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 61
    sget-object v1, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->ipv4:Lkotlin/text/Regex;

    const-string v2, "<ip>"

    invoke-virtual {v1, v0, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 62
    sget-object v1, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->ipv6:Lkotlin/text/Regex;

    new-instance v2, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v1, v0, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 63
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    move-object p1, v0

    :goto_1
    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
