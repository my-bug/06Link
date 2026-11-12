.class public final enum Lcom/shilapi/xcertplay/orchestration/SetupProblem;
.super Ljava/lang/Enum;
.source "SetupProblem.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shilapi/xcertplay/orchestration/SetupProblem;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001f\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B!\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\nj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001ej\u0002\u0008\u001fj\u0002\u0008 j\u0002\u0008!j\u0002\u0008\"j\u0002\u0008#\u00a8\u0006$"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/orchestration/SetupProblem;",
        "",
        "stopsRetry",
        "",
        "resume",
        "Lcom/shilapi/xcertplay/orchestration/SetupResume;",
        "working",
        "<init>",
        "(Ljava/lang/String;IZLcom/shilapi/xcertplay/orchestration/SetupResume;Z)V",
        "getStopsRetry",
        "()Z",
        "getResume",
        "()Lcom/shilapi/xcertplay/orchestration/SetupResume;",
        "getWorking",
        "NO_IPHONE_ON_USB",
        "USB_PERMISSION_PENDING",
        "USB_PERMISSION_DENIED",
        "USB_PERMISSION_UNANSWERED",
        "MFI_PERMISSION_UNANSWERED",
        "IPHONE_NOT_IN_CARPLAY_MODE",
        "IPHONE_LEFT_USB",
        "USB_UNSTABLE",
        "IPHONE_TRUST_PENDING",
        "IPHONE_LOCKED",
        "IPHONE_NOT_TRUSTED",
        "USB_NETWORK_FAILED",
        "VPN_CONSENT_PENDING",
        "VPN_CONSENT_DENIED",
        "WIRELESS_PERMISSION_DENIED",
        "IPHONE_NOT_ON_WIFI",
        "IPHONE_ON_WIFI_NO_CARPLAY",
        "CONNECTION_LOST",
        "RETRIES_STOPPED",
        "SYSTEM_HOTSPOT_LOCKED",
        "WIRELESS_NEVER_JOINED",
        "WIRELESS_JOINED_NO_CARPLAY",
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/shilapi/xcertplay/orchestration/SetupProblem;

.field public static final enum CONNECTION_LOST:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

.field public static final enum IPHONE_LEFT_USB:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

.field public static final enum IPHONE_LOCKED:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

.field public static final enum IPHONE_NOT_IN_CARPLAY_MODE:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

.field public static final enum IPHONE_NOT_ON_WIFI:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

.field public static final enum IPHONE_NOT_TRUSTED:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

.field public static final enum IPHONE_ON_WIFI_NO_CARPLAY:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

.field public static final enum IPHONE_TRUST_PENDING:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

.field public static final enum MFI_PERMISSION_UNANSWERED:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

.field public static final enum NO_IPHONE_ON_USB:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

.field public static final enum RETRIES_STOPPED:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

.field public static final enum SYSTEM_HOTSPOT_LOCKED:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

.field public static final enum USB_NETWORK_FAILED:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

.field public static final enum USB_PERMISSION_DENIED:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

.field public static final enum USB_PERMISSION_PENDING:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

.field public static final enum USB_PERMISSION_UNANSWERED:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

.field public static final enum USB_UNSTABLE:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

.field public static final enum VPN_CONSENT_DENIED:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

.field public static final enum VPN_CONSENT_PENDING:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

.field public static final enum WIRELESS_JOINED_NO_CARPLAY:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

.field public static final enum WIRELESS_NEVER_JOINED:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

.field public static final enum WIRELESS_PERMISSION_DENIED:Lcom/shilapi/xcertplay/orchestration/SetupProblem;


# instance fields
.field private final resume:Lcom/shilapi/xcertplay/orchestration/SetupResume;

.field private final stopsRetry:Z

.field private final working:Z


