.class public final Lcom/shilapi/xcertplay/orchestration/SetupDiagnosis;
.super Ljava/lang/Object;
.source "SetupProblem.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J%\u0010\r\u001a\u00020\u00072\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u000f\u00a2\u0006\u0002\u0010\u0012J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0007J\u001a\u0010\u0016\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0005J\'\u0010\u001a\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u001c\u001a\u00020\u000f\u00a2\u0006\u0002\u0010\u001dR\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/orchestration/SetupDiagnosis;",
        "",
        "<init>",
        "()V",
        "NO_IPHONE_AFTER_MILLIS",
        "",
        "IPHONE_PERMISSION_UNANSWERED",
        "",
        "MFI_PERMISSION_UNANSWERED",
        "IPHONE_PERMISSION_DENIED",
        "SYSTEM_HOTSPOT_LOCKED",
        "WIRELESS_JOIN_TIMED_OUT",
        "WIRELESS_JOIN_DEADLINE_MILLIS",
        "wirelessJoinTimeoutMessage",
        "onWifi",
        "",
        "seconds",
        "wifiDetailsSent",
        "(Ljava/lang/Boolean;JZ)Ljava/lang/String;",
        "forWirelessFailure",
        "Lcom/shilapi/xcertplay/orchestration/SetupProblem;",
        "message",
        "forStatus",
        "status",
        "Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;",
        "waitingMillis",
        "forWiredFailure",
        "iphoneOnUsb",
        "usbUnstable",
        "(Ljava/lang/String;Ljava/lang/Boolean;Z)Lcom/shilapi/xcertplay/orchestration/SetupProblem;",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/orchestration/SetupDiagnosis;

.field public static final IPHONE_PERMISSION_DENIED:Ljava/lang/String; = "iPhone USB permission was denied"

.field public static final IPHONE_PERMISSION_UNANSWERED:Ljava/lang/String; = "iPhone USB permission was not granted"

.field public static final MFI_PERMISSION_UNANSWERED:Ljava/lang/String; = "MFi USB permission was not granted"

.field public static final NO_IPHONE_AFTER_MILLIS:J = 0x3a98L

.field public static final SYSTEM_HOTSPOT_LOCKED:Ljava/lang/String; = "The system hotspot is on and Android 8-9 lets 06Link neither read nor change it"

.field public static final WIRELESS_JOIN_DEADLINE_MILLIS:J = 0x7530L

.field public static final WIRELESS_JOIN_TIMED_OUT:Ljava/lang/String; = "The iPhone did not open wireless CarPlay in time"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/orchestration/SetupDiagnosis;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/orchestration/SetupDiagnosis;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/orchestration/SetupDiagnosis;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/SetupDiagnosis;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic forStatus$default(Lcom/shilapi/xcertplay/orchestration/SetupDiagnosis;Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;JILjava/lang/Object;)Lcom/shilapi/xcertplay/orchestration/SetupProblem;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0x0

    .line 139
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/orchestration/SetupDiagnosis;->forStatus(Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;J)Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final forStatus(Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;J)Lcom/shilapi/xcertplay/orchestration/SetupProblem;
    .locals 4

    const-string/jumbo v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphone;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphone;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-wide/16 v2, 0x3a98

    cmp-long p1, p2, v2

    if-ltz p1, :cond_0

    .line 141
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->NO_IPHONE_ON_USB:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    return-object p1

    :cond_0
    return-object v1

    .line 142
    :cond_1
    sget-object p2, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$RequestingIphonePermission;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$RequestingIphonePermission;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p1, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->USB_PERMISSION_PENDING:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    return-object p1

    .line 143
    :cond_2
    sget-object p2, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneTrust;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneTrust;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p1, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->IPHONE_TRUST_PENDING:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    return-object p1

    .line 144
    :cond_3
    sget-object p2, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneUnlock;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneUnlock;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object p1, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->IPHONE_LOCKED:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    return-object p1

    .line 145
    :cond_4
    instance-of p2, p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneWifi;

    if-eqz p2, :cond_8

    check-cast p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneWifi;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneWifi;->getJoinedHotspot()Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x0

    .line 146
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    sget-object p1, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->IPHONE_NOT_ON_WIFI:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    return-object p1

    :cond_5
    const/4 p2, 0x1

    .line 147
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    sget-object p1, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->IPHONE_ON_WIFI_NO_CARPLAY:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    return-object p1

    :cond_6
    if-nez p1, :cond_7

    return-object v1

    .line 145
    :cond_7
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_8
    return-object v1
