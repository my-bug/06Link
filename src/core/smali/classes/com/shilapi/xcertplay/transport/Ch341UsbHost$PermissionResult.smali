.class public abstract Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionResult;
.super Ljava/lang/Object;
.source "Ch341UsbHost.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/transport/Ch341UsbHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PermissionResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionResult$Denied;,
        Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionResult$Granted;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\t\u0008\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u0082\u0001\u0002\u0006\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionResult;",
        "",
        "<init>",
        "()V",
        "Granted",
        "Denied",
        "Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionResult$Denied;",
        "Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionResult$Granted;",
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

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionResult;-><init>()V

    return-void
.end method
