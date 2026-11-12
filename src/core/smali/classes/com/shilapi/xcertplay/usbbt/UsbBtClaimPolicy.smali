.class public final Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy;
.super Ljava/lang/Object;
.source "UsbBtClaimPolicy.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Claim;,
        Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;,
        Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Route;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0003\u0017\u0018\u0019B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0007J\u0016\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u0005J\u0016\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u0005J\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0012\u001a\u00020\u0007J\u000e\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy;",
        "",
        "<init>",
        "()V",
        "FORCE_CLAIM",
        "",
        "KERNEL_DRIVEN_MARKER",
        "",
        "onClaim",
        "Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Claim;",
        "claimed",
        "interfaceNumber",
        "",
        "deviceName",
        "route",
        "Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Route;",
        "claim",
        "systemBluetoothUsable",
        "message",
        "evidence",
        "Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;",
        "evidenceIn",
        "usesSystemBluetooth",
        "Evidence",
        "Claim",
        "Route",
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
.field public static final FORCE_CLAIM:Z = false

.field public static final INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy;

.field public static final KERNEL_DRIVEN_MARKER:Ljava/lang/String; = "USB Bluetooth adapter is held by the head unit\'s system Bluetooth driver"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final evidenceIn(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const-string v0, "USB Bluetooth adapter is held by the head unit\'s system Bluetooth driver"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, v0, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v4

    :cond_0
    const/4 v5, 0x6

    const/4 v6, 0x0

    .line 63
    const-string v2, "USB Bluetooth adapter is held by the head unit\'s system Bluetooth driver"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v3

    const/4 v5, 0x4

    const/16 v2, 0x5b

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v2, 0x5d

    const/4 v4, 0x0

    .line 64
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    :goto_0
    if-ltz v3, :cond_2

    if-le v0, v3, :cond_2

    add-int/lit8 v3, v3, 0x1

    .line 65
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "substring(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_2
    const-string p1, ""

    return-object p1
.end method

.method public final message(Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;Z)Ljava/lang/String;
    .locals 2

    const-string v0, "evidence"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;->describe()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 54
    const-string p2, "; using the head unit\'s system Bluetooth instead"

    goto :goto_0

    .line 56
    :cond_0
    const-string p2, ", and Android\'s own Bluetooth is not usable on this head unit, so wireless CarPlay cannot start; connect the iPhone by USB cable"

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "USB Bluetooth adapter is held by the head unit\'s system Bluetooth driver ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]; 06Link does not force-claim it"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final onClaim(ZILjava/lang/String;)Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Claim;
    .locals 1

    const-string v0, "deviceName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 43
    sget-object p1, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Claim$Claimed;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Claim$Claimed;

    :goto_0
    check-cast p1, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Claim;

    return-object p1

    :cond_0
    new-instance p1, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Claim$DrivenByKernel;

    new-instance v0, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;

    invoke-direct {v0, p2, p3}, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Claim$DrivenByKernel;-><init>(Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;)V

    goto :goto_0
.end method

.method public final route(Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Claim;Z)Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Route;
    .locals 1

    const-string v0, "claim"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Claim$Claimed;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Claim$Claimed;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Route;->USB_DONGLE:Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Route;

    return-object p1

    .line 47
    :cond_0
    instance-of p1, p1, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Claim$DrivenByKernel;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    sget-object p1, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Route;->SYSTEM_BLUETOOTH:Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Route;

    return-object p1

    :cond_1
    sget-object p1, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Route;->NO_BLUETOOTH:Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Route;

    return-object p1

    .line 45
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public final usesSystemBluetooth(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    check-cast p1, Ljava/lang/CharSequence;

    const-string v0, "USB Bluetooth adapter is held by the head unit\'s system Bluetooth driver"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "using the head unit\'s system Bluetooth instead"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method