.end method

.method public final forWiredFailure(Ljava/lang/String;Ljava/lang/Boolean;Z)Lcom/shilapi/xcertplay/orchestration/SetupProblem;
    .locals 3

    if-nez p1, :cond_0

    .line 158
    const-string p1, ""

    :cond_0
    if-eqz p3, :cond_1

    .line 161
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->USB_UNSTABLE:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    return-object p1

    .line 164
    :cond_1
    move-object p3, p1

    check-cast p3, Ljava/lang/CharSequence;

    const-string v0, "iPhone USB permission was denied"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    invoke-static {p3, v0, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 165
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->IPHONE_LEFT_USB:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    return-object p1

    :cond_2
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->USB_PERMISSION_DENIED:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    return-object p1

    .line 168
    :cond_3
    const-string v0, "MFi USB permission was not granted"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p3, v0, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p1, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->MFI_PERMISSION_UNANSWERED:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    return-object p1

    .line 169
    :cond_4
    const-string v0, "iPhone USB permission was not granted"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p3, v0, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p1, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->USB_PERMISSION_UNANSWERED:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    return-object p1

    .line 170
    :cond_5
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/WiredUsbPromptPolicy;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/WiredUsbPromptPolicy;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/orchestration/WiredUsbPromptPolicy;->iphoneNotInCarPlayMode(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 171
    const-string p1, "configuration does not expose an NCM function"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p3, p1, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-nez p1, :cond_e

    .line 172
    const-string p1, "CarPlay configuration request transferred"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p3, p1, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-nez p1, :cond_e

    .line 173
    const-string p1, "exposes no USBMUX CarPlay configuration"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p3, p1, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    .line 176
    :cond_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->IPHONE_LEFT_USB:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    return-object p1

    .line 177
    :cond_7
    const-string p1, "password protected"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p3, p1, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-nez p1, :cond_d

    const-string p1, "PasswordProtected"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p3, p1, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_2

    .line 178
    :cond_8
    const-string p1, "denied Lockdown pairing"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p3, p1, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-nez p1, :cond_c

    const-string p1, "UserDeniedPairing"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p3, p1, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-nez p1, :cond_c

    .line 179
    const-string p1, "Lockdown pairing timed out"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p3, p1, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_1

    .line 180
    :cond_9
    const-string p1, "NCM"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p3, p1, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-nez p1, :cond_b

    const-string p1, "VPN"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p3, p1, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-nez p1, :cond_b

    const-string p1, "AirPlay transport"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p3, p1, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_0

    .line 182
    :cond_a
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->CONNECTION_LOST:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    return-object p1

    .line 181
    :cond_b
    :goto_0
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->USB_NETWORK_FAILED:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    return-object p1

    .line 179
    :cond_c
    :goto_1
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->IPHONE_NOT_TRUSTED:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    return-object p1

    .line 177
    :cond_d
    :goto_2
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->IPHONE_LOCKED:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    return-object p1

    .line 174
    :cond_e
    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    sget-object p1, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->IPHONE_LEFT_USB:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    return-object p1

    :cond_f
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->IPHONE_NOT_IN_CARPLAY_MODE:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    return-object p1
.end method

.method public final forWirelessFailure(Ljava/lang/String;)Lcom/shilapi/xcertplay/orchestration/SetupProblem;
    .locals 5

    if-nez p1, :cond_0

    .line 122
    const-string p1, ""

    .line 124
    :cond_0
    check-cast p1, Ljava/lang/CharSequence;

    const-string v0, "The system hotspot is on and Android 8-9 lets 06Link neither read nor change it"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->SYSTEM_HOTSPOT_LOCKED:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    return-object p1

    .line 127
    :cond_1
    const-string v0, "The iPhone did not open wireless CarPlay in time"

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {p1, v4, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "Wi-Fi details sent=false"

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {p1, v4, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v3

    .line 128
    :cond_2
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 129
    const-string v0, "on the car\'s Wi-Fi=true"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->WIRELESS_JOINED_NO_CARPLAY:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    return-object p1

    :cond_3
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->WIRELESS_NEVER_JOINED:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    return-object p1

    :cond_4
    return-object v3
.end method

.method public final wirelessJoinTimeoutMessage(Ljava/lang/Boolean;JZ)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    .line 115
    const-string/jumbo p1, "unknown"

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The iPhone did not open wireless CarPlay in time (after "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "s; Wi-Fi details sent="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "; iPhone on the car\'s Wi-Fi="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
