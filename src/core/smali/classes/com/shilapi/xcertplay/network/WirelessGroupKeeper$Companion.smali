.class public final Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Companion;
.super Ljava/lang/Object;
.source "WirelessGroupKeeper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWirelessGroupKeeper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WirelessGroupKeeper.kt\ncom/shilapi/xcertplay/network/WirelessGroupKeeper$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,88:1\n1#2:89\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u000eH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Companion;",
        "",
        "<init>",
        "()V",
        "PARK_MILLIS",
        "",
        "shared",
        "Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;",
        "getShared",
        "()Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;",
        "daemonAfter",
        "",
        "delayMillis",
        "action",
        "Lkotlin/Function0;",
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
.method public static synthetic $r8$lambda$a2o_9PIZCmEViKzb0eM4eQGR3bw(JLkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Companion;->daemonAfter$lambda$0(JLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$daemonAfter(Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Companion;JLkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Companion;->daemonAfter(JLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final daemonAfter(JLkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/lang/Thread;

    .line 84
    new-instance v1, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2, p3}, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Companion$$ExternalSyntheticLambda0;-><init>(JLkotlin/jvm/functions/Function0;)V

    const-string/jumbo p1, "wifi-group-keeper"

    .line 81
    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 84
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static final daemonAfter$lambda$0(JLkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 82
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :catch_0
    return-void
.end method


# virtual methods
.method public final getShared()Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;
    .locals 1

    .line 78
    # getter for: Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;->shared:Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;
    invoke-static {}, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;->access$getShared$cp()Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;

    move-result-object v0

    return-object v0
.end method
