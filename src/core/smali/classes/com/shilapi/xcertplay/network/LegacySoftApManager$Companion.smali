.class public final Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;
.super Ljava/lang/Object;
.source "LegacySoftApManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/network/LegacySoftApManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;,
        Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$NameResult;,
        Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$SwitchOn;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLegacySoftApManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LegacySoftApManager.kt\ncom/shilapi/xcertplay/network/LegacySoftApManager$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,427:1\n1#2:428\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001:\u0003-./B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J$\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0014\u0008\u0002\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00120\u0016J\u0017\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0000\u00a2\u0006\u0002\u0008\u001bJ5\u0010\u001c\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u001a2\u0014\u0008\u0002\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00120\u0016H\u0000\u00a2\u0006\u0002\u0008\u001dJ7\u0010\u001c\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u00182\u0014\u0008\u0002\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00120\u0016H\u0000\u00a2\u0006\u0002\u0008\u001dJ\u000e\u0010\u001f\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J,\u0010 \u001a\u00020!2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\"\u001a\u00020\u000c2\u0014\u0008\u0002\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00120\u0016JK\u0010#\u001a\u00020!2\u0006\u0010$\u001a\u00020%2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\"\u001a\u00020\u000c2\u0014\u0008\u0002\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00120\u00162\u000e\u0008\u0002\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00120\'H\u0000\u00a2\u0006\u0002\u0008(J,\u0010)\u001a\u00020*2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\"\u001a\u00020\u000c2\u0014\u0008\u0002\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00120\u0016J\u000e\u0010+\u001a\u00020,2\u0006\u0010\u0013\u001a\u00020\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000cX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000cX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000cX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000cX\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u00060"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;",
        "",
        "<init>",
        "()V",
        "PREFS",
        "",
        "AP_DISABLED",
        "",
        "AP_ENABLING",
        "AP_ENABLED",
        "AP_FAILED",
        "ENABLING_WAIT_MILLIS",
        "",
        "DISABLE_WAIT_MILLIS",
        "RENAME_MILLIS",
        "POLL_MILLIS",
        "MIN_ATTACH_MILLIS",
        "discardOldRecords",
        "",
        "context",
        "Landroid/content/Context;",
        "onDiagnostic",
        "Lkotlin/Function1;",
        "savedConfiguration",
        "Landroid/net/wifi/WifiConfiguration;",
        "wifi",
        "Landroid/net/wifi/WifiManager;",
        "savedConfiguration$shared_release",
        "namedConfiguration",
        "namedConfiguration$shared_release",
        "saved",
        "keepHotspotSuffix",
        "applyNameRuleToRunningHotspot",
        "Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$NameResult;",
        "timeoutMillis",
        "applyNameRule",
        "control",
        "Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;",
        "checkOpen",
        "Lkotlin/Function0;",
        "applyNameRule$shared_release",
        "switchOnSystemHotspot",
        "Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$SwitchOn;",
        "canWriteSettings",
        "",
        "NameResult",
        "Fields",
        "SwitchOn",
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


