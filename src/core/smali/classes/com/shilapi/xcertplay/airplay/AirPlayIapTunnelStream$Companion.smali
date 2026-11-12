.class final Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream$Companion;
.super Ljava/lang/Object;
.source "AirPlayIapTunnelStream.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0003\u0008\u0082\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream$Companion;",
        "",
        "<init>",
        "()V",
        "MAX_PENDING_BYTES",
        "",
        "PEER_CONNECT_TIMEOUT_MILLIS",
        "",
        "EVENT_READY_TIMEOUT_MILLIS",
        "NANOS_PER_MILLISECOND",
        "EMPTY",
        "",
        "getEMPTY",
        "()[B",
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

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEMPTY()[B
    .locals 1

    .line 172
    # getter for: Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->EMPTY:[B
    invoke-static {}, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->access$getEMPTY$cp()[B

    move-result-object v0

    return-object v0
.end method
