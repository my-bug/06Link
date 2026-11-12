.class public final Lcom/shilapi/xcertplay/network/CarPlayVpnService$Companion;
.super Ljava/lang/Object;
.source "CarPlayVpnService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/network/CarPlayVpnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\u000eX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000eX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000eX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/CarPlayVpnService$Companion;",
        "",
        "<init>",
        "()V",
        "BIND_WAIT_MILLIS",
        "",
        "BIND_RETRY_MILLIS",
        "MAX_RELISTENS",
        "",
        "acceptedConnections",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "getAcceptedConnections",
        "()Ljava/util/concurrent/atomic/AtomicLong;",
        "TAG",
        "",
        "LINK_PREFIX",
        "LINK_LOCAL_ROUTE",
        "SESSION_NAME",
        "TUN_MTU",
        "prepare",
        "Landroid/content/Intent;",
        "context",
        "Landroid/content/Context;",
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
.method private constructor <init>()V
    .locals 0

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAcceptedConnections()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    .line 466
    # getter for: Lcom/shilapi/xcertplay/network/CarPlayVpnService;->acceptedConnections:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {}, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->access$getAcceptedConnections$cp()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    return-object v0
.end method

.method public final prepare(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 475
    invoke-static {p1}, Landroid/net/VpnService;->prepare(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method
