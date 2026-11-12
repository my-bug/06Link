.class final Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$PendingIapTunnel;
.super Ljava/lang/Object;
.source "CarPlayMediaEngine.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingIapTunnel"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0008\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\u0015\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005H\u00c6\u0003J)\u0010\u0010\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0014\u0008\u0002\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005H\u00c6\u0001J\u0013\u0010\u0011\u001a\u00020\u00072\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$PendingIapTunnel;",
        "",
        "bridge",
        "Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;",
        "handler",
        "Lkotlin/Function1;",
        "Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;",
        "",
        "<init>",
        "(Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;Lkotlin/jvm/functions/Function1;)V",
        "getBridge",
        "()Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;",
        "getHandler",
        "()Lkotlin/jvm/functions/Function1;",
        "component1",
        "component2",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "",
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
.field private final bridge:Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;

.field private final handler:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "bridge"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$PendingIapTunnel;->bridge:Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;

    .line 59
    iput-object p2, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$PendingIapTunnel;->handler:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$PendingIapTunnel;Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$PendingIapTunnel;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$PendingIapTunnel;->bridge:Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$PendingIapTunnel;->handler:Lkotlin/jvm/functions/Function1;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$PendingIapTunnel;->copy(Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$PendingIapTunnel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$PendingIapTunnel;->bridge:Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;

    return-object v0
.end method

.method public final component2()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$PendingIapTunnel;->handler:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final copy(Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$PendingIapTunnel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$PendingIapTunnel;"
        }
    .end annotation

    const-string v0, "bridge"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$PendingIapTunnel;

    invoke-direct {v0, p1, p2}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$PendingIapTunnel;-><init>(Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$PendingIapTunnel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$PendingIapTunnel;

    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$PendingIapTunnel;->bridge:Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;

    iget-object v3, p1, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$PendingIapTunnel;->bridge:Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$PendingIapTunnel;->handler:Lkotlin/jvm/functions/Function1;

    iget-object p1, p1, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$PendingIapTunnel;->handler:Lkotlin/jvm/functions/Function1;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getBridge()Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$PendingIapTunnel;->bridge:Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;

    return-object v0
.end method

.method public final getHandler()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$PendingIapTunnel;->handler:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$PendingIapTunnel;->bridge:Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$PendingIapTunnel;->handler:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$PendingIapTunnel;->bridge:Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;

    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$PendingIapTunnel;->handler:Lkotlin/jvm/functions/Function1;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PendingIapTunnel(bridge="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", handler="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
