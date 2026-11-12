.class public final Lcom/shilapi/xcertplay/hud/BydStandaloneSession;
.super Ljava/lang/Object;
.source "BydStandaloneSession.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBydStandaloneSession.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BydStandaloneSession.kt\ncom/shilapi/xcertplay/hud/BydStandaloneSession\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,52:1\n1#2:53\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001BI\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\u0003\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u0012\u000e\u0008\u0002\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0004\u0008\u000c\u0010\rJ*\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00142\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0004J\u0006\u0010\u0018\u001a\u00020\u0005R\u001a\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/hud/BydStandaloneSession;",
        "",
        "send",
        "Lkotlin/Function1;",
        "",
        "",
        "rememberPendingClear",
        "",
        "needsRecovery",
        "nanoTime",
        "Lkotlin/Function0;",
        "",
        "<init>",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function0;)V",
        "showing",
        "recovering",
        "lastPacket",
        "lastSendNs",
        "update",
        "icon",
        "",
        "exit",
        "distanceMeters",
        "road",
        "clear",
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


# instance fields
.field private lastPacket:Ljava/lang/String;

.field private lastSendNs:J

.field private final nanoTime:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private recovering:Z

.field private final rememberPendingClear:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final send:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private showing:Z


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;Z",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "send"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rememberPendingClear"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nanoTime"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/shilapi/xcertplay/hud/BydStandaloneSession;->send:Lkotlin/jvm/functions/Function1;

    .line 6
    iput-object p2, p0, Lcom/shilapi/xcertplay/hud/BydStandaloneSession;->rememberPendingClear:Lkotlin/jvm/functions/Function1;

    .line 8
    iput-object p4, p0, Lcom/shilapi/xcertplay/hud/BydStandaloneSession;->nanoTime:Lkotlin/jvm/functions/Function0;

    .line 10
    iput-boolean p3, p0, Lcom/shilapi/xcertplay/hud/BydStandaloneSession;->showing:Z

    .line 11
    iput-boolean p3, p0, Lcom/shilapi/xcertplay/hud/BydStandaloneSession;->recovering:Z

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 8
    sget-object p4, Lcom/shilapi/xcertplay/hud/BydStandaloneSession$1;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydStandaloneSession$1;

    check-cast p4, Lkotlin/jvm/functions/Function0;

    .line 4
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/hud/BydStandaloneSession;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic update$default(Lcom/shilapi/xcertplay/hud/BydStandaloneSession;IIILjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 15
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/hud/BydStandaloneSession;->update(IIILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 3

    .line 41
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/hud/BydStandaloneSession;->showing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/hud/BydStandaloneSession;->recovering:Z

    .line 43
    iget-object v0, p0, Lcom/shilapi/xcertplay/hud/BydStandaloneSession;->send:Lkotlin/jvm/functions/Function1;

    sget-object v1, Lcom/shilapi/xcertplay/hud/BydStandalonePackets;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydStandalonePackets;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/hud/BydStandalonePackets;->clear()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/shilapi/xcertplay/hud/BydStandaloneSession;->rememberPendingClear:Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/hud/BydStandaloneSession;->showing:Z

    .line 47
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/hud/BydStandaloneSession;->recovering:Z

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/shilapi/xcertplay/hud/BydStandaloneSession;->lastPacket:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 49
    iput-wide v0, p0, Lcom/shilapi/xcertplay/hud/BydStandaloneSession;->lastSendNs:J

    return-void
.end method

.method public final update(IIILjava/lang/String;)V
    .locals 4

    .line 16
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/hud/BydStandaloneSession;->recovering:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/hud/BydStandaloneSession;->clear()V

    .line 17
    :cond_0
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydStandalonePackets;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydStandalonePackets;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/hud/BydStandalonePackets;->guidance(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 18
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/hud/BydStandaloneSession;->clear()V

    return-void

    .line 20
    :cond_1
    :try_start_0
    iget-boolean p2, p0, Lcom/shilapi/xcertplay/hud/BydStandaloneSession;->showing:Z

    if-nez p2, :cond_2

    .line 22
    iget-object p2, p0, Lcom/shilapi/xcertplay/hud/BydStandaloneSession;->rememberPendingClear:Lkotlin/jvm/functions/Function1;

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-interface {p2, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iput-boolean p3, p0, Lcom/shilapi/xcertplay/hud/BydStandaloneSession;->showing:Z

    .line 24
    iget-object p2, p0, Lcom/shilapi/xcertplay/hud/BydStandaloneSession;->send:Lkotlin/jvm/functions/Function1;

    sget-object p3, Lcom/shilapi/xcertplay/hud/BydStandalonePackets;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydStandalonePackets;

    invoke-virtual {p3}, Lcom/shilapi/xcertplay/hud/BydStandalonePackets;->start()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :cond_2
    iget-object p2, p0, Lcom/shilapi/xcertplay/hud/BydStandaloneSession;->nanoTime:Lkotlin/jvm/functions/Function0;

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    .line 27
    iget-object p4, p0, Lcom/shilapi/xcertplay/hud/BydStandaloneSession;->lastPacket:Ljava/lang/String;

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    iget-wide v0, p0, Lcom/shilapi/xcertplay/hud/BydStandaloneSession;->lastSendNs:J

    sub-long v0, p2, v0

    const-wide/32 v2, 0x3b9aca00

    cmp-long p4, v0, v2

    if-ltz p4, :cond_3

    goto :goto_0

    :cond_3
    return-void

    .line 28
    :cond_4
    :goto_0
    iget-object p4, p0, Lcom/shilapi/xcertplay/hud/BydStandaloneSession;->send:Lkotlin/jvm/functions/Function1;

    invoke-interface {p4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iput-object p1, p0, Lcom/shilapi/xcertplay/hud/BydStandaloneSession;->lastPacket:Ljava/lang/String;

    .line 30
    iput-wide p2, p0, Lcom/shilapi/xcertplay/hud/BydStandaloneSession;->lastSendNs:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 34
    iget-boolean p2, p0, Lcom/shilapi/xcertplay/hud/BydStandaloneSession;->showing:Z

    iput-boolean p2, p0, Lcom/shilapi/xcertplay/hud/BydStandaloneSession;->recovering:Z

    .line 35
    :try_start_1
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/hud/BydStandaloneSession;->clear()V

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    sget-object p3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :goto_1
    throw p1
.end method
