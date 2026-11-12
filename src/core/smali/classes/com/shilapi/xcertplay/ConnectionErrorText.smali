.class public final Lcom/shilapi/xcertplay/ConnectionErrorText;
.super Ljava/lang/Object;
.source "ConnectionErrorText.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/ConnectionErrorText$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConnectionErrorText.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectionErrorText.kt\ncom/shilapi/xcertplay/ConnectionErrorText\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,39:1\n1#2:40\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nJ2\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\n2\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0007\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/ConnectionErrorText;",
        "",
        "<init>",
        "()V",
        "extraRes",
        "",
        "code",
        "",
        "kindRes",
        "kind",
        "Lcom/shilapi/xcertplay/orchestration/ConnectionError$FailureKind;",
        "stepFailure",
        "context",
        "Landroid/content/Context;",
        "wireless",
        "",
        "step",
        "evidence",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/ConnectionErrorText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/ConnectionErrorText;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/ConnectionErrorText;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/ConnectionErrorText;->INSTANCE:Lcom/shilapi/xcertplay/ConnectionErrorText;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic stepFailure$default(Lcom/shilapi/xcertplay/ConnectionErrorText;Landroid/content/Context;ZILcom/shilapi/xcertplay/orchestration/ConnectionError$FailureKind;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 32
    invoke-virtual/range {v0 .. v5}, Lcom/shilapi/xcertplay/ConnectionErrorText;->stepFailure(Landroid/content/Context;ZILcom/shilapi/xcertplay/orchestration/ConnectionError$FailureKind;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final extraRes(Ljava/lang/String;)I
    .locals 3

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string v0, "WD-25-NODATA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :sswitch_1
    const-string v0, "WD-25-DECODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :sswitch_2
    const-string v0, "WL-09-NO-5702"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    sget p1, Lcom/shilapi/xcertplay/host/R$string;->err_no_5702:I

    return p1

    .line 14
    :sswitch_3
    const-string v0, "WL-40-NODATA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :sswitch_4
    const-string v0, "WL-40-DECODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    :goto_0
    sget p1, Lcom/shilapi/xcertplay/host/R$string;->pic_fail_decode:I

    return p1

    .line 14
    :sswitch_5
    const-string v0, "WL-40-TIMEOUT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    :goto_1
    sget p1, Lcom/shilapi/xcertplay/host/R$string;->pic_fail_no_data:I

    return p1

    .line 14
    :sswitch_6
    const-string v0, "WL-40-NOSURFACE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :sswitch_7
    const-string v0, "WL-MODE-INCOMPAT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    sget p1, Lcom/shilapi/xcertplay/host/R$string;->err_mode_incompat:I

    return p1

    .line 14
    :sswitch_8
    const-string v0, "WD-25-NOSURFACE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    :goto_2
    sget p1, Lcom/shilapi/xcertplay/host/R$string;->pic_fail_no_surface:I

    return p1

    .line 14
    :sswitch_9
    const-string v0, "WL-10-CHANNEL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    sget p1, Lcom/shilapi/xcertplay/host/R$string;->err_channel_unknown:I

    return p1

    .line 21
    :cond_0
    :goto_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no words for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5438e2d3 -> :sswitch_9
        -0x4ddcdc5e -> :sswitch_8
        -0x30522327 -> :sswitch_7
        -0x1802c26d -> :sswitch_6
        0xe4740e8 -> :sswitch_5
        0x1eba0d67 -> :sswitch_4
        0x3057b064 -> :sswitch_3
        0x3e967ee4 -> :sswitch_2
        0x567179b8 -> :sswitch_1
        0x680f1cb5 -> :sswitch_0
    .end sparse-switch
.end method

.method public final kindRes(Lcom/shilapi/xcertplay/orchestration/ConnectionError$FailureKind;)I
    .locals 1

    const-string v0, "kind"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object v0, Lcom/shilapi/xcertplay/ConnectionErrorText$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/orchestration/ConnectionError$FailureKind;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 28
    sget p1, Lcom/shilapi/xcertplay/host/R$string;->err_kind_exception:I

    return p1

    .line 24
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 27
    :cond_1
    sget p1, Lcom/shilapi/xcertplay/host/R$string;->err_kind_refused:I

    return p1

    .line 26
    :cond_2
    sget p1, Lcom/shilapi/xcertplay/host/R$string;->err_kind_timeout:I

    return p1

    .line 25
    :cond_3
    sget p1, Lcom/shilapi/xcertplay/host/R$string;->err_kind_stall:I

    return p1
.end method

.method public final stepFailure(Landroid/content/Context;ZILcom/shilapi/xcertplay/orchestration/ConnectionError$FailureKind;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget-object v0, Lcom/shilapi/xcertplay/ConnectionSteps;->INSTANCE:Lcom/shilapi/xcertplay/ConnectionSteps;

    invoke-virtual {v0, p2}, Lcom/shilapi/xcertplay/ConnectionSteps;->of(Z)Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p3, -0x1

    .line 34
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;->getName()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0, p4}, Lcom/shilapi/xcertplay/ConnectionErrorText;->kindRes(Lcom/shilapi/xcertplay/orchestration/ConnectionError$FailureKind;)I

    move-result v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v3

    const/4 v3, 0x1

    aput-object v0, v5, v3

    invoke-virtual {p1, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/ConnectionError;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/ConnectionError;

    invoke-virtual {v0, p2, p3, p4}, Lcom/shilapi/xcertplay/orchestration/ConnectionError;->codeFor(ZILcom/shilapi/xcertplay/orchestration/ConnectionError$FailureKind;)Ljava/lang/String;

    move-result-object p2

    if-eqz p5, :cond_1

    move-object p3, p5

    check-cast p3, Ljava/lang/CharSequence;

    invoke-static {p3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    :goto_0
    if-eqz p5, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, " ("

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ")"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_2

    :cond_1
    const-string p3, ""

    :cond_2
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " \u00b7 "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
