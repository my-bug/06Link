.class public final Lcom/shilapi/xcertplay/orchestration/ConnectionError;
.super Ljava/lang/Object;
.source "ConnectionError.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/orchestration/ConnectionError$FailureKind;,
        Lcom/shilapi/xcertplay/orchestration/ConnectionError$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConnectionError.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectionError.kt\ncom/shilapi/xcertplay/orchestration/ConnectionError\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,103:1\n12434#2,2:104\n12434#2,2:106\n1740#3,3:108\n*S KotlinDebug\n*F\n+ 1 ConnectionError.kt\ncom/shilapi/xcertplay/orchestration/ConnectionError\n*L\n75#1:104,2\n100#1:106,2\n101#1:108,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001*B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0018\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0005J\u0006\u0010\u001c\u001a\u00020\u001dJ\u000e\u0010\"\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u0005J\u001e\u0010#\u001a\u00020\u00052\u0006\u0010$\u001a\u00020\u001d2\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020(J\u0006\u0010)\u001a\u00020\u001dR\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u001f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!\u00a8\u0006+"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/orchestration/ConnectionError;",
        "",
        "<init>",
        "()V",
        "codeOf",
        "",
        "problem",
        "Lcom/shilapi/xcertplay/orchestration/SetupProblem;",
        "WL_12_NO_DATA",
        "WL_12_DECODE",
        "WL_12_NOSURFACE",
        "WL_12_TIMEOUT",
        "WL_40_NO_DATA",
        "WL_40_DECODE",
        "WL_40_NOSURFACE",
        "WL_40_TIMEOUT",
        "WD_09_NO_DATA",
        "WD_09_DECODE",
        "WD_09_NOSURFACE",
        "WD_25_NO_DATA",
        "WD_25_DECODE",
        "WD_25_NOSURFACE",
        "WL_09_NO_5702",
        "WL_09_CHANNEL",
        "WL_MODE_INCOMPAT",
        "reasonEvidence",
        "code",
        "observed",
        "allProblemsHaveCodes",
        "",
        "EXTRA_CODES",
        "",
        "getEXTRA_CODES",
        "()Ljava/util/List;",
        "displayReason",
        "codeFor",
        "wireless",
        "step",
        "",
        "kind",
        "Lcom/shilapi/xcertplay/orchestration/ConnectionError$FailureKind;",
        "allFailuresHaveCopy",
        "FailureKind",
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
.field private static final EXTRA_CODES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lcom/shilapi/xcertplay/orchestration/ConnectionError;

.field public static final WD_09_DECODE:Ljava/lang/String; = "WD-25-DECODE"

.field public static final WD_09_NOSURFACE:Ljava/lang/String; = "WD-25-NOSURFACE"

.field public static final WD_09_NO_DATA:Ljava/lang/String; = "WD-25-NODATA"

.field public static final WD_25_DECODE:Ljava/lang/String; = "WD-25-DECODE"

.field public static final WD_25_NOSURFACE:Ljava/lang/String; = "WD-25-NOSURFACE"

.field public static final WD_25_NO_DATA:Ljava/lang/String; = "WD-25-NODATA"

.field public static final WL_09_CHANNEL:Ljava/lang/String; = "WL-10-CHANNEL"

.field public static final WL_09_NO_5702:Ljava/lang/String; = "WL-09-NO-5702"

.field public static final WL_12_DECODE:Ljava/lang/String; = "WL-40-DECODE"

.field public static final WL_12_NOSURFACE:Ljava/lang/String; = "WL-40-NOSURFACE"

.field public static final WL_12_NO_DATA:Ljava/lang/String; = "WL-40-NODATA"

.field public static final WL_12_TIMEOUT:Ljava/lang/String; = "WL-40-TIMEOUT"

.field public static final WL_40_DECODE:Ljava/lang/String; = "WL-40-DECODE"

.field public static final WL_40_NOSURFACE:Ljava/lang/String; = "WL-40-NOSURFACE"

.field public static final WL_40_NO_DATA:Ljava/lang/String; = "WL-40-NODATA"

