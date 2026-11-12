.class public final Lcom/shilapi/xcertplay/ScreenRotation;
.super Ljava/lang/Object;
.source "CarLayout.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/ScreenRotation$Choice;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCarLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CarLayout.kt\ncom/shilapi/xcertplay/ScreenRotation\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,378:1\n1310#2,2:379\n1#3:381\n*S KotlinDebug\n*F\n+ 1 CarLayout.kt\ncom/shilapi/xcertplay/ScreenRotation\n*L\n311#1:379,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001:\u0001\u001fB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\r\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u000fJ\u0016\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0008J\u000e\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u000fJ\u001e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0018J\u000e\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u001bJ\u0008\u0010\u0019\u001a\u00020\u0018H\u0002J\u000e\u0010\u001c\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u001bR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/shilapi/xcertplay/ScreenRotation;",
        "",
        "<init>",
        "()V",
        "PREFS",
        "",
        "KEY",
        "trial",
        "Lcom/shilapi/xcertplay/ScreenRotation$Choice;",
        "getTrial",
        "()Lcom/shilapi/xcertplay/ScreenRotation$Choice;",
        "setTrial",
        "(Lcom/shilapi/xcertplay/ScreenRotation$Choice;)V",
        "saved",
        "context",
        "Landroid/content/Context;",
        "save",
        "",
        "choice",
        "effective",
        "requestedOrientation",
        "",
        "degrees",
        "naturalPortrait",
        "",
        "reverseDefault",
        "activity",
        "Landroid/app/Activity;",
        "apply",
        "forcedValues",
        "",
        "Choice",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/ScreenRotation;

.field private static final KEY:Ljava/lang/String; = "screen_rotation"

.field private static final PREFS:Ljava/lang/String; = "diplay"

.field private static final forcedValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile trial:Lcom/shilapi/xcertplay/ScreenRotation$Choice;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/shilapi/xcertplay/ScreenRotation;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/ScreenRotation;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/ScreenRotation;->INSTANCE:Lcom/shilapi/xcertplay/ScreenRotation;

    const/4 v0, 0x1

    .line 374
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x9

    .line 375
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Integer;

    aput-object v1, v6, v2

    aput-object v3, v6, v0

    const/4 v0, 0x2

    aput-object v4, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    .line 373
    invoke-static {v6}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/ScreenRotation;->forcedValues:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final reverseDefault()Z
    .locals 5

    const/4 v0, 0x0

    .line 350
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/ScreenRotation;

    .line 351
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 352
    const-string v2, "config_reverseDefaultRotation"

    const-string v3, "bool"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 353
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 350
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 354
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v0

    :cond_1
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final apply(Landroid/app/Activity;)Z
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/ScreenRotation;->effective(Landroid/content/Context;)Lcom/shilapi/xcertplay/ScreenRotation$Choice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/ScreenRotation$Choice;->getDegrees()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 363
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/ScreenRotation;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    const/4 v2, -0x1

    .line 364
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    :cond_0
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 365
    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v2

    if-eq v2, v1, :cond_1

    sget-object v2, Lcom/shilapi/xcertplay/ScreenRotation;->forcedValues:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_1
    return v0

    .line 368
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/ScreenRotation;->naturalPortrait(Landroid/app/Activity;)Z

    move-result v1

    invoke-direct {p0}, Lcom/shilapi/xcertplay/ScreenRotation;->reverseDefault()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/shilapi/xcertplay/ScreenRotation;->requestedOrientation(IZZ)I

    move-result v0

    .line 369
    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    if-eq v1, v0, :cond_3

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public final effective(Landroid/content/Context;)Lcom/shilapi/xcertplay/ScreenRotation$Choice;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    sget-object v0, Lcom/shilapi/xcertplay/ScreenRotation;->trial:Lcom/shilapi/xcertplay/ScreenRotation$Choice;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/ScreenRotation;->saved(Landroid/content/Context;)Lcom/shilapi/xcertplay/ScreenRotation$Choice;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final getTrial()Lcom/shilapi/xcertplay/ScreenRotation$Choice;
    .locals 1

    .line 307
    sget-object v0, Lcom/shilapi/xcertplay/ScreenRotation;->trial:Lcom/shilapi/xcertplay/ScreenRotation$Choice;

    return-object v0
.end method

.method public final naturalPortrait(Landroid/app/Activity;)Z
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/ScreenRotation;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 346
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz v0, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    if-nez p1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    move v1, p1

    :cond_3
    :goto_2
    return v1
.end method

.method public final requestedOrientation(IZZ)I
    .locals 2

    const/16 v0, 0xb4

    const/16 v1, 0x5a

    if-eqz p2, :cond_1

    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_5

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_0
    if-eqz p3, :cond_6

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_6

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_2

    if-eqz p3, :cond_4

    goto :goto_1

    :cond_2
    :goto_0
    const/16 p1, 0x8

    return p1

    :cond_3
    if-eqz p3, :cond_5

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_1
    const/16 p1, 0x9

    return p1

    :cond_6
    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method public final save(Landroid/content/Context;Lcom/shilapi/xcertplay/ScreenRotation$Choice;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "choice"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    const-string v0, "diplay"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "screen_rotation"

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/ScreenRotation$Choice;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final saved(Landroid/content/Context;)Lcom/shilapi/xcertplay/ScreenRotation$Choice;
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 309
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/ScreenRotation;

    .line 310
    const-string v1, "diplay"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "screen_rotation"

    sget-object v3, Lcom/shilapi/xcertplay/ScreenRotation$Choice;->AUTO:Lcom/shilapi/xcertplay/ScreenRotation$Choice;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/ScreenRotation$Choice;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 311
    invoke-static {}, Lcom/shilapi/xcertplay/ScreenRotation$Choice;->values()[Lcom/shilapi/xcertplay/ScreenRotation$Choice;

    move-result-object v1

    .line 379
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .line 311
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/ScreenRotation$Choice;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v4, v0

    .line 309
    :goto_1
    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 312
    :goto_2
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    move-object v0, p1

    :goto_3
    check-cast v0, Lcom/shilapi/xcertplay/ScreenRotation$Choice;

    if-nez v0, :cond_3

    sget-object v0, Lcom/shilapi/xcertplay/ScreenRotation$Choice;->AUTO:Lcom/shilapi/xcertplay/ScreenRotation$Choice;

    :cond_3
    return-object v0
.end method

.method public final setTrial(Lcom/shilapi/xcertplay/ScreenRotation$Choice;)V
    .locals 0

    .line 307
    sput-object p1, Lcom/shilapi/xcertplay/ScreenRotation;->trial:Lcom/shilapi/xcertplay/ScreenRotation$Choice;

    return-void
.end method
