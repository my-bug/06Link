.class public final Lcom/shilapi/xcertplay/ConnectionUi$Input;
.super Ljava/lang/Object;
.source "ConnectionFlow.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/ConnectionUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Input"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0012\u0018\u00002\u00020\u0001BQ\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u0005\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0016R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0011\u0010\r\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u0016R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u001dR\u0011\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!\u00a8\u0006\""
    }
    d2 = {
        "Lcom/shilapi/xcertplay/ConnectionUi$Input;",
        "",
        "progress",
        "Lcom/shilapi/xcertplay/ConnectionProgress$State;",
        "sessionRunning",
        "",
        "sessionActive",
        "reconnect",
        "Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;",
        "wirelessReady",
        "Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;",
        "wirelessIdleHint",
        "",
        "iphoneOnUsb",
        "iphoneName",
        "now",
        "",
        "<init>",
        "(Lcom/shilapi/xcertplay/ConnectionProgress$State;ZZLcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;Ljava/lang/String;ZLjava/lang/String;J)V",
        "getProgress",
        "()Lcom/shilapi/xcertplay/ConnectionProgress$State;",
        "getSessionRunning",
        "()Z",
        "getSessionActive",
        "getReconnect",
        "()Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;",
        "getWirelessReady",
        "()Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;",
        "getWirelessIdleHint",
        "()Ljava/lang/String;",
        "getIphoneOnUsb",
        "getIphoneName",
        "getNow",
        "()J",
        "common_release"
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
.field private final iphoneName:Ljava/lang/String;

.field private final iphoneOnUsb:Z

.field private final now:J

.field private final progress:Lcom/shilapi/xcertplay/ConnectionProgress$State;

.field private final reconnect:Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;

.field private final sessionActive:Z

.field private final sessionRunning:Z

.field private final wirelessIdleHint:Ljava/lang/String;

.field private final wirelessReady:Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;


# direct methods
.method public constructor <init>(Lcom/shilapi/xcertplay/ConnectionProgress$State;ZZLcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;Ljava/lang/String;ZLjava/lang/String;J)V
    .locals 1

    const-string v0, "progress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reconnect"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "wirelessReady"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "wirelessIdleHint"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    iput-object p1, p0, Lcom/shilapi/xcertplay/ConnectionUi$Input;->progress:Lcom/shilapi/xcertplay/ConnectionProgress$State;

    .line 339
    iput-boolean p2, p0, Lcom/shilapi/xcertplay/ConnectionUi$Input;->sessionRunning:Z

    .line 341
    iput-boolean p3, p0, Lcom/shilapi/xcertplay/ConnectionUi$Input;->sessionActive:Z

    .line 342
    iput-object p4, p0, Lcom/shilapi/xcertplay/ConnectionUi$Input;->reconnect:Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;

    .line 343
    iput-object p5, p0, Lcom/shilapi/xcertplay/ConnectionUi$Input;->wirelessReady:Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;

    .line 345
    iput-object p6, p0, Lcom/shilapi/xcertplay/ConnectionUi$Input;->wirelessIdleHint:Ljava/lang/String;

    .line 346
    iput-boolean p7, p0, Lcom/shilapi/xcertplay/ConnectionUi$Input;->iphoneOnUsb:Z

    .line 347
    iput-object p8, p0, Lcom/shilapi/xcertplay/ConnectionUi$Input;->iphoneName:Ljava/lang/String;

    .line 348
    iput-wide p9, p0, Lcom/shilapi/xcertplay/ConnectionUi$Input;->now:J

    return-void
.end method


# virtual methods
.method public final getIphoneName()Ljava/lang/String;
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/shilapi/xcertplay/ConnectionUi$Input;->iphoneName:Ljava/lang/String;

    return-object v0
.end method

.method public final getIphoneOnUsb()Z
    .locals 1

    .line 346
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/ConnectionUi$Input;->iphoneOnUsb:Z

    return v0
.end method

.method public final getNow()J
    .locals 2

    .line 348
    iget-wide v0, p0, Lcom/shilapi/xcertplay/ConnectionUi$Input;->now:J

    return-wide v0
.end method

.method public final getProgress()Lcom/shilapi/xcertplay/ConnectionProgress$State;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/shilapi/xcertplay/ConnectionUi$Input;->progress:Lcom/shilapi/xcertplay/ConnectionProgress$State;

    return-object v0
.end method

.method public final getReconnect()Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/shilapi/xcertplay/ConnectionUi$Input;->reconnect:Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;

    return-object v0
.end method

.method public final getSessionActive()Z
    .locals 1

    .line 341
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/ConnectionUi$Input;->sessionActive:Z

    return v0
.end method

.method public final getSessionRunning()Z
    .locals 1

    .line 339
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/ConnectionUi$Input;->sessionRunning:Z

    return v0
.end method

.method public final getWirelessIdleHint()Ljava/lang/String;
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/shilapi/xcertplay/ConnectionUi$Input;->wirelessIdleHint:Ljava/lang/String;

    return-object v0
.end method

.method public final getWirelessReady()Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/shilapi/xcertplay/ConnectionUi$Input;->wirelessReady:Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;

    return-object v0
.end method