.field public static final WL_40_TIMEOUT:Ljava/lang/String; = "WL-40-TIMEOUT"

.field public static final WL_MODE_INCOMPAT:Ljava/lang/String; = "WL-MODE-INCOMPAT"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/shilapi/xcertplay/orchestration/ConnectionError;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/orchestration/ConnectionError;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/orchestration/ConnectionError;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/ConnectionError;

    const/16 v0, 0xa

    .line 81
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "WL-40-NODATA"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "WL-40-DECODE"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "WL-40-NOSURFACE"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "WL-40-TIMEOUT"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "WD-25-NODATA"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "WD-25-DECODE"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "WD-25-NOSURFACE"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "WL-09-NO-5702"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "WL-10-CHANNEL"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "WL-MODE-INCOMPAT"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 78
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/orchestration/ConnectionError;->EXTRA_CODES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic reasonEvidence$default(Lcom/shilapi/xcertplay/orchestration/ConnectionError;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 60
    const-string p2, ""

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/orchestration/ConnectionError;->reasonEvidence(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final allFailuresHaveCopy()Z
    .locals 8

    .line 99
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/orchestration/ConnectionError;->allProblemsHaveCodes()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 100
    invoke-static {}, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->values()[Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    move-result-object v0

    .line 106
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ge v3, v2, :cond_1

    aget-object v6, v0, v3

    .line 100
    sget-object v7, Lcom/shilapi/xcertplay/orchestration/ConnectionError;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/ConnectionError;

    invoke-virtual {v7, v6}, Lcom/shilapi/xcertplay/orchestration/ConnectionError;->codeOf(Lcom/shilapi/xcertplay/orchestration/SetupProblem;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6, v5, v4, v5}, Lcom/shilapi/xcertplay/orchestration/ConnectionError;->reasonEvidence$default(Lcom/shilapi/xcertplay/orchestration/ConnectionError;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 101
    :cond_1
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/ConnectionError;->EXTRA_CODES:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 108
    instance-of v2, v0, Ljava/util/Collection;

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 109
    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 101
    sget-object v3, Lcom/shilapi/xcertplay/orchestration/ConnectionError;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/ConnectionError;

    invoke-static {v3, v2, v5, v4, v5}, Lcom/shilapi/xcertplay/orchestration/ConnectionError;->reasonEvidence$default(Lcom/shilapi/xcertplay/orchestration/ConnectionError;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v0, 0x1

    return v0

    :cond_5
    :goto_2
    return v1
.end method

.method public final allProblemsHaveCodes()Z
    .locals 6

    .line 75
    invoke-static {}, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->values()[Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    move-result-object v0

    .line 104
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 75
    sget-object v5, Lcom/shilapi/xcertplay/orchestration/ConnectionError;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/ConnectionError;

    invoke-virtual {v5, v4}, Lcom/shilapi/xcertplay/orchestration/ConnectionError;->codeOf(Lcom/shilapi/xcertplay/orchestration/SetupProblem;)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final codeFor(ZILcom/shilapi/xcertplay/orchestration/ConnectionError$FailureKind;)Ljava/lang/String;
    .locals 2

    const-string v0, "kind"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 95
    const-string p1, "WL"

    goto :goto_0

    :cond_0
    const-string p1, "WD"

    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    const/16 v1, 0x30

    invoke-static {p2, v0, v1}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Lcom/shilapi/xcertplay/orchestration/ConnectionError$FailureKind;->name()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final codeOf(Lcom/shilapi/xcertplay/orchestration/SetupProblem;)Ljava/lang/String;
    .locals 1

    const-string v0, "problem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/ConnectionError$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 33
    :pswitch_0
    const-string p1, "WL-11-JOINED-NO-CP"

    return-object p1

    .line 32
    :pswitch_1
    const-string p1, "WL-10-NEVER-JOIN"

    return-object p1

    .line 31
    :pswitch_2
    const-string p1, "WL-MODE-LOCK"

    return-object p1

    .line 30
    :pswitch_3
    const-string p1, "WD-RETRY-STOP"

    return-object p1

    .line 29
    :pswitch_4
    const-string p1, "CX-LOST"

    return-object p1

    .line 28
    :pswitch_5
    const-string p1, "WL-11-NO-CARPLAY"

    return-object p1

    .line 27
    :pswitch_6
    const-string p1, "WL-10-JOIN-WAIT"

    return-object p1

    .line 26
    :pswitch_7
    const-string p1, "WL-01-PERM"

    return-object p1

    .line 25
    :pswitch_8
    const-string p1, "WD-08-VPN-DENY"

    return-object p1

    .line 24
    :pswitch_9
    const-string p1, "WD-08-VPN-WAIT"

    return-object p1

    .line 23
    :pswitch_a
    const-string p1, "WD-08-NCM"

    return-object p1

    .line 22
    :pswitch_b
    const-string p1, "WD-06-TRUST-DENY"

    return-object p1

    .line 21
    :pswitch_c
    const-string p1, "WD-06-LOCKED"

    return-object p1

    .line 20
    :pswitch_d
    const-string p1, "WD-06-TRUST-WAIT"

    return-object p1

    .line 19
    :pswitch_e
    const-string p1, "WD-05-FLAP"

    return-object p1

    .line 18
    :pswitch_f
    const-string p1, "WD-05-LEFT"

    return-object p1

    .line 17
    :pswitch_10
    const-string p1, "WD-04-MODE"

    return-object p1

    .line 16
    :pswitch_11
    const-string p1, "WD-01-MFI-PERM"

    return-object p1

    .line 15
    :pswitch_12
    const-string p1, "WD-03-PERM-TIMEOUT"

    return-object p1

    .line 14
    :pswitch_13
    const-string p1, "WD-03-PERM-DENY"

    return-object p1

    .line 13
    :pswitch_14
    const-string p1, "WD-03-PERM-WAIT"

    return-object p1

    .line 12
    :pswitch_15
    const-string p1, "WD-02-ABSENT"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final displayReason(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 85
    invoke-static {p0, p1, v0, v1, v0}, Lcom/shilapi/xcertplay/orchestration/ConnectionError;->reasonEvidence$default(Lcom/shilapi/xcertplay/orchestration/ConnectionError;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getEXTRA_CODES()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 78
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/ConnectionError;->EXTRA_CODES:Ljava/util/List;

    return-object v0
.end method

.method public final reasonEvidence(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "observed"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "WD-25-NODATA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "WD-25-DECODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "WL-09-NO-5702"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    const-string p1, "iPhone never sent 0x5702 request-wifi-configuration"

    goto/16 :goto_1

    .line 61
    :sswitch_3
    const-string v0, "WL-40-NODATA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 62
    :cond_1
    const-string p1, "SETUP done but no video bytes yet"

    goto :goto_1

    .line 61
    :sswitch_4
    const-string v0, "WL-40-DECODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 63
    :cond_2
    const-string/jumbo p1, "video bytes arriving but decoder produced no frame"

    goto :goto_1

    .line 61
    :sswitch_5
    const-string v0, "WL-40-TIMEOUT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 65
    :cond_3
    const-string p1, "no picture within the 30 s budget"

    goto :goto_1

    .line 61
    :sswitch_6
    const-string v0, "WL-40-NOSURFACE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :sswitch_7
    const-string v0, "WL-MODE-INCOMPAT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 68
    :cond_4
    const-string p1, "LocalOnlyHotspot refused: incompatible Wi-Fi mode (system hotspot on)"

    goto :goto_1

    .line 61
    :sswitch_8
    const-string v0, "WD-25-NOSURFACE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    .line 64
    :cond_5
    const-string/jumbo p1, "video arriving but no Surface to show it (CarPlay screen behind home)"

    goto :goto_1

    .line 61
    :sswitch_9
    const-string v0, "WL-10-CHANNEL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    .line 67
    :cond_6
    const-string p1, "Wi-Fi details sent with channel unknown (0); iPhone may not join"

    goto :goto_1

    .line 69
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "see SetupProblem for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 71
    :goto_1
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p1

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

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
