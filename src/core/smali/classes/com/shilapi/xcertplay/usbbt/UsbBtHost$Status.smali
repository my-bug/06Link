.class public final Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;
.super Ljava/lang/Object;
.source "UsbBtHost.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/usbbt/UsbBtHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Status"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0017\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001BQ\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\t\u0010\u001c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u0007H\u00c6\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003J\t\u0010\"\u001a\u00020\rH\u00c6\u0003JU\u0010#\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\rH\u00c6\u0001J\u0013\u0010$\u001a\u00020%2\u0008\u0010&\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\'\u001a\u00020\rH\u00d6\u0001J\t\u0010(\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0013R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0013R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\u00a8\u0006)"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;",
        "",
        "phase",
        "Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;",
        "name",
        "",
        "controller",
        "Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;",
        "step",
        "error",
        "peer",
        "Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;",
        "pairedDevices",
        "",
        "<init>",
        "(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;Ljava/lang/String;Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;I)V",
        "getPhase",
        "()Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;",
        "getName",
        "()Ljava/lang/String;",
        "getController",
        "()Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;",
        "getStep",
        "getError",
        "getPeer",
        "()Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;",
        "getPairedDevices",
        "()I",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
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


# instance fields
.field private final controller:Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;

.field private final error:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final pairedDevices:I

.field private final peer:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

.field private final phase:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;

.field private final step:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;Ljava/lang/String;Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;I)V
    .locals 1

    const-string v0, "phase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controller"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->phase:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;

    .line 60
    iput-object p2, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->name:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->controller:Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;

    .line 63
    iput-object p4, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->step:Ljava/lang/String;

    .line 64
    iput-object p5, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->error:Ljava/lang/String;

    .line 65
    iput-object p6, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->peer:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    .line 66
    iput p7, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->pairedDevices:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;Ljava/lang/String;Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 v0, p8, 0x1

    if-eqz v0, :cond_0

    .line 59
    sget-object p1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;->IDLE:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;

    :cond_0
    move-object v1, p1

    and-int/lit8 p1, p8, 0x4

    if-eqz p1, :cond_1

    .line 61
    new-instance v2, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;

    const/16 v8, 0x1f

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;-><init>(Lcom/shilapi/xcertplay/usbbt/BdAddr;Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;[BLcom/shilapi/xcertplay/usbbt/HciReturnParameters$BufferSize;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v3, v2

    goto :goto_0

    :cond_1
    move-object v3, p3

    :goto_0
    and-int/lit8 p1, p8, 0x8

    const/4 p3, 0x0

    if-eqz p1, :cond_2

    move-object v4, p3

    goto :goto_1

    :cond_2
    move-object v4, p4

    :goto_1
    and-int/lit8 p1, p8, 0x10

    if-eqz p1, :cond_3

    move-object v5, p3

    goto :goto_2

    :cond_3
    move-object v5, p5

    :goto_2
    and-int/lit8 p1, p8, 0x20

    if-eqz p1, :cond_4

    move-object v6, p3

    goto :goto_3

    :cond_4
    move-object/from16 v6, p6

    :goto_3
    and-int/lit8 p1, p8, 0x40

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    const/4 v7, 0x0

    goto :goto_4

    :cond_5
    move/from16 v7, p7

    :goto_4
    move-object v0, p0

    move-object v2, p2

    .line 58
    invoke-direct/range {v0 .. v7}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;-><init>(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;Ljava/lang/String;Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;I)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;Ljava/lang/String;Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;IILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;
    .locals 0

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->phase:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->name:Ljava/lang/String;

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    iget-object p3, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->controller:Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    iget-object p4, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->step:Ljava/lang/String;

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    iget-object p5, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->error:Ljava/lang/String;

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    iget-object p6, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->peer:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    iget p7, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->pairedDevices:I

    :cond_6
    move-object p8, p6

    move p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p9}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->copy(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;Ljava/lang/String;Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;I)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->phase:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->controller:Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->step:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->error:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->peer:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    return-object v0
.end method

.method public final component7()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->pairedDevices:I

    return v0
.end method

.method public final copy(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;Ljava/lang/String;Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;I)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;
    .locals 9

    const-string v0, "phase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controller"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;-><init>(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;Ljava/lang/String;Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;I)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;

    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->phase:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;

    iget-object v3, p1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->phase:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->controller:Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;

    iget-object v3, p1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->controller:Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->step:Ljava/lang/String;

    iget-object v3, p1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->step:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->error:Ljava/lang/String;

    iget-object v3, p1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->error:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->peer:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    iget-object v3, p1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->peer:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->pairedDevices:I

    iget p1, p1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->pairedDevices:I

    if-eq v1, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getController()Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->controller:Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;

    return-object v0
.end method

.method public final getError()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->error:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPairedDevices()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->pairedDevices:I

    return v0
.end method

.method public final getPeer()Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->peer:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    return-object v0
.end method

.method public final getPhase()Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->phase:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;

    return-object v0
.end method

.method public final getStep()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->step:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->phase:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->controller:Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->step:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->error:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->peer:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->pairedDevices:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->phase:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;

    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->controller:Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;

    iget-object v3, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->step:Ljava/lang/String;

    iget-object v4, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->error:Ljava/lang/String;

    iget-object v5, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->peer:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    iget v6, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->pairedDevices:I

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Status(phase="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", name="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", controller="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", step="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", error="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", peer="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", pairedDevices="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
