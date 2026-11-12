.class public final Lcom/shilapi/xcertplay/SetupProblemText;
.super Ljava/lang/Object;
.source "SetupProblemText.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/SetupProblemText$Action;,
        Lcom/shilapi/xcertplay/SetupProblemText$WhenMappings;,
        Lcom/shilapi/xcertplay/SetupProblemText$Words;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c0\u0002\u0018\u00002\u00020\u0001:\u0002\u000c\rB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/SetupProblemText;",
        "",
        "<init>",
        "()V",
        "words",
        "Lcom/shilapi/xcertplay/SetupProblemText$Words;",
        "problem",
        "Lcom/shilapi/xcertplay/orchestration/SetupProblem;",
        "once",
        "",
        "action",
        "Lcom/shilapi/xcertplay/SetupProblemText$Action;",
        "Words",
        "Action",
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


# static fields
.field public static final INSTANCE:Lcom/shilapi/xcertplay/SetupProblemText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/SetupProblemText;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/SetupProblemText;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/SetupProblemText;->INSTANCE:Lcom/shilapi/xcertplay/SetupProblemText;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final action(Lcom/shilapi/xcertplay/orchestration/SetupProblem;)Lcom/shilapi/xcertplay/SetupProblemText$Action;
    .locals 1

    const-string v0, "problem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    sget-object v0, Lcom/shilapi/xcertplay/SetupProblemText$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    const/16 v0, 0xe

    if-eq p1, v0, :cond_0

    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 87
    :pswitch_0
    sget-object p1, Lcom/shilapi/xcertplay/SetupProblemText$Action;->TRY_AGAIN:Lcom/shilapi/xcertplay/SetupProblemText$Action;

    return-object p1

    .line 89
    :pswitch_1
    sget-object p1, Lcom/shilapi/xcertplay/SetupProblemText$Action;->OPEN_HOTSPOT_SETTINGS:Lcom/shilapi/xcertplay/SetupProblemText$Action;

    return-object p1

    .line 82
    :cond_0
    sget-object p1, Lcom/shilapi/xcertplay/SetupProblemText$Action;->ALLOW:Lcom/shilapi/xcertplay/SetupProblemText$Action;

    return-object p1

    .line 85
    :cond_1
    :pswitch_2
    sget-object p1, Lcom/shilapi/xcertplay/SetupProblemText$Action;->TRY_AGAIN:Lcom/shilapi/xcertplay/SetupProblemText$Action;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final once(Lcom/shilapi/xcertplay/orchestration/SetupProblem;)Z
    .locals 1

    const-string v0, "problem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->USB_PERMISSION_PENDING:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    if-eq p1, v0, :cond_1

    .line 74
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->IPHONE_TRUST_PENDING:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->VPN_CONSENT_PENDING:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    if-eq p1, v0, :cond_1

    .line 75
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->VPN_CONSENT_DENIED:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->WIRELESS_PERMISSION_DENIED:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final words(Lcom/shilapi/xcertplay/orchestration/SetupProblem;)Lcom/shilapi/xcertplay/SetupProblemText$Words;
    .locals 3

    const-string v0, "problem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget-object v0, Lcom/shilapi/xcertplay/SetupProblemText$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 65
    :pswitch_0
    new-instance p1, Lcom/shilapi/xcertplay/SetupProblemText$Words;

    sget v0, Lcom/shilapi/xcertplay/host/R$string;->setup_wireless_no_carplay_title:I

    .line 66
    sget v1, Lcom/shilapi/xcertplay/host/R$string;->setup_wireless_no_carplay_reason:I

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->setup_wireless_no_carplay_next:I

    .line 65
    invoke-direct {p1, v0, v1, v2}, Lcom/shilapi/xcertplay/SetupProblemText$Words;-><init>(III)V

    return-object p1

    .line 63
    :pswitch_1
    new-instance p1, Lcom/shilapi/xcertplay/SetupProblemText$Words;

    sget v0, Lcom/shilapi/xcertplay/host/R$string;->setup_wireless_never_joined_title:I

    .line 64
    sget v1, Lcom/shilapi/xcertplay/host/R$string;->setup_wireless_never_joined_reason:I

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->setup_wireless_never_joined_next:I

    .line 63
    invoke-direct {p1, v0, v1, v2}, Lcom/shilapi/xcertplay/SetupProblemText$Words;-><init>(III)V

    return-object p1

    .line 61
    :pswitch_2
    new-instance p1, Lcom/shilapi/xcertplay/SetupProblemText$Words;

    sget v0, Lcom/shilapi/xcertplay/host/R$string;->setup_hotspot_locked_title:I

    .line 62
    sget v1, Lcom/shilapi/xcertplay/host/R$string;->setup_hotspot_locked_reason:I

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->setup_hotspot_locked_next:I

    .line 61
    invoke-direct {p1, v0, v1, v2}, Lcom/shilapi/xcertplay/SetupProblemText$Words;-><init>(III)V

    return-object p1

    .line 59
    :pswitch_3
    new-instance p1, Lcom/shilapi/xcertplay/SetupProblemText$Words;

    sget v0, Lcom/shilapi/xcertplay/host/R$string;->setup_retries_stopped_title:I

    .line 60
    sget v1, Lcom/shilapi/xcertplay/host/R$string;->setup_retries_stopped_reason:I

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->setup_retries_stopped_next:I

    .line 59
    invoke-direct {p1, v0, v1, v2}, Lcom/shilapi/xcertplay/SetupProblemText$Words;-><init>(III)V

    return-object p1

    .line 57
    :pswitch_4
    new-instance p1, Lcom/shilapi/xcertplay/SetupProblemText$Words;

    sget v0, Lcom/shilapi/xcertplay/host/R$string;->setup_connection_lost_title:I

    .line 58
    sget v1, Lcom/shilapi/xcertplay/host/R$string;->setup_connection_lost_reason:I

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->setup_connection_lost_next:I

    .line 57
    invoke-direct {p1, v0, v1, v2}, Lcom/shilapi/xcertplay/SetupProblemText$Words;-><init>(III)V

    return-object p1

    .line 55
    :pswitch_5
    new-instance p1, Lcom/shilapi/xcertplay/SetupProblemText$Words;

    sget v0, Lcom/shilapi/xcertplay/host/R$string;->setup_on_wifi_no_carplay_title:I

    .line 56
    sget v1, Lcom/shilapi/xcertplay/host/R$string;->setup_on_wifi_no_carplay_reason:I

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->setup_on_wifi_no_carplay_next:I

    .line 55
    invoke-direct {p1, v0, v1, v2}, Lcom/shilapi/xcertplay/SetupProblemText$Words;-><init>(III)V

    return-object p1

    .line 54
    :pswitch_6
    new-instance p1, Lcom/shilapi/xcertplay/SetupProblemText$Words;

    sget v0, Lcom/shilapi/xcertplay/host/R$string;->setup_not_on_wifi_title:I

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->setup_not_on_wifi_reason:I

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->setup_not_on_wifi_next:I

    invoke-direct {p1, v0, v1, v2}, Lcom/shilapi/xcertplay/SetupProblemText$Words;-><init>(III)V

    return-object p1

    .line 51
    :pswitch_7
    new-instance p1, Lcom/shilapi/xcertplay/SetupProblemText$Words;

    sget v0, Lcom/shilapi/xcertplay/host/R$string;->setup_wireless_permission_title:I

    .line 52
    sget v1, Lcom/shilapi/xcertplay/host/R$string;->setup_wireless_permission_reason:I

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->setup_wireless_permission_next:I

    .line 51
    invoke-direct {p1, v0, v1, v2}, Lcom/shilapi/xcertplay/SetupProblemText$Words;-><init>(III)V

    return-object p1

    .line 50
    :pswitch_8
    new-instance p1, Lcom/shilapi/xcertplay/SetupProblemText$Words;

    sget v0, Lcom/shilapi/xcertplay/host/R$string;->setup_vpn_denied_title:I

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->setup_vpn_denied_reason:I

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->setup_vpn_denied_next:I

    invoke-direct {p1, v0, v1, v2}, Lcom/shilapi/xcertplay/SetupProblemText$Words;-><init>(III)V

    return-object p1

    .line 48
    :pswitch_9
    new-instance p1, Lcom/shilapi/xcertplay/SetupProblemText$Words;

    sget v0, Lcom/shilapi/xcertplay/host/R$string;->setup_vpn_pending_title:I

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->setup_vpn_pending_reason:I

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->setup_vpn_pending_next:I

    invoke-direct {p1, v0, v1, v2}, Lcom/shilapi/xcertplay/SetupProblemText$Words;-><init>(III)V

    return-object p1

    .line 46
    :pswitch_a
    new-instance p1, Lcom/shilapi/xcertplay/SetupProblemText$Words;

    sget v0, Lcom/shilapi/xcertplay/host/R$string;->setup_usb_network_title:I

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->setup_usb_network_reason:I

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->setup_usb_network_next:I

    invoke-direct {p1, v0, v1, v2}, Lcom/shilapi/xcertplay/SetupProblemText$Words;-><init>(III)V

    return-object p1

    .line 44
    :pswitch_b
    new-instance p1, Lcom/shilapi/xcertplay/SetupProblemText$Words;

    sget v0, Lcom/shilapi/xcertplay/host/R$string;->setup_not_trusted_title:I

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->setup_not_trusted_reason:I

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->setup_not_trusted_next:I

    invoke-direct {p1, v0, v1, v2}, Lcom/shilapi/xcertplay/SetupProblemText$Words;-><init>(III)V

    return-object p1

    .line 42
    :pswitch_c
    new-instance p1, Lcom/shilapi/xcertplay/SetupProblemText$Words;

    sget v0, Lcom/shilapi/xcertplay/host/R$string;->setup_iphone_locked_title:I

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->setup_iphone_locked_reason:I

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->setup_iphone_locked_next:I

    invoke-direct {p1, v0, v1, v2}, Lcom/shilapi/xcertplay/SetupProblemText$Words;-><init>(III)V

    return-object p1

    .line 40
    :pswitch_d
    new-instance p1, Lcom/shilapi/xcertplay/SetupProblemText$Words;

    sget v0, Lcom/shilapi/xcertplay/host/R$string;->setup_trust_pending_title:I

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->setup_trust_pending_reason:I

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->setup_trust_pending_next:I

    invoke-direct {p1, v0, v1, v2}, Lcom/shilapi/xcertplay/SetupProblemText$Words;-><init>(III)V

    return-object p1

    .line 38
    :pswitch_e
    new-instance p1, Lcom/shilapi/xcertplay/SetupProblemText$Words;

    sget v0, Lcom/shilapi/xcertplay/host/R$string;->setup_usb_unstable_title:I

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->setup_usb_unstable_reason:I

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->setup_usb_unstable_next:I

    invoke-direct {p1, v0, v1, v2}, Lcom/shilapi/xcertplay/SetupProblemText$Words;-><init>(III)V

    return-object p1

    .line 35
    :pswitch_f
    new-instance p1, Lcom/shilapi/xcertplay/SetupProblemText$Words;

    sget v0, Lcom/shilapi/xcertplay/host/R$string;->setup_iphone_left_usb_title:I

    .line 36
    sget v1, Lcom/shilapi/xcertplay/host/R$string;->setup_iphone_left_usb_reason:I

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->setup_iphone_left_usb_next:I

    .line 35
    invoke-direct {p1, v0, v1, v2}, Lcom/shilapi/xcertplay/SetupProblemText$Words;-><init>(III)V

    return-object p1

    .line 33
    :pswitch_10
    new-instance p1, Lcom/shilapi/xcertplay/SetupProblemText$Words;

    sget v0, Lcom/shilapi/xcertplay/host/R$string;->setup_not_carplay_mode_title:I

    .line 34
    sget v1, Lcom/shilapi/xcertplay/host/R$string;->setup_not_carplay_mode_reason:I

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->setup_not_carplay_mode_next:I

    .line 33
    invoke-direct {p1, v0, v1, v2}, Lcom/shilapi/xcertplay/SetupProblemText$Words;-><init>(III)V

    return-object p1

    .line 31
    :pswitch_11
    new-instance p1, Lcom/shilapi/xcertplay/SetupProblemText$Words;

    sget v0, Lcom/shilapi/xcertplay/host/R$string;->setup_mfi_unanswered_title:I

    .line 32
    sget v1, Lcom/shilapi/xcertplay/host/R$string;->setup_mfi_unanswered_reason:I

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->setup_mfi_unanswered_next:I

    .line 31
    invoke-direct {p1, v0, v1, v2}, Lcom/shilapi/xcertplay/SetupProblemText$Words;-><init>(III)V

    return-object p1

    .line 28
    :pswitch_12
    new-instance p1, Lcom/shilapi/xcertplay/SetupProblemText$Words;

    sget v0, Lcom/shilapi/xcertplay/host/R$string;->setup_usb_permission_unanswered_title:I

    .line 29
    sget v1, Lcom/shilapi/xcertplay/host/R$string;->setup_usb_permission_unanswered_reason:I

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->setup_usb_permission_unanswered_next:I

    .line 28
    invoke-direct {p1, v0, v1, v2}, Lcom/shilapi/xcertplay/SetupProblemText$Words;-><init>(III)V

    return-object p1

    .line 26
    :pswitch_13
    new-instance p1, Lcom/shilapi/xcertplay/SetupProblemText$Words;

    sget v0, Lcom/shilapi/xcertplay/host/R$string;->setup_usb_permission_denied_title:I

    .line 27
    sget v1, Lcom/shilapi/xcertplay/host/R$string;->setup_usb_permission_denied_reason:I

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->setup_usb_permission_denied_next:I

    .line 26
    invoke-direct {p1, v0, v1, v2}, Lcom/shilapi/xcertplay/SetupProblemText$Words;-><init>(III)V

    return-object p1

    .line 24
    :pswitch_14
    new-instance p1, Lcom/shilapi/xcertplay/SetupProblemText$Words;

    sget v0, Lcom/shilapi/xcertplay/host/R$string;->setup_usb_permission_pending_title:I

    .line 25
    sget v1, Lcom/shilapi/xcertplay/host/R$string;->setup_usb_permission_pending_reason:I

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->setup_usb_permission_pending_next:I

    .line 24
    invoke-direct {p1, v0, v1, v2}, Lcom/shilapi/xcertplay/SetupProblemText$Words;-><init>(III)V

    return-object p1

    .line 23
    :pswitch_15
    new-instance p1, Lcom/shilapi/xcertplay/SetupProblemText$Words;

    sget v0, Lcom/shilapi/xcertplay/host/R$string;->setup_no_iphone_title:I

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->setup_no_iphone_reason:I

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->setup_no_iphone_next:I

    invoke-direct {p1, v0, v1, v2}, Lcom/shilapi/xcertplay/SetupProblemText$Words;-><init>(III)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
