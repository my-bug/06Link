.class final Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$CreateRequest;
.super Ljava/lang/Object;
.source "WifiP2pGroupManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CreateRequest"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$CreateRequest;",
        "",
        "<init>",
        "()V",
        "completed",
        "",
        "getCompleted",
        "()Z",
        "setCompleted",
        "(Z)V",
        "failure",
        "Lcom/shilapi/xcertplay/network/P2pCreateRejected;",
        "getFailure",
        "()Lcom/shilapi/xcertplay/network/P2pCreateRejected;",
        "setFailure",
        "(Lcom/shilapi/xcertplay/network/P2pCreateRejected;)V",
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
.field private completed:Z

.field private failure:Lcom/shilapi/xcertplay/network/P2pCreateRejected;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 928
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCompleted()Z
    .locals 1

    .line 929
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$CreateRequest;->completed:Z

    return v0
.end method

.method public final getFailure()Lcom/shilapi/xcertplay/network/P2pCreateRejected;
    .locals 1

    .line 930
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$CreateRequest;->failure:Lcom/shilapi/xcertplay/network/P2pCreateRejected;

    return-object v0
.end method

.method public final setCompleted(Z)V
    .locals 0

    .line 929
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$CreateRequest;->completed:Z

    return-void
.end method

.method public final setFailure(Lcom/shilapi/xcertplay/network/P2pCreateRejected;)V
    .locals 0

    .line 930
    iput-object p1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$CreateRequest;->failure:Lcom/shilapi/xcertplay/network/P2pCreateRejected;

    return-void
.end method
