.class public final Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;
.super Ljava/lang/Object;
.source "WirelessGroupKeeper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Companion;,
        Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Parked;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWirelessGroupKeeper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WirelessGroupKeeper.kt\ncom/shilapi/xcertplay/network/WirelessGroupKeeper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,88:1\n1#2:89\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\u0018\u0000 (2\u00020\u0001:\u0002\'(BG\u0012>\u0008\u0002\u0010\u0002\u001a8\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0007\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\n\u0012\u0004\u0012\u00020\t0\u0003\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0016\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cJ.\u0010\u001d\u001a\u0010\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u001e2\u0018\u0010\u001f\u001a\u0014\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020 0\u0003J\u000e\u0010!\u001a\u00020\t2\u0006\u0010\"\u001a\u00020\u0013J\u0010\u0010&\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\u001aH\u0002RD\u0010\u0002\u001a8\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0007\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\n\u0012\u0004\u0012\u00020\t0\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R&\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\t0\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u0011\u0010#\u001a\u00020 8F\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010%\u00a8\u0006)"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;",
        "",
        "schedule",
        "Lkotlin/Function2;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "delayMillis",
        "Lkotlin/Function0;",
        "",
        "action",
        "<init>",
        "(Lkotlin/jvm/functions/Function2;)V",
        "parked",
        "Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Parked;",
        "token",
        "",
        "log",
        "Lkotlin/Function1;",
        "",
        "getLog",
        "()Lkotlin/jvm/functions/Function1;",
        "setLog",
        "(Lkotlin/jvm/functions/Function1;)V",
        "park",
        "manager",
        "Lcom/shilapi/xcertplay/network/WirelessHotspotManager;",
        "info",
        "Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;",
        "reclaim",
        "Lkotlin/Pair;",
        "stillWorks",
        "",
        "closeParked",
        "why",
        "hasParked",
        "getHasParked",
        "()Z",
        "closeQuietly",
        "Parked",
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
.field public static final Companion:Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Companion;

.field public static final PARK_MILLIS:J = 0x2bf20L

.field private static final shared:Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;


# instance fields
.field private volatile log:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private parked:Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Parked;

.field private final schedule:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Long;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private token:I


