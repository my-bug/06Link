.class public final Lcom/shilapi/xcertplay/orchestration/WifiHandoff;
.super Ljava/lang/Object;
.source "WifiHandoff.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;,
        Lcom/shilapi/xcertplay/orchestration/WifiHandoff$JoinEvidence;,
        Lcom/shilapi/xcertplay/orchestration/WifiHandoff$JoinVerdict;,
        Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Step;,
        Lcom/shilapi/xcertplay/orchestration/WifiHandoff$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0004\u0019\u001a\u001b\u001cB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005JF\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016J\u000e\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u0005\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/orchestration/WifiHandoff;",
        "",
        "<init>",
        "()V",
        "on5702",
        "Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;",
        "prev",
        "on5703",
        "securityLabel",
        "",
        "bandLabel",
        "channel",
        "",
        "ssidLength",
        "passphraseLength",
        "fingerprint",
        "credentialsVerified",
        "",
        "onJoined",
        "joinVerdict",
        "Lcom/shilapi/xcertplay/orchestration/WifiHandoff$JoinVerdict;",
        "e",
        "Lcom/shilapi/xcertplay/orchestration/WifiHandoff$JoinEvidence;",
        "summary",
        "evidence",
        "Step",
        "Evidence",
        "JoinEvidence",
        "JoinVerdict",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/orchestration/WifiHandoff;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/orchestration/WifiHandoff;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/orchestration/WifiHandoff;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/orchestration/WifiHandoff;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/WifiHandoff;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final joinVerdict(Lcom/shilapi/xcertplay/orchestration/WifiHandoff$JoinEvidence;)Lcom/shilapi/xcertplay/orchestration/WifiHandoff$JoinVerdict;
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/orchestration/WifiHandoff$JoinEvidence;->getAssociatedClients()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-gtz v0, :cond_7

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/orchestration/WifiHandoff$JoinEvidence;->getArpClients()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_1
    if-gtz v1, :cond_7

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/orchestration/WifiHandoff$JoinEvidence;->getBonjourResolved()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/orchestration/WifiHandoff$JoinEvidence;->getAirplayConnections()I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_4

    .line 70
    :cond_2
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/orchestration/WifiHandoff$JoinEvidence;->getAssociatedClients()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_6

    :goto_1
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/orchestration/WifiHandoff$JoinEvidence;->getArpClients()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_5

    goto :goto_3

    .line 71
    :cond_5
    :goto_2
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/WifiHandoff$JoinVerdict;->UNKNOWN:Lcom/shilapi/xcertplay/orchestration/WifiHandoff$JoinVerdict;

    return-object p1

    .line 70
    :cond_6
    :goto_3
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/WifiHandoff$JoinVerdict;->NOT_JOINED:Lcom/shilapi/xcertplay/orchestration/WifiHandoff$JoinVerdict;

    return-object p1

    .line 69
    :cond_7
    :goto_4
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/WifiHandoff$JoinVerdict;->JOINED:Lcom/shilapi/xcertplay/orchestration/WifiHandoff$JoinVerdict;

    return-object p1
.end method

.method public final on5702(Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;)Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;
    .locals 13

    const-string v0, "prev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v2, Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Step;->REQUESTED_5702:Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Step;

    const/16 v11, 0x1fe

    const/4 v12, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v12}, Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;->copy$default(Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Step;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ZZILjava/lang/Object;)Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;

    move-result-object p1

    return-object p1
.end method

.method public final on5703(Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Z)Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;
    .locals 11

    const-string v0, "prev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "securityLabel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bandLabel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fingerprint"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object v2, Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Step;->SENT_5703:Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Step;

    if-gtz p4, :cond_0

    const/4 v0, 0x1

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v9, 0x0

    :goto_0
    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v10, p8

    .line 34
    invoke-virtual/range {v1 .. v10}, Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;->copy(Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Step;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ZZ)Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;

    move-result-object p1

    return-object p1
.end method

.method public final onJoined(Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;)Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;
    .locals 13

    const-string v0, "prev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    sget-object v2, Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Step;->JOINED:Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Step;

    const/16 v11, 0x1fe

    const/4 v12, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v12}, Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;->copy$default(Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Step;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ZZILjava/lang/Object;)Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;

    move-result-object p1

    return-object p1
.end method

.method public final summary(Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;)Ljava/lang/String;
    .locals 8

    const-string v0, "evidence"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;->getStep()Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Step;

    move-result-object v0

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/WifiHandoff$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Step;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p1, 0x4

    if-ne v0, p1, :cond_0

    .line 83
    const-string p1, "iphone joined Wi-Fi after 0x5703"

    return-object p1

    .line 75
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 79
    :cond_1
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;->getSecurityLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;->getBandLabel()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;->getChannelUnknown()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "unknown"

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;->getChannel()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 81
    :goto_0
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;->getSsidLength()I

    move-result v3

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;->getPassphraseLength()I

    move-result v4

    .line 82
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;->getFingerprint()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;->getCredentialsVerified()Z

    move-result p1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "tx 0x5703 security="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " band="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " channel="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " ssidLen="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " passLen="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " fp="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " verified="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 77
    :cond_3
    const-string p1, "rx 0x5702 request-wifi-configuration"

    return-object p1

    .line 76
    :cond_4
    const-string/jumbo p1, "wifi-handoff idle"

    return-object p1
.end method
