.class public final Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;
.super Ljava/lang/Object;
.source "UsbBtHost.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/usbbt/UsbBtHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PeerStatus"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUsbBtHost.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UsbBtHost.kt\ncom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,511:1\n1#2:512\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008-\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0093\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000b\u0012\u000e\u0008\u0002\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0011\u0012\u000e\u0008\u0002\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0011\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\t\u0010,\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010-\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010.\u001a\u00020\u0007H\u00c6\u0003J\t\u0010/\u001a\u00020\tH\u00c6\u0003J\u0010\u00100\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003\u00a2\u0006\u0002\u0010\u001fJ\t\u00101\u001a\u00020\u0007H\u00c6\u0003J\u0010\u00102\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003\u00a2\u0006\u0002\u0010\u001fJ\u0010\u00103\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003\u00a2\u0006\u0002\u0010\u001fJ\u0010\u00104\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003\u00a2\u0006\u0002\u0010\u001fJ\u000f\u00105\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0011H\u00c6\u0003J\u000f\u00106\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0011H\u00c6\u0003J\t\u00107\u001a\u00020\u000bH\u00c6\u0003J\u009c\u0001\u00108\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00072\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000b2\u000e\u0008\u0002\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00112\u000e\u0008\u0002\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00112\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000bH\u00c6\u0001\u00a2\u0006\u0002\u00109J\u0013\u0010:\u001a\u00020\u00072\u0008\u0010;\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010<\u001a\u00020\u000bH\u00d6\u0001J\t\u0010=\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0015\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\n\n\u0002\u0010 \u001a\u0004\u0008\u001e\u0010\u001fR\u0011\u0010\u000c\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u001bR\u0015\u0010\r\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\n\n\u0002\u0010 \u001a\u0004\u0008\"\u0010\u001fR\u0015\u0010\u000e\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\n\n\u0002\u0010 \u001a\u0004\u0008#\u0010\u001fR\u0015\u0010\u000f\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\n\n\u0002\u0010 \u001a\u0004\u0008$\u0010\u001fR\u0017\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010&R\u0017\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010&R\u0011\u0010\u0013\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010)R\u0013\u0010*\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010\u0019\u00a8\u0006>"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;",
        "",
        "address",
        "Lcom/shilapi/xcertplay/usbbt/BdAddr;",
        "name",
        "",
        "connected",
        "",
        "pairing",
        "Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;",
        "confirmationNumber",
        "",
        "encrypted",
        "remoteIoCapability",
        "linkKeyType",
        "failure",
        "psmsRequested",
        "",
        "psmsRefused",
        "sdpRequests",
        "<init>",
        "(Lcom/shilapi/xcertplay/usbbt/BdAddr;Ljava/lang/String;ZLcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;I)V",
        "getAddress",
        "()Lcom/shilapi/xcertplay/usbbt/BdAddr;",
        "getName",
        "()Ljava/lang/String;",
        "getConnected",
        "()Z",
        "getPairing",
        "()Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;",
        "getConfirmationNumber",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getEncrypted",
        "getRemoteIoCapability",
        "getLinkKeyType",
        "getFailure",
        "getPsmsRequested",
        "()Ljava/util/List;",
        "getPsmsRefused",
        "getSdpRequests",
        "()I",
        "confirmationText",
        "getConfirmationText",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "component12",
        "copy",
        "(Lcom/shilapi/xcertplay/usbbt/BdAddr;Ljava/lang/String;ZLcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;I)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;",
        "equals",
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
.field private final address:Lcom/shilapi/xcertplay/usbbt/BdAddr;

.field private final confirmationNumber:Ljava/lang/Integer;

.field private final connected:Z

.field private final encrypted:Z

.field private final failure:Ljava/lang/Integer;

.field private final linkKeyType:Ljava/lang/Integer;

.field private final name:Ljava/lang/String;

.field private final pairing:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;

.field private final psmsRefused:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final psmsRequested:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final remoteIoCapability:Ljava/lang/Integer;

.field private final sdpRequests:I


