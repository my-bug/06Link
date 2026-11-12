.class final Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Companion;
.super Ljava/lang/Object;
.source "WifiP2pGroupManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\t\u0008\u0082\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000c\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Companion;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "NANOS_PER_MILLISECOND",
        "",
        "RETRY_PAUSE_NANOS",
        "REMOVE_GROUP_TIMEOUT_MILLIS",
        "FORCED_GROUP_START_MILLIS",
        "LINK_LOCAL_WAIT_MILLIS",
        "REQUEST_POLL_NANOS",
        "getREQUEST_POLL_NANOS",
        "()J",
        "TOKEN_ALPHABET",
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

    .line 938
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getREQUEST_POLL_NANOS()J
    .locals 2

    .line 945
    # getter for: Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->REQUEST_POLL_NANOS:J
    invoke-static {}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->access$getREQUEST_POLL_NANOS$cp()J

    move-result-wide v0

    return-wide v0
.end method
