.class final Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;
.super Ljava/lang/Object;
.source "HeadUnitCapabilities.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/HeadUnitCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Probe"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0010\u0011\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0016\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u0005J\u0006\u0010\u000f\u001a\u00020\u0005J/\u0010\u0010\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u00052\u0012\u0010\u0011\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\u0012\"\u00020\u0001\u00a2\u0006\u0002\u0010\u0013J\u0015\u0010\u0014\u001a\u00020\u00052\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;",
        "",
        "chinese",
        "",
        "language",
        "",
        "<init>",
        "(ZLjava/lang/String;)V",
        "getChinese",
        "()Z",
        "getLanguage",
        "()Ljava/lang/String;",
        "t",
        "zh",
        "en",
        "listSeparator",
        "v",
        "args",
        "",
        "(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;",
        "yes",
        "value",
        "(Ljava/lang/Boolean;)Ljava/lang/String;",
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


# instance fields
.field private final chinese:Z

.field private final language:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->chinese:Z

    iput-object p2, p0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->language:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getChinese()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->chinese:Z

    return v0
.end method

.method public final getLanguage()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->language:Ljava/lang/String;

    return-object v0
.end method

.method public final listSeparator()Ljava/lang/String;
    .locals 2

    .line 73
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->chinese:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->language:Ljava/lang/String;

    const-string v1, "ar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u060c "

    return-object v0

    :cond_0
    const-string v0, ", "

    return-object v0
.end method

.method public final t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "zh"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "en"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->chinese:Z

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    return-object p2
.end method

.method public final varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "zh"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "en"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->chinese:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    move-object p1, p2

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/shilapi/xcertplay/HeadUnitCheckText;->INSTANCE:Lcom/shilapi/xcertplay/HeadUnitCheckText;

    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->language:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/shilapi/xcertplay/HeadUnitCheckText;->of(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    :goto_0
    move-object p1, p2

    .line 77
    :cond_2
    :goto_1
    array-length p2, p3

    if-nez p2, :cond_3

    return-object p1

    :cond_3
    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    array-length v0, p3

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    array-length v0, p3

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    invoke-static {p2, p1, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "format(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final yes(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 79
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p1, "\u6709"

    const-string/jumbo v0, "yes"

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo p1, "\u6ca1\u6709"

    const-string v0, "no"

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const-string/jumbo p1, "\u672a\u77e5"

    const-string/jumbo v0, "unknown"

    goto :goto_0

    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