# direct methods
.method public static synthetic $r8$lambda$j19693rVdvybXs-WyEBSXkk0bzI(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;->log$lambda$0(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tNwzhFK-NOh3X9jGu7mw5jRwYKQ(Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;Lkotlin/jvm/internal/Ref$IntRef;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;->park$lambda$7(Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;Lkotlin/jvm/internal/Ref$IntRef;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;->Companion:Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Companion;

    .line 78
    new-instance v0, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;-><init>(Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;->shared:Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;-><init>(Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "schedule"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;->schedule:Lkotlin/jvm/functions/Function2;

    .line 21
    new-instance p1, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$$ExternalSyntheticLambda1;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;->log:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 13
    new-instance p1, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$1;

    sget-object p2, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;->Companion:Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Companion;

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$1;-><init>(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    .line 11
    :cond_0
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;-><init>(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static final synthetic access$getShared$cp()Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;
    .locals 1

    .line 11
    sget-object v0, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;->shared:Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;

    return-object v0
.end method

.method private final closeQuietly(Lcom/shilapi/xcertplay/network/WirelessHotspotManager;)V
    .locals 1

    .line 70
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;

    invoke-interface {p1}, Lcom/shilapi/xcertplay/network/WirelessHotspotManager;->close()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

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

.method private static final log$lambda$0(Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final park$lambda$7(Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;Lkotlin/jvm/internal/Ref$IntRef;)Lkotlin/Unit;
    .locals 3

    .line 35
    monitor-enter p0

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;->parked:Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Parked;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Parked;->getToken()I

    move-result v2

    iget p1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;->parked:Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Parked;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    .line 35
    :cond_1
    monitor-exit p0

    if-eqz v1, :cond_2

    .line 39
    iget-object p1, p0, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;->log:Lkotlin/jvm/functions/Function1;

    const-string/jumbo v0, "wireless: nobody took the kept Wi-Fi Direct group within 180s; closing it"

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Parked;->getManager()Lcom/shilapi/xcertplay/network/WirelessHotspotManager;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;->closeQuietly(Lcom/shilapi/xcertplay/network/WirelessHotspotManager;)V

    .line 42
    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_0
    move-exception p1

    .line 35
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final closeParked(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "why"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;->parked:Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Parked;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;->parked:Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Parked;

    iget v1, p0, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;->token:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;->token:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-nez v0, :cond_0

    return-void

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;->log:Lkotlin/jvm/functions/Function1;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "wireless: closing the kept Wi-Fi Direct group ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Parked;->getManager()Lcom/shilapi/xcertplay/network/WirelessHotspotManager;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;->closeQuietly(Lcom/shilapi/xcertplay/network/WirelessHotspotManager;)V

    return-void

    :catchall_0
    move-exception p1

    .line 62
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getHasParked()Z
    .locals 1

    monitor-enter p0

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;->parked:Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Parked;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getLog()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;->log:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final park(Lcom/shilapi/xcertplay/network/WirelessHotspotManager;Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;)V
    .locals 7

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 26
    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 27
    monitor-enter p0

    .line 28
    :try_start_0
    iget-object v2, p0, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;->parked:Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Parked;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Parked;->getManager()Lcom/shilapi/xcertplay/network/WirelessHotspotManager;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eq v2, p1, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v5, :cond_1

    move-object v4, v2

    :cond_1
    iput-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 29
    iget v2, p0, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;->token:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;->token:I

    iput v2, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 30
    new-instance v2, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Parked;

    iget v3, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-direct {v2, p1, p2, v3}, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Parked;-><init>(Lcom/shilapi/xcertplay/network/WirelessHotspotManager;Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;I)V

    iput-object v2, p0, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;->parked:Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Parked;

    .line 31
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit p0

    .line 32
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/shilapi/xcertplay/network/WirelessHotspotManager;

    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;->closeQuietly(Lcom/shilapi/xcertplay/network/WirelessHotspotManager;)V

    .line 33
    :cond_2
    iget-object p1, p0, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;->log:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->getSsid()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "wireless: keeping the Wi-Fi Direct group up for the next try (ssid="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", same password)"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object p1, p0, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;->schedule:Lkotlin/jvm/functions/Function2;

    const-wide/32 v2, 0x2bf20

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    new-instance v0, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v1}, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$$ExternalSyntheticLambda0;-><init>(Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;Lkotlin/jvm/internal/Ref$IntRef;)V

    invoke-interface {p1, p2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p1

    .line 27
    monitor-exit p0

    throw p1
.end method

.method public final reclaim(Lkotlin/jvm/functions/Function2;)Lkotlin/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/shilapi/xcertplay/network/WirelessHotspotManager;",
            "-",
            "Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lkotlin/Pair<",
            "Lcom/shilapi/xcertplay/network/WirelessHotspotManager;",
            "Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "stillWorks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;->parked:Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Parked;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;->parked:Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Parked;

    iget v2, p0, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;->token:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;->token:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    if-nez v0, :cond_0

    return-object v1

    .line 51
    :cond_0
    :try_start_1
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v2, p0

    check-cast v2, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Parked;->getManager()Lcom/shilapi/xcertplay/network/WirelessHotspotManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Parked;->getInfo()Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object p1, v2

    :cond_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 52
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Parked;->getManager()Lcom/shilapi/xcertplay/network/WirelessHotspotManager;

    move-result-object p1

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Parked;->getInfo()Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    goto :goto_1

    .line 54
    :cond_2
    iget-object p1, p0, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;->log:Lkotlin/jvm/functions/Function1;

    const-string/jumbo v2, "wireless: the kept Wi-Fi Direct group stopped working; starting a new one"

    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Parked;->getManager()Lcom/shilapi/xcertplay/network/WirelessHotspotManager;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;->closeQuietly(Lcom/shilapi/xcertplay/network/WirelessHotspotManager;)V

    :goto_1
    return-object v1

    :catchall_1
    move-exception p1

    .line 50
    monitor-exit p0

    throw p1
.end method

.method public final setLog(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;->log:Lkotlin/jvm/functions/Function1;

    return-void
.end method
