.class public final Lcom/shilapi/xcertplay/FreeAutoApplication;
.super Landroidx/multidex/MultiDexApplication;
.source "FreeAutoApplication.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/FreeAutoApplication$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFreeAutoApplication.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FreeAutoApplication.kt\ncom/shilapi/xcertplay/FreeAutoApplication\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,41:1\n1#2:42\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\u0005H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/FreeAutoApplication;",
        "Landroidx/multidex/MultiDexApplication;",
        "<init>",
        "()V",
        "onCreate",
        "",
        "onTrimMemory",
        "level",
        "",
        "onLowMemory",
        "Companion",
        "mobile_carRelease"
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
.field public static final Companion:Lcom/shilapi/xcertplay/FreeAutoApplication$Companion;

.field private static final TAG:Ljava/lang/String; = "06LinkMem"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/FreeAutoApplication$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/FreeAutoApplication$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/FreeAutoApplication;->Companion:Lcom/shilapi/xcertplay/FreeAutoApplication$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroidx/multidex/MultiDexApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .line 15
    invoke-super {p0}, Landroidx/multidex/MultiDexApplication;->onCreate()V

    .line 16
    sget-object v0, Lcom/shilapi/xcertplay/CrashRecorder;->INSTANCE:Lcom/shilapi/xcertplay/CrashRecorder;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/shilapi/xcertplay/E01LogPolicy;->install(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/CrashRecorder;->install(Landroid/content/Context;)V

    .line 17
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/FreeAutoApplication;

    const-string v0, "06LinkMem"

    sget-object v2, Lcom/shilapi/xcertplay/compat/LowMemoryGate;->INSTANCE:Lcom/shilapi/xcertplay/compat/LowMemoryGate;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/shilapi/xcertplay/compat/LowMemoryGate;->summary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :goto_0
    sget-object v0, Lcom/shilapi/xcertplay/compat/LowMemoryGate;->INSTANCE:Lcom/shilapi/xcertplay/compat/LowMemoryGate;

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/compat/LowMemoryGate;->postponeHeavyStartup(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    sget-object v0, Lcom/shilapi/xcertplay/LogcatRecorder;->INSTANCE:Lcom/shilapi/xcertplay/LogcatRecorder;

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/LogcatRecorder;->start(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 4

    const-string v0, "onLowMemory "

    .line 32
    invoke-super {p0}, Landroidx/multidex/MultiDexApplication;->onLowMemory()V

    .line 33
    sget-object v1, Lcom/shilapi/xcertplay/compat/LowMemoryGate;->INSTANCE:Lcom/shilapi/xcertplay/compat/LowMemoryGate;

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Lcom/shilapi/xcertplay/compat/LowMemoryGate;->trimForPressure(I)V

    .line 34
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/FreeAutoApplication;

    const-string v1, "06LinkMem"

    sget-object v2, Lcom/shilapi/xcertplay/compat/LowMemoryGate;->INSTANCE:Lcom/shilapi/xcertplay/compat/LowMemoryGate;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/shilapi/xcertplay/compat/LowMemoryGate;->summary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 4

    const-string/jumbo v0, "trim level="

    .line 24
    invoke-super {p0, p1}, Landroidx/multidex/MultiDexApplication;->onTrimMemory(I)V

    .line 25
    sget-object v1, Lcom/shilapi/xcertplay/compat/LowMemoryGate;->INSTANCE:Lcom/shilapi/xcertplay/compat/LowMemoryGate;

    invoke-virtual {v1, p1}, Lcom/shilapi/xcertplay/compat/LowMemoryGate;->trimForPressure(I)V

    const/16 v1, 0xa

    if-ge p1, v1, :cond_1

    const/16 v1, 0x50

    if-eq p1, v1, :cond_1

    const/16 v1, 0x3c

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 27
    :cond_1
    :goto_0
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/FreeAutoApplication;

    const-string v1, "06LinkMem"

    sget-object v2, Lcom/shilapi/xcertplay/compat/LowMemoryGate;->INSTANCE:Lcom/shilapi/xcertplay/compat/LowMemoryGate;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/shilapi/xcertplay/compat/LowMemoryGate;->summary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