# direct methods
.method public static synthetic $r8$lambda$2XnKyESck9vR2USmVMyd6FQhjGY(Ljava/lang/Integer;)Z
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;->applyNameRule$lambda$12(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$7AW1vrLXkLMOyHa6cpY-I_raCT0(Ljava/lang/Integer;)Z
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;->applyNameRule$lambda$10(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Eim_unVz6J6LSo9npXaf4yxruWk(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;->switchOnSystemHotspot$lambda$16(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Ej2o3tEL-r3vSydP9Qu2jwIteFs(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;->discardOldRecords$lambda$0(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$K1yp7da5wSBNSQyZv6gMuaK3pPg(Ljava/lang/Integer;)Z
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;->applyNameRule$lambda$8(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$P0uu02ZTgmuTqS_H_tKw2k8_19A()Lkotlin/Unit;
    .locals 1

    invoke-static {}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;->applyNameRule$lambda$7()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$To1luW9NFU5PHmh-ALuTTD2iRz0(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;->applyNameRuleToRunningHotspot$lambda$5(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WYnNSkzx4Xz-p2GMK9eIFqtZmRI(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;->applyNameRule$lambda$6(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$c873__GlYXsmV5i7K0feP0VFM9U(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;->namedConfiguration$lambda$3(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jCna5m0zCik6lbvBnDlY6rf8ipw(Ljava/lang/Integer;)Z
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;->applyNameRule$lambda$11(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$sODFtTBRas3hL3baxjIgRyVdyzo(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;->namedConfiguration$lambda$2(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;-><init>()V

    return-void
.end method

.method private static final applyNameRule$await(Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;Lkotlin/jvm/functions/Function0;JLkotlin/jvm/functions/Function1;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 293
    :goto_0
    invoke-interface {p0}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;->state()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 294
    invoke-interface {p0}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;->now()J

    move-result-wide v0

    cmp-long v2, v0, p2

    if-ltz v2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 295
    :cond_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    const-wide/16 v0, 0xc8

    .line 296
    invoke-interface {p0, v0, v1}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;->sleep(J)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static final applyNameRule$lambda$10(Ljava/lang/Integer;)Z
    .locals 2

    if-nez p0, :cond_0

    goto :goto_0

    .line 338
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_3

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0xe

    if-ne p0, v0, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method private static final applyNameRule$lambda$11(Ljava/lang/Integer;)Z
    .locals 1

    if-nez p0, :cond_0

    goto :goto_0

    .line 342
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0xd

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static final applyNameRule$lambda$12(Ljava/lang/Integer;)Z
    .locals 1

    if-nez p0, :cond_0

    goto :goto_0

    .line 347
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0xd

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static final applyNameRule$lambda$6(Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final applyNameRule$lambda$7()Lkotlin/Unit;
    .locals 1

    .line 289
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final applyNameRule$lambda$8(Ljava/lang/Integer;)Z
    .locals 1

    if-nez p0, :cond_0

    goto :goto_0

    .line 300
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0xd

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic applyNameRule$shared_release$default(Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;Landroid/content/Context;JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$NameResult;
    .locals 7

    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_0

    .line 288
    new-instance p5, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$$ExternalSyntheticLambda0;

    invoke-direct {p5}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$$ExternalSyntheticLambda0;-><init>()V

    :cond_0
    move-object v5, p5

    and-int/lit8 p5, p7, 0x10

    if-eqz p5, :cond_1

    .line 289
    new-instance p6, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$$ExternalSyntheticLambda1;

    invoke-direct {p6}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$$ExternalSyntheticLambda1;-><init>()V

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v6, p6

    .line 284
    invoke-virtual/range {v0 .. v6}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;->applyNameRule$shared_release(Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;Landroid/content/Context;JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$NameResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic applyNameRuleToRunningHotspot$default(Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;Landroid/content/Context;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$NameResult;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 273
    new-instance p4, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$$ExternalSyntheticLambda2;

    invoke-direct {p4}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$$ExternalSyntheticLambda2;-><init>()V

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;->applyNameRuleToRunningHotspot(Landroid/content/Context;JLkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$NameResult;

    move-result-object p0

    return-object p0
.end method

.method private static final applyNameRuleToRunningHotspot$lambda$5(Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic discardOldRecords$default(Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;Landroid/content/Context;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 206
    new-instance p2, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$$ExternalSyntheticLambda9;

    invoke-direct {p2}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$$ExternalSyntheticLambda9;-><init>()V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;->discardOldRecords(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final discardOldRecords$lambda$0(Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final namedConfiguration$lambda$2(Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final namedConfiguration$lambda$3(Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic namedConfiguration$shared_release$default(Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 225
    new-instance p3, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$$ExternalSyntheticLambda4;

    invoke-direct {p3}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$$ExternalSyntheticLambda4;-><init>()V

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;->namedConfiguration$shared_release(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Lkotlin/jvm/functions/Function1;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic namedConfiguration$shared_release$default(Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;Landroid/content/Context;Landroid/net/wifi/WifiManager;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 222
    new-instance p3, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$$ExternalSyntheticLambda10;

    invoke-direct {p3}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$$ExternalSyntheticLambda10;-><init>()V

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;->namedConfiguration$shared_release(Landroid/content/Context;Landroid/net/wifi/WifiManager;Lkotlin/jvm/functions/Function1;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    return-object p0
.end method

.method private static final switchOnSystemHotspot$await$18(Landroid/net/wifi/WifiManager;J)Z
    .locals 3

    .line 395
    :goto_0
    invoke-static {}, Lcom/shilapi/xcertplay/E01HotspotControl;->allowed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {p0}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;->switchOnSystemHotspot$state(Landroid/net/wifi/WifiManager;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_3

    .line 396
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-ltz v2, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    const-wide/16 v0, 0xc8

    .line 397
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic switchOnSystemHotspot$default(Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;Landroid/content/Context;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$SwitchOn;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 389
    new-instance p4, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$$ExternalSyntheticLambda3;

    invoke-direct {p4}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$$ExternalSyntheticLambda3;-><init>()V

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;->switchOnSystemHotspot(Landroid/content/Context;JLkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$SwitchOn;

    move-result-object p0

    return-object p0
.end method

.method private static final switchOnSystemHotspot$lambda$16(Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final switchOnSystemHotspot$state(Landroid/net/wifi/WifiManager;)Ljava/lang/Integer;
    .locals 3

    .line 393
    sget-object v0, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->Companion:Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const-class v1, Landroid/net/wifi/WifiManager;

    const-string v2, "getWifiApState"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    move-object v0, p0

    :goto_2
    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method private static final switchOnSystemHotspot$switchOn(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/E01HotspotControl;->enableHotspot(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final applyNameRule$shared_release(Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;Landroid/content/Context;JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$NameResult;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;",
            "Landroid/content/Context;",
            "J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$NameResult;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    const-string v4, "control"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "context"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "onDiagnostic"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "checkOpen"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    invoke-interface {v0}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;->now()J

    move-result-wide v4

    add-long v4, v4, p3

    .line 300
    invoke-interface {v0}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;->state()Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0xc

    if-ne v6, v7, :cond_1

    invoke-interface {v0}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;->now()J

    move-result-wide v6

    const-wide/16 v8, 0x1388

    add-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    new-instance v8, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$$ExternalSyntheticLambda5;

    invoke-direct {v8}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v0, v3, v6, v7, v8}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;->applyNameRule$await(Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;Lkotlin/jvm/functions/Function0;JLkotlin/jvm/functions/Function1;)Z

    .line 301
    :cond_1
    :goto_0
    invoke-interface {v0}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;->state()Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0xd

    if-eq v6, v7, :cond_3

    .line 302
    :goto_1
    invoke-interface {v0}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;->state()Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Hotspot name rule: the hotspot is not on (apState="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "); nothing to rename"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$NameResult;->NOT_ON:Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$NameResult;

    return-object v0

    .line 305
    :cond_3
    invoke-interface {v0}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;->configuration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    if-nez v6, :cond_4

    move-object/from16 v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;

    .line 306
    const-string v0, "Hotspot name rule: the system hides the hotspot configuration; continuing with its current name"

    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$NameResult;->UNREADABLE:Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$NameResult;

    return-object v0

    .line 309
    :cond_4
    sget-object v7, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->INSTANCE:Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;

    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v1, v8}, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->name(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 310
    sget-object v8, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->INSTANCE:Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;

    invoke-virtual {v8, v1}, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->passwordRenewalPending(Landroid/content/Context;)Z

    move-result v8

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-eqz v8, :cond_5

    .line 311
    sget-object v11, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->INSTANCE:Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;

    invoke-static {v11, v1, v10, v9, v10}, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->password$default(Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;Landroid/content/Context;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    :cond_5
    const-string v11, ""

    .line 312
    :goto_2
    sget-object v12, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->INSTANCE:Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;

    iget-object v13, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v12, v13, v7}, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->classify(Ljava/lang/String;Ljava/lang/String;)Lcom/shilapi/xcertplay/network/FreeAutoHotspotName$Kind;

    move-result-object v12

    .line 313
    sget-object v13, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->INSTANCE:Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;

    invoke-virtual {v13, v6, v7, v11, v8}, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->needsChange(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_7

    if-eqz v8, :cond_6

    .line 314
    sget-object v0, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->INSTANCE:Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->consumePasswordRenewal(Landroid/content/Context;)V

    .line 315
    :cond_6
    const-string v0, "Hotspot name rule: the hotspot already has this install\'s 06Link-\u2026 name (password left as system)"

    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$NameResult;->UNCHANGED:Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$NameResult;

    return-object v0

    .line 318
    :cond_7
    invoke-interface {v0}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;->canWriteSettings()Z

    move-result v11

    const-string v13, "Hotspot name rule: the name is "

    if-nez v11, :cond_8

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " but 06Link may not modify system settings; continuing with the current name and password"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object v0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$NameResult;->CANNOT_CONTROL:Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$NameResult;

    return-object v0

    .line 323
    :cond_8
    sget-object v11, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;->Companion:Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields$Companion;

    invoke-virtual {v11, v6}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields$Companion;->of(Landroid/net/wifi/WifiConfiguration;)Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;

    move-result-object v11

    .line 324
    invoke-interface {v0}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;->now()J

    move-result-wide v14

    if-eqz v8, :cond_9

    .line 326
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, "; person asked for a new password \u2014 restarting once with 06Link-\u2026 name and this install\'s password (security and band unchanged; connected devices drop briefly)"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    sget-object v9, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->INSTANCE:Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;

    sget-object v12, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->INSTANCE:Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;

    const/4 v13, 0x2

    invoke-static {v12, v1, v10, v13, v10}, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->password$default(Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;Landroid/content/Context;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v6, v7, v12}, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->withNameAndPassword(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    goto :goto_3

    .line 330
    :cond_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, "; restarting once with 06Link-\u2026 name only (system password/security/band unchanged; connected devices drop briefly)"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v9, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->INSTANCE:Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;

    invoke-virtual {v9, v6, v7}, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->withNameOnly(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    :goto_3
    const/4 v9, 0x0

    .line 334
    invoke-interface {v0, v10, v9}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;->setEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v12

    if-nez v12, :cond_a

    .line 335
    const-string v0, "Hotspot name rule: the system refused to switch the hotspot off; continuing with the current name"

    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$NameResult;->REFUSED:Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$NameResult;

    return-object v0

    .line 338
    :cond_a
    invoke-interface {v0}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;->now()J

    move-result-wide v12

    const-wide/16 v16, 0x1f40

    add-long v12, v12, v16

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    new-instance v9, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$$ExternalSyntheticLambda6;

    invoke-direct {v9}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v0, v3, v12, v13, v9}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;->applyNameRule$await(Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;Lkotlin/jvm/functions/Function0;JLkotlin/jvm/functions/Function1;)Z

    move-result v9

    .line 339
    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    const/4 v12, 0x1

    .line 340
    invoke-interface {v0, v6, v12}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;->setEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v6

    if-nez v6, :cond_c

    .line 342
    invoke-interface {v0, v10, v12}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;->setEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {v0, v3, v4, v5, v1}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;->applyNameRule$await(Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;Lkotlin/jvm/functions/Function0;JLkotlin/jvm/functions/Function1;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_4

    :cond_b
    const/4 v12, 0x0

    .line 344
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Hotspot name rule: the system refused the 06Link-\u2026 name (off="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "); switched back on as it was on="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 343
    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    sget-object v0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$NameResult;->REFUSED:Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$NameResult;

    return-object v0

    .line 347
    :cond_c
    new-instance v6, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$$ExternalSyntheticLambda8;

    invoke-direct {v6}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {v0, v3, v4, v5, v6}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;->applyNameRule$await(Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;Lkotlin/jvm/functions/Function0;JLkotlin/jvm/functions/Function1;)Z

    move-result v3

    .line 348
    invoke-interface {v0}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;->configuration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    if-eqz v8, :cond_d

    if-eqz v3, :cond_d

    .line 350
    sget-object v5, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->INSTANCE:Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;

    invoke-virtual {v5, v1, v4}, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->consumeRenewalIfApplied(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_5

    :cond_d
    const/4 v1, 0x0

    :goto_5
    if-eqz v8, :cond_e

    if-nez v1, :cond_e

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Hotspot name rule: the new password is not in the system configuration yet (on="

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "); \u300c\u6362\u4e00\u4e2a\u5bc6\u7801\u300d stays pending for the next bring-up"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 351
    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    :cond_e
    invoke-interface {v0}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;->now()J

    move-result-wide v0

    sub-long/2addr v0, v14

    if-eqz v4, :cond_f

    .line 354
    sget-object v5, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->INSTANCE:Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;

    iget-object v6, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->needsRename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    xor-int/2addr v5, v12

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_6

    :cond_f
    move-object v5, v10

    :goto_6
    if-eqz v4, :cond_11

    .line 355
    sget-object v6, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;->Companion:Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields$Companion;

    invoke-virtual {v6, v4}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields$Companion;->of(Landroid/net/wifi/WifiConfiguration;)Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;

    move-result-object v6

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;->getPasswordFingerprint()I

    move-result v6

    invoke-virtual {v11}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;->getPasswordFingerprint()I

    move-result v7

    if-ne v6, v7, :cond_10

    goto :goto_7

    :cond_10
    const/4 v12, 0x0

    :goto_7
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_8

    :cond_11
    move-object v6, v10

    :goto_8
    if-eqz v4, :cond_12

    .line 356
    sget-object v7, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;->Companion:Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields$Companion;

    invoke-virtual {v7, v4}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields$Companion;->of(Landroid/net/wifi/WifiConfiguration;)Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;

    move-result-object v12

    invoke-virtual {v11}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;->getPasswordFingerprint()I

    move-result v17

    const/16 v18, 0xf

    const/16 v19, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v12 .. v19}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;->copy$default(Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;Ljava/util/BitSet;Ljava/lang/Integer;Ljava/lang/Integer;ZIILjava/lang/Object;)Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;

    move-result-object v4

    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    :cond_12
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Hotspot name rule: hotspot back on="

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " off="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " afterMs="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " nameNow06Link="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " passwordKept="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " securityBandKept="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 353
    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    sget-object v0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$NameResult;->RENAMED:Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$NameResult;

    return-object v0
.end method

.method public final applyNameRuleToRunningHotspot(Landroid/content/Context;JLkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$NameResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$NameResult;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDiagnostic"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 275
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Hotspot name rule: Android "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " does not let apps rename the hotspot; continuing with its current name"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$NameResult;->CANNOT_CONTROL:Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$NameResult;

    return-object v0

    .line 279
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, p1

    :cond_1
    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/net/wifi/WifiManager;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 280
    sget-object v0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$NameResult;->CANNOT_CONTROL:Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$NameResult;

    return-object v0

    .line 281
    :cond_3
    new-instance v1, Lcom/shilapi/xcertplay/network/LegacySoftApManager$SystemSoftApControl;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_4

    move-object v3, p1

    :cond_4
    invoke-direct {v1, v3, v0}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$SystemSoftApControl;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;)V

    check-cast v1, Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-static/range {v0 .. v8}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;->applyNameRule$shared_release$default(Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;Landroid/content/Context;JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$NameResult;

    move-result-object v1

    return-object v1
.end method

.method public final canWriteSettings(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 424
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v1, v0, :cond_1

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_1

    invoke-static {p1}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final discardOldRecords(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDiagnostic"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    const-string v0, "legacy_softap"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 208
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 209
    :cond_1
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 210
    const-string p1, "Automatic hotspot: discarded settings left by an earlier version; the hotspot is left as it is"

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final keepHotspotSuffix(Landroid/content/Context;)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    sget-object v0, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->INSTANCE:Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->persistedSuffix(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 260
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, p1

    :cond_1
    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast v0, Landroid/net/wifi/WifiManager;

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 261
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v1, v3, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;->savedConfiguration$shared_release(Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    :cond_3
    move-object v5, v2

    .line 262
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;

    sget-object v3, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->INSTANCE:Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    invoke-static/range {v3 .. v8}, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->suffix$default(Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final namedConfiguration$shared_release(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Lkotlin/jvm/functions/Function1;)Landroid/net/wifi/WifiConfiguration;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/wifi/WifiConfiguration;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroid/net/wifi/WifiConfiguration;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDiagnostic"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 227
    const-string p1, "Hotspot name rule: the system hides the hotspot configuration; switching on with its current name"

    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 230
    :cond_0
    sget-object v1, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->INSTANCE:Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;

    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->name(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 231
    sget-object v2, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->INSTANCE:Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;

    invoke-virtual {v2, p1}, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->passwordRenewalPending(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_1

    .line 232
    sget-object v4, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->INSTANCE:Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;

    invoke-static {v4, p1, v0, v3, v0}, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->password$default(Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;Landroid/content/Context;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const-string v4, ""

    .line 233
    :goto_0
    sget-object v5, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->INSTANCE:Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;

    iget-object v6, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6, v1}, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->classify(Ljava/lang/String;Ljava/lang/String;)Lcom/shilapi/xcertplay/network/FreeAutoHotspotName$Kind;

    move-result-object v5

    .line 234
    sget-object v6, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->INSTANCE:Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;

    invoke-virtual {v6, p2, v1, v4, v2}, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->needsChange(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v2, :cond_2

    .line 235
    sget-object p2, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->INSTANCE:Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;

    invoke-virtual {p2, p1}, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->consumePasswordRenewal(Landroid/content/Context;)V

    .line 236
    :cond_2
    const-string p1, "Hotspot name rule: the saved name is already this install\'s (password left as system)"

    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_3
    if-eqz v2, :cond_4

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Hotspot name rule: the name is "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "; person asked for a new password \u2014 switching on with 06Link-\u2026 name and this install\'s password (security and band unchanged)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object p3, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->INSTANCE:Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;

    sget-object v2, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->INSTANCE:Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;

    invoke-static {v2, p1, v0, v3, v0}, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->password$default(Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;Landroid/content/Context;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p2, v1, p1}, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->withNameAndPassword(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    return-object p1

    .line 246
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Hotspot name rule: the saved name is "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "; switching on with 06Link-\u2026 name only (system password/security/band unchanged)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object p1, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->INSTANCE:Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;

    invoke-virtual {p1, p2, v1}, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->withNameOnly(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public final namedConfiguration$shared_release(Landroid/content/Context;Landroid/net/wifi/WifiManager;Lkotlin/jvm/functions/Function1;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/wifi/WifiManager;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroid/net/wifi/WifiConfiguration;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "wifi"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDiagnostic"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0, p2}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;->savedConfiguration$shared_release(Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;->namedConfiguration$shared_release(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Lkotlin/jvm/functions/Function1;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public final savedConfiguration$shared_release(Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiConfiguration;
    .locals 3

    const-string/jumbo v0, "wifi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 213
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;

    .line 214
    const-class v1, Landroid/net/wifi/WifiManager;

    const-string v2, "getWifiApConfiguration"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_0

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 213
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 215
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    move-object v0, p1

    :goto_2
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method public final switchOnSystemHotspot(Landroid/content/Context;JLkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$SwitchOn;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$SwitchOn;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDiagnostic"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    sget-object p1, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$SwitchOn;->UNSUPPORTED:Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$SwitchOn;

    return-object p1

    .line 391
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, p1

    :cond_1
    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast v0, Landroid/net/wifi/WifiManager;

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_3

    .line 392
    sget-object p1, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$SwitchOn;->UNSUPPORTED:Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$SwitchOn;

    return-object p1

    .line 401
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long/2addr v3, p2

    .line 402
    invoke-static {v0}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;->switchOnSystemHotspot$state(Landroid/net/wifi/WifiManager;)Ljava/lang/Integer;

    move-result-object p2

    if-nez p2, :cond_4

    .line 403
    sget-object p1, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$SwitchOn;->UNSUPPORTED:Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$SwitchOn;

    return-object p1

    :cond_4
    const/16 p3, 0xd

    .line 404
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p3, :cond_5

    sget-object p1, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$SwitchOn;->ALREADY_ON:Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$SwitchOn;

    return-object p1

    :cond_5
    const/16 p3, 0xc

    .line 405
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, p3, :cond_7

    invoke-static {v0, v3, v4}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;->switchOnSystemHotspot$await$18(Landroid/net/wifi/WifiManager;J)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$SwitchOn;->SWITCHED_ON:Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$SwitchOn;

    return-object p1

    :cond_6
    sget-object p1, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$SwitchOn;->TIMED_OUT:Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$SwitchOn;

    return-object p1

    .line 407
    :cond_7
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;->canWriteSettings(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_8

    sget-object p1, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$SwitchOn;->NEEDS_PERMISSION:Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$SwitchOn;

    return-object p1

    .line 414
    :cond_8
    invoke-virtual {p0, p1, v0, p4}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;->namedConfiguration$shared_release(Landroid/content/Context;Landroid/net/wifi/WifiManager;Lkotlin/jvm/functions/Function1;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    .line 415
    invoke-static {v0, p2}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;->switchOnSystemHotspot$switchOn(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p3

    if-nez p3, :cond_a

    if-eqz p2, :cond_9

    invoke-static {v0, v2}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;->switchOnSystemHotspot$switchOn(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p2

    if-eqz p2, :cond_9

    goto :goto_1

    .line 416
    :cond_9
    sget-object p1, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$SwitchOn;->REFUSED:Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$SwitchOn;

    return-object p1

    .line 417
    :cond_a
    :goto_1
    invoke-static {v0, v3, v4}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;->switchOnSystemHotspot$await$18(Landroid/net/wifi/WifiManager;J)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 418
    sget-object p3, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->INSTANCE:Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;->savedConfiguration$shared_release(Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p4

    invoke-virtual {p3, p1, p4}, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->consumeRenewalIfApplied(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    :cond_b
    if-eqz p2, :cond_c

    .line 419
    sget-object p1, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$SwitchOn;->SWITCHED_ON:Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$SwitchOn;

    return-object p1

    :cond_c
    sget-object p1, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$SwitchOn;->TIMED_OUT:Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$SwitchOn;

    return-object p1
.end method