# direct methods
.method public constructor <init>(Lcom/shilapi/xcertplay/usbbt/BdAddr;Ljava/lang/String;ZLcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/usbbt/BdAddr;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;",
            "Ljava/lang/Integer;",
            "Z",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pairing"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "psmsRequested"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "psmsRefused"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->address:Lcom/shilapi/xcertplay/usbbt/BdAddr;

    .line 40
    iput-object p2, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->name:Ljava/lang/String;

    .line 41
    iput-boolean p3, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->connected:Z

    .line 42
    iput-object p4, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->pairing:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;

    .line 43
    iput-object p5, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->confirmationNumber:Ljava/lang/Integer;

    .line 44
    iput-boolean p6, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->encrypted:Z

    .line 45
    iput-object p7, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->remoteIoCapability:Ljava/lang/Integer;

    .line 46
    iput-object p8, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->linkKeyType:Ljava/lang/Integer;

    .line 48
    iput-object p9, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->failure:Ljava/lang/Integer;

    .line 50
    iput-object p10, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->psmsRequested:Ljava/util/List;

    .line 51
    iput-object p11, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->psmsRefused:Ljava/util/List;

    .line 52
    iput p12, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->sdpRequests:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/usbbt/BdAddr;Ljava/lang/String;ZLcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    move/from16 v0, p13

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object p2, v2

    :cond_0
    and-int/lit8 v1, v0, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const/4 p3, 0x0

    :cond_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    .line 42
    sget-object v1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;->NONE:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;

    goto :goto_0

    :cond_2
    move-object v1, p4

    :goto_0
    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_3

    move-object v4, v2

    goto :goto_1

    :cond_3
    move-object v4, p5

    :goto_1
    and-int/lit8 v5, v0, 0x20

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    move/from16 v5, p6

    :goto_2
    and-int/lit8 v6, v0, 0x40

    if-eqz v6, :cond_5

    move-object v6, v2

    goto :goto_3

    :cond_5
    move-object/from16 v6, p7

    :goto_3
    and-int/lit16 v7, v0, 0x80

    if-eqz v7, :cond_6

    move-object v7, v2

    goto :goto_4

    :cond_6
    move-object/from16 v7, p8

    :goto_4
    and-int/lit16 v8, v0, 0x100

    if-eqz v8, :cond_7

    goto :goto_5

    :cond_7
    move-object/from16 v2, p9

    :goto_5
    and-int/lit16 v8, v0, 0x200

    if-eqz v8, :cond_8

    .line 50
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    goto :goto_6

    :cond_8
    move-object/from16 v8, p10

    :goto_6
    and-int/lit16 v9, v0, 0x400

    if-eqz v9, :cond_9

    .line 51
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v9

    goto :goto_7

    :cond_9
    move-object/from16 v9, p11

    :goto_7
    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_a

    const/16 p14, 0x0

    goto :goto_8

    :cond_a
    move/from16 p14, p12

    :goto_8
    move-object p4, p2

    move p5, p3

    move-object/from16 p6, v1

    move-object/from16 p11, v2

    move-object/from16 p7, v4

    move/from16 p8, v5

    move-object/from16 p9, v6

    move-object/from16 p10, v7

    move-object/from16 p12, v8

    move-object/from16 p13, v9

    move-object p2, p0

    move-object p3, p1

    .line 38
    invoke-direct/range {p2 .. p14}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;-><init>(Lcom/shilapi/xcertplay/usbbt/BdAddr;Ljava/lang/String;ZLcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;I)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;Lcom/shilapi/xcertplay/usbbt/BdAddr;Ljava/lang/String;ZLcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;IILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;
    .locals 0

    and-int/lit8 p14, p13, 0x1

    if-eqz p14, :cond_0

    iget-object p1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->address:Lcom/shilapi/xcertplay/usbbt/BdAddr;

    :cond_0
    and-int/lit8 p14, p13, 0x2

    if-eqz p14, :cond_1

    iget-object p2, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->name:Ljava/lang/String;

    :cond_1
    and-int/lit8 p14, p13, 0x4

    if-eqz p14, :cond_2

    iget-boolean p3, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->connected:Z

    :cond_2
    and-int/lit8 p14, p13, 0x8

    if-eqz p14, :cond_3

    iget-object p4, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->pairing:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;

    :cond_3
    and-int/lit8 p14, p13, 0x10

    if-eqz p14, :cond_4

    iget-object p5, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->confirmationNumber:Ljava/lang/Integer;

    :cond_4
    and-int/lit8 p14, p13, 0x20

    if-eqz p14, :cond_5

    iget-boolean p6, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->encrypted:Z

    :cond_5
    and-int/lit8 p14, p13, 0x40

    if-eqz p14, :cond_6

    iget-object p7, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->remoteIoCapability:Ljava/lang/Integer;

    :cond_6
    and-int/lit16 p14, p13, 0x80

    if-eqz p14, :cond_7

    iget-object p8, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->linkKeyType:Ljava/lang/Integer;

    :cond_7
    and-int/lit16 p14, p13, 0x100

    if-eqz p14, :cond_8

    iget-object p9, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->failure:Ljava/lang/Integer;

    :cond_8
    and-int/lit16 p14, p13, 0x200

    if-eqz p14, :cond_9

    iget-object p10, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->psmsRequested:Ljava/util/List;

    :cond_9
    and-int/lit16 p14, p13, 0x400

    if-eqz p14, :cond_a

    iget-object p11, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->psmsRefused:Ljava/util/List;

    :cond_a
    and-int/lit16 p13, p13, 0x800

    if-eqz p13, :cond_b

    iget p12, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->sdpRequests:I

    :cond_b
    move-object p13, p11

    move p14, p12

    move-object p11, p9

    move-object p12, p10

    move-object p9, p7

    move-object p10, p8

    move-object p7, p5

    move p8, p6

    move p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p14}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->copy(Lcom/shilapi/xcertplay/usbbt/BdAddr;Ljava/lang/String;ZLcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;I)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/shilapi/xcertplay/usbbt/BdAddr;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->address:Lcom/shilapi/xcertplay/usbbt/BdAddr;

    return-object v0