# direct methods
.method private static final synthetic $values()[Lcom/shilapi/xcertplay/orchestration/SetupProblem;
    .locals 3

    const/16 v0, 0x16

    new-array v0, v0, [Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->NO_IPHONE_ON_USB:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->USB_PERMISSION_PENDING:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->USB_PERMISSION_DENIED:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->USB_PERMISSION_UNANSWERED:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->MFI_PERMISSION_UNANSWERED:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->IPHONE_NOT_IN_CARPLAY_MODE:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->IPHONE_LEFT_USB:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->USB_UNSTABLE:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->IPHONE_TRUST_PENDING:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->IPHONE_LOCKED:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->IPHONE_NOT_TRUSTED:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->USB_NETWORK_FAILED:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->VPN_CONSENT_PENDING:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->VPN_CONSENT_DENIED:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->WIRELESS_PERMISSION_DENIED:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->IPHONE_NOT_ON_WIFI:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->IPHONE_ON_WIFI_NO_CARPLAY:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->CONNECTION_LOST:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->RETRIES_STOPPED:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->SYSTEM_HOTSPOT_LOCKED:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->WIRELESS_NEVER_JOINED:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->WIRELESS_JOINED_NO_CARPLAY:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 12

    .line 22
    new-instance v0, Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    sget-object v4, Lcom/shilapi/xcertplay/orchestration/SetupResume;->IPHONE_PLUGGED_IN:Lcom/shilapi/xcertplay/orchestration/SetupResume;

    const/4 v5, 0x1

    const-string v1, "NO_IPHONE_ON_USB"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/orchestration/SetupProblem;-><init>(Ljava/lang/String;IZLcom/shilapi/xcertplay/orchestration/SetupResume;Z)V

    sput-object v0, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->NO_IPHONE_ON_USB:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    .line 24
    new-instance v1, Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    sget-object v5, Lcom/shilapi/xcertplay/orchestration/SetupResume;->PERSON_ANSWERS_PROMPT:Lcom/shilapi/xcertplay/orchestration/SetupResume;

    const/4 v6, 0x1

    const-string v2, "USB_PERMISSION_PENDING"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/shilapi/xcertplay/orchestration/SetupProblem;-><init>(Ljava/lang/String;IZLcom/shilapi/xcertplay/orchestration/SetupResume;Z)V

    sput-object v1, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->USB_PERMISSION_PENDING:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    .line 26
    new-instance v2, Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    sget-object v6, Lcom/shilapi/xcertplay/orchestration/SetupResume;->IPHONE_REPLUGGED:Lcom/shilapi/xcertplay/orchestration/SetupResume;

    const/4 v7, 0x0

    const-string v3, "USB_PERMISSION_DENIED"

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/shilapi/xcertplay/orchestration/SetupProblem;-><init>(Ljava/lang/String;IZLcom/shilapi/xcertplay/orchestration/SetupResume;Z)V

    sput-object v2, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->USB_PERMISSION_DENIED:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    .line 28
    new-instance v3, Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    sget-object v7, Lcom/shilapi/xcertplay/orchestration/SetupResume;->IPHONE_REPLUGGED:Lcom/shilapi/xcertplay/orchestration/SetupResume;

    const/4 v8, 0x0

    const-string v4, "USB_PERMISSION_UNANSWERED"

    const/4 v5, 0x3

    const/4 v6, 0x1

    invoke-direct/range {v3 .. v8}, Lcom/shilapi/xcertplay/orchestration/SetupProblem;-><init>(Ljava/lang/String;IZLcom/shilapi/xcertplay/orchestration/SetupResume;Z)V

    sput-object v3, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->USB_PERMISSION_UNANSWERED:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    .line 34
    new-instance v4, Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    sget-object v8, Lcom/shilapi/xcertplay/orchestration/SetupResume;->PERSON_TAPS_TRY_AGAIN:Lcom/shilapi/xcertplay/orchestration/SetupResume;

    const/4 v9, 0x0

    const-string v5, "MFI_PERMISSION_UNANSWERED"

    const/4 v6, 0x4

    const/4 v7, 0x1

    invoke-direct/range {v4 .. v9}, Lcom/shilapi/xcertplay/orchestration/SetupProblem;-><init>(Ljava/lang/String;IZLcom/shilapi/xcertplay/orchestration/SetupResume;Z)V

    sput-object v4, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->MFI_PERMISSION_UNANSWERED:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    .line 36
    new-instance v5, Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    sget-object v9, Lcom/shilapi/xcertplay/orchestration/SetupResume;->IPHONE_REPLUGGED:Lcom/shilapi/xcertplay/orchestration/SetupResume;

    const/4 v10, 0x0

    const-string v6, "IPHONE_NOT_IN_CARPLAY_MODE"

    const/4 v7, 0x5

    const/4 v8, 0x1

    invoke-direct/range {v5 .. v10}, Lcom/shilapi/xcertplay/orchestration/SetupProblem;-><init>(Ljava/lang/String;IZLcom/shilapi/xcertplay/orchestration/SetupResume;Z)V

    sput-object v5, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->IPHONE_NOT_IN_CARPLAY_MODE:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    .line 38
    new-instance v6, Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    sget-object v10, Lcom/shilapi/xcertplay/orchestration/SetupResume;->IPHONE_PLUGGED_IN:Lcom/shilapi/xcertplay/orchestration/SetupResume;

    const/4 v11, 0x1

    const-string v7, "IPHONE_LEFT_USB"

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-direct/range {v6 .. v11}, Lcom/shilapi/xcertplay/orchestration/SetupProblem;-><init>(Ljava/lang/String;IZLcom/shilapi/xcertplay/orchestration/SetupResume;Z)V

    sput-object v6, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->IPHONE_LEFT_USB:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    .line 40
    new-instance v0, Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    sget-object v4, Lcom/shilapi/xcertplay/orchestration/SetupResume;->IPHONE_REPLUGGED:Lcom/shilapi/xcertplay/orchestration/SetupResume;

    const/4 v5, 0x0

    const-string v1, "USB_UNSTABLE"

    const/4 v2, 0x7

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/orchestration/SetupProblem;-><init>(Ljava/lang/String;IZLcom/shilapi/xcertplay/orchestration/SetupResume;Z)V

    sput-object v0, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->USB_UNSTABLE:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    .line 42
    new-instance v1, Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    sget-object v5, Lcom/shilapi/xcertplay/orchestration/SetupResume;->PERSON_ANSWERS_PROMPT:Lcom/shilapi/xcertplay/orchestration/SetupResume;

    const/4 v6, 0x1

    const-string v2, "IPHONE_TRUST_PENDING"

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/shilapi/xcertplay/orchestration/SetupProblem;-><init>(Ljava/lang/String;IZLcom/shilapi/xcertplay/orchestration/SetupResume;Z)V

    sput-object v1, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->IPHONE_TRUST_PENDING:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    .line 44
    new-instance v2, Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    sget-object v6, Lcom/shilapi/xcertplay/orchestration/SetupResume;->PERSON_ANSWERS_PROMPT:Lcom/shilapi/xcertplay/orchestration/SetupResume;

    const/4 v7, 0x1

    const-string v3, "IPHONE_LOCKED"

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/shilapi/xcertplay/orchestration/SetupProblem;-><init>(Ljava/lang/String;IZLcom/shilapi/xcertplay/orchestration/SetupResume;Z)V

    sput-object v2, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->IPHONE_LOCKED:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    .line 46
    new-instance v3, Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    sget-object v7, Lcom/shilapi/xcertplay/orchestration/SetupResume;->IPHONE_REPLUGGED:Lcom/shilapi/xcertplay/orchestration/SetupResume;

    const/4 v8, 0x0

    const-string v4, "IPHONE_NOT_TRUSTED"

    const/16 v5, 0xa

    const/4 v6, 0x1

    invoke-direct/range {v3 .. v8}, Lcom/shilapi/xcertplay/orchestration/SetupProblem;-><init>(Ljava/lang/String;IZLcom/shilapi/xcertplay/orchestration/SetupResume;Z)V

    sput-object v3, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->IPHONE_NOT_TRUSTED:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    .line 48
    new-instance v4, Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    sget-object v8, Lcom/shilapi/xcertplay/orchestration/SetupResume;->AUTOMATIC_RETRY:Lcom/shilapi/xcertplay/orchestration/SetupResume;

    const/4 v9, 0x1

    const-string v5, "USB_NETWORK_FAILED"

    const/16 v6, 0xb

    const/4 v7, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/shilapi/xcertplay/orchestration/SetupProblem;-><init>(Ljava/lang/String;IZLcom/shilapi/xcertplay/orchestration/SetupResume;Z)V

    sput-object v4, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->USB_NETWORK_FAILED:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    .line 50
    new-instance v5, Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    sget-object v9, Lcom/shilapi/xcertplay/orchestration/SetupResume;->PERSON_ANSWERS_PROMPT:Lcom/shilapi/xcertplay/orchestration/SetupResume;

    const/4 v10, 0x1

    const-string v6, "VPN_CONSENT_PENDING"

    const/16 v7, 0xc

    const/4 v8, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/shilapi/xcertplay/orchestration/SetupProblem;-><init>(Ljava/lang/String;IZLcom/shilapi/xcertplay/orchestration/SetupResume;Z)V

    sput-object v5, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->VPN_CONSENT_PENDING:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    .line 52
    new-instance v6, Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    sget-object v10, Lcom/shilapi/xcertplay/orchestration/SetupResume;->RETURN_TO_APP:Lcom/shilapi/xcertplay/orchestration/SetupResume;

    const/4 v11, 0x0

    const-string v7, "VPN_CONSENT_DENIED"

    const/16 v8, 0xd

    const/4 v9, 0x1

    invoke-direct/range {v6 .. v11}, Lcom/shilapi/xcertplay/orchestration/SetupProblem;-><init>(Ljava/lang/String;IZLcom/shilapi/xcertplay/orchestration/SetupResume;Z)V

    sput-object v6, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->VPN_CONSENT_DENIED:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    .line 54
    new-instance v0, Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    sget-object v4, Lcom/shilapi/xcertplay/orchestration/SetupResume;->RETURN_TO_APP:Lcom/shilapi/xcertplay/orchestration/SetupResume;

    const/4 v5, 0x0

    const-string v1, "WIRELESS_PERMISSION_DENIED"

    const/16 v2, 0xe

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/orchestration/SetupProblem;-><init>(Ljava/lang/String;IZLcom/shilapi/xcertplay/orchestration/SetupResume;Z)V

    sput-object v0, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->WIRELESS_PERMISSION_DENIED:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    .line 56
    new-instance v1, Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    sget-object v5, Lcom/shilapi/xcertplay/orchestration/SetupResume;->AUTOMATIC_RETRY:Lcom/shilapi/xcertplay/orchestration/SetupResume;

    const/4 v6, 0x1

    const-string v2, "IPHONE_NOT_ON_WIFI"

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/shilapi/xcertplay/orchestration/SetupProblem;-><init>(Ljava/lang/String;IZLcom/shilapi/xcertplay/orchestration/SetupResume;Z)V

    sput-object v1, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->IPHONE_NOT_ON_WIFI:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    .line 58
    new-instance v2, Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    sget-object v6, Lcom/shilapi/xcertplay/orchestration/SetupResume;->AUTOMATIC_RETRY:Lcom/shilapi/xcertplay/orchestration/SetupResume;

    const/4 v7, 0x1

    const-string v3, "IPHONE_ON_WIFI_NO_CARPLAY"

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/shilapi/xcertplay/orchestration/SetupProblem;-><init>(Ljava/lang/String;IZLcom/shilapi/xcertplay/orchestration/SetupResume;Z)V

    sput-object v2, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->IPHONE_ON_WIFI_NO_CARPLAY:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    .line 60
    new-instance v3, Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    sget-object v7, Lcom/shilapi/xcertplay/orchestration/SetupResume;->AUTOMATIC_RETRY:Lcom/shilapi/xcertplay/orchestration/SetupResume;

    const/4 v8, 0x1

    const-string v4, "CONNECTION_LOST"

    const/16 v5, 0x11

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/shilapi/xcertplay/orchestration/SetupProblem;-><init>(Ljava/lang/String;IZLcom/shilapi/xcertplay/orchestration/SetupResume;Z)V

    sput-object v3, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->CONNECTION_LOST:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    .line 62
    new-instance v4, Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    sget-object v8, Lcom/shilapi/xcertplay/orchestration/SetupResume;->IPHONE_REPLUGGED:Lcom/shilapi/xcertplay/orchestration/SetupResume;

    const/4 v9, 0x0

    const-string v5, "RETRIES_STOPPED"

    const/16 v6, 0x12

    const/4 v7, 0x1

    invoke-direct/range {v4 .. v9}, Lcom/shilapi/xcertplay/orchestration/SetupProblem;-><init>(Ljava/lang/String;IZLcom/shilapi/xcertplay/orchestration/SetupResume;Z)V

    sput-object v4, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->RETRIES_STOPPED:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    .line 67
    new-instance v5, Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    sget-object v9, Lcom/shilapi/xcertplay/orchestration/SetupResume;->HOTSPOT_SWITCHED_OFF:Lcom/shilapi/xcertplay/orchestration/SetupResume;

    const/4 v10, 0x0

    const-string v6, "SYSTEM_HOTSPOT_LOCKED"

    const/16 v7, 0x13

    const/4 v8, 0x1

    invoke-direct/range {v5 .. v10}, Lcom/shilapi/xcertplay/orchestration/SetupProblem;-><init>(Ljava/lang/String;IZLcom/shilapi/xcertplay/orchestration/SetupResume;Z)V

    sput-object v5, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->SYSTEM_HOTSPOT_LOCKED:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    .line 69
    new-instance v6, Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    sget-object v10, Lcom/shilapi/xcertplay/orchestration/SetupResume;->RETURN_TO_APP:Lcom/shilapi/xcertplay/orchestration/SetupResume;

    const-string v7, "WIRELESS_NEVER_JOINED"

    const/16 v8, 0x14

    const/4 v9, 0x1

    invoke-direct/range {v6 .. v11}, Lcom/shilapi/xcertplay/orchestration/SetupProblem;-><init>(Ljava/lang/String;IZLcom/shilapi/xcertplay/orchestration/SetupResume;Z)V

    sput-object v6, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->WIRELESS_NEVER_JOINED:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    .line 71
    new-instance v0, Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    sget-object v4, Lcom/shilapi/xcertplay/orchestration/SetupResume;->RETURN_TO_APP:Lcom/shilapi/xcertplay/orchestration/SetupResume;

    const/4 v5, 0x0

    const-string v1, "WIRELESS_JOINED_NO_CARPLAY"

    const/16 v2, 0x15

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/orchestration/SetupProblem;-><init>(Ljava/lang/String;IZLcom/shilapi/xcertplay/orchestration/SetupResume;Z)V

    sput-object v0, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->WIRELESS_JOINED_NO_CARPLAY:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    invoke-static {}, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->$values()[Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->$VALUES:[Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZLcom/shilapi/xcertplay/orchestration/SetupResume;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/shilapi/xcertplay/orchestration/SetupResume;",
            "Z)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-boolean p3, p0, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->stopsRetry:Z

    .line 17
    iput-object p4, p0, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->resume:Lcom/shilapi/xcertplay/orchestration/SetupResume;

    .line 19
    iput-boolean p5, p0, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->working:Z

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/shilapi/xcertplay/orchestration/SetupProblem;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shilapi/xcertplay/orchestration/SetupProblem;
    .locals 1

    const-class v0, Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    return-object p0
.end method

.method public static values()[Lcom/shilapi/xcertplay/orchestration/SetupProblem;
    .locals 1

    sget-object v0, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->$VALUES:[Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    return-object v0
.end method


# virtual methods
.method public final getResume()Lcom/shilapi/xcertplay/orchestration/SetupResume;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->resume:Lcom/shilapi/xcertplay/orchestration/SetupResume;

    return-object v0
.end method

.method public final getStopsRetry()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->stopsRetry:Z

    return v0
.end method

.method public final getWorking()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->working:Z

    return v0
.end method
