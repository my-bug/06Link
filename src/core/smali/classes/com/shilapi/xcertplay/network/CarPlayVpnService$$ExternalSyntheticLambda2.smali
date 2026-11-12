.class public final synthetic Lcom/shilapi/xcertplay/network/CarPlayVpnService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/network/CarPlayVpnService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/net/ServerSocket;


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/network/CarPlayVpnService;ILjava/net/ServerSocket;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$$ExternalSyntheticLambda2;->f$0:Lcom/shilapi/xcertplay/network/CarPlayVpnService;

    iput p2, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$$ExternalSyntheticLambda2;->f$2:Ljava/net/ServerSocket;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$$ExternalSyntheticLambda2;->f$0:Lcom/shilapi/xcertplay/network/CarPlayVpnService;

    iget v1, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$$ExternalSyntheticLambda2;->f$1:I

    iget-object v2, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$$ExternalSyntheticLambda2;->f$2:Ljava/net/ServerSocket;

    invoke-static {v0, v1, v2}, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->$r8$lambda$NzJiIMllJxSWNmas38Aai8IN_YE(Lcom/shilapi/xcertplay/network/CarPlayVpnService;ILjava/net/ServerSocket;)V

    return-void
.end method
