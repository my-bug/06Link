.class public final Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;
.super Ljava/lang/Object;
.source "BydStandaloneHudOutput.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBydStandaloneHudOutput.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BydStandaloneHudOutput.kt\ncom/shilapi/xcertplay/hud/BydStandaloneHudOutput\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,68:1\n1#2:69\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J&\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0013J\u0006\u0010\u0014\u001a\u00020\rR\u0016\u0010\u0006\u001a\n \u0007*\u0004\u0018\u00010\u00030\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n \u0007*\u0004\u0018\u00010\t0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "app",
        "kotlin.jvm.PlatformType",
        "prefs",
        "Landroid/content/SharedPreferences;",
        "session",
        "Lcom/shilapi/xcertplay/hud/BydStandaloneSession;",
        "update",
        "",
        "icon",
        "",
        "exit",
        "distanceMeters",
        "road",
        "",
        "clear",
        "Companion",
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
.field public static final Companion:Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput$Companion;

.field private static final TAG:Ljava/lang/String; = "BYD-Standalone-Live"

.field private static final TARGET:Landroid/content/ComponentName;

.field private static volatile syntheticHold:Z


# instance fields
.field private final app:Landroid/content/Context;

.field private final prefs:Landroid/content/SharedPreferences;

.field private final session:Lcom/shilapi/xcertplay/hud/BydStandaloneSession;


# direct methods
.method public static synthetic $r8$lambda$FofJgXI6IC_pW62riaMhMrz8gjE(Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;->session$lambda$0(Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$N0QOAk400QftiTHLaHGcuVnXjd0(Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;->session$lambda$2(Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;->Companion:Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput$Companion;

    .line 41
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.byd.clusterdebug"

    const-string v2, "com.byd.clusterdebug.BroadcastReceiverCAN"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;->TARGET:Landroid/content/ComponentName;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;->app:Landroid/content/Context;

    .line 16
    const-string v0, "byd_standalone_hud"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;->prefs:Landroid/content/SharedPreferences;

    .line 17
    new-instance v2, Lcom/shilapi/xcertplay/hud/BydStandaloneSession;

    .line 18
    new-instance v3, Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput$$ExternalSyntheticLambda0;-><init>(Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;)V

    .line 23
    new-instance v4, Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput$$ExternalSyntheticLambda1;-><init>(Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;)V

    .line 26
    const-string v0, "pending_clear"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 17
    invoke-direct/range {v2 .. v8}, Lcom/shilapi/xcertplay/hud/BydStandaloneSession;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, p0, Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;->session:Lcom/shilapi/xcertplay/hud/BydStandaloneSession;

    .line 30
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Standalone navigation ready uid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " helper=none"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BYD-Standalone-Live"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object p1, p0

    check-cast p1, Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;

    iget-object p1, p0, Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;->session:Lcom/shilapi/xcertplay/hud/BydStandaloneSession;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/hud/BydStandaloneSession;->clear()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "Startup clear will retry"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$getSyntheticHold$cp()Z
    .locals 1

    .line 14
    sget-boolean v0, Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;->syntheticHold:Z

    return v0
.end method

.method public static final synthetic access$getTARGET$cp()Landroid/content/ComponentName;
    .locals 1

    .line 14
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;->TARGET:Landroid/content/ComponentName;

    return-object v0
.end method

.method public static final synthetic access$setSyntheticHold$cp(Z)V
    .locals 0

    .line 14
    sput-boolean p0, Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;->syntheticHold:Z

    return-void
.end method

.method private static final session$lambda$0(Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;Ljava/lang/String;)Lkotlin/Unit;
    .locals 6

    const-string v0, "packet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object p0, p0, Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;->app:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "byd.hud.NAVIGATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;->TARGET:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 20
    const-string v1, "normal"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 19
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 21
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p0

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 p1, 0x1

    new-array v1, p1, [C

    const/16 p1, 0x2c

    const/4 v2, 0x0

    aput-char p1, v1, v2

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dispatch uid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BYD-Standalone-Live"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final session$lambda$2(Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;Z)Lkotlin/Unit;
    .locals 1

    .line 24
    iget-object p0, p0, Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pending_clear"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 25
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 24
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot persist HUD cleanup"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;->session:Lcom/shilapi/xcertplay/hud/BydStandaloneSession;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/hud/BydStandaloneSession;->clear()V

    return-void
.end method

.method public final update(IIILjava/lang/String;)V
    .locals 1

    const-string v0, "road"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;->session:Lcom/shilapi/xcertplay/hud/BydStandaloneSession;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/hud/BydStandaloneSession;->update(IIILjava/lang/String;)V

    return-void
.end method
