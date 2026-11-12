.class public final Lcom/shilapi/xcertplay/hud/BydDisplayMatch;
.super Ljava/lang/Object;
.source "BydDisplayMatch.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/hud/BydDisplayMatch$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBydDisplayMatch.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BydDisplayMatch.kt\ncom/shilapi/xcertplay/hud/BydDisplayMatch\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,33:1\n1#2:34\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u000cB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000bH\u0002\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/hud/BydDisplayMatch;",
        "",
        "<init>",
        "()V",
        "match",
        "Lcom/shilapi/xcertplay/hud/BydDisplayMatch$Result;",
        "context",
        "Landroid/content/Context;",
        "installed",
        "",
        "pkg",
        "",
        "Result",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/hud/BydDisplayMatch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/hud/BydDisplayMatch;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/hud/BydDisplayMatch;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/hud/BydDisplayMatch;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydDisplayMatch;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final installed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 31
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/hud/BydDisplayMatch;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public final match(Landroid/content/Context;)Lcom/shilapi/xcertplay/hud/BydDisplayMatch$Result;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 23
    new-instance v0, Lcom/shilapi/xcertplay/hud/BydDisplayMatch$Result;

    .line 24
    sget-object v1, Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;->Companion:Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput$Companion;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput$Companion;->available(Landroid/content/Context;)Z

    move-result v1

    .line 25
    const-string v2, "com.ts.car.someip.service"

    invoke-direct {p0, p1, v2}, Lcom/shilapi/xcertplay/hud/BydDisplayMatch;->installed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 26
    const-string v3, "com.byd.amapservice"

    invoke-direct {p0, p1, v3}, Lcom/shilapi/xcertplay/hud/BydDisplayMatch;->installed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    .line 23
    invoke-direct {v0, v1, v2, p1}, Lcom/shilapi/xcertplay/hud/BydDisplayMatch$Result;-><init>(ZZZ)V

    return-object v0
.end method
