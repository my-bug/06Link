.class public abstract Lcom/shilapi/xcertplay/network/CarPlayVpnService$AttachResult;
.super Ljava/lang/Object;
.source "CarPlayVpnService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/network/CarPlayVpnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AttachResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/network/CarPlayVpnService$AttachResult$AlreadyStarted;,
        Lcom/shilapi/xcertplay/network/CarPlayVpnService$AttachResult$Failed;,
        Lcom/shilapi/xcertplay/network/CarPlayVpnService$AttachResult$Started;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0003\u0004\u0005\u0006B\t\u0008\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u0082\u0001\u0003\u0007\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/CarPlayVpnService$AttachResult;",
        "",
        "<init>",
        "()V",
        "Started",
        "AlreadyStarted",
        "Failed",
        "Lcom/shilapi/xcertplay/network/CarPlayVpnService$AttachResult$AlreadyStarted;",
        "Lcom/shilapi/xcertplay/network/CarPlayVpnService$AttachResult$Failed;",
        "Lcom/shilapi/xcertplay/network/CarPlayVpnService$AttachResult$Started;",
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

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AttachResult;-><init>()V

    return-void
.end method
