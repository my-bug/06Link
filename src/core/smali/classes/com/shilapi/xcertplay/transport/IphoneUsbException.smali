.class public abstract Lcom/shilapi/xcertplay/transport/IphoneUsbException;
.super Ljava/io/IOException;
.source "IphoneUsbHost.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;,
        Lcom/shilapi/xcertplay/transport/IphoneUsbException$PermissionDenied;,
        Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;,
        Lcom/shilapi/xcertplay/transport/IphoneUsbException$TimedOut;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0004\u0008\t\n\u000bB\u001d\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u0082\u0001\u0004\u000c\r\u000e\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/IphoneUsbException;",
        "Ljava/io/IOException;",
        "message",
        "",
        "cause",
        "",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/Throwable;)V",
        "PermissionDenied",
        "DeviceUnavailable",
        "TimedOut",
        "Protocol",
        "Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;",
        "Lcom/shilapi/xcertplay/transport/IphoneUsbException$PermissionDenied;",
        "Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;",
        "Lcom/shilapi/xcertplay/transport/IphoneUsbException$TimedOut;",
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
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 525
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    move-object p2, p4

    .line 525
    :cond_0
    invoke-direct {p0, p1, p2, p4}, Lcom/shilapi/xcertplay/transport/IphoneUsbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/transport/IphoneUsbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
