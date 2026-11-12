.class public abstract Lcom/shilapi/xcertplay/usbbt/HciEvent;
.super Ljava/lang/Object;
.source "HciEvents.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/usbbt/HciEvent$AuthenticationComplete;,
        Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;,
        Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;,
        Lcom/shilapi/xcertplay/usbbt/HciEvent$Companion;,
        Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;,
        Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionRequest;,
        Lcom/shilapi/xcertplay/usbbt/HciEvent$DisconnectionComplete;,
        Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;,
        Lcom/shilapi/xcertplay/usbbt/HciEvent$HardwareError;,
        Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityRequest;,
        Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;,
        Lcom/shilapi/xcertplay/usbbt/HciEvent$LinkKeyNotification;,
        Lcom/shilapi/xcertplay/usbbt/HciEvent$LinkKeyRequest;,
        Lcom/shilapi/xcertplay/usbbt/HciEvent$NumberOfCompletedPackets;,
        Lcom/shilapi/xcertplay/usbbt/HciEvent$Other;,
        Lcom/shilapi/xcertplay/usbbt/HciEvent$PinCodeRequest;,
        Lcom/shilapi/xcertplay/usbbt/HciEvent$RemoteNameRequestComplete;,
        Lcom/shilapi/xcertplay/usbbt/HciEvent$SimplePairingComplete;,
        Lcom/shilapi/xcertplay/usbbt/HciEvent$UserConfirmationRequest;,
        Lcom/shilapi/xcertplay/usbbt/HciEvent$UserPasskeyNotification;,
        Lcom/shilapi/xcertplay/usbbt/HciEvent$UserPasskeyRequest;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u0000 \u00182\u00020\u0001:\u0015\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018B\t\u0008\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u0082\u0001\u0014\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&\'()*+,\u00a8\u0006-"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/HciEvent;",
        "",
        "<init>",
        "()V",
        "CommandComplete",
        "CommandStatus",
        "ConnectionRequest",
        "ConnectionComplete",
        "DisconnectionComplete",
        "AuthenticationComplete",
        "RemoteNameRequestComplete",
        "EncryptionChange",
        "HardwareError",
        "PinCodeRequest",
        "LinkKeyRequest",
        "LinkKeyNotification",
        "IoCapabilityRequest",
        "IoCapabilityResponse",
        "UserConfirmationRequest",
        "UserPasskeyRequest",
        "UserPasskeyNotification",
        "SimplePairingComplete",
        "NumberOfCompletedPackets",
        "Other",
        "Companion",
        "Lcom/shilapi/xcertplay/usbbt/HciEvent$AuthenticationComplete;",
        "Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;",
        "Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;",
        "Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;",
        "Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionRequest;",
        "Lcom/shilapi/xcertplay/usbbt/HciEvent$DisconnectionComplete;",
        "Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;",
        "Lcom/shilapi/xcertplay/usbbt/HciEvent$HardwareError;",
        "Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityRequest;",
        "Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;",
        "Lcom/shilapi/xcertplay/usbbt/HciEvent$LinkKeyNotification;",
        "Lcom/shilapi/xcertplay/usbbt/HciEvent$LinkKeyRequest;",
        "Lcom/shilapi/xcertplay/usbbt/HciEvent$NumberOfCompletedPackets;",
        "Lcom/shilapi/xcertplay/usbbt/HciEvent$Other;",
        "Lcom/shilapi/xcertplay/usbbt/HciEvent$PinCodeRequest;",
        "Lcom/shilapi/xcertplay/usbbt/HciEvent$RemoteNameRequestComplete;",
        "Lcom/shilapi/xcertplay/usbbt/HciEvent$SimplePairingComplete;",
        "Lcom/shilapi/xcertplay/usbbt/HciEvent$UserConfirmationRequest;",
        "Lcom/shilapi/xcertplay/usbbt/HciEvent$UserPasskeyNotification;",
        "Lcom/shilapi/xcertplay/usbbt/HciEvent$UserPasskeyRequest;",
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


# static fields
.field public static final COMMAND_COMPLETE:I = 0xe

.field public static final COMMAND_STATUS:I = 0xf

.field public static final Companion:Lcom/shilapi/xcertplay/usbbt/HciEvent$Companion;

.field public static final LINK_ACL:I = 0x1

.field public static final LINK_ESCO:I = 0x2

.field public static final LINK_SCO:I = 0x0

.field public static final STATUS_PIN_OR_KEY_MISSING:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/usbbt/HciEvent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/usbbt/HciEvent;->Companion:Lcom/shilapi/xcertplay/usbbt/HciEvent$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/usbbt/HciEvent;-><init>()V

    return-void
.end method
