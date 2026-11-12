.class public final Lcom/shilapi/xcertplay/transport/Iap2DiagnosticSummary;
.super Ljava/lang/Object;
.source "Iap2DiagnosticSummary.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIap2DiagnosticSummary.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Iap2DiagnosticSummary.kt\ncom/shilapi/xcertplay/transport/Iap2DiagnosticSummary\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,39:1\n1#2:40\n1740#3,3:41\n12897#4,3:44\n*S KotlinDebug\n*F\n+ 1 Iap2DiagnosticSummary.kt\ncom/shilapi/xcertplay/transport/Iap2DiagnosticSummary\n*L\n37#1:41,3\n23#1:44,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0018\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u0012\u0010\r\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\u000fH\u0002\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/Iap2DiagnosticSummary;",
        "",
        "<init>",
        "()V",
        "of",
        "",
        "frame",
        "Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;",
        "describe",
        "list",
        "Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;",
        "depth",
        "",
        "group",
        "bytes",
        "",
        "looksLikeText",
        "",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/transport/Iap2DiagnosticSummary;


# direct methods
.method public static synthetic $r8$lambda$4UBzWWEIrHVldLq1jwZtETEsUM0(ILcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2DiagnosticSummary;->describe$lambda$4(ILcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/transport/Iap2DiagnosticSummary;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/transport/Iap2DiagnosticSummary;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/transport/Iap2DiagnosticSummary;->INSTANCE:Lcom/shilapi/xcertplay/transport/Iap2DiagnosticSummary;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final describe(Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;I)Ljava/lang/String;
    .locals 9

    .line 18
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;->asList()Ljava/util/List;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    const-string p1, ","

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const-string p1, "["

    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    const-string p1, "]"

    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    new-instance v6, Lcom/shilapi/xcertplay/transport/Iap2DiagnosticSummary$$ExternalSyntheticLambda0;

    invoke-direct {v6, p2}, Lcom/shilapi/xcertplay/transport/Iap2DiagnosticSummary$$ExternalSyntheticLambda0;-><init>(I)V

    const/16 v7, 0x18

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static final describe$lambda$4(ILcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;)Ljava/lang/CharSequence;
    .locals 11

    const-string v0, "parameter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;->getPayload()[B

    move-result-object v0

    .line 20
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;->getId()I

    move-result p1

    .line 21
    array-length v1, v0

    if-nez v1, :cond_0

    const-string p0, ""

    goto/16 :goto_1

    .line 22
    :cond_0
    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2DiagnosticSummary;->INSTANCE:Lcom/shilapi/xcertplay/transport/Iap2DiagnosticSummary;

    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/transport/Iap2DiagnosticSummary;->looksLikeText([B)Z

    move-result v2

    if-eqz v2, :cond_1

    array-length p0, v0

    add-int/lit8 p0, p0, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "=str("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 23
    :cond_1
    array-length v2, v0

    const/4 v3, 0x4

    const-string v4, "="

    if-gt v2, v3, :cond_3

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 45
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-byte v3, v0, v2

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    const/16 p0, 0x8

    shl-long/2addr v5, p0

    int-to-long v7, v3

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    or-long/2addr v5, v7

    .line 23
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    const/4 v2, 0x3

    .line 24
    const-string v3, "B"

    if-ge p0, v2, :cond_5

    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/transport/Iap2DiagnosticSummary;->group([B)Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;

    move-result-object v2

    if-eqz v2, :cond_4

    add-int/lit8 p0, p0, 0x1

    invoke-direct {v1, v2, p0}, Lcom/shilapi/xcertplay/transport/Iap2DiagnosticSummary;->describe(Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_6

    :cond_4
    array-length p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 25
    :cond_5
    array-length p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_6
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private final group([B)Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;
    .locals 3

    const/4 v0, 0x0

    .line 30
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/transport/Iap2DiagnosticSummary;

    .line 31
    sget-object v1, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;->Companion:Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList$Companion;

    invoke-virtual {v1, p1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList$Companion;->parse([B)Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;->getSize()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;->encode()[B

    move-result-object v2

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 30
    :goto_0
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 32
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    move-object v0, p1

    :goto_2
    check-cast v0, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;

    return-object v0
.end method

.method private final looksLikeText([B)Z
    .locals 4

    .line 36
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->last([B)B

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 37
    invoke-static {p1, v0}, Lkotlin/collections/ArraysKt;->dropLast([BI)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 41
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 42
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    and-int/lit16 v2, v1, 0xff

    const/16 v3, 0x20

    if-ge v2, v3, :cond_1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_2
    :goto_1
    return v0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final of(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Ljava/lang/String;
    .locals 2

    const-string v0, "frame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/transport/Iap2DiagnosticSummary;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;->body()Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/shilapi/xcertplay/transport/Iap2DiagnosticSummary;->describe(Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;I)Ljava/lang/String;

    move-result-object v0

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

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;->getPayload()[B

    move-result-object p1

    array-length p1, p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unparsed("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "B)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
