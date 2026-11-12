.class public final Lcom/shilapi/xcertplay/orchestration/UsbBluetoothPromptPolicy;
.super Ljava/lang/Object;
.source "CarPlayController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/orchestration/UsbBluetoothPromptPolicy$Action;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u00c0\u0002\u0018\u00002\u00020\u0001:\u0001\tB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/orchestration/UsbBluetoothPromptPolicy;",
        "",
        "<init>",
        "()V",
        "decide",
        "Lcom/shilapi/xcertplay/orchestration/UsbBluetoothPromptPolicy$Action;",
        "promptOpen",
        "",
        "askedThisRun",
        "Action",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/orchestration/UsbBluetoothPromptPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/orchestration/UsbBluetoothPromptPolicy;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/orchestration/UsbBluetoothPromptPolicy;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/orchestration/UsbBluetoothPromptPolicy;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/UsbBluetoothPromptPolicy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final decide(ZZ)Lcom/shilapi/xcertplay/orchestration/UsbBluetoothPromptPolicy$Action;
    .locals 0

    if-eqz p1, :cond_0

    .line 208
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/UsbBluetoothPromptPolicy$Action;->WAIT:Lcom/shilapi/xcertplay/orchestration/UsbBluetoothPromptPolicy$Action;

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 209
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/UsbBluetoothPromptPolicy$Action;->REFUSE:Lcom/shilapi/xcertplay/orchestration/UsbBluetoothPromptPolicy$Action;

    return-object p1

    .line 210
    :cond_1
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/UsbBluetoothPromptPolicy$Action;->ASK:Lcom/shilapi/xcertplay/orchestration/UsbBluetoothPromptPolicy$Action;

    return-object p1
.end method
