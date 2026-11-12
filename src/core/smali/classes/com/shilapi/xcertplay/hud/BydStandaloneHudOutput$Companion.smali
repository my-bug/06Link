.class public final Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput$Companion;
.super Ljava/lang/Object;
.source "BydStandaloneHudOutput.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u0011R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput$Companion;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "TARGET",
        "Landroid/content/ComponentName;",
        "syntheticHold",
        "",
        "getSyntheticHold",
        "()Z",
        "setSyntheticHold",
        "(Z)V",
        "create",
        "Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;",
        "context",
        "Landroid/content/Context;",
        "available",
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
.method public static synthetic $r8$lambda$o11cwosNIv28PFKlrNsbVfr3Hhw(B)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput$Companion;->available$lambda$1$lambda$0(B)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput$Companion;-><init>()V

    return-void
.end method

.method private static final available$lambda$1$lambda$0(B)Ljava/lang/CharSequence;
    .locals 3

    and-int/lit16 p0, p0, 0xff

    .line 62
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%02x"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "format(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method


# virtual methods
.method public final available(Landroid/content/Context;)Z
    .locals 13

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x0

    if-lt v0, v1, :cond_7

    const/4 v0, 0x4

    .line 51
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.andrerinas.headunitrevived"

    aput-object v1, v0, v2

    const-string v1, "com.shihab.diplay"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "com.andrerinas.headunitrevived.bydhudtest"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "com.shihab.diplay.hudtest"

    const/4 v4, 0x3

    aput-object v1, v0, v4

    .line 49
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 52
    :cond_0
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "BYD-AUTO/IVI/IVI:13/TP1A.220624.014/eng.build20260722.221155:user/release-keys"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 53
    :cond_1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput$Companion;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 55
    # getter for: Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;->TARGET:Landroid/content/ComponentName;
    invoke-static {}, Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;->access$getTARGET$cp()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 56
    # getter for: Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;->TARGET:Landroid/content/ComponentName;
    invoke-static {}, Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;->access$getTARGET$cp()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    const-string v1, "getReceiverInfo(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-static {v0}, Landroidx/core/app/NavUtils$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/PackageInfo;)Landroid/content/pm/SigningInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {v1}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/content/pm/SigningInfo;)[Landroid/content/pm/Signature;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 58
    :cond_2
    invoke-static {v0}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/content/pm/PackageInfo;)J

    move-result-wide v4

    const-wide/32 v6, 0xa1c22c

    cmp-long v8, v4, v6

    if-nez v8, :cond_4

    .line 59
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_4

    .line 60
    iget-boolean v0, p1, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v0, :cond_4

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_4

    .line 61
    :cond_3
    array-length p1, v1

    if-ne p1, v3, :cond_4

    const-string p1, "SHA-256"

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    aget-object v0, v1, v2

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    const-string p1, "digest(...)"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    const-string p1, ""

    move-object v5, p1

    check-cast v5, Ljava/lang/CharSequence;

    new-instance v10, Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput$Companion$$ExternalSyntheticLambda1;

    invoke-direct {v10}, Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput$Companion$$ExternalSyntheticLambda1;-><init>()V

    const/16 v11, 0x1e

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v12}, Lkotlin/collections/ArraysKt;->joinToString$default([BLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 63
    const-string v0, "efe3ca8ada0d10c655c3df9910ad2ebc121a47d9a6358434eb24074309933efc"

    .line 61
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    .line 63
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 53
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_5
    :goto_1
    return v2

    :catchall_0
    move-exception v0

    move-object p1, v0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 64
    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object p1, v0

    :cond_6
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_7
    :goto_3
    return v2
.end method

.method public final create(Landroid/content/Context;)Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput$Companion;->available(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;

    invoke-direct {v0, p1, v1}, Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;-><init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_0
    return-object v1
.end method

.method public final getSyntheticHold()Z
    .locals 1

    .line 42
    # getter for: Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;->syntheticHold:Z
    invoke-static {}, Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;->access$getSyntheticHold$cp()Z

    move-result v0

    return v0
.end method

.method public final setSyntheticHold(Z)V
    .locals 0

    .line 42
    invoke-static {p1}, Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;->access$setSyntheticHold$cp(Z)V

    return-void
.end method
