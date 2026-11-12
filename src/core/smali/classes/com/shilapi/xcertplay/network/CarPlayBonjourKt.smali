.class public final Lcom/shilapi/xcertplay/network/CarPlayBonjourKt;
.super Ljava/lang/Object;
.source "CarPlayBonjour.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCarPlayBonjour.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CarPlayBonjour.kt\ncom/shilapi/xcertplay/network/CarPlayBonjourKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,682:1\n1#2:683\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "diagnosticSummary",
        "",
        "Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent;",
        "shared_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final diagnosticSummary(Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent;)Ljava/lang/String;
    .locals 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    instance-of v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery;

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery;->getStage()Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery$Stage;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery;->getIpv4Count()I

    move-result v1

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery;->getIpv6Count()I

    move-result p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "control discovery stage="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " ipv4="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ipv6="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 58
    :cond_0
    instance-of v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Resolved;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 59
    check-cast p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Resolved;

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Resolved;->getEndpoint()Lcom/shilapi/xcertplay/network/CarPlayBonjourEndpoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/CarPlayBonjourEndpoint;->getHost()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/16 v4, 0x3a

    invoke-static {v0, v4, v2, v1, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "IPv6"

    goto :goto_0

    :cond_1
    const-string v0, "IPv4"

    :goto_0
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Resolved;->getEndpoint()Lcom/shilapi/xcertplay/network/CarPlayBonjourEndpoint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/network/CarPlayBonjourEndpoint;->getPort()I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "control resolved family="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " port="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 60
    :cond_2
    instance-of v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;

    if-eqz v0, :cond_7

    .line 62
    check-cast p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;

    .line 61
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;->getStatusLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v4, Lkotlin/text/Regex;

    const-string v5, "^HTTP/\\d(?:\\.\\d)? (\\d{3})(?: |$)"

    invoke-direct {v4, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v4, v0, v2, v1, v3}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 62
    :cond_3
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;->getAttempts()I

    move-result v0

    const-string v1, "none"

    if-nez v3, :cond_4

    move-object v3, v1

    :cond_4
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;->getError()Ljava/io/IOException;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    move-object v1, p0

    :cond_6
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "control probe attempts="

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " status="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " error="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 56
    :cond_7
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
