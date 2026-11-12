.class public final Lcom/shilapi/xcertplay/ConnectionStatusRowKt;
.super Ljava/lang/Object;
.source "ConnectionStatusRow.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\"\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "keepStepTogether",
        "",
        "text",
        "",
        "STEP_UNIT",
        "Lkotlin/text/Regex;",
        "common_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final STEP_UNIT:Lkotlin/text/Regex;


# direct methods
.method public static synthetic $r8$lambda$UHezFWP6fbUgNwNN4dt6GtNh73E(Lkotlin/text/MatchResult;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/ConnectionStatusRowKt;->keepStepTogether$lambda$0(Lkotlin/text/MatchResult;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 295
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "(?i)\\bstep\\s+\\d+(\\s+of\\s+\\d+)?|\u7b2c\\s*\\d+(\\s*/\\s*\\d+)?\\s*\u6b65"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shilapi/xcertplay/ConnectionStatusRowKt;->STEP_UNIT:Lkotlin/text/Regex;

    return-void
.end method

.method public static final keepStepTogether(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "text"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    sget-object v0, Lcom/shilapi/xcertplay/ConnectionStatusRowKt;->STEP_UNIT:Lkotlin/text/Regex;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    new-instance v1, Lcom/shilapi/xcertplay/ConnectionStatusRowKt$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/shilapi/xcertplay/ConnectionStatusRowKt$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, p0, v1}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final keepStepTogether$lambda$0(Lkotlin/text/MatchResult;)Ljava/lang/CharSequence;
    .locals 2

    const-string v0, "match"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    invoke-interface {p0}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "\\s+"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "\u00a0"

    invoke-virtual {v0, p0, v1}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method
