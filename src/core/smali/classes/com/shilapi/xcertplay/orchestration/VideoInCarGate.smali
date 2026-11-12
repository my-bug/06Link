.class public final Lcom/shilapi/xcertplay/orchestration/VideoInCarGate;
.super Ljava/lang/Object;
.source "CarPlayVideoListener.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/orchestration/VideoInCarGate$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCarPlayVideoListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CarPlayVideoListener.kt\ncom/shilapi/xcertplay/orchestration/VideoInCarGate\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,63:1\n1#2:64\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000b\u0008\u0000\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B+\u0012\u000e\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0006\u0010\u000b\u001a\u00020\u0007J\u0019\u0010\u000c\u001a\u00020\u00072\u0008\u0010\r\u001a\u0004\u0018\u00010\u0004H\u0000\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0008\u0010\u0010\u001a\u00020\u0007H\u0016R\u0016\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/orchestration/VideoInCarGate;",
        "Ljava/io/Closeable;",
        "readParked",
        "Lkotlin/Function0;",
        "",
        "onChanged",
        "Lkotlin/Function1;",
        "",
        "<init>",
        "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V",
        "closed",
        "start",
        "update",
        "parked",
        "update$shared_release",
        "(Ljava/lang/Boolean;)V",
        "close",
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
.field private static final Companion:Lcom/shilapi/xcertplay/orchestration/VideoInCarGate$Companion;

.field public static final POLL_MILLIS:J = 0x3e8L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private volatile closed:Z

.field private final onChanged:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final readParked:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$vVFtSjN4sCzoQ-61EVG1W_XiRxc(Lcom/shilapi/xcertplay/orchestration/VideoInCarGate;)V
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/orchestration/VideoInCarGate;->start$lambda$0(Lcom/shilapi/xcertplay/orchestration/VideoInCarGate;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/orchestration/VideoInCarGate$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/orchestration/VideoInCarGate$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/orchestration/VideoInCarGate;->Companion:Lcom/shilapi/xcertplay/orchestration/VideoInCarGate$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "readParked"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onChanged"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/shilapi/xcertplay/orchestration/VideoInCarGate;->readParked:Lkotlin/jvm/functions/Function0;

    .line 30
    iput-object p2, p0, Lcom/shilapi/xcertplay/orchestration/VideoInCarGate;->onChanged:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method private static final start$lambda$0(Lcom/shilapi/xcertplay/orchestration/VideoInCarGate;)V
    .locals 2

    .line 36
    :goto_0
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/VideoInCarGate;->closed:Z

    if-nez v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/VideoInCarGate;->readParked:Lkotlin/jvm/functions/Function0;

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/orchestration/VideoInCarGate;->update$shared_release(Ljava/lang/Boolean;)V

    const-wide/16 v0, 0x3e8

    .line 39
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/VideoInCarGate;->closed:Z

    .line 56
    sget-object v0, Lcom/shilapi/xcertplay/airplay/VideoInCar;->INSTANCE:Lcom/shilapi/xcertplay/airplay/VideoInCar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/airplay/VideoInCar;->setAllowed(Z)V

    return-void
.end method

.method public final start()V
    .locals 3

    .line 35
    new-instance v0, Ljava/lang/Thread;

    .line 44
    new-instance v1, Lcom/shilapi/xcertplay/orchestration/VideoInCarGate$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/shilapi/xcertplay/orchestration/VideoInCarGate$$ExternalSyntheticLambda0;-><init>(Lcom/shilapi/xcertplay/orchestration/VideoInCarGate;)V

    const-string v2, "diplay-video-gate"

    .line 35
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final update$shared_release(Ljava/lang/Boolean;)V
    .locals 1

    const/4 v0, 0x1

    .line 48
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    .line 49
    sget-object v0, Lcom/shilapi/xcertplay/airplay/VideoInCar;->INSTANCE:Lcom/shilapi/xcertplay/airplay/VideoInCar;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/VideoInCar;->getAllowed()Z

    move-result v0

    if-eq p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/VideoInCarGate;->closed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    sget-object v0, Lcom/shilapi/xcertplay/airplay/VideoInCar;->INSTANCE:Lcom/shilapi/xcertplay/airplay/VideoInCar;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/airplay/VideoInCar;->setAllowed(Z)V

    .line 51
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/VideoInCarGate;->onChanged:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method
