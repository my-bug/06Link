.class public final Lcom/shilapi/xcertplay/hud/BydHudBridge$callback$1;
.super Landroid/os/Binder;
.source "BydHudBridge.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/hud/BydHudBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J*\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0006\u0010\t\u001a\u00020\u0005H\u0014\u00a8\u0006\n"
    }
    d2 = {
        "com/shilapi/xcertplay/hud/BydHudBridge$callback$1",
        "Landroid/os/Binder;",
        "onTransact",
        "",
        "code",
        "",
        "data",
        "Landroid/os/Parcel;",
        "reply",
        "flags",
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
.method constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 51
    const-string/jumbo v1, "ts.car.someip.sdk.ISomeIpCallback"

    const/4 v2, 0x1

    if-eq p1, v2, :cond_9

    const/4 v3, 0x2

    if-eq p1, v3, :cond_6

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :cond_0
    if-eqz p3, :cond_1

    .line 52
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_1
    return v2

    .line 67
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    if-eqz p3, :cond_3

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :cond_3
    if-eqz p3, :cond_4

    .line 69
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_4
    if-eqz p3, :cond_5

    .line 70
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_5
    return v2

    .line 60
    :cond_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    .line 62
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "SOME/IP HAL ready="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DiPlay-BYD-HUD"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_8

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :cond_8
    return v2

    .line 54
    :cond_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    if-eqz p3, :cond_a

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :cond_a
    if-eqz p3, :cond_b

    .line 56
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_b
    return v2
.end method
