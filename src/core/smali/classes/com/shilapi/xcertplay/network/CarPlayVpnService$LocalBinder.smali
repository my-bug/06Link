.class public final Lcom/shilapi/xcertplay/network/CarPlayVpnService$LocalBinder;
.super Landroid/os/Binder;
.source "CarPlayVpnService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/network/CarPlayVpnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalBinder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0011\u0010\u0004\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/CarPlayVpnService$LocalBinder;",
        "Landroid/os/Binder;",
        "<init>",
        "(Lcom/shilapi/xcertplay/network/CarPlayVpnService;)V",
        "service",
        "Lcom/shilapi/xcertplay/network/CarPlayVpnService;",
        "getService",
        "()Lcom/shilapi/xcertplay/network/CarPlayVpnService;",
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
.field final synthetic this$0:Lcom/shilapi/xcertplay/network/CarPlayVpnService;


# direct methods
.method public constructor <init>(Lcom/shilapi/xcertplay/network/CarPlayVpnService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$LocalBinder;->this$0:Lcom/shilapi/xcertplay/network/CarPlayVpnService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public final getService()Lcom/shilapi/xcertplay/network/CarPlayVpnService;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$LocalBinder;->this$0:Lcom/shilapi/xcertplay/network/CarPlayVpnService;

    return-object v0
.end method