.end method

.method public final component10()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->psmsRequested:Ljava/util/List;

    return-object v0
.end method

.method public final component11()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->psmsRefused:Ljava/util/List;

    return-object v0
.end method

.method public final component12()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->sdpRequests:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->connected:Z

    return v0
.end method

.method public final component4()Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->pairing:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;

    return-object v0
.end method

.method public final component5()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->confirmationNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->encrypted:Z

    return v0
.end method

.method public final component7()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->remoteIoCapability:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component8()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->linkKeyType:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component9()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->failure:Ljava/lang/Integer;

    return-object v0
.end method

.method public final copy(Lcom/shilapi/xcertplay/usbbt/BdAddr;Ljava/lang/String;ZLcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;I)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/usbbt/BdAddr;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;",
            "Ljava/lang/Integer;",
            "Z",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;"
        }
    .end annotation

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pairing"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "psmsRequested"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "psmsRefused"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v13, p12

    invoke-direct/range {v1 .. v13}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;-><init>(Lcom/shilapi/xcertplay/usbbt/BdAddr;Ljava/lang/String;ZLcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;I)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->address:Lcom/shilapi/xcertplay/usbbt/BdAddr;

    iget-object v3, p1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->address:Lcom/shilapi/xcertplay/usbbt/BdAddr;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->connected:Z

    iget-boolean v3, p1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->connected:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->pairing:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;

    iget-object v3, p1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->pairing:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->confirmationNumber:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->confirmationNumber:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->encrypted:Z

    iget-boolean v3, p1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->encrypted:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->remoteIoCapability:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->remoteIoCapability:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->linkKeyType:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->linkKeyType:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->failure:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->failure:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->psmsRequested:Ljava/util/List;

    iget-object v3, p1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->psmsRequested:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->psmsRefused:Ljava/util/List;

    iget-object v3, p1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->psmsRefused:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->sdpRequests:I

    iget p1, p1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->sdpRequests:I

    if-eq v1, p1, :cond_d

    return v2

    :cond_d
    return v0
.end method

.method public final getAddress()Lcom/shilapi/xcertplay/usbbt/BdAddr;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->address:Lcom/shilapi/xcertplay/usbbt/BdAddr;

    return-object v0
.end method

.method public final getConfirmationNumber()Ljava/lang/Integer;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->confirmationNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getConfirmationText()Ljava/lang/String;
    .locals 4

    .line 55
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->confirmationNumber:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%06d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getConnected()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->connected:Z

    return v0
.end method

.method public final getEncrypted()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->encrypted:Z

    return v0
.end method

.method public final getFailure()Ljava/lang/Integer;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->failure:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getLinkKeyType()Ljava/lang/Integer;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->linkKeyType:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPairing()Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->pairing:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;

    return-object v0
.end method

.method public final getPsmsRefused()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->psmsRefused:Ljava/util/List;

    return-object v0
.end method

.method public final getPsmsRequested()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->psmsRequested:Ljava/util/List;

    return-object v0
.end method

.method public final getRemoteIoCapability()Ljava/lang/Integer;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->remoteIoCapability:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSdpRequests()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->sdpRequests:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->address:Lcom/shilapi/xcertplay/usbbt/BdAddr;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/BdAddr;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->name:Ljava/lang/String;

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

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->connected:Z

    invoke-static {v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->pairing:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->confirmationNumber:Ljava/lang/Integer;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->encrypted:Z

    invoke-static {v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->remoteIoCapability:Ljava/lang/Integer;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->linkKeyType:Ljava/lang/Integer;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->failure:Ljava/lang/Integer;

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->psmsRequested:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->psmsRefused:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->sdpRequests:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->address:Lcom/shilapi/xcertplay/usbbt/BdAddr;

    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->name:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->connected:Z

    iget-object v3, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->pairing:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;

    iget-object v4, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->confirmationNumber:Ljava/lang/Integer;

    iget-boolean v5, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->encrypted:Z

    iget-object v6, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->remoteIoCapability:Ljava/lang/Integer;

    iget-object v7, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->linkKeyType:Ljava/lang/Integer;

    iget-object v8, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->failure:Ljava/lang/Integer;

    iget-object v9, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->psmsRequested:Ljava/util/List;

    iget-object v10, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->psmsRefused:Ljava/util/List;

    iget v11, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->sdpRequests:I

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "PeerStatus(address="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", name="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", connected="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", pairing="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", confirmationNumber="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", encrypted="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", remoteIoCapability="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", linkKeyType="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", failure="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", psmsRequested="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", psmsRefused="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", sdpRequests="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
