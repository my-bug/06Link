.class public final Lcom/shilapi/xcertplay/CarPlayVideoPlayerHost$Companion;
.super Ljava/lang/Object;
.source "CarPlayVideoPlayerHost.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/CarPlayVideoPlayerHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/CarPlayVideoPlayerHost$Companion;",
        "",
        "<init>",
        "()V",
        "create",
        "Lcom/shilapi/xcertplay/CarPlayVideoPlayerHost;",
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
.field static final synthetic $$INSTANCE:Lcom/shilapi/xcertplay/CarPlayVideoPlayerHost$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/CarPlayVideoPlayerHost$Companion;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/CarPlayVideoPlayerHost$Companion;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/CarPlayVideoPlayerHost$Companion;->$$INSTANCE:Lcom/shilapi/xcertplay/CarPlayVideoPlayerHost$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create()Lcom/shilapi/xcertplay/CarPlayVideoPlayerHost;
    .locals 4

    .line 24
    sget-object v0, Lcom/shilapi/xcertplay/PlatformVideoPlayer;->INSTANCE:Lcom/shilapi/xcertplay/PlatformVideoPlayer;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/PlatformVideoPlayer;->getVideoViewAvailable()Z

    move-result v0

    const-string v1, "null cannot be cast to non-null type com.shilapi.xcertplay.CarPlayVideoPlayerHost"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 25
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/CarPlayVideoPlayerHost$Companion;

    .line 26
    const-string v0, "com.shilapi.xcertplay.CarPlayVideoMpHost"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 26
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/shilapi/xcertplay/CarPlayVideoPlayerHost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :cond_0
    sget-object v0, Lcom/shilapi/xcertplay/PlatformVideoPlayer;->INSTANCE:Lcom/shilapi/xcertplay/PlatformVideoPlayer;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/PlatformVideoPlayer;->getCodecPipelineAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/CarPlayVideoPlayerHost$Companion;

    .line 33
    const-string v0, "com.shilapi.xcertplay.CarPlayVideoCodecHost"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 33
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/shilapi/xcertplay/CarPlayVideoPlayerHost;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v2
.end method
